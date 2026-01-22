Return-Path: <devicetree+bounces-258331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDSBIjwIcmmOagAAu9opvQ
	(envelope-from <devicetree+bounces-258331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:21:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAFF65E78
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A0E9F68C17E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58582421A03;
	Thu, 22 Jan 2026 10:59:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7816434FF4E
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769079574; cv=none; b=NzFy+C0v1xgH+0tymiXgf3T53B/85in2nF+y4NsI/xlyzvl5DLeLZrr3x+nBMSX5WfKVKgDe1+oBhfU6p3L2GTL2cxAGW/bL5jQGSK/mV8M8xNmAH97iPXOjjXG/xVz+oqms7jp5+FSpH6iehZWfMgwQxYz7RPQWkLETxlnlqk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769079574; c=relaxed/simple;
	bh=ksDGpOXCJytcfazjq7qr0daJEsBAjKRTbOfGaNZY/zA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qro5LFhaoEMPs4cgzBBwG8OHlanFqNBmemvalRJZNku+1gCXV1PGNKFwtSGxbVUkjBt1WgahH6Pacnsj3i+CaLAkn7EKI/v34syz29WjKUnkgPO/FV1VwsQH4Vg7IQjs91vKqJ/YX/6o240USviwkm+0ore5UgxkjPQUZQaDcvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5eb8f9be588so617692137.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:59:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769079571; x=1769684371;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/e1/pm7FOREOhCEowWrv0t0/89zmVnX1GYt8i07R30=;
        b=i/rM1/vpFJRYLO3o/Khmv1eGG4O6mCrb8xi/TElBE4fPcHY5jTGM43Cup6Gt7kXsSN
         k6sXLYpwBmll8QOtjvfHMAhSzSu4Rnz4U+AuveaYXHZwYUFoHfQjp/utnet6MjSfVp3S
         9kq2M3rTTHxWScdyM4LIefkCRUMNWAvtnaB2nPVtpiu1b1OZ3WfLo1BjZfWtP0IZtTOK
         tYrzIqzm1RCU0PSg6ikzvs2YZAuf+MPsy5SDZ8zUMAzLBMhTKogVuKY7c5im9oR/nUe3
         vLUGHBaN7+Md8bRS5y6INmiGL+e29K57NLKj8fkyhnkZnLBWmCadHCUBomsC16JXdMHc
         zjmg==
X-Forwarded-Encrypted: i=1; AJvYcCXxr2iVTS7kzL54/cHFua0bJH3NDHvNuVPdY0i/UHf6vf3jDjxN8C2wwhJ3aeQ1bGbxyk30qbvuOBNn@vger.kernel.org
X-Gm-Message-State: AOJu0YxDBE+H8GRPZ3DLmB36HrCJcFwTQiMWkN9c0Z3dYCp0GVKF/dZk
	47zHVOuWcWV83BBITdKJmUAAUARNtazuxiLqaoO4qcREEcldHI5jw46/4IhYmtrF
X-Gm-Gg: AZuq6aJATbXkmcDm+1AZb9mc6xo8frHs7gK+eBr7ojEBa3gJCvAhXGjFI0laMhuJq6F
	VEUkj1vPm3H/w74IANT0/MvPPkvogOX63kQUN0zWN7ZxVar6yYpMd6MUYFzHMum5nFTm3E0WOpV
	gT+hu5oyMaiFq3UhoVX/SWrTBRobnQdWldLgUpnPG7bo5nyGgMMdAfyKlP2I3YbxpdtTITr/N8j
	iXUV7WzmnrpiOXOQXc9Rd5tcL56Mu7GoEqGz7ABZ6ZqL1eP6TFpLJh1PSIYAsmYB5td6Z+0Uiyg
	QtWo2gndOr2XWMGfmFyry9BY89wMKvUmoUYXirg2zF0aqTtIW8GIMlByGWnvGgoxQ3lM7YVz3jH
	etQn1erzOM+uHmzDVMJUBpBBo+e2I1BRIvrKv/4Ho3ErtGSJNqI2u2cWIavv6OJKYDrEKiIiWBx
	Rf+pTES4jl6uZWVVabDMRmMpScIABmVfTOtDVCm3akemigN4BezULp
X-Received: by 2002:a05:6102:3582:b0:5ef:a164:ebed with SMTP id ada2fe7eead31-5f1a7210563mr6651373137.43.1769079571353;
        Thu, 22 Jan 2026 02:59:31 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a68ff962sm5879437137.1.2026.01.22.02.59.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 02:59:28 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56365984503so498739e0c.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:59:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKykpZber8nvY8tLS7xTIXUT9ITLRgQqossYYRe+Uwj6GdQsAvYO0P4sRPBc2K7PidyBZMgjEhex9N@vger.kernel.org
X-Received: by 2002:a05:6122:2187:b0:563:68c4:16fc with SMTP id
 71dfb90a1353d-563b73d9bc4mr7241710e0c.21.1769079568171; Thu, 22 Jan 2026
 02:59:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121-schneider-6-19-rc1-qspi-v3-0-43e70fab4444@bootlin.com> <20260121-schneider-6-19-rc1-qspi-v3-17-43e70fab4444@bootlin.com>
In-Reply-To: <20260121-schneider-6-19-rc1-qspi-v3-17-43e70fab4444@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Jan 2026 11:59:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW=Ynyf=7r0GBv8g+-xi_3=fojnsmOC5AGWxrhcuTM2rg@mail.gmail.com>
X-Gm-Features: AZwV_QhU4HozNdnPn6smEIMJwpT1ZjcHd77zCQWsK-t2ckEMR3Gs7RNY1xtm8Ys
Message-ID: <CAMuHMdW=Ynyf=7r0GBv8g+-xi_3=fojnsmOC5AGWxrhcuTM2rg@mail.gmail.com>
Subject: Re: [PATCH v3 17/17] ARM: dts: r9a06g032: Describe the QSPI controller
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.26 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258331-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,ti.com,bootlin.com,sang-engineering.com,se.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[linux-m68k.org];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,glider.be:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,mail.gmail.com:mid,2.98.113.112:email,sang-engineering.com:email,2.98.109.136:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 3BAFF65E78
X-Rspamd-Action: no action

Hi Miquel,

On Wed, 21 Jan 2026 at 18:05, Miquel Raynal (Schneider Electric)
<miquel.raynal@bootlin.com> wrote:
> Add a node describing the QSPI controller.
> There are 2 clocks feeding this controller:
> - one for the reference clock
> - one that feeds both the ahb and the apb interfaces
> As the binding expect either the ref clock, or all three (ref, ahb and
> apb) clocks, it makes sense to provide the same clock twice.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

Thanks for the update!

> --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> @@ -66,6 +66,20 @@ soc {
>                 #size-cells = <1>;
>                 ranges;
>
> +               qspi0: spi@40005000 {
> +                       compatible = "renesas,r9a06g032-qspi", "renesas,rzn1-qspi";
> +                       reg = <0x40005000 0x1000>, <0x10000000 0x10000000>;
> +                       interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&sysctrl R9A06G032_CLK_QSPI0>, <&sysctrl R9A06G032_HCLK_QSPI0>,
> +                                <&sysctrl R9A06G032_HCLK_QSPI0>;
> +                       clock-names = "ref", "ahb", "apb";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       cdns,fifo-width = <4>;
> +                       cdns,fifo-depth = <4>;

These two should be dropped, as per the updates to v3 of 04/17.

> +                       status = "disabled";
> +               };
> +
>                 rtc0: rtc@40006000 {
>                         compatible = "renesas,r9a06g032-rtc", "renesas,rzn1-rtc";
>                         reg = <0x40006000 0x1000>;
>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

