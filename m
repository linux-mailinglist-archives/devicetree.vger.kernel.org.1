Return-Path: <devicetree+bounces-245849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C89CB6074
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 693783030918
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3420531355C;
	Thu, 11 Dec 2025 13:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CaGRNucx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F5B2FC881
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765459762; cv=none; b=YZak3PWgDcYalDI1LjLtN3FBlzTxR6a92xDi0yfd76o42IVTO0THKUAZTp1ZI3f6SfqhsNwBKEK3asIItYAbrHFffOT+chrFv+rodh26JGDyC9YytggasMAUpPwO+dfQ+QqfEDccgUYoA3an24vLXpG3MN/HbJ0ZsrAmmZN5N70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765459762; c=relaxed/simple;
	bh=ojJInOep1VLoL9h+fD5rBM8sQU+rlkYFjbP0Rr11rb8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SK8DwsCHqfeqV5N11s7tqGTY0V8Y7hXJSXav/Zq9sOV+B7jS+W7f67Ril5WXKIIfHusL3RBwy+k5YpgjLbotkzQGLTqg15owydey2A1mpGUWnUtfFbOGviuJYvFnKzHpXcjtWphaDRpDFquTzqK4jr7loUUYkwujdKjsP4+Jrq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CaGRNucx; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6495e5265c9so155703a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765459758; x=1766064558; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=40J2ufHoRtplJjSJlhlkCbvquopI47IOlsToESLd6RQ=;
        b=CaGRNucxGZV1EsP8+WOMWwVBb+CcctYdLuGG3lT6PoDoHwIQVWuNpJqdJgFznT9jkc
         Y98DMN5swJiVXdUB4znRBTVLH5QBXC2OUebBVdDOWmwVVqkDvyeJy4PhL7jNUrdDW2AF
         b9sZmVAXZ1WoTkjsUDpqQz+HAxiEbcmBym1Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765459758; x=1766064558;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=40J2ufHoRtplJjSJlhlkCbvquopI47IOlsToESLd6RQ=;
        b=LcNW8tTB3hll94T/lp+lL544VvuoBCiy3TQRXq6ZTulNQfgDqrSwGe7on+FUATqvFi
         57EfxDVZW3UAkiJ4EnQn5zH7BzHE9kc/l22MhuDeuzXLhUNmltBRYa8SrH+DigtrggWB
         8PBQ3xRVoxzDeVY/fOZC54U75aeUHo2sv4PeRHVSWMutjniPOmoBspwd2XoOAli0mTwu
         lASZTggnvO8ayq16g+9qqytgR4jwTRR7xuGDxL6gYad1/XtT7DyhbRoV9xd0GFRnqZMi
         PJUonK7npxTHFFGGPFXaedjWWtcedwSnkYclzclNIKh7Zr2QSbsYdyCyjoKhQLS/i2y6
         SBug==
X-Forwarded-Encrypted: i=1; AJvYcCWwQFLvyWADBuOn5CwtrY4Zi4wy902FDplFDcp1XcNDnrWOJiKJe9LhqBiExfAd45od54jbHKOyHY5n@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc9apAqPso8mmKriZxNvb6pMmuQ9hjFgAOs2pg3b92z9WOMKR0
	LmZUQ6YS5clgAChz5d7+8bFK9kp4OvOX8FGaypiRRKZD3DOWqhiJQ0m9TeKY48qGj/WxAwvRKZ2
	H76nC0r/FGrjjiOf1Ie/uoYP9cCWIo0ULOQrSS9wyLE0KHyZyCHg=
X-Gm-Gg: AY/fxX7/+gPJxOigw4T0ADNaBfXgDFP0EjM/3JfTSKRWPN6PCD/0kFXbTUnfIY333z1
	BlYpGlHAmHvpnQqGJXHX+ZrSldlpp3bSIy3WCqDfQKIMHE588gjLAbqgsg0pidpvIxSl1Hngvbn
	r2Ne1K+irPBPMRL3E77+3iYliOJvqcdYIhLRctsx2JA4f9aRL5RsZH0SqcUywxJ88SHvfj/vZoo
	MTT9Vncf1VH4GiGmyJ4+O2RTmWa0UjZWZPalTEZjCsqrCBFkIeJqibZOKQznMUfY9qrqA==
X-Google-Smtp-Source: AGHT+IFOJf7KsX1gencvXlznomNuZ47WJRKUVY0snnRl9GGqsPTHs1K0HSR+8cnk6z5dt0Wl//1dZqiYxyZLB7dcvGM=
X-Received: by 2002:a05:6402:50cb:b0:641:1cd6:fee9 with SMTP id
 4fb4d7f45d1cf-6496cb6b810mr5048329a12.1.1765459758184; Thu, 11 Dec 2025
 05:29:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251209154706.529784-1-fabiobaltieri@chromium.org> <20251209154706.529784-2-fabiobaltieri@chromium.org>
In-Reply-To: <20251209154706.529784-2-fabiobaltieri@chromium.org>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 11 Dec 2025 06:29:04 -0700
X-Gm-Features: AQt7F2q39jfzfQcSjoh2PhZIB0p10Hq4RkLwBSMZXGJoO0Utb3wqUiNtN-ClMDg
Message-ID: <CAFLszThG_iHbm3A=X585_SVpLgWVqoAC9j_qJAG4yrJxfkG5Cg@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] Input: cros_ec_keyb: clarify key event error message
To: Fabio Baltieri <fabiobaltieri@chromium.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-kernel@vger.kernel.orga
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Dec 2025 at 08:47, Fabio Baltieri <fabiobaltieri@chromium.org> wrote:
>
> Reword one of the key event error messages to clarify its meaning: it's
> not necessarily an incomplete message, more of a mismatch length.
> Clarify that and log the expected and received length too.
>
> Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
> ---
>  drivers/input/keyboard/cros_ec_keyb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Simon Glass <simon.glass@canonical.com>


>
> diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
> index 1c6b0461dc35..2822c592880b 100644
> --- a/drivers/input/keyboard/cros_ec_keyb.c
> +++ b/drivers/input/keyboard/cros_ec_keyb.c
> @@ -269,7 +269,8 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
>
>                 if (ckdev->ec->event_size != ckdev->cols) {
>                         dev_err(ckdev->dev,
> -                               "Discarded incomplete key matrix event.\n");
> +                               "Discarded key matrix event, unexpected length: %d != %d\n",
> +                               ckdev->ec->event_size, ckdev->cols);
>                         return NOTIFY_OK;
>                 }
>
> --
> 2.52.0.223.gf5cc29aaa4-goog
>

