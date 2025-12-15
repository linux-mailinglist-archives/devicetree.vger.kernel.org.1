Return-Path: <devicetree+bounces-246488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B68ECBD24B
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C636305AE6E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136ED33120D;
	Mon, 15 Dec 2025 09:10:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAD5331201
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789814; cv=none; b=hOrwbRO/EQ7xK6SH3/pCgA8NkDv0Z5+t31+09nezO+AeE++D6iLnwHE/jtD/p91D+skFXc1/20kSk45eqgmKt/VIszwPnLM+vi/4gvdSYVzMX/JG3cA7iNPBnlGR5QdyceSo1GMADZUtXvNfmkjhMo2hW5aCMuzLPS7WBRG0HD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789814; c=relaxed/simple;
	bh=0VuLjbWfKZlswWsTt2YIzqj9wev3+4KYwfJwvvQ8x0M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uGjJLJMqy3BkdgckkpgHaKYr8lJW+cxsu3f6vFZ9oxaBEZ6alRV0VhCh1EY2mMgKt0LqJDBxfvdcR14Kt6ETzA3Mj35SnsAS40DXWuqVI8hewv2ILhkv7top0IqadTRuoiBEO0vdG88rJblxsqti+wsUmQrUw+C7TC12Tt01e3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-55b6a642a4cso2391784e0c.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:10:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765789811; x=1766394611;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KtIRC3MyviLTPqCM69f+zv0VbF3Lmw8K3PhfPWoMgDM=;
        b=bYBI2OfwoWw7V84GGVysOpjV0T2IRsjhIhobPySdpxBfrztjMK+D2bfSJ9I0B9Px8G
         S59Jlbvv22xAnZ3WWALIinKajoH0Opo9AsYMhLalPGUM7zdWZQYutlHPIDNPSF9bg5EV
         K1RXe+qpe+FUM1/J1xq+ATUmBrhKYdxMDuyQRyLhauB9ywAlCTWUDSl2NgzgeTjelgGO
         cOP6X8LeU2x74IaLd8XrUCrQQ1wAWPxo8aDVgcF/o5T8p8zG9uoQ5kEye7/TACBZu8b6
         IR5bLcxE7yhjVgtdI/PAxTzDsFhdfd4zY/W39KJ4Saw1kUmfz/mM2yLwNWL7WYhYSZHx
         DC1w==
X-Forwarded-Encrypted: i=1; AJvYcCUQ35RhQwXOCFISWEXBFcdvy/q/OwHEPuDIaCbJgOXhq3IHxMh7d30IfUg7OJmmJJv17t3zvwovCXJg@vger.kernel.org
X-Gm-Message-State: AOJu0YxcPzQ7lWJ7vQTpVX8lhxa1yIJ8HV2tJ0yNv3jQEHX787n1QlPL
	1DkL+Rf7bUtCY+H5OFEZ9FNrf1XX46RJGU9B/mn7q1ZzELV5SRCkdNN9zcBfYRmBiWs=
X-Gm-Gg: AY/fxX7H7d9jkn9b9zbLTDTzghqKfksFSBBntM95dkgglNLnNBu8+UstatcnPq5/a1Y
	z5QkmU1wrIxG48pXr/029X+Ms/KDePhglmojc1nd05mut6Jnf4UX+53Kqcp3NEPHz7tWNwMIjlJ
	WbXCkfYug57G+0d+j7vbgHFA8eYpKuc/aiQuthaCoCXAHPWCDl8QcFGXbqH1IdBDJWr6ttPLB3W
	SBddrEQ20PW629zEAj80rB3FKfCbk3ThcVSw8RpGete8WRGMLq3G+aH4gx5y5v77J0JZBghExrA
	T7C0OG0nL3AE4JUEcz2paBrLh0MdrhvYu4z87TIrxjAN7lwfty6xzeukHYmJySVPRVyoPTdX16Y
	uVR0vMeom3iFdn9MOuMU/UAQ6sKqXi/ytOh1IKdhmydtkIf90j6KQVSIqZ6Ftb3Dc6LwmVgFSgf
	d3q4x6+9KRZcMYwI9LcDk9N9n2Gy2B9bw4RD1vNsWyAR1Be2Ae
X-Google-Smtp-Source: AGHT+IHZCEhk3mxW/MoKfMX1ko61LvYs4gXrpCD5R07X4nNQOEPKEKFWgy124EBevt+mBadlAYDUew==
X-Received: by 2002:a05:6122:8c0b:b0:54a:9fe8:171e with SMTP id 71dfb90a1353d-55fed5888acmr3139493e0c.7.1765789811424;
        Mon, 15 Dec 2025 01:10:11 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55fdc7776c6sm6113212e0c.20.2025.12.15.01.10.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 01:10:11 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dbdb139b5bso2713512137.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:10:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUN9m8A8IGqWvyFCs+52kDjKp8P2Spc41v6onpqhXtWyjZxsD6YeT8m0gPDlMj7BvmacIKSrkU30HAn@vger.kernel.org
X-Received: by 2002:a05:6102:6a94:b0:5db:d07c:21a8 with SMTP id
 ada2fe7eead31-5e8277d7832mr3318810137.25.1765789810860; Mon, 15 Dec 2025
 01:10:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251212203226.458694-1-robh@kernel.org> <OSZPR01MB81234597C5AA9B5C17264990B7ACA@OSZPR01MB8123.jpnprd01.prod.outlook.com>
In-Reply-To: <OSZPR01MB81234597C5AA9B5C17264990B7ACA@OSZPR01MB8123.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Dec 2025 10:09:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUkCJ6=gchr28XYoKMLZytnGnPUdq7WPRTfMUtfLm4ROg@mail.gmail.com>
X-Gm-Features: AQt7F2ofpDDDvHt9BHbo70vFl9nRHpJuDgAwlYdCKurqGQ2MPZBlr-HIJbB2Psc
Message-ID: <CAMuHMdUkCJ6=gchr28XYoKMLZytnGnPUdq7WPRTfMUtfLm4ROg@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: dts: renesas: Drop unused .dtsi
To: Chris Paterson <Chris.Paterson2@renesas.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, "magnus.damm" <magnus.damm@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Chris,

On Sun, 14 Dec 2025 at 08:04, Chris Paterson
<Chris.Paterson2@renesas.com> wrote:
> > From: Rob Herring (Arm) <robh@kernel.org>
> > These .dtsi files are not included anywhere in the tree and can't be
> > tested.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

> >  delete mode 100644 arch/arm64/boot/dts/renesas/r9a07g044c1.dtsi
> >  delete mode 100644 arch/arm64/boot/dts/renesas/r9a07g044l1.dtsi
> >  delete mode 100644 arch/arm64/boot/dts/renesas/r9a07g054l1.dtsi
> >  delete mode 100644 arch/arm64/boot/dts/renesas/r9a09g047e37.dtsi
>
> The lot of the above are for SoCs that exist and there could well be users using them who haven't upstreamed a dts.
> I'd convert them to overlays but they all make use of /delete-node/ which as far as I understand isn't supported in overlays.

Converting to overlays is not suitable here, as these do represent base
SoC functionality, not an add-on.

Besides, overlays also have the "must have at least one user" rule.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

