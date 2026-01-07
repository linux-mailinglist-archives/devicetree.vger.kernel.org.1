Return-Path: <devicetree+bounces-252401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 51460CFE628
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 00B96300ACA4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2E832AAAE;
	Wed,  7 Jan 2026 14:36:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com [209.85.221.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1443315772
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767796560; cv=none; b=B9q2z9AFIHstYZ0kGr77lVMhMqxUmPFhiwaKSgRhlW0paUtWEu+LbT1yXKR17KzPTqqJtdVEdK0T14EkYZ76WyadvHVzpQnfAznedDkDzoYsod+UWlMfJleMTp1cbPXP1mwKE3tOlQe3zOGr5AtXpNVR7hMAw3f+dMRhHS/kVvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767796560; c=relaxed/simple;
	bh=6lxm2yCRzymiJ3PB8Ax4dTtiSd5+d+ADW+gyDpHpCqk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B6l5kcfvEUwifIgHIUFrALhjEFcT2/3v8/shGrvZEojPBtsH3K7szNKGqmCZkxePjUKc2s3LxammJhbQNYYSEgDbZ3HTJoD07fCwgRoFKbeicAZ7q7X1ln+Pld6KDfFMk/3NrW86L6NqLiwdLURPCAr+xGCKSyOz2bfJAstLyhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f196.google.com with SMTP id 71dfb90a1353d-55982d04792so1453925e0c.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:35:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767796558; x=1768401358;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GCG+VCgfKP1d5FB1FIYpGKsmNdPDYa7lbTJ3VDOVxBg=;
        b=jiiX/l/YAfAZzAhBuCE3uIxno2OyN7UjWJvysGCPdS68IFM0UJ/UGDl2i/HjH1v0Fh
         uWyBria9VJa4DglpbcUP/tIwgg9FRKrmgjH/w5fkGVOraFwApgA0wFMLZVUmv1ACuPi7
         8gPJvU2WdCWW86DPXG1yRG7GkuwHOSTPHRHlBpMJvEd4yQy9kPYue6zaHh3XnJ2WxorY
         CGwwcwM9bjRiK7FbK4nTMmsTEYc1U2ybowhXTn5MUACt25ciKlgd0xAEMnzdJjgafw4G
         yBUyCto53BC5x37tZXdVmRE8IrusEMu4ubT/FXjeJFltep6BhMoHSQx1qwleDFqP3+VK
         /lyw==
X-Forwarded-Encrypted: i=1; AJvYcCUFfSE0t9ynZOESwuehJQZRS7Td93RNH6tgUOBp5rOHKMYATaCoYqdumKOnZgyYT0awQ86Jr4a5L3C4@vger.kernel.org
X-Gm-Message-State: AOJu0YwqUiUvM4NgER9b8UL3lK8Ia+DA1CIgIujoH/qXy+YWmzqoVRGM
	v6ywkqR4PRKMCmxX1bvP7/yyIukbKiQWO3C1YSSugf09HvBdHXQMtDQgw54Va700
X-Gm-Gg: AY/fxX4gZpKCoj5xds3AdcVcu326AdQiY+3e7nyNtY3oaWwi7L36z54qAIVhsPYkvXe
	LkrMZJBQmF1jSX2EfxX4abFFf4je76V2qUHaojuQykCkAWlxSgpostB37lonVm83gHfsGqDw7et
	bv7l6VF58VNFm8rNQEMfUx6SuskCPMWFG9eNOij5NMuP+k6FxDngLURVPcobKr/Ifgp1mrRrZTF
	AOkxrz69AqNCwXE7tcnaTZIy7UvmLjjsIlL9Lgl7WFKvpFnMpYigofJfsYNPdNyU6hADlE9v9xw
	SvxcdjbkiRTVjo+oD530EYObSp7bM1eiUuGgKMvIOIZ/hPAJiWixkQWA2OxKL0pMKuG6i5Z7Fie
	6drc4hzXo2Kh50BU8/l3j7i9TlQJpaUpVz1BzFXpnG0/BsLAWawNz2c8E3qTPAnEMwBrdDO/rZ8
	jGzqhpWq5p5BdcoZRZOgO3AsK72jd0VH75s3BNGjrZgTe9ipH4MP8c
X-Google-Smtp-Source: AGHT+IGO/9VPMS+tzNZ84UJFZEid8XyIvde3dRB0ETayaKNGTMQZR6IOVCFW151AEgZmmHn19u8IEg==
X-Received: by 2002:a05:6102:419e:b0:5df:b57a:ad28 with SMTP id ada2fe7eead31-5ecb1e6f414mr993648137.6.1767796557822;
        Wed, 07 Jan 2026 06:35:57 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124e97b1sm2946760241.15.2026.01.07.06.35.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 06:35:57 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5634feea416so258769e0c.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:35:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVh27k9bALzYr1CtsoVlToh6TbE9mKuhXTGVIaxQstu9vOM6ZwwPze8Lb6fwSTEVkNPM0C1GHlw8sgp@vger.kernel.org
X-Received: by 2002:a05:6102:5695:b0:5df:bddd:b590 with SMTP id
 ada2fe7eead31-5ecb6905a3emr1117507137.34.1767796557085; Wed, 07 Jan 2026
 06:35:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217080843.70621-1-shorne@gmail.com> <20251217080843.70621-2-shorne@gmail.com>
In-Reply-To: <20251217080843.70621-2-shorne@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 15:35:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUaO_PwWygW8qss47W_ErB4pm1Z2HQ+edvw1-x7ce7oKw@mail.gmail.com>
X-Gm-Features: AQt7F2qBJgoY9l-u0hf_v_IupX5oD1Vi4qcbhjbPDLtZk-LVqqhekrQVxBOS6ug
Message-ID: <CAMuHMdUaO_PwWygW8qss47W_ErB4pm1Z2HQ+edvw1-x7ce7oKw@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: Add compatible string opencores,gpio
 to gpio-mmio
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

On Wed, 17 Dec 2025 at 09:15, Stafford Horne <shorne@gmail.com> wrote:
> In FPGA Development boards with GPIOs we use the opencores gpio verilog
> rtl.  This is compatible with the gpio-mmio.  Add the compatible string
> to allow as below.
>
> Example:
>
>         gpio0: gpio@91000000 {
>                 compatible = "opencores,gpio", "brcm,bcm6345-gpio";
>                 reg = <0x91000000 0x1>, <0x91000001 0x1>;
>                 reg-names = "dat", "dirout";
>                 gpio-controller;
>                 #gpio-cells = <2>;
>                 status = "okay";
>         };
>
> Link: https://opencores.org/projects/gpio
> Signed-off-by: Stafford Horne <shorne@gmail.com>

Thanks for your patch, which is now commit f48b5e8bc2e1344f
("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
in gpio/gpio/for-next.

> --- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> @@ -18,11 +18,16 @@ description:
>
>  properties:
>    compatible:
> -    enum:
> -      - brcm,bcm6345-gpio
> -      - ni,169445-nand-gpio
> -      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> -      - intel,ixp4xx-expansion-bus-mmio-gpio
> +    oneOf:
> +      - enum:
> +          - brcm,bcm6345-gpio
> +          - ni,169445-nand-gpio
> +          - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> +          - intel,ixp4xx-expansion-bus-mmio-gpio
> +      - items:
> +          - enum:
> +              - opencores,gpio
> +          - const: brcm,bcm6345-gpio

What is the rationale behind using brcm,bcm6345-gpio?
Given brcm,bcm6345-gpio has 32-bit registers, while opencores,gpio
has 8-bit registers, I doubt the latter is compatible with the former...

>
>    big-endian: true
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

