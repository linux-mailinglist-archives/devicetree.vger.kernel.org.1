Return-Path: <devicetree+bounces-252655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B65CD01F4D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5C74305E3EC
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4831346A1D;
	Thu,  8 Jan 2026 08:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hzKqn4Fe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7861E2DB7BB
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862191; cv=none; b=NQqTLCyqZBQqjY6vG7W+6LphmfiLt7zJd+0klRSNSZ2+VdNOJPIAgJOz3bvglbypR/ueJEGS1C7YOy83cb0rA+AlzBkuiq3/9gAGr7eutK4quWfGIZBGIrsTMBKfBe5sDFcbyFvSngmm0ouGageYqvJCdmZcjwKtO0r+XPIrsBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862191; c=relaxed/simple;
	bh=8MGRzUW+GvDUSmQWdgJKcb/cSUFhK98oTyOJATHm2MI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UweAfXVYLCvpKvASM6Tc6kLW7Q/PwvEfYe8soU7cfPwb727XMTpgGtZELANLdrJsvBz62CQoKlzeG6mcXa2vVyDVbJu0zd/HGPuEMZVowLdXt0v6czum9md+j6no+tIMyaHXiTO+hQQvpIN+iEnLdfsJjNgr/PtHWnvgiCznSEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hzKqn4Fe; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4fc42188805so31204471cf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767862183; x=1768466983; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+mR41nzWCIkR7vEalH2Z/Nd2Y2pgD8cS0T18/wjMnw=;
        b=hzKqn4FeS6OJYAd2hKAEKiIoZTMAamzeQO9k4Ab5tl+FlK1ad2HpTUJLfysI6bPAqK
         2lF/Y4xQXMVY7TwRnq65n6/OdicKr0sgvzdOm5yYB9PbNAKglcQCmfBRzPJLpgydPTng
         RI1puUh+o5zG5NfVrbm403z5o/a9+vxvHlUt63rLYHNELYD2t18y6tTB1m6W2/LiVKpr
         NqvsBQ+6D1X68kcjqKipIzLYzlTzhIGt+GsfLa8R61eXDb6bUaWe9LcnV4AtXiBjSm+w
         LNXkjG4fOBBt9+owo9wBC8kERW6StQ3cZnRPEY10ORSiSPkWZ2Vw6TJC2w5IW7jqKN8Q
         mWNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862183; x=1768466983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X+mR41nzWCIkR7vEalH2Z/Nd2Y2pgD8cS0T18/wjMnw=;
        b=jgZvC4Gtsv2zMpw3R8NPhoQtitVmQvUHubD3FZxcIJZQMnvYiVK9X/cU7KvO5sQR+J
         zpE1NC+yFumk/pMEymtKMXgEF7BdTJncuNPrYMJVC29WeLKEVTVj78P6wW3JSkYHEocZ
         WQdQbnRJ1GFalOPiVdPDzCh/CpqUrpM+sRn3c810fxMJrT4Zo0pGWBJNfsfslx/CmaR5
         G53fkxslJ/ZC0DLDbQyqthqJ+yZvMbEkfJEmodGNRDSLuxNOMakxj23Gfdmy0/dWCh+q
         1fF4D8nemu5dR5xwxXOH5BXY8RBmFIMrUGfD6FppZEnUcsj3YQeJUlZwPCig8HVdL73s
         D4WQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYVSSEpKe/HWWn3KPIFxRsCYN/0u1UySLkFayrG+1p4K5fW7KdDplXyWv/l27pjgfpy+kRGP5mL3wY@vger.kernel.org
X-Gm-Message-State: AOJu0YxbtzEMlHJvhzfUVUUaJZEUwomFSVTAtdS3ge+7/tGnsdtfAoyb
	ykntYSlO72RvwJrCz1YR6r0E62ptZUjz1afn8Yu0hMKFj//w9o2Wm5dMSx4qBjqC4wL5q6NOMNH
	6XgfPyZ3Z7C/rxhfN4QM7kwOXBQ9h0Kg=
X-Gm-Gg: AY/fxX5V6zqpxQEVtZv40bumSeG2a5GfaTmoigFLWDQiWOUhn0u6mBv88FL/kBveuPY
	RsoUem5P+kuUHQ88xXQqhJMELSlbvWY3m7xjwzlTr3NQnzhgv0Y+RFt3E1OhR8Oi/1aGqywZgCL
	krlKQ/hYeqa4XolJMVKa1HlfOOZOvZtSasVaBfn/oupEndmMaC42N1WSDmmNnH8VujQ44fS2ZZf
	QGXpvRD+/8OSTSqzfJ6/+2OBlCQlLaH82JG5fslYUPxSOgWwZbhs9fZK3hiIZ7Dagg8qy0a70mj
	HX1w5ydk+lcSIZN40nsiuCJFtQht
X-Google-Smtp-Source: AGHT+IE/YI18F1nhJhEFmTsO58DLq0QMKXZtevsfEeQsCPnd9cic8/shsfNP/db84QRndLqHAtrqtJq7ITmw6U4bhhE=
X-Received: by 2002:a05:622a:156:b0:4f1:b3cc:2cec with SMTP id
 d75a77b69052e-4ffb499cc01mr73331881cf.52.1767862182928; Thu, 08 Jan 2026
 00:49:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch> <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com> <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
 <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com> <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
