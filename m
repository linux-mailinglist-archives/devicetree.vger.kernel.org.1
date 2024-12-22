Return-Path: <devicetree+bounces-133388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 235D39FA72E
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F1431657FE
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 536DE18E056;
	Sun, 22 Dec 2024 17:18:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9610C185B4C;
	Sun, 22 Dec 2024 17:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887922; cv=none; b=CBGg1WdHLz+3BZtPBEyA5NPLgaGNbPJP1gQfZZS5USp9rXreVrwIvJJolDBinVPzb5DcGhzp8FM1xwScS37hZ97cD4J4+U2h0ohI6Od61hUXI9GUFDrmMjP4U2QdkgFcNSr+5vpqS7kfZd52/nbt7EXzxvvK6Wyh3f155Wo298k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887922; c=relaxed/simple;
	bh=QU43gHRimxwME7EdXJm0fUV670zAnP3j+xjD5MezmQg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mRFenEjRVZMaZjLiiRI3/tk9EGV5452EbFolBhDc/bzlOSPY4qvT+rdTOfqA35AAZjAaBg1OXQ8ER1gUt5nDwwCCiVoKj41mxcMowyiFym0ugx6d+gQtMX3/EkaIYGXojj96jkBO0BMhcwkIibuRd2WjE45pMUqJmuSt4SSYaqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-844d7f81dd1so144786239f.2;
        Sun, 22 Dec 2024 09:18:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887915; x=1735492715;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lhKfBgVLzd53/xf8WYhlbf471gUVHM73ZZMecnUo5fI=;
        b=LcZyNQKy8Z3hjabpcSmE8s3Eya9y/JKnrtACHy2CAu/LwX9JmoXBQOVukUfMoxcyEy
         PheZ/j/VU0n1aEH3ccOLtk+3xyD5taT9or23e5oYxnQHkQKWpWzy/Wo92pufA5UM6sVn
         SAzx/uwsk2T8dNNzzsCUiqEOsd718o0BH5WX3N6iwOVq6q8SYhHb3F3YlknjbgL4+zYf
         73En3ujIMrn6aZxJjhpk2AheH9LFdHcUppUmVhSIJU0yMMVA1NWcVHCMkZxm5BMQdY/H
         3vnFalMg/PKIhIsitJi51KnIdey6zsvrLpEv3KWSfWS8kTdWjnTwZrK1l1+w9SCPOCCw
         NpHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAd6AKLlCPM/LCAI6wUmM2v8ko5Vbhhh1qBsNKNynjUcJBdYakz4WyZmULPIs11L/qNdWSOjFOlsB66Zyy@vger.kernel.org, AJvYcCWHbFvlmP4BFtZ/FU6GwMvrsKt4jFxiO+yQtyCbZKrwFPuiB9QSEP5NDY4J8E1GwsSsaNuw6s3n2LPk@vger.kernel.org
X-Gm-Message-State: AOJu0YwVt0shmlhhfRgQgTLDrA3Aw7GZ8n1ZTEpq1lBl3WVI238NAYsv
	qcouT5Eu46gKknCgrx3M5zz3UNQBz+H+4yEdWnHpHwlWY1Mi3rLxnr9Fn7KqoL0=
X-Gm-Gg: ASbGncs+Y7yHJqQuSxfDVyRePzTzX1dE848U9sDz11RVyapgoKycM++cFQ9gjwTwdLQ
	Zs6GHjBzv5dCbkVCNIF1+fvNlJTfckH/SrY98imU8XfXBJJhVB+PNh02hPj89/7WwwyVN9+NXxT
	9jsGLzprN1V7+tn/KofpbpcSLgdNJF8LfIttUI1e/FjBHUYB4shshJDnJRZ9wQ2NEy32uZswnvO
	jGIuUPK93h7b9kO9n1HIH3w5C1quzus5wapjfcJogAnVXlL3qonDkOMqzhoweWrymZCHus/TgJ9
	DTIjM/0O8Bf48g==
