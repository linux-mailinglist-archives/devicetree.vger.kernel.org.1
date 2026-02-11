Return-Path: <devicetree+bounces-264656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FgiADw9jGlyjwAAu9opvQ
	(envelope-from <devicetree+bounces-264656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:26:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5616E12236D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:26:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A5403044A4F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EAB8350D75;
	Wed, 11 Feb 2026 08:26:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3CD189F20
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798373; cv=none; b=frAoDNte2pUy59XPSQDjW9hGyWO2ZO2SVD9ZPYPRXbZFf3jKpp038hixz7zvMwvdhsv61h2kZ2pHMRF+NvNTqMEdOTSy40JDcwXR5Phu3mvxX0FK/a9mWchOmyix+iVAV3nSL7j005sTzxTWJoHvOEp34S9yCX8dRc+h0Mu0Q60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798373; c=relaxed/simple;
	bh=r9Wla/KAGSmrKoL/4XgQdP4TYp4ywC1zm3v7/o7W7fE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E/yvPcP1tPMNz8vNY/dhl4PXN2y1p9I3FknALZnXCq/iOTzas/E32IDerYuLr61bYlEkCGcfKw6ExCHb8M1aVt6q5sBIjyG8D0w0jhewo+fzElb3ML163D2uBbga8EJTANyTH99foIgvlVHkYbArYAtdyBt4w9nqlz603fls0CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-948c1171392so1133705241.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:26:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770798369; x=1771403169;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUtq8RehO2YiCwI9u9SSNEZ4UqlgXWw6ZYam6FQhea8=;
        b=p3Q3xzOHGmCHbmtDw6GAt7H65yhxVVtBbttf4t8Ag6XfN+dMEM5sadzWkPs6SI2NOn
         8e1lkGkz+3Ouq8Y6RrU9czmq+1TqBbMoFAdFAuyXqd/tgA6SoVSu0vZMfI5rZ3sbTEbx
         Lkit5CFZ4Eg/1JDcG+4EodfCigxA6DwUaAL/7fTmLg7uh1B6hwREoLMvLdPfAyQ5CD47
         0iSVNVQE70cUmxZPqhQMLeOiOCYQfw8vJmDiz4mfB1n7IRm+jUHMQ+6WXS9FTXI88F7o
         rnwKGS7UsFsz7LBT4B+FBpWmVUfHbevk83So9ICQLUH00NErrWrgz0STKlD5h542rf8n
         oeBg==
X-Forwarded-Encrypted: i=1; AJvYcCWTNN+UN4TV3ges+sDK7V5Td2mPvCALn8ECgW66cdgpazunFXa90ME7A1PIRZ1FEuS6Fmcf6LJLOI7l@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkxk3yowEAH+4lw+g3o9OvtdW6iQBY4Y7N3NPnBrAHJ8adW0iI
	36X2J/0mxUAH1vToyVt5FCIbjLaX3H8B69Vy4r9L+GZGtzTUqGOs0TAafTzi47SCQDA=
X-Gm-Gg: AZuq6aLBt0XfFasvIptEc8O/xs5OA9vlva0MCUcs9d1VVrgVXIHxezPGnV58XSTHrjp
	oHyQyrq/ZEg/rcJBBCRm4sqWvrYCY5/yZUq1er6UtYgmMhko3XOkd9+iX5cUggBzSdeJi0CVlZb
	bFXf1SKNWAGQy2ZnDoHgb3F92TigjCoF5gI6MOEHlbERz/ryuGuXZEOfVz3/axsHymqbb0J5Lgf
	HgHjCdsHBM6uOcwN8Q+j7eADZ4TrDLVmfideAU+zkgg2vvLS8NAz4NRI91olT3qrELS7YwhaMob
	YP7Refupsy4cKqnS2VLsveAMVpmxlQkcWTy8ndlGfRpsiunnil6Y0DLmL/CPvO2WY8/iiD25uHZ
	1SsG17ZpuenD12MShjqPXOCbo6trGaC1D/Imq9Kf2QO7uJEwcUsYnZwi3qRKGKwo9pLhcwjXzBS
	b8xvUWef3Fi5SwMEBdhczEp0HwMTasdr12BDXu/l0795t8SHFrLbkJ8MQJqFLY
X-Received: by 2002:a05:6102:508e:b0:5f5:35bd:6fb3 with SMTP id ada2fe7eead31-5fde417928amr455875137.5.1770798369210;
        Wed, 11 Feb 2026 00:26:09 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5fde8a845ddsm400945137.10.2026.02.11.00.26.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 00:26:08 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-948c1171392so1133702241.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:26:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV6zULCQOgeEPKc8AMxde/iUS2JfLecyjmcctMBHfXpU65wmHwj7s17OdRXrTtQ33+yab/Vfrqry0kl@vger.kernel.org
X-Received: by 2002:a05:6102:418c:b0:5f5:3ffe:58a1 with SMTP id
 ada2fe7eead31-5fde4453cfcmr443849137.42.1770798367745; Wed, 11 Feb 2026
 00:26:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
In-Reply-To: <20260211081355.3028947-1-james.hilliard1@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Feb 2026 09:25:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com>
X-Gm-Features: AZwV_Qgck8jsh11uaU1QsTZP3lb4ThuWhGkv_csuiy-E1gDkipfBoAU_AtkEcLU
Message-ID: <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: James Hilliard <james.hilliard1@gmail.com>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264656-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,mail.gmail.com:mid,tq-group.com:email]
X-Rspamd-Queue-Id: 5616E12236D
X-Rspamd-Action: no action

Hi James,

On Wed, 11 Feb 2026 at 09:14, James Hilliard <james.hilliard1@gmail.com> wrote:
> Document the gpio-aggregator virtual GPIO controller with a dedicated
> schema and compatible string.
>
> Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the new
> binding file.
>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: GPIO aggregator controller
> +
> +maintainers:
> +  - Alexander Stein <linux@ew.tq-group.com>
> +
> +description:
> +  GPIO aggregator forwards selected GPIO lines from one or more GPIO
> +  controllers and exposes them as a virtual GPIO controller.

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    gpio_agg: gpio-aggregator {
> +        compatible = "gpio-aggregator";
> +        #gpio-cells = <2>;
> +        gpio-controller;
> +        gpios = <&gpio0 3 GPIO_ACTIVE_LOW>,
> +                <&gpio3 1 GPIO_ACTIVE_HIGH>;
> +        gpio-line-names = "modem-reset", "modem-enable";
> +    };

Looking at the example, it seems you intend to use the gpio-aggregator
as a "Generic GPIO Driver", like in the example in the documentation[1].
Hence I think you should not introduce and abuse the "gpio-aggregator"
compatible value for this, but instead:
  1. Use a proper compatible value that matches your device,
  2. Write proper DT bindings for the device,
  3. Add the proper device's compatible value to the gpio-aggregator
     driver's match table.
The above is very similar to how spidev is handled, which also forbids
using the spidev compatible value in DTS.

[1] https://docs.kernel.org/6.2/admin-guide/gpio/gpio-aggregator.html#generic-gpio-driver
[2] https://docs.kernel.org/spi/spidev.html

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

