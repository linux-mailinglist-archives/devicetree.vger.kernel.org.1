Return-Path: <devicetree+bounces-249872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F68CDFDA2
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 15:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47E92301FC1C
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 14:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8588631AABB;
	Sat, 27 Dec 2025 14:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DLEx81tS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12A0227E95
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 14:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766845510; cv=none; b=RmeXap/T1EFES/ypfwu0vAKXnzXNBTq4k2jUqHdMK+ANVrmnX0uthM80OM4bYi3+JpDERrCtUpMXcsVe+ofwqFOpaDnVITEkX5tcilEhjGwbWFyozb/HHqQ37oHa/emI1amNqDqumrSnIAWVN6x6RkU/XBfYKtXDwh3q2Y1tMfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766845510; c=relaxed/simple;
	bh=A2NH8q4C7fVPf2dWuZsnLKGtSz5oh/q2W/gIH5638ho=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H/g3LB+6EJgwGq6Jsw6u7G8nDsfjzNKWOUZ9LyOfZCaaKbRRZxWVr69WJHwHXreVTpJwEI4z3MllIN2Bn7VPoK+TZdJx9WeAJEhyPptik3mYoAKOxAA6rDm0aB5kiQkKPSi71Fac65sfgVm5jl6V2eLbD03DFcsvnRKzwpTuOXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DLEx81tS; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7aa9be9f03aso6482371b3a.2
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 06:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1766845506; x=1767450306; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qG0+ohKiSx95lCPoeRkBaenAF/9dUpbZ87AcJoxqhPo=;
        b=DLEx81tSxWtQ7SmK28Q2lr1BXEFKzgihwGi7K6etBrx/PAlP6707La2LXcj60q3ydk
         r68+NZ3hDmn/2aKYrmrP5AyzgWR1L0P9dp7zT4vRRj79FsSxjYEcS/MpOp8VQ8N7IMxQ
         EvjrCLhH5h8og+PSNOVamhQtNfDR+k+pipwRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766845506; x=1767450306;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qG0+ohKiSx95lCPoeRkBaenAF/9dUpbZ87AcJoxqhPo=;
        b=UBSWMeEjtatwtxFAn1ByAiKsmEH1S6UVk9DOTr2N4c8KOfKF6NNsRvmrkOOa2wzUeT
         VnyByYcn8kB415Gyds70ZcjpzLBm2pv79QOV8R3ypi97dY6KS9Q60J+HkDz2NPb7bETz
         gN+mFKzaeqfqSyYEQZdQVYw6vIwTEqxqRfMGSXEFbqonWHoU8J6kdqBL5EPWdUbEkTVS
         13WBz2nD2w1a5AAhssVIBszytBdims89db1F04JzsfeTsQW3bN4RT5sqmbJ8MY0LMCYA
         vfKHYNCeUxl6Vj9dRrTRU8u999V/XLlqx3DM8XWjVlgSV6+H0X4yPwVkBxhDxHmw8H8b
         1Sbg==
X-Forwarded-Encrypted: i=1; AJvYcCUh8za7bhlFYhyO8MJp7Yk+UP9w08P2Ag9wKkBt5dInuomAH83SARUdEIT9KI1FkYyj8GQ46MYpyK/L@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcnj8exRoJskxISrGrYFWkduDTuJ2q/Bx6U3IxsFDFVmNBSdzq
	kkH98eJosnZbpFZP2DBFR3H14EHIe8ks0Z6EJ7v0EWtlPuk6fgeE0g9IeKrn0aZqkMCQPoDoLnh
	RjZaS0xC/4r4q5gPPwj/EfVQw7WMshmE5ojBMjHj0
X-Gm-Gg: AY/fxX6KqmEbAEhkFqT/xCBZbsD2gXWQwaG4OXVO+/vH+yc282+da75MgXhRQmKbDn6
	TkEc7LK7SN+saSJzUghtXhFnmilUmceNJLzOanVMJWFZycEX5GwJYPzCgZGjefU/LazcIr6J4lE
	p3jJtwSt6oRoXtnOyfDc179gutYm62p4f+zagcL+s2Bc67wONH3h9iThvHIcIj+TWiJ8tB6pQl7
	NjQ3Z4nasg3SfOfJ1I18ioz9nhWqTRiyA2LKYPYmatYpbMVg4EjYihorQcyKtZKf59EISPN8fFw
	TU45
X-Google-Smtp-Source: AGHT+IHnEGOmXdjfQsetVVbNG8ehT65yiF1nHmPBkUVYero3HJqeWEGu77h5h3mI6v4oKE3+iSLjngfGXjPOlcDmCo4=
X-Received: by 2002:a05:6a20:72a5:b0:34f:68e9:da94 with SMTP id
 adf61e73a8af0-376a81dcc8fmr24774064637.30.1766845505998; Sat, 27 Dec 2025
 06:25:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224152238.485415-1-fabiobaltieri@chromium.org> <20251224152238.485415-2-fabiobaltieri@chromium.org>
