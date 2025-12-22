Return-Path: <devicetree+bounces-248845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3D7CD61C4
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 716473001E2E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D5C313555;
	Mon, 22 Dec 2025 13:16:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040AB3126C1
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766409377; cv=none; b=D+MH6gxfih0lZ1O/rgTY6HibIlkMFKsGq70g4ON4u/yMaMCCcs77CHAbpphxBT5q56usxqhrRWLlr5NqLfZ9kfZgWGd4nLrgJ+xAMIQLgPYPuR+4CJ76Auzut/6+a6e/rZl+iRNI/8CjkGxY4ycHKCRLpYfujP/5pG00gaTlGzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766409377; c=relaxed/simple;
	bh=5qy0LVDQI/8V4lQP8j4gHRFuOP8c7jSbtRzhHciotQ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zl2sjhyWj4g9Rgbk0wsuqUKBfGtsVDd4zAwBeAjLfv40F5l7gs0s82daO2Ver8r3SaTtNCFAbZRXQ9gx+c5acCc3IKVfYvTpWWdFOz0HF7NJhuqKZJRwcuJsIo0lHSBlJ18r6ftRa4lv0LPsCh6XjJTY3TC7qyMf4HUd6Rubg3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-559966a86caso923974e0c.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:16:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766409375; x=1767014175;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvtN81E1khYX/7Xfo+cWN749NIQGHVHkmuXWl3/lbfQ=;
        b=a5VKDQTmMEKo2UtQHr+8LzVDvKGpDsqUPnCsdnWBLP6u2P3AEG86+V4bCtdGL0O9UW
         /UMt/01gGbqDtmnAQHLE1vu2vxux5QEHu2O+/Wv4uxn71VBBHHsU2EeM6/zIvAgWvGby
         bI6Uz3vWCiJTBn7+rHm0sOuBbyIycz7zhpbeHQzELopVcr4X/I8+urr2U1QVHU28cbKr
         RTM/xKCkdhw3TM2Hga3FguryuDTmt9LVO8aeqVg6XVHi3Zujp9az4Hb1SgeN02qcNovP
         jf9tKhn7Unknts14YDy+HOr4R/2X5UyRQF/pMSv2Xwze99AxpySetFVxu6QkSG58JkMY
         fgpA==
X-Forwarded-Encrypted: i=1; AJvYcCVk4Frgn905xEvnSTk6v4TVzKEKL2Y1NulGrzlws0zXLh/9pmfrj+PAAIB0+XMB3wjV8sNUsHa53lvy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5xUOACQ6sbHfrbal7i9JbF9zN9v8ZMK+sg5Oxm42ncLa/yhLx
	7gLzHWyLlCcERC9aXIujNyd1jxgndodDK75YbrOiK8S8oWI4O3n7LiInP/fp1uSN
X-Gm-Gg: AY/fxX7ER+9onNY/mJdxNdKey1OYlMRhDZlR60HZWdW5GyCTul7Yz4LtXePBXz3N8ua
	U+CuYEpsVXHcvRz+cEw2Kj1OsjCefxquv9fSlPuyOFxtrATO24kj0UsXJd04lpHQ5Fp+r3vqgVi
	btuPfyAUgSr3XanBlaz0hZKK4BlwM3k1yN/eOrzL26EqvzBqmSZqgxHkiz60KNoyZzid4YJtcf1
	DLzropCyQkWQCwLYIRK7beKGXGJUXFWcL4DDOVEKRkDDf/p9wFPEGaJnvwRXbzGJK2/sYhnf2GW
	80OE7lGidlaon2RROhzchw4co69jKdBEISK1NL/q5FzySJRBV4U/2akmat5VECqwDYGBkCWD+4z
	+2hV4i/icjuS3fgBRjS5mJRssl05mU42Ul9qX4Eu5L6jyxIhYbDr/+v3rLUgChZt2Bo8wwwXSED
	gBOwl2kBwxkz/jTQeMoGbbW84U3oVU8hpPBGBrkEBYtos6wdpm
X-Google-Smtp-Source: AGHT+IEEni0Y4+UHCq0rYs+XOaJu2TTYzgFZmA2mv0fyU5gzxYiSzMuDY6T7LD4F8l4ds+DqqLUDCg==
X-Received: by 2002:a05:6122:20ab:b0:55b:1a1b:3273 with SMTP id 71dfb90a1353d-5615bd27e1emr3087187e0c.6.1766409374829;
        Mon, 22 Dec 2025 05:16:14 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d132a6csm3328705e0c.10.2025.12.22.05.16.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:16:13 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5e19e72c2a7so1135118137.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:16:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUCtiOCdkm4/o3fNQuW/wJdokRMlsiiwzv1EMBkU9soHvEQv0e4L4Y2OTxUfcwCG8e8N6gyWInJ+meB@vger.kernel.org
X-Received: by 2002:a05:6102:2d06:b0:5b1:15:1986 with SMTP id
 ada2fe7eead31-5eb1a64353emr2784298137.15.1766409373012; Mon, 22 Dec 2025
 05:16:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201112933.488801-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201112933.488801-5-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201112933.488801-5-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:16:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUm-31eJyA38pN0Ou=_HwSPaRHntEOi7FSCVPDd8zSmxA@mail.gmail.com>
X-Gm-Features: AQt7F2pH1olH6yEHXaAxTUGM1wtNbPvWiskaMHHzRKGkPhpTitp2Op0Qc7lDMx4
Message-ID: <CAMuHMdUm-31eJyA38pN0Ou=_HwSPaRHntEOi7FSCVPDd8zSmxA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: renesas: r9a09g087: add ICU support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Mon, 1 Dec 2025 at 12:30, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/N2H (R9A09G087) SoC has an Interrupt Controller (ICU)
> block that routes external interrupts to the GIC's SPIs, with the
> ability of level-translation, and can also produce software
> and aggregate error interrupts.
>
> Add support for it.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> @@ -865,6 +865,79 @@ cpg: clock-controller@80280000 {
>                         #power-domain-cells = <0>;
>                 };
>
> +               icu: interrupt-controller@802a0000 {
> +                       compatible = "renesas,r9a09g087-icu", "renesas,r9a09g077-icu";
> +                       reg = <0 0x802a0000 0 0x10000>,
> +                             <0 0x812a0000 0 0x50>;

"<0 0x812a0000 0 0x10000>", as per Figure 5.1 ("Unified memory map").

The rest is OK, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20, with the above fixed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

