Return-Path: <devicetree+bounces-254125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3480D145DB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44706305F30A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C42E337B41C;
	Mon, 12 Jan 2026 17:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o0TwIw1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2753F37B415
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768238709; cv=none; b=L5otL9ke0fcNaDq4p7lRZmtKHmKc6tSci8GCAZKJLJZj+6CqsK2obQ4Pmi1aQHP9JyO6oTiDArFTzt9HPaYyLRRLihBZcTPc5bHtKbnKk1Yw2K9cAXo46EDHCeKjc6/QkTGh0zWA36i+aD0wa0F/g3cRAAW4Hs9UU7F0PWtg2HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768238709; c=relaxed/simple;
	bh=X6KWebVUMzPqWS0oCx8vwMsl6nARPud68K/fbtyq0BU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=haMyxIsAo0t1DiTLBBuSu0RvLmfGetu7plG+xMV+mDVtXh2WFIYSZUd02/xCC/iYx92Hcb1U7uDip4am+mAqHq/CJy/fOBf9YM5IxaSCnM4D345agSnl+oiSKKJQqmWkM7WOPQ5EcFYq/5FTzcLoGVJ912J9zBvcbPDyewKiqqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o0TwIw1B; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59b6c89d306so5953035e87.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768238706; x=1768843506; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fk9cmvNOIeAfliFvuXh3wfBKNNDjshxmhYpmqT6PvOU=;
        b=o0TwIw1BAfIhQ7M6QtR1WM7tgG6WyvoX7ebY8EUqtbEMuMYpRyPWoJncwjc74lztfD
         WHA6M+SK5ABQFWpYUuy9ei9s34EBvqWQos7Oapu4Ofk52He4Kv+bugfAasNg4slZ7xwX
         uvxHXLrUcSejTZufnAtMyXoE7f3MtnBI8FhMB0eumTFKrA5Srg7i43uktVIhQeH2tBF1
         fLD3Z0TPcSNpa9LWZOlWirfTcYNfcmxnBZC68xzEy6m9Jx6S7TTn59QRVhzMIcxeQAZo
         Wi3tEAHUiJExwpeAKI2HdB95ddAR1i0WgzQ9tjY9b7xdOwGMkD2YXUdYD7aNGIFbH2/k
         LaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768238706; x=1768843506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fk9cmvNOIeAfliFvuXh3wfBKNNDjshxmhYpmqT6PvOU=;
        b=EinWZ3iVPzmi1M97qArhPRv635g51sWFVelzaJ+fe6aPecyLy7tlXx7On2TXPHmyjX
         ku1uQIgmIOAt26gevS8XVLVx0y5riMHMFqrCQwVjjzRK13BZKWUs6S1RTRje8Vs4x6mC
         s6sySi92znGjeTM3PfSt0gPkblklnlxyrLM5Yk+IQOhg60a+v8g2UYhdhSun5I0cGOtO
         jN8Khlt/+NqzS2hF/poPnLvMRMz8dwmDYyCN0/U7XIVbTmYV+VtlBmVteQ/zhEcj2cPR
         WYTs5ELZp7fpIzLswOm0OrBEkaw9MxrmPsJT2ps6FxRM2eBvtEZZ7LkgAtuw87yttnYO
         cR6A==
X-Forwarded-Encrypted: i=1; AJvYcCWgEIelAfZfWcMfoONTlYNWBHOjbiGJQj5JrAUgcU+VuomXXYI30rwONVuhxADCbI1GCz6mZQUNl7jD@vger.kernel.org
X-Gm-Message-State: AOJu0Yza8g7GGnVKhZ2Y3tEG+DDQUk694YFdNJDgqAusnGWIy2JPv/GZ
	m30Pp+Wq+S3iByO1AYE0MY/f7QNJ9hFIJJ2VO30CvFD//Ovn1Lq2ypIO7hxpHfLEi2jQef0FMxX
	JmNDWOv9KsfRFo1yopVzS0alcq9noSx7GFa8Fck/mTQ==
