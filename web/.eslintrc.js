module.exports = {
  "env": {
    "browser": true,
    "es2021": true
  },
  "extends": [
    "standard"
  ],
  "parserOptions": {
    "ecmaVersion": 12,
    "sourceType": "module"
  },
  "rules": {
    "quotes": "off",
    "semi": ["error", "always"],
    "comma-dangle": ["error", "only-multiline"],
    "space-before-function-paren": ["error", "never"],
    "no-undef": "off",
    "no-var": "off",
    "eol-last": "off",
    "noempty": "off",
    "prefer-const": "off",
    "no-trailing-spaces": "off",
  }
};
