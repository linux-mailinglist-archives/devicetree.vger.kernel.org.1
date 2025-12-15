Return-Path: <devicetree+bounces-246478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3282CBD181
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:04:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8AD0301A1AB
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924A132AAB3;
	Mon, 15 Dec 2025 09:02:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812612DCF55
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789353; cv=none; b=U73pxHwfvZUz16iDUBEzqij7uSjxv1axZGGAxEQMLomTBRdewp0Vb5I2zr9rHu6OnaZbkejlwR79mSLFyDuerd+Alc8Zh2YrmIqyv0PUW4ckqtA9XcCQiCnIhF+PrDNoZYH2ae/T5KRxTJwu1B46WO42XR3GVih2j2iv/vfbJsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789353; c=relaxed/simple;
	bh=ECGqeXvLKgl0QjAOaEVwq3b0lTlh02jcGCeWyK10tNQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T0IGtP9MEBdG9mEQuXCBHdHUYgaC3TPkDq6Rc11Lz3K8N7U/fYwqf0fgKeJzBYRn1I2+3SCLshwyKDETWWWP5RqAAW3z/5tT+BGh9mpd//aC8lWDRPwOtLcM/Ia3ek6QN6b7XZU52C8/qwjQjLNrvYkq8yAM229btaxZAlAkyTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5e186858102so1254692137.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:02:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765789350; x=1766394150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+q6sfnDIaClHIsjp+iDQU58TQ/QlAPQO+CWmDHAVua0=;
        b=eX0TAmwFheoiDdLHqEJaysXwOqF91CZ0yed7rYspcEj1ESz/+NU5jhJ2ut+SPgjbky
         gmFvwGkHDFQYSNn2zevUr7jTgAsIBz4UV0JDMO6D+8i2byRm4eWRiN7sKfQKQq8Egu/f
         uxCjRAY7mAVTNM2l9JOnW3Vov3zEbTOVo3HQhZ33Ri61/TCCIxKT8aI3cREu069ttsiv
         BaIda70a7SHRE/yBaonqjg5UKv5nOYrmyCX+eLG466/ZakATaAsEFv2Gs4lEH2ZoQOvD
         2XGCCvINzN8Tu9WQvpy11cNy16FV72nZDDuqQNoslNaQeW0lU472QQMQ7Zm4G8chNWQf
         TWXA==
X-Forwarded-Encrypted: i=1; AJvYcCXRLJ6WTfT/oQZ9XpGxFsBz1kUrFh77g0aEuJHqtiP2HeSeVAdq9oT6gh/1ASIUc34tAVJqf2oSrCb9@vger.kernel.org
X-Gm-Message-State: AOJu0YxlGL/PeLB2rVxNicOrasJVJczhclnYjeijWjrM6xXbYbhukKKz
	QsFUDw5qoMwTdQGjP8vsNzu5p9fvmW3az+iD4d5jk+v1luK43AyV4t5gdI+/CTc+gKQ=
X-Gm-Gg: AY/fxX7uVzLxmewXYBk7witdyD+gj9dAc2xW+MpKGbKNYUD724EwrO75wh9orJl75qR
	WfjogbELRjCo/JZLphADad1IMmLuMgfTMKd+EMdwGP42RMv8yj1C0d4g2knjYt6exSPeVCgZI3s
	0RL/nMlBJ7FqEHUl8NMImj5KlietbXRJcTm26pGPdlE++R3XL2kgh0zgmjCLxGRqxsbRSQDJC1O
	/36TypDB5Zq6p10eH9Hroa1nZHPgeSfOP/HQeAUyiabkCbkUu6hkCr5aW1teX8fMNKakPVTWSf/
	s2CZ/GRJ+2UcaHuHMtbWbf+bp7VxhhHYpRujnDej2JHKxhrcqtbsGRBLhtvgE7HlkkvTwW4Ej4P
	KM/REk7V1NUa8iLRLpac7fOzFwccU0N4Pqggmd/Xq0Ja+USIJFc3NJsWGG+Po+ARnJxcW1XIZ57
	7Vogkt3xjseL034zRjsQRmK37DrpkGVNkavl6Rr3RovSfho8ahoxs3
