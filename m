Return-Path: <devicetree+bounces-255602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F011D24AE8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F345F302C218
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D37C39E6E3;
	Thu, 15 Jan 2026 13:09:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F2639E6C1
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482568; cv=none; b=HqGbSjnygl/OPunpt9h3pM2KeW/NRlw96nNkZ5UtA7H0qLO1i9cAiHBhvTm3V7WnEairbmQ02vF90s3vypCkQV3ePYx+IzF0gVdWltLDvTwz64aA4YBaqBstS/TZc2QhsZjwGHjBqHhxA0JNpvLCQTdvnYLM7rj9ZzApSedLX1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482568; c=relaxed/simple;
	bh=Fb6cfrlDYSTdVoKacM7aiIt44RbJJ9yXtiwK/Pb98Pc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sFQPwIfhGbl1ckmMlbei6rbTtXgpPpwsgsI/4mktutnxh/KZ2st/uFoQYJuAquTHvERkiKlXiyQSWfLBDhi/sd5wAIZUlRC9FtO/kOExSQJKG2BTFOFn2jRqdRgV41MSVPHf//+/tGG3uxpr9YYY02V0XDnSP6HxKEr8KpuISb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-65f65bf8c70so949731eaf.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:09:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768482565; x=1769087365;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5LfkH5b0Cd4aXVhitL2lfRzadsZBam/RVDEkq/qT48=;
        b=ojtIwn1MFFPJ5+NXj/2hEhQd+5jdOVEn9zdmHzy82+cTdj2D8mNcKL4dQrQ4lRvsmW
         PkZLVxWNfutgAWQU8cxSybnLkcIg/NLD8spLFnH5NqauIe6eVWqrbfZDej2hPeWJTuuL
         kahUaOzJzpMAAUTrrKd1rxxKxNqXXuX8VOHesyyHORifhYsFJn+neMJsxIfFUIDW4wAd
         Oq9cxij4VS6ptPDfmXg7B8tOGmy5tW+jxs7sZZNlVWiPUWlxEqeI6TjzuwQn1VwwkNTc
         8/qkpwIYovWZFvpQRbwlo6lYqtxql3V5tf7tjeDUoxdAOLIUtLGzNaYins5+Ywq0VVMQ
         Lccw==
X-Forwarded-Encrypted: i=1; AJvYcCWLRFW9/o5hjiGG3OeBvWAExw8tazk7p3UX7MxGKlTHb0Df5LM26NAUNnvagPBT7h/I0g8jDJ2UmOCv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5RqRGxS1pYoAm+2LMKZSDrmioW5mIZT0LIqQGjT7YZqOC4IoG
	J5XMVT3Xp1zuP91GnnutepTsq5g/Gu7W0Nv8YPvdp4PqUbmiIUlYLeIHg8eWNANr1sE=
X-Gm-Gg: AY/fxX4eUFpaa+UsOAe53h+3LbPfgJqueEqBBWjSFS6B5D6tthjVFcMOAzE+3ew81or
	FO46z9TJBcD0k5kx+ctVDKBqgSADC3x4td3N5UPb36h0wlBMX2rCMIJ/pqakTLX3wOqWELCiuAv
	6iW0lOoXjAMOEtDie17KyHML1xVK/4IB3KXVBhXUL0sk2ENIqeBhXW8JfUVZV/qdLqOu+cWh8W5
	bvyF5rBkAD7zicAyIiPKLYbhlS4t8LjV7nMzcFNdSvAvUNIOTom6sI8hY230TtgsQzKNFC1BH+H
	iT3gXosmxD5Faf7L7Z4er+mYK8vrskIMMkPj3ak2C2TtCbqypvAPmZbeZxaYZ5HA0KwiBNGnRa3
	wLCiA7xd6h15HYb6FU2g4s65HtaghekaokZyTtXFaHa1CDSDsOe24WEE2dpv55YqVRXBSOSlZFq
	lZAAjimRGUNFgBAEOlV/YYsldIBou/xJqYOJ1SZNFF+fxnJKNl
X-Received: by 2002:a05:6820:4d4c:20b0:659:9a49:8f06 with SMTP id 006d021491bc7-661006279c1mr3702559eaf.23.1768482560571;
        Thu, 15 Jan 2026 05:09:20 -0800 (PST)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com. [209.85.160.43])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65f48bec1c4sm11110993eaf.8.2026.01.15.05.09.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 05:09:20 -0800 (PST)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-40438380b88so327153fac.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:09:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXZUKFXpMcmO8yQLN8IrfXlGJwD6s9IKgWIvOMVv01QQQVResrWldZUM6VeAbHv3k1d6jEJvLxE0day@vger.kernel.org
X-Received: by 2002:a05:6122:1311:b0:55b:305b:51b5 with SMTP id
 71dfb90a1353d-563a0a2026fmr2362086e0c.18.1768482061472; Thu, 15 Jan 2026
 05:01:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-schneider-6-19-rc1-qspi-v2-0-7e6a06e1e17b@bootlin.com> <20260115-schneider-6-19-rc1-qspi-v2-13-7e6a06e1e17b@bootlin.com>
In-Reply-To: <20260115-schneider-6-19-rc1-qspi-v2-13-7e6a06e1e17b@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 14:00:49 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUHwqBrNMQTO-g7yUA_owWXxT6bPi34Oxjt-J7N0Q2CXQ@mail.gmail.com>
X-Gm-Features: AZwV_Qj-rtbfaLket3bPJJXXpuT_68XztGQx-eBD01J-7kSXq9lOwz27T9URfFE
Message-ID: <CAMuHMdUHwqBrNMQTO-g7yUA_owWXxT6bPi34Oxjt-J7N0Q2CXQ@mail.gmail.com>
Subject: Re: [PATCH v2 13/13] ARM: dts: r9a06g032: Describe the QSPI controller
To: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Vaishnav Achath <vaishnav.a@ti.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Santhosh Kumar K <s-k6@ti.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Miquel,

On Thu, 15 Jan 2026 at 10:25, Miquel Raynal (Schneider Electric)
<miquel.raynal@bootlin.com> wrote:
> Add a node describing the QSPI controller.
> There are 2 clocks feeding this controller:
> - one for the reference clock
> - one that feeds both the ahb and the apb interfaces
> As the binding expect either the ref clock, or all three (ref, ahb and
> apb) clocks, it makes sense to provide the same clock twice.
>
> Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

Thanks for your patch!

> --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> @@ -66,6 +66,20 @@ soc {
>                 #size-cells = <1>;
>                 ranges;
>
> +               qspi0: spi@40005000 {
> +                       compatible = "renesas,r9a06g032-qspi", "renesas,rzn1-qspi", "cdns,qspi-nor";
> +                       reg = <0x40005000 0x1000>, <0x10000000 0x10000000>;
> +                       interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&sysctrl R9A06G032_CLK_QSPI0>, <&sysctrl R9A06G032_HCLK_QSPI0>,
> +                                <&sysctrl R9A06G032_HCLK_QSPI0>;
> +                       clock-names = "ref", "ahb", "apb";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       cdns,fifo-width = <4>;

<4> is the default, right?

> +                       cdns,trigger-address = <0>;

Where in the RZ/N1 docs can I find if these two properties are correct?

> +                       status = "disabled";
> +               };
> +
>                 rtc0: rtc@40006000 {
>                         compatible = "renesas,r9a06g032-rtc", "renesas,rzn1-rtc";
>                         reg = <0x40006000 0x1000>;

The rest LGTM, ignoring my comments on the bindings:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

