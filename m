Return-Path: <devicetree+bounces-252643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E45C7D01E2B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D958C340233F
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A1E39E190;
	Thu,  8 Jan 2026 08:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N387G3i0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A468239C655
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767859888; cv=none; b=U2OxDUwcVy1r0TVGwGoNFK+qRxsWxDqO7bjzL/ZaJgm7sNiEiCXXb2ErZ32pOED7lsv/ATyDjJHbC8c56WurIsTgh3ESqfzzjRUvwLvyghvysTEcxVzxWj89GIAsOvm2ojCHj7okmLSsFkvgQmwAepY7TZs4ulyw9o9ee9FOcLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767859888; c=relaxed/simple;
	bh=PMuOpeT1F9sOrV0Tnl45/4hcuRfRLeROlX+vZBH2HKQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eLpvL/fw+6gNozXojK5Mh/BPO+ST1eMoVzq4HJRFXLM8vzkjJsf5XGZXQ605LKnEF/v0z1AjC0jEEQVYhaZDloKpqwegDiGDCyxZKkH4N9KBxWi4D887cQQcXUl98AtviM+MnzTyi3CvalGHGFPJU5EkI2WrXOC6yCGaaTJAc3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N387G3i0; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8bc53dae8c2so401993485a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767859871; x=1768464671; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+Glvnfd6LAUkE51MfIE7FcPhOQSX7v4Jbr+9HBdyoY=;
        b=N387G3i0gOwOrHVYRTAbTK1anhsIZvladQfLtL6vacZCFfUIbcpt6RsSGd07wLqDop
         3dr3y6W9nc8fq8jeJCE5S3tsGRr0/9PvlWC/mfUYOIX/zGxLh5all3AJ4G8TdCwG3rZB
         X92DrLoV8noIzhn/ZoFSR626JL8pTOf4wp4w+dUHdemFEjkkFekgHIDBGfh0SxqY/TGE
         taMJwkpnHCtusWkj0uxs4go5wJb8qp7j+ZiTvJf9zY+C1taHLMvkCru5whjrVnFoGFY/
         c87W7LV80TSekSH/m7eL1BlKPt6py+bIBCu7RLA48Ds9fDh+e4s0xjED1Obd33XCm6vu
         FXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767859871; x=1768464671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f+Glvnfd6LAUkE51MfIE7FcPhOQSX7v4Jbr+9HBdyoY=;
        b=RmWE/0uLg0wHaN9NYmNrJTDjhtHOyoTD1SPYqvrmjJ6yUBnlC1iIf9//t+lhRF9tsC
         Q+K/ClZeEq/Wa+Y4v6qkEErzOF01qabik4G4zvF/YI7D1COzGnC0fk7AGpuKUyYsz53e
         VqD2zIPOKXVobUwQZt3VL8du3KWjyyhYDtWpYdqefmBBqVQQhgXj5WlPMMv9mNQadvTR
         EiAWUxJSrCijAHZDwVy8nuUMfR5xaGh9OR8fGZ7aQVNMPHwqJB9wzDFag3zZ3hu8Ixpw
         thWAw1zj43uQAPtTX+pVV+vjutdmTVrkE/qIv+eBTYACH3ybTexcA4dDcMwb6w/8yfDG
         mDDg==
X-Forwarded-Encrypted: i=1; AJvYcCUYR7bz6ph97eNa5viipQRHH9kyV5S12wO2LdpEmyw4DuGOFYH7t0jGnKu1IKybkcEWYJQMWLYKVfTj@vger.kernel.org
X-Gm-Message-State: AOJu0YxVbTG1YFFff9zIGQ68eNaJeiF4DM/lwFKmQtc7H3AvLBUt9cHY
	sNJs2vX7wBQEZsl8RPEmjhnsuX6rhGIarp4sR4hApnFf/DbgSzcZYVC0NaUMl2c09o3qAb8+PY/
	Gsv0cJhf8mFNmSfHmgNHmw+UQCWyIsyI=
X-Gm-Gg: AY/fxX4MHdJKzAvqTvZcIrizgMgb4V63KxvGA9qGMeVfGiY753bBgwA94QePt9Fuzhm
	BFChYlLeURD9TLgdnhzeWzshtpk61Q1csWTn4wRgEy7225MVqrlndx1xPnIl+Md1O+z/7dAGjh4
	MNEdvbAoKX8vuoCvRGyiJtDS+PgJXyO41kSWGLZkiVOLVWWnaW2X1FhLb2FrnHPJy/2MYAihSdI
	0V1Q+N7CjJsf4k0pFp9LNNeF5faf3szDh4oVtdQpnpgOkyfZN3XNcxUdovX5mPZeiPml52lUKcK
	eOG6k1sdAuPkQ/xycXtrmUHWWjyDEzgh6/AMOms=