X-Google-Smtp-Source: AGHT+IHGBv22KhBNX8Z8S24iMZGYVrUbO6lHFi8pc9v6tc7bsMLekIWbPIr8aLWZ7bkMH1oDO1yicg==
X-Received: by 2002:a05:6102:6b0a:b0:5db:f440:f1b7 with SMTP id ada2fe7eead31-5e8277e3863mr3141197137.32.1765789350087;
        Mon, 15 Dec 2025 01:02:30 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e7d0ecf428sm6118796137.5.2025.12.15.01.02.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 01:02:29 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55ffbb44b96so134369e0c.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:02:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVBED23729zHRtUKDGSqpjXNRxElHxZWDP8z9+8I2JOSIMVSIw22TBxQSrnGczyrUeh1ALTCRx4WalO@vger.kernel.org
X-Received: by 2002:a05:6122:3c8f:b0:556:e951:b544 with SMTP id
 71dfb90a1353d-55fed5ab84cmr2733651e0c.9.1765789348760; Mon, 15 Dec 2025
 01:02:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251212203226.458694-1-robh@kernel.org> <20251213062037.GA30577@pendragon.ideasonboard.com>
In-Reply-To: <20251213062037.GA30577@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Dec 2025 10:02:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU3xB4sU2tb9B9Pt+D2E_ZNEyRd0e=vQr8fBgOaa7AuNQ@mail.gmail.com>
X-Gm-Features: AQt7F2pKIQSC9djCWI697SgpJ0ztNjq9qn8waQDpTdHD4WHkLGPfNdqDrGxQRDM
Message-ID: <CAMuHMdU3xB4sU2tb9B9Pt+D2E_ZNEyRd0e=vQr8fBgOaa7AuNQ@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: dts: renesas: Drop unused .dtsi
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Sat, 13 Dec 2025 at 07:20, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Fri, Dec 12, 2025 at 02:32:07PM -0600, Rob Herring (Arm) wrote:
> > These .dtsi files are not included anywhere in the tree and can't be
> > tested.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Thanks for your patch!

> >  arch/arm64/boot/dts/renesas/r8a779m0.dtsi     |  12 -
> >  arch/arm64/boot/dts/renesas/r8a779m2.dtsi     |  12 -
> >  arch/arm64/boot/dts/renesas/r8a779m4.dtsi     |  12 -
> >  arch/arm64/boot/dts/renesas/r8a779m6.dtsi     |  12 -
> >  arch/arm64/boot/dts/renesas/r8a779m7.dtsi     |  12 -
> >  arch/arm64/boot/dts/renesas/r8a779m8.dtsi     |  17 -
> >  arch/arm64/boot/dts/renesas/r8a779mb.dtsi     |  12 -
> >  arch/arm64/boot/dts/renesas/r9a07g044c1.dtsi  |  25 --
> >  arch/arm64/boot/dts/renesas/r9a07g044l1.dtsi  |  18 -
> >  arch/arm64/boot/dts/renesas/r9a07g054l1.dtsi  |  18 -
> >  arch/arm64/boot/dts/renesas/r9a09g047e37.dtsi |  18 -
>
> I'll let Geert comment on this :-)

While I do understand your point, these might be used by customers of
the SoCs.  Hence they can be considered part of the "stable DT ABI",
and removing them can cause issues downstream.

At least for the r8a779m* parts, I do have local patches in my tree,
so I would notice any future build breakages (most files are rather
simple, so unlikely to break, though).
Shall we just upstream .dts files using these .dtsi files (cfr. the
existing arch/arm64/boot/dts/renesas/r8a779m*dts)? AFAIK none of
the missing board/SoC-combos actually exist as products, but someone
might create one locally by replacing the SoC on an existing board,
as they are pin-compatible variants.

There is a similar story for the r9a0* parts: they are variants with
less CPU cores, which may end up in actual products.  We could add
.dts files using them, to make sure no build breakage is introduced.

Please let me know how you would like to proceed.
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