X-Gm-Gg: AY/fxX5pX1500+CgtSw0dmXUJG9h6rbvk+aZTXKkAoFl5by/7SfAWSN/OT8RBlaLQpM
	Oe6Uj6fo+1zpg0b7TeYjOtGCujJSZXs47FXG5c81j8bz0F1+6dNuiiOsJOjp9OeHE4+v6ZUbv2o
	njg9aCuH03edMKa4KnCnXhGDFa8wky/f1T2oZGCR3Ccxt/bgX5orb5ssYsAh5Wby4PdqXRMwuX3
	OYwxuKHU8MmJq/pznT7NMa050y7qDWmowNlMq0+MSZWJzjAKh6RHX5MFvw4mSB6ly4NleJ/
X-Google-Smtp-Source: AGHT+IGizbiXsJz9jmzpUETK1lPi15hPJXZIifcreFFSHTDP1y8wkuOOklWcjTESXtYZfMHNtqs6b9rXwJuWOVxytHY=
X-Received: by 2002:a05:6512:2247:b0:59b:6d9b:a990 with SMTP id
 2adb3069b0e04-59b6ef06817mr5178496e87.8.1768238706131; Mon, 12 Jan 2026
 09:25:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110-mmc-pwrseq-v1-1-73de9d6456f4@valla.it>
In-Reply-To: <20260110-mmc-pwrseq-v1-1-73de9d6456f4@valla.it>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 12 Jan 2026 18:24:30 +0100
X-Gm-Features: AZwV_Qi2ZLORoyR8MVAoIkq-RuSlRVIjMemhNpVIfvSgYqsjmsTtyGlP2VFJ0D4
Message-ID: <CAPDyKFr3u0voSXKDi-9sEPA4Pe5x91Y6c4ZQHrRqq0OHuu5yEw@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Add support for "mmc-pwrseq"
To: Francesco Valla <francesco@valla.it>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Jan 2026 at 16:28, Francesco Valla <francesco@valla.it> wrote:
>
> Add support for parsing MMC power sequencing (pwrseq) binding so that
> fw_devlink can enforce the dependency.
>
> Signed-off-by: Francesco Valla <francesco@valla.it>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
> Resending this patch as it slipped through the cracks (of my attention,
> at least).
>
> Original submission is at [0]; there it appears as a v2 because it was
> the first time I used b4. It was also part of [1], which wasn't really
> a patchset but a follow-up to the boot time SIG meeting.
>
> I added Ulf and CC'd the mmc list, hoping they can (more
> authoritatively than me) reply to Saravan's question:
>
> """
> I took a quick look at the documentation. It's not clear to me that
> mmc-pwrseq always points to a supplier. Can someone with more
> experience on this confirm that is what it's supposed to point at?
>
> Meaning if A lists B as pwrseq, is it always the case that B needs to
> be powered on? The binding documentation doesn't say anything about B
> needs to be powered on first. It's just saying A and B have an
> ordering requirement.
>
> If the meaning of the binding is _ALWAYS_ B needs to be powered on
> first, then yes, this patch is correct and I can give a reviewed-by.
> """
>
> [0] https://lore.kernel.org/all/20250930-mmc_pwrseq-v2-1-80a8c6be0fb0@valla.it/
> [1] https://lore.kernel.org/linux-embedded/20251126-beagleplay-probes-v1-0-c833defd4c9b@valla.it/T/
>
> Thank you!
>
> Regards,
> Francesco
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 4e3524227720a596b0f12976f83357851e9b94f3..05ae33a58b5aec0a8f4d3b7237ce88066d86dc9d 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1410,6 +1410,7 @@ DEFINE_SIMPLE_PROP(post_init_providers, "post-init-providers", NULL)
>  DEFINE_SIMPLE_PROP(access_controllers, "access-controllers", "#access-controller-cells")
>  DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
>  DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
> +DEFINE_SIMPLE_PROP(mmc_pwrseq, "mmc-pwrseq", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> @@ -1557,6 +1558,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
>         { .parse_prop = parse_msi_parent, },
>         { .parse_prop = parse_pses, },
>         { .parse_prop = parse_power_supplies, },
> +       { .parse_prop = parse_mmc_pwrseq, },
>         { .parse_prop = parse_gpio_compat, },
>         { .parse_prop = parse_interrupts, },
>         { .parse_prop = parse_interrupt_map, },
>
> ---
> base-commit: b6151c4e60e5f695fac8b5c3e011cfcfd6e27cba
> change-id: 20260110-mmc-pwrseq-e885e677ca2b
>
> Best regards,
> --
> Francesco Valla <francesco@valla.it>
>

