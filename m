Return-Path: <devicetree+bounces-171112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E532A9D41A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 23:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A80381BC551D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426E72248B5;
	Fri, 25 Apr 2025 21:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="GxImwXI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE53221DBC
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745616234; cv=none; b=oIjl0OU3wkP+uVFJ9TpLrFrc9xvHPvTUW1hkUvUIVggTXkLW1JyweTlNgup9RPcbTAkUfJXklJdCXdDNT/kKtzgatH4Myk6y7wSEK7Va9iv1MiBhXGQsYBM0Gs8Rox7BB1CeMWOGShlOyfNS3vSGNNSyQyPvKGPeCx+Td2/NhdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745616234; c=relaxed/simple;
	bh=WvMhf3UfO5NrWSnEWLlKFU6mSMP0Amfqj5oXW4qwmj0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dj0niQk7Hgpn1cf4rs8W2bHYmy7/cf6tSGgBdwyqyUi336mwFGhq/+OsfCbU2rjUsaV8ED38xJWGW1vfkpN58PsGZ00LhtqM+YGGpXG977Dha/CCp/KjwWS0cGA867i1oL54CnpKVWH32LkOb9UO/3n1hGUO2jayVZMGttHGzOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=GxImwXI9; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-73c17c770a7so3653609b3a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1745616232; x=1746221032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+N5ZXuPJmZuQc99xAAjLNXn6gwTktfd4X1GnPJKgrTQ=;
        b=GxImwXI9CJTbGmFDuF4UujAKZ11TfNs3qhPp76lAyVfF72ZMvGPGYO5N82+g6HHt+l
         yaI5sdrLzmgZ3bJHi47yDxdFqWurXvtMMdZbB6Mgla99RMVKv4lmz1/BM0xXRB3TUS/1
         XkZzvoH37/OgoYfnHJG1exanfoYuXouUQE4o8C0+06J8bzJB2bweOkWTIqqkorxSLYLK
         KvuVgjqO4qgWLym6LIQyduF9wT+IKnO0jMoeZFS7XLnypUS9hb4CLn16rDdzKrwdmFFL
         F658VfnaG+182hEoC70E/Cqi4x0HS+ADWK7EXRZyDzrIOmDR2XrOE3QzSxs97XH/PIhi
         6zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745616232; x=1746221032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+N5ZXuPJmZuQc99xAAjLNXn6gwTktfd4X1GnPJKgrTQ=;
        b=ad9E4wZIRsH1ntmHU2kIYvRhHw7ybiVz9n/Xz6rxaVYqz5Hfb/pXhMXyqWhWdQxo1d
         ydahBUwNzFwKTLBQcmzCnEjcNRDMSqRyQPd4rTx1ivQJ49LDmrPiJzhLm/w5szRdUPJR
         DwCKx/VCiXj4aVzZ2dD0U1lvWCnaVR5++b5+eWfdEB7Hvn2PYBwDHSyifIr7JJ6040cU
         vSuNP6jn8LmDCtYqNuHJxsK9UXIkYumO3o1pDQQS3eyKvryZQIMsPgLIHjz2o/eRH9rT
         7JrtyuZE798Wg5z6qFK/Fl86h7qMvUZxbUMe6x/dyjZzPt7TFfk+MSznrqGv2QyZ0mDt
         4hvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhw4w51CN5ozP8NWci6P4JiH61b4YI6X+a2MIeQybsPmFMPfn1fZ6c3DMwp88x9G2AC+FxuHuXhZ+w@vger.kernel.org
X-Gm-Message-State: AOJu0YzKHLrRC+qZAJ0n5+4OXLvxUoI0CecbJQq/NCA37aLMPdTjLp+G
	RvjW9WWOxaST2UAx2mDgzytXHlOdUJY76y2DU0SHsV1sRjIkDEKiKbVZm3uOzZP4NQUxL07nu2Q
	1b7060S6BT3xrcQFBrvUHdirKwJLbznRgcVUV6w==
X-Gm-Gg: ASbGncvVZ+OJYHkPWJL5naAXJSRpiuW4aOHqYVizt53xTnwDzWSIBhgPUbqK8shMbMI
	T5GLabMotah3ybOq076vVXD+JKD0BfxJghwsdcFSm7gfxfGpmbYai2/a46BW8nnSSPveurd/oSM
	wfCliQN5Oz46zd8Km9x3YO+zzvLcbDdOem3gdyBX6Pjz2vOn3vSLVhL2Ip
X-Google-Smtp-Source: AGHT+IH+WQDBB3Fu5VlR8Kv3UYAY96aM8bor7T9EYDlIflZy5YU3g1UQDmsgBf7vxIY/GCfD/PZwqaR5JdJt/p7ts+g=
X-Received: by 2002:a05:6a00:3914:b0:736:ab21:8a69 with SMTP id
 d2e1a72fcca58-73fc7a58aacmr5584385b3a.0.1745616232120; Fri, 25 Apr 2025
 14:23:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416001350.2066008-1-william@wkennington.com> <9dc96af3-239f-4cb6-b095-875b862be493@kernel.org>
In-Reply-To: <9dc96af3-239f-4cb6-b095-875b862be493@kernel.org>
From: William Kennington <william@wkennington.com>
Date: Fri, 25 Apr 2025 14:23:40 -0700
X-Gm-Features: ATxdqUGHYVrfCeHb0u0tZuF5aEnGBbC2V4MOthFhY_gHe1B20A9hf7mCdE6-_C4
Message-ID: <CAD_4BXhMs4sopska1=czqWDM8nY6gswXv3LBeUGNzFWn1+7V8g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add EDAC controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Tali Perry <tali.perry1@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, openbmc@lists.ozlabs.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 11:53=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 16/04/2025 02:13, William A. Kennington III wrote:
> > We have the driver support but need a common node for all the 8xx
> > platforms that contain this device.
> >
> > Signed-off-by: William A. Kennington III <william@wkennington.com>
> > ---
>
> You just sent it, so this is v2? If so, then use v2 in subject (see
> other patches) and provide changelog under ---.
>
> >  arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/=
arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> > index 4da62308b274..ccebcb11c05e 100644
> > --- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> > +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> > @@ -56,6 +56,13 @@ clk: rstc: reset-controller@f0801000 {
> >                       #clock-cells =3D <1>;
> >               };
> >
> > +             mc: memory-controller@f0824000 {
> > +                     compatible =3D "nuvoton,npcm845-memory-controller=
";
> > +                     reg =3D <0x0 0xf0824000 0x0 0x2000>;
> > +                     interrupts =3D <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> > +                     status =3D "disabled";
>
> Why is this disabled? What resources are missing?
>

I was avoiding enabling anything would not be used in the most minimal
kernel configuration (Kdump). Anyone actually using the EDAC data from
the memory controller could enable it. The np]cm7xx common dts also
has this node disabled, so it would be consistent with that SoC.

>
> Best regards,
> Krzysztof