X-Google-Smtp-Source: AGHT+IHIBXy3fiG10sMS9LuMvb7y7jKSD36eQmfn7+1bTB23q9tqjw6i9T9ck+eR9fEw3iO3hmwsKg==
X-Received: by 2002:a05:6e02:1705:b0:3a7:e800:7d36 with SMTP id e9e14a558f8ab-3c2d2279c01mr87373925ab.10.1734887915628;
        Sun, 22 Dec 2024 09:18:35 -0800 (PST)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com. [209.85.166.181])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3c0de052ed2sm19874305ab.2.2024.12.22.09.18.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 09:18:34 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3a7deec316aso12347655ab.1;
        Sun, 22 Dec 2024 09:18:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVR/kmrL4sI5N8FhnO4/zhzKqcrqlSUqxGIicTqDHZ8tkPukOdgKJOGJnoXpYu3XrpDl6OmixXt3iFg@vger.kernel.org, AJvYcCXRk0WXxQyxY9eJUb4Q9BpGEbXzhk8wN9SKW8Ab7yVAXumyq7ATAB5jY+tjsDMAXWVN4bHAdeNOM22Nbnjl@vger.kernel.org
X-Received: by 2002:a92:c56e:0:b0:3a7:1dcb:d44b with SMTP id
 e9e14a558f8ab-3c2d2975b28mr69446075ab.11.1734887914006; Sun, 22 Dec 2024
 09:18:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213195433.GA1568@lemon.iwr.uni-heidelberg.de>
 <20241214011612.4fd9e4bf@minigeek.lan> <e61c927a4dfe909f4ede4a07dffd9dcd762875be.camel@icenowy.me>
 <20241220172134.GA9899@lemon.iwr.uni-heidelberg.de>
In-Reply-To: <20241220172134.GA9899@lemon.iwr.uni-heidelberg.de>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 23 Dec 2024 01:18:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v64ovacuS+G+k3zBvQR+rW2_TSYh4p5frj7fLxz81K9Kmg@mail.gmail.com>
Message-ID: <CAGb2v64ovacuS+G+k3zBvQR+rW2_TSYh4p5frj7fLxz81K9Kmg@mail.gmail.com>
Subject: Re: Re: [PATCH v2] ARM: dts: sun8i-r40: remove unused GPIO regulator
To: Hermann Lauer <Hermann.Lauer@iwr.uni-heidelberg.de>
Cc: Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>, 
	Hermann.Lauer@uni-heidelberg.de, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 21, 2024 at 1:21=E2=80=AFAM Hermann Lauer
<Hermann.Lauer@iwr.uni-heidelberg.de> wrote:
>
> Hi,
>
> On Sat, Dec 14, 2024 at 03:13:23PM +0800, Icenowy Zheng wrote:
> > > CC:ing Icenowy, who added the regulator originally, with commit
> > > 0ca12c1ee43c ("ARM: sun8i: r40: add 5V regulator for Banana Pi M2
> > > Ultra").
> ...
> > > Icenowy: can you clarify what "newer" version this was referring to
> > > in
> > > that commit message? That commit in itself doesn't seem to do
> > > anything,
> > > as the regulator isn't referenced, and it's not always-on. It's only
> > > later when the USB nodes were added that it got used?
> > > So was PH23 really necessary? As Hermann reports, setting PH23 on a
> > > v1.1
> > > makes it reboot.
>
> diagnosed that futher now: PH23 is indeed powering the USB-Ports. Whats
> happens ist that I powered the board through the micro USB port which tur=
ned
> out to be limited to 900mA in axp221s. So the setting of reg 0x30 is
> the real culprit: Setting the two lowest bits in this register allows
> unlimited power over micro usb.
>
> In U-Boot:
>  i2c dev 0
>  i2c mw 34 30 63
>
> Or power the board through the barrel connector.
>
> In all cases the kernel turns on USB-A power and boots.
>
> > I am not sure, the schematics I have here (which says V1.0) have PH23
> > as NC... Well, the M2 Berry schematics have PH23 as 5V EN, maybe I
> > messed up M2U and M2B when developing?
>
> While V1.0 didn't need the PH23 setup due to nc, V1.1 needs it. Maybe V1.=
1
> was already on the horizon...

It seems this patch isn't needed then?


ChenYu

> Thanks for the insights and your support, guys.
>
> With seasons greetings
>   Hermann