X-Google-Smtp-Source: AGHT+IEdAUONxF+e/EKeQFSKSnMmXdXqTd3nqcmKjl1wsNzyIlWHOka5hlCEOh+2jDUpz0UQJe/gsSFaF+VGtSBhkSM=
X-Received: by 2002:a05:622a:351:b0:4f1:def3:cc00 with SMTP id
 d75a77b69052e-4ffb4a2b7c0mr65492071cf.82.1767859870974; Thu, 08 Jan 2026
 00:11:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch> <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com> <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
In-Reply-To: <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 8 Jan 2026 12:11:02 +0400
X-Gm-Features: AQt7F2rIL0j1pGTpV955PkaH5TbgcjPMfDl1RCgaVeY4cqitQ7C4U5-dQqanFs4
Message-ID: <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Andrew Lunn <andrew@lunn.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>, 
	John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Michael Riesch <michael.riesch@collabora.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 12:02=E2=80=AFPM Chaoyi Chen <kernel@airkyi.com> wro=
te:
>
> On 1/8/2026 3:42 PM, Chaoyi Chen wrote:
> > Hello Alexey, Andrew,
> >
> > On 1/8/2026 2:53 PM, Alexey Charkov wrote:
> >> On Wed, Jan 7, 2026 at 10:18=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> w=
rote:
> >>>
> >>>> +&gmac0 {
> >>>> +     clock_in_out =3D "output";
> >>>> +     phy-mode =3D "rgmii-rxid";
> >>>
> >>> rgmii-rxid is odd. Does the PCB really have an extra long TX clock
> >>> line, but a short RX clock line?
> >>>
> >>> Try changing this to rgmii-id, and drop the tx_delay property.
> >>
> >> Actually it would be great if Rockchip could clarify the delay
> >> duration introduced by a single delay element in GMAC-IOMUX delay
> >> lines, which are controlled in the GMAC driver by the {tx,rx}_delay
> >> properties. Maybe we could then switch to using
> >> {tx,rx}_internal_delay_ps for fine-tuning the delays on the GMAC side
> >> as envisaged in DT bindings [1], and use phy-mode =3D "rgmii-id"
> >> throughout. Chaoyi, any chance you could ask around in your hardware
> >> team?
> >>
> >> Currently though removing the delays at GMAC side altogether causes
> >> unstable link operation - see [2] for example.
> >>
> >> [1] https://github.com/torvalds/linux/blob/master/Documentation/device=
tree/bindings/net/ethernet-controller.yaml#L342-L347
> >> [2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/lin=
ux/-/commit/372f3e9ae62cc62cdf2543391ea57be6bb548a0c
> >
> > Sorry, this problem has been discussed many times before. It's because
> > the gmac on the Rockchip platform currently relies on setting the
> > corresponding delay via phy-mode [3].
> >
> > [3] https://lore.kernel.org/all/mqoyjn7mnq6tmt6n6oev4wa3herjaxlupml2fmc=
ampwiajvj4a@r5zs4d3jdm5p/
> >
> > The delay introduced by the delay line is not absolute. In reality,
> > it depends on factors such as the chip's design and process technology.
> >
> > And for RK3576, you can assume that:
> >
> >       time(ns) =3D 0.0579 * delay_line_count + 0.105
> >
> > For example, tx_delay =3D <0x20> means:
> >
> >       time =3D 0.0579 * 0x20 + 0.105 ns =3D 1.9578 ns
> >
> > And I believe {tx,rx}_internal_delay_ps is indeed a good idea.
> > I'll try to add them in v3. Thanks.
> >
>
> I've also see some dt that use {tx,rx}_internal_delay_ps inside the PHY,
> and compared to doing it in the MAC, which one is the better choice?

Your PHY defaults to 1950ps in rgmii-id [1], so adding anything on top
of that on GMAC side would land you with a longer total TX delay than
you currently get according to the coefficients you've just posted
(1784.1ps). I would say go for "tx-internal-delay-ps =3D <1800>" on the
PHY side for the closest match.

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/net/motorcomm%2Cyt8xxx.yaml#L36

Best regards,
Alexey

