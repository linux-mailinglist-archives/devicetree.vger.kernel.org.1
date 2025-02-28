Return-Path: <devicetree+bounces-152726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7A2A4A03A
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 18:23:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A988188A5C0
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 17:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAF31F4CAC;
	Fri, 28 Feb 2025 17:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBnydU+K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886FE1F4C90
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 17:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740763430; cv=none; b=HUE/Yv/Ph1d6qb1knzrKdcrgRMZEgGxxxIgrD5t2iNv2xB7AQEgaatJ+kJ9h99rtaS7wNg1Ea0U/zIp4C/BkEWikEqLNMZ8AxI3/uloffqylCEFAosuNcDwFjHYbeoAeE4nJr/fSk4tPAEvSxo/D9LvLoSvoJmHMtP68sehqvjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740763430; c=relaxed/simple;
	bh=BPMdmayMKnKCf+wmiSD4Nr+WPj6p2B16Q/gtVT6ljF8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FoyUVtvl/2yjpyiAozNA9ladDB2ED8v7HixPWzkqX1/i35qQJ1iwF0dc38qbf7WE+U3sLPJ2OFkDzN2895R29oYj++dOHlQQ1JdkA0IYGlhlkU53O4P4+XMRetCD2PS9JUrd4RDcZ/zkX0bZGjpnqu8CLD0QL+If+MzhvUEDagA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBnydU+K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6444FC4CEEA
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 17:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740763430;
	bh=BPMdmayMKnKCf+wmiSD4Nr+WPj6p2B16Q/gtVT6ljF8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rBnydU+K9B/Rzf0zhOx/76XqY/YLdjCMz3Vpeih2WcmKMONUqQzOP7A0vmzuEWZ18
	 Pqid1Ax2pX/+qPe+VWeRu519Kk3JVjCH/YUB4r3tJOwtY1/Qz3ywPXp5qTPh9gsQwB
	 zt6q0VyFqAN+PKzl3pnmBDQDvr6Lz1V0PnCGg8hSB4wm54jx46k+QVTbG9zAvvSVQJ
	 Vom4IwpBoIHVnVmAWl9ErP1BIrFDSgVtDAmzraYi3J2gNHptat1/r35K57uYD00HTZ
	 jCGutkXUKu8YJdUgLZ1xUhui9Dye4j6e3LoF32XH378Hk3JJhnaW6FkjX0xtrbTDar
	 0uXbMVA5SmRpQ==
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so4488921a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 09:23:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV2f3JIb004FL0hjB3EnLRBonSdkDqzISlwYb5Bjuosuu7/0d+5PrQV1lIGezCgbH7adaDV/JxGGFfx@vger.kernel.org
X-Gm-Message-State: AOJu0YyeLWDtJReUxmDaLXmW6iWzmQdQn9vDQNr4ml6hlj0dEz1Z7Yom
	liM9Xee8iJD9DXJ3GPak89aYa1kf+upcFJjTfwsvCn1ks+F04h0PynrzQ2/9Rmo7JscHvS46m+F
	fVOve6KJ63UIgagB36OwS74QAZQ==
X-Google-Smtp-Source: AGHT+IEF4YJkKFTBhE9KWRl7WTdYoSsW8Pb5XbVNma0j2MhrQqNt9B/x5iHLLs444cMWjSTUJJ5Y1WrUIPN1MSKevKY=
X-Received: by 2002:a05:6402:26c9:b0:5de:572c:72cf with SMTP id
 4fb4d7f45d1cf-5e4bfb8067bmr10617010a12.10.1740763428947; Fri, 28 Feb 2025
 09:23:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220205948.1777200-1-eajames@linux.ibm.com>
 <174015998324.3469672.1009055817022487781.robh@kernel.org>
 <52f6f6fc93144b6bd93870e9ef054da19d809b05.camel@codeconstruct.com.au> <0801c8fc-97c8-4331-b31a-b60a90d683e5@linux.ibm.com>
In-Reply-To: <0801c8fc-97c8-4331-b31a-b60a90d683e5@linux.ibm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 28 Feb 2025 11:23:36 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+QF6m1YD_MKi0mxJWtn0n+f+iL2x-jYv3NWytv0X4Jjg@mail.gmail.com>
X-Gm-Features: AQ5f1JqBLw6WhoVAtURMFtGm6_JqPAKGxjGEqN_WcyPWC4VS-6OdV3fJ7PJIe-Q
Message-ID: <CAL_Jsq+QF6m1YD_MKi0mxJWtn0n+f+iL2x-jYv3NWytv0X4Jjg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] ARM: dts: aspeed: Add Balcones system
To: Eddie James <eajames@linux.ibm.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 28, 2025 at 10:46=E2=80=AFAM Eddie James <eajames@linux.ibm.com=
> wrote:
>
>
> On 2/24/25 22:34, Andrew Jeffery wrote:
> > On Fri, 2025-02-21 at 12:11 -0600, Rob Herring (Arm) wrote:
> >> On Thu, 20 Feb 2025 14:59:45 -0600, Eddie James wrote:
> >>> The Balcones system is similar to Bonnell but with a POWER11 processo=
r.
> >>>
> >>> Changes since v1:
> >>>   - Add all the ucd9000 driver supported compatible strings
> >>>   - Fix node ordering in Balcones device tree
> >>>   - Improve commit message to explain addition of ibm-power11-dual.dt=
si
> >>>
> >>> Eddie James (3):
> >>>    dt-bindings: arm: aspeed: add IBM Balcones board
> >>>    dt-bindings: hwmon: ucd90320: Add additional compatible strings
> >>>    ARM: dts: aspeed: Add Balcones system
> >>>
> >>>   .../bindings/arm/aspeed/aspeed.yaml           |   1 +
> >>>   .../bindings/hwmon/pmbus/ti,ucd90320.yaml     |   6 +
> >>>   arch/arm/boot/dts/aspeed/Makefile             |   1 +
> >>>   .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 594 +++++++++++++
> >>>   .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 +++++++++++++++=
+++
> >>>   .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +--------------=
--
> >>>   6 files changed, 1383 insertions(+), 767 deletions(-)
> >>>   create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones=
.dts
> >>>   create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
> >>>
> >>> --
> >>> 2.43.5
> >>>
> >>>
> >>>
> >>
> >> My bot found new DTB warnings on the .dts files added or changed in th=
is
> >> series.
> >>
> > ...
> >
> >> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: gpio@1e780000: '=
usb-power-hog' does not match any of the regexes: 'pinctrl-[0-9]+'
> >>          from schema $id: http://devicetree.org/schemas/gpio/aspeed,as=
t2400-gpio.yaml#
> > Ah, can you address this one?
> >
> >> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/bus@1e7=
8a000/i2c@400/pwm@53: failed to match any schema with compatible: ['maxim,m=
ax31785a']
> >> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: pressure-sensor@=
76: '#io-channel-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> >>          from schema $id: http://devicetree.org/schemas/trivial-device=
s.yaml#
> > And these also?
> >
> > The rest looked like the usual noise.
>
>
> Well, all of these errors are also present in Blueridge. I would need to
> write a new binding for dps310, move max31785 to yaml format, and I'm
> not sure how to fix the gpio hog one. I don't see that error when I run
> CHECK_DTBS myself... any suggestions?

I think the hog one got fixed recently. The tests run on top of
whatever b4 picks for the base or linux-next if it can't figure out
the base. So that might be the difference.

Rob