In-Reply-To: <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 8 Jan 2026 12:49:34 +0400
X-Gm-Features: AQt7F2r_KkIckRFZ0j1WkhT1Wr9YTLBcdSnJhRs0ku47wXCJ9eTlpAtdn-fs5LY
Message-ID: <CABjd4YyMj=1pQBwqo9suu0W_HD=MG=zb5wo9dheguMBxi+oNqA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
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

On Thu, Jan 8, 2026 at 12:38=E2=80=AFPM Chaoyi Chen <chaoyi.chen@rock-chips=
.com> wrote:
>
> On 1/8/2026 4:11 PM, Alexey Charkov wrote:
> > On Thu, Jan 8, 2026 at 12:02=E2=80=AFPM Chaoyi Chen <kernel@airkyi.com>=
 wrote:
> >>
> >> On 1/8/2026 3:42 PM, Chaoyi Chen wrote:
> >>> Hello Alexey, Andrew,
> >>>
> >>> On 1/8/2026 2:53 PM, Alexey Charkov wrote:
> >>>> On Wed, Jan 7, 2026 at 10:18=E2=80=AFPM Andrew Lunn <andrew@lunn.ch>=
 wrote:
> >>>>>
> >>>>>> +&gmac0 {
> >>>>>> +     clock_in_out =3D "output";
> >>>>>> +     phy-mode =3D "rgmii-rxid";
> >>>>>
> >>>>> rgmii-rxid is odd. Does the PCB really have an extra long TX clock
> >>>>> line, but a short RX clock line?
> >>>>>
> >>>>> Try changing this to rgmii-id, and drop the tx_delay property.
> >>>>
> >>>> Actually it would be great if Rockchip could clarify the delay
> >>>> duration introduced by a single delay element in GMAC-IOMUX delay
> >>>> lines, which are controlled in the GMAC driver by the {tx,rx}_delay
> >>>> properties. Maybe we could then switch to using
> >>>> {tx,rx}_internal_delay_ps for fine-tuning the delays on the GMAC sid=
e
> >>>> as envisaged in DT bindings [1], and use phy-mode =3D "rgmii-id"
> >>>> throughout. Chaoyi, any chance you could ask around in your hardware
> >>>> team?
> >>>>
> >>>> Currently though removing the delays at GMAC side altogether causes
> >>>> unstable link operation - see [2] for example.
> >>>>
> >>>> [1] https://github.com/torvalds/linux/blob/master/Documentation/devi=
cetree/bindings/net/ethernet-controller.yaml#L342-L347
> >>>> [2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/l=
inux/-/commit/372f3e9ae62cc62cdf2543391ea57be6bb548a0c
> >>>
> >>> Sorry, this problem has been discussed many times before. It's becaus=
e
> >>> the gmac on the Rockchip platform currently relies on setting the
> >>> corresponding delay via phy-mode [3].
> >>>
> >>> [3] https://lore.kernel.org/all/mqoyjn7mnq6tmt6n6oev4wa3herjaxlupml2f=
mcampwiajvj4a@r5zs4d3jdm5p/
> >>>
> >>> The delay introduced by the delay line is not absolute. In reality,
> >>> it depends on factors such as the chip's design and process technolog=
y.
> >>>
> >>> And for RK3576, you can assume that:
> >>>
> >>>       time(ns) =3D 0.0579 * delay_line_count + 0.105
> >>>
> >>> For example, tx_delay =3D <0x20> means:
> >>>
> >>>       time =3D 0.0579 * 0x20 + 0.105 ns =3D 1.9578 ns
> >>>
> >>> And I believe {tx,rx}_internal_delay_ps is indeed a good idea.
> >>> I'll try to add them in v3. Thanks.
> >>>
> >>
> >> I've also see some dt that use {tx,rx}_internal_delay_ps inside the PH=
Y,
> >> and compared to doing it in the MAC, which one is the better choice?
> >
> > Your PHY defaults to 1950ps in rgmii-id [1], so adding anything on top
> > of that on GMAC side would land you with a longer total TX delay than
> > you currently get according to the coefficients you've just posted
> > (1784.1ps). I would say go for "tx-internal-delay-ps =3D <1800>" on the
> > PHY side for the closest match.
> >
> > [1] https://github.com/torvalds/linux/blob/master/Documentation/devicet=
ree/bindings/net/motorcomm%2Cyt8xxx.yaml#L36
>
> Ah, I thought it was something like this:
>
> &gmac0 {
>         phy-mode =3D "rgmii";

phy-mode =3D "rgmii-id";

>         tx-internal-delay-ps =3D <1784>;

Drop this, as recommended in the lengthy note at the bottom of the
binding doc [1] (the GMAC shouldn't be adding a delay that is close to
2ns).

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/net/ethernet-controller.yaml#L342-L354

> };
>
> But what you actually said was this:
>
> &mdio1 {

&mdio0 I guess (but same applies to gmac1+mdio1)

>         rgmii_phy: ethernet-phy@1 {
>                 compatible =3D "ethernet-phy-ieee802.3-c22";
>                 reg =3D <0x1>;
>                 tx-internal-delay-ps =3D <1784>;

The PHY binding [2] says it can't accept arbitrary values here - only
150ps increments. So you'll need either 1650 or 1800 to get close to
your calculated value above.

[2] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/net/motorcomm%2Cyt8xxx.yaml#L36

>         };
> };
>
> These two `tx-internal-delay-ps` things shouldn't be the same, right?

They add up, which you don't need in this case AFAICT.

Best regards,
Alexey