In-Reply-To: <20251224152238.485415-2-fabiobaltieri@chromium.org>
From: Simon Glass <sjg@chromium.org>
Date: Sat, 27 Dec 2025 07:24:33 -0700
X-Gm-Features: AQt7F2pu5irmQrlelsCWH9CO1JsXgyJlMuIRF8sLAfYATcFturh6KCklaDBGaMQ
Message-ID: <CAFLszThHmN-eGMwwgUhSFbWcbuOYYs-eFh6d6ZVTXekRGv6Hdg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] Input: cros_ec_keyb - add function key support
To: Fabio Baltieri <fabiobaltieri@chromium.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Fabio,

On Wed, 24 Dec 2025 at 08:22, Fabio Baltieri <fabiobaltieri@chromium.org> wrote:
>
> Add support for handling an Fn button and sending separate keycodes for
> a subset of keys in the matrix defined in the upper half of the keymap.
>
> Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
> ---
>  drivers/input/keyboard/cros_ec_keyb.c | 120 ++++++++++++++++++++++----
>  1 file changed, 104 insertions(+), 16 deletions(-)
>

Reviewed-by: Simon Glass <sjg@chromium.org>

I suggest a function comment for the two new functions you add.

> diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
> index 1c6b0461dc35..8b95b4f8a37d 100644
> --- a/drivers/input/keyboard/cros_ec_keyb.c
> +++ b/drivers/input/keyboard/cros_ec_keyb.c
> @@ -29,6 +29,11 @@
>
>  #include <linux/unaligned.h>
>
> +/* Maximum size of the normal key matrix, this is limited by the host command
> + * key_matrix field defined in ec_response_get_next_data_v3
> + */
> +#define CROS_EC_KEYBOARD_COLS_MAX 18
> +
>  /**
>   * struct cros_ec_keyb - Structure representing EC keyboard device
>   *
> @@ -44,6 +49,11 @@
>   * @bs_idev: The input device for non-matrix buttons and switches (or NULL).
>   * @notifier: interrupt event notifier for transport devices
>   * @vdata: vivaldi function row data
> + * @use_fn_overlay: whether the driver use an fn function overlay
> + * @normal_key_status: active normal keys map
> + * @fn_key_status: active function keys map
> + * @fn_key_pressed: tracks the function key status
> + * @fn_key_triggered: tracks where any function key fired
>   */
>  struct cros_ec_keyb {
>         unsigned int rows;
> @@ -61,6 +71,12 @@ struct cros_ec_keyb {
>         struct notifier_block notifier;
>
>         struct vivaldi_data vdata;
> +
> +       bool use_fn_overlay;
> +       u8 normal_key_status[CROS_EC_KEYBOARD_COLS_MAX];
> +       u8 fn_key_status[CROS_EC_KEYBOARD_COLS_MAX];
> +       bool fn_key_pressed;
> +       bool fn_key_triggered;
>  };
>
>  /**
> @@ -166,16 +182,83 @@ static bool cros_ec_keyb_has_ghosting(struct cros_ec_keyb *ckdev, uint8_t *buf)
>         return false;
>  }
>
> +static void cros_ec_keyb_process_fn_key(struct cros_ec_keyb *ckdev,
> +                                       int row, int col, bool state)
> +{
> +       struct input_dev *idev = ckdev->idev;
> +       int pos = MATRIX_SCAN_CODE(row, col, ckdev->row_shift);
> +
> +       ckdev->fn_key_pressed = state;
> +
> +       if (state) {
> +               ckdev->fn_key_triggered = false;
> +       } else if (!ckdev->fn_key_triggered) {
> +               /*
> +                * Send the original code if nothing else has been pressed
> +                * together with Fn.
> +                */
> +               input_event(idev, EV_MSC, MSC_SCAN, pos);
> +               input_report_key(idev, KEY_FN, true);
> +               input_sync(idev);
> +
> +               input_event(idev, EV_MSC, MSC_SCAN, pos);
> +               input_report_key(idev, KEY_FN, false);
> +       }
> +}
> +
> +static void cros_ec_keyb_process_one(struct cros_ec_keyb *ckdev,
> +                                    int row, int col, bool state)
> +{
> +       struct input_dev *idev = ckdev->idev;
> +       const unsigned short *keycodes = idev->keycode;
> +       int pos = MATRIX_SCAN_CODE(row, col, ckdev->row_shift);
> +       unsigned int code = keycodes[pos];
> +
> +       dev_dbg(ckdev->dev, "changed: [r%d c%d]: byte %02x\n", row, col, state);
> +
> +       if (ckdev->use_fn_overlay) {
> +               if (code == KEY_FN)
> +                       return cros_ec_keyb_process_fn_key(ckdev, row, col, state);
> +
> +               if (!state) {
> +                       if (ckdev->fn_key_status[col] & BIT(row)) {
> +                               pos = MATRIX_SCAN_CODE(row + ckdev->rows, col, ckdev->row_shift);
> +                               code = keycodes[pos];

You might want a helper to do this as it is repeated below

> +
> +                               ckdev->fn_key_status[col] &= ~BIT(row);
> +                       } else if (ckdev->normal_key_status[col] & BIT(row)) {
> +                               ckdev->normal_key_status[col] &= ~BIT(row);
> +                       } else {
> +                               /* Discard, key press code was not sent */
> +                               return;
> +                       }
> +               } else if (ckdev->fn_key_pressed) {
> +                       pos = MATRIX_SCAN_CODE(row + ckdev->rows, col, ckdev->row_shift);
> +                       code = keycodes[pos];
> +
> +                       ckdev->fn_key_triggered = true;
> +
> +                       if (!code)
> +                               return;
> +
> +                       ckdev->fn_key_status[col] |= BIT(row);
> +               } else {
> +                       ckdev->normal_key_status[col] |= BIT(row);
> +               }
> +       }
> +
> +       input_event(idev, EV_MSC, MSC_SCAN, pos);
> +       input_report_key(idev, code, state);
> +}
>
>  /*
>   * Compares the new keyboard state to the old one and produces key
> - * press/release events accordingly.  The keyboard state is 13 bytes (one byte
> - * per column)
> + * press/release events accordingly.  The keyboard state is one byte
> + * per column.
>   */
>  static void cros_ec_keyb_process(struct cros_ec_keyb *ckdev,
>                          uint8_t *kb_state, int len)
>  {
> -       struct input_dev *idev = ckdev->idev;
>         int col, row;
>         int new_state;
>         int old_state;
> @@ -192,20 +275,13 @@ static void cros_ec_keyb_process(struct cros_ec_keyb *ckdev,
>
>         for (col = 0; col < ckdev->cols; col++) {
>                 for (row = 0; row < ckdev->rows; row++) {
> -                       int pos = MATRIX_SCAN_CODE(row, col, ckdev->row_shift);
> -                       const unsigned short *keycodes = idev->keycode;
> -
>                         new_state = kb_state[col] & (1 << row);
>                         old_state = ckdev->old_kb_state[col] & (1 << row);
> -                       if (new_state != old_state) {
> -                               dev_dbg(ckdev->dev,
> -                                       "changed: [r%d c%d]: byte %02x\n",
> -                                       row, col, new_state);
> -
> -                               input_event(idev, EV_MSC, MSC_SCAN, pos);
> -                               input_report_key(idev, keycodes[pos],
> -                                                new_state);
> -                       }
> +
> +                       if (new_state == old_state)
> +                               continue;
> +
> +                       cros_ec_keyb_process_one(ckdev, row, col, new_state);
>                 }
>                 ckdev->old_kb_state[col] = kb_state[col];
>         }
> @@ -597,12 +673,19 @@ static int cros_ec_keyb_register_matrix(struct cros_ec_keyb *ckdev)
>         struct device *dev = ckdev->dev;
>         struct input_dev *idev;
>         const char *phys;
> +       unsigned int rows_keymap;
>         int err;
>
>         err = matrix_keypad_parse_properties(dev, &ckdev->rows, &ckdev->cols);
>         if (err)
>                 return err;
>
> +       if (ckdev->cols > CROS_EC_KEYBOARD_COLS_MAX) {
> +               dev_err(dev, "keypad,num-columns too large: %d (max: %d)\n",
> +                       ckdev->cols, CROS_EC_KEYBOARD_COLS_MAX);
> +               return -EINVAL;
> +       }
> +
>         ckdev->valid_keys = devm_kzalloc(dev, ckdev->cols, GFP_KERNEL);
>         if (!ckdev->valid_keys)
>                 return -ENOMEM;
> @@ -635,7 +718,12 @@ static int cros_ec_keyb_register_matrix(struct cros_ec_keyb *ckdev)
>         ckdev->ghost_filter = device_property_read_bool(dev,
>                                         "google,needs-ghost-filter");
>
> -       err = matrix_keypad_build_keymap(NULL, NULL, ckdev->rows, ckdev->cols,
> +       ckdev->use_fn_overlay = device_property_read_bool(dev,
> +                                       "google,use-fn-overlay");
> +
> +       rows_keymap = ckdev->use_fn_overlay ? ckdev->rows * 2 : ckdev->rows;
> +
> +       err = matrix_keypad_build_keymap(NULL, NULL, rows_keymap, ckdev->cols,
>                                          NULL, idev);
>         if (err) {
>                 dev_err(dev, "cannot build key matrix\n");
> --
> 2.52.0.351.gbe84eed79e-goog
>

Regards,
Simon

