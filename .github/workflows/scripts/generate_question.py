import openai
import os

def load_prompt():
    with open(".github/config/coach.md", "r", encoding="utf-8") as f:
        return f.read()

def generate_question():
    system_prompt = load_prompt()
    user_prompt = "Generate today's OPIc-style speaking questions for Jinsun."

    completion = openai.ChatCompletion.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
        ]
    )

    return completion["choices"][0]["message"]["content"]

if __name__ == "__main__":
    print(generate_question())
