Return-Path: <devicetree+bounces-61045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE9C8AB71A
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 00:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30C101F21BA7
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87AE113D275;
	Fri, 19 Apr 2024 22:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="klmOHkgY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117D812DD97
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564712; cv=none; b=EFYGICyrXbfDL0DoLLzHw6PBxRQp4nSVG7ZAaiCmD/mMUQU8b9BqNslWKK2QBnGAbW6PzYKB144sKPQt9fqDkOghK8Rn3ZR073feNq/qoG9H34G2zRFJI8wluJca3Az6ER13LXBbTpDX8KCCF7xvks2pAEoOQtr4XhxU/V8DcLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564712; c=relaxed/simple;
	bh=UYppbqgkb9HL8eP99TFkv4gWxzja0p1FvJqGbmTcDAs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c56jBLypMRbhY9m8W8/q0Zc3kyUmJ84ZQhWcT+Gofx1ImeqTXJGlPgw1hG7kVEthZOGXk4UewCuedqpxwNJ/Vz0+fbPDhDNvWqc7qXGyjLnXIUm5F3uKNYDnydNUzt2BVoWkQF35aGtLsXmIjdp6ehe7wSs+aw3a+AdYy81HFp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=klmOHkgY; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7DA073F182
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713564709;
	bh=qDs1PP73Myr2habNrM7w8WokE4Tu9ltpN7loN9K/23g=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=klmOHkgYk/n2LOTPqho1MopK9AUepx8w88mJDGFGoevfHmBG6ChY/aEpcfTE1d5eU
	 +1AXdagyxC07nx9R8BkxnL8M8kqcSWIpYDvDN4nqMcBddvcWvpyd21l+ow0K38RdeZ
	 mcvYhz1Ba8yHyWiDhRTzSvGOldKqPCO2Oj+Tzvl354hzUTZHH1r1NCcPn/aMjTkouN
	 /3zf6vxqEbtKDCSI7rpbpnB4p2xV+OuLxZh33Vco6HZnaLGDNpRStvs85OvNShSxUw
	 Qf9Sn2318kp52aD19+1dhagmTWB2P+zrxIbjWk/Mugsl6mEY6RTWqWDPxpXzvoQ1G7
	 dRnvLtMWGs45Q==
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3c709618a03so3429239b6e.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713564708; x=1714169508;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qDs1PP73Myr2habNrM7w8WokE4Tu9ltpN7loN9K/23g=;
        b=rTc1ONy6chrAEFYMe5/6AB0CHwHA+sRamqw0PbSfUMoj5+bDnYFx6z2ZJEGNhvaWdg
         BgXJXp1W+sbqrIbDpjrFKVJbDSQ2OPBSM/DNTYO7puGhG4/VfCFIsUQRsIc93dDWg/3G
         3vktwFtWTu9Jw7nC9ke5UW1ExQtWM5pc+lPZH24+Rffcym1kZj5RdQ+SNEax0d8PVoiE
         562hAZtggIn5qYOPY9XvKriv75zchLdugoqacGJVoswPyUb0pG12Ga95/Dq5pe1DWgcf
         GQ5iTXRWmujqsyjC4Lbo2teEy1wG3SBX10U6WxD0j4z7BsOZEllP+uHTKpC/vVYh6x4G
         7fiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpBz3sNXlt6Jxahh9SFgAcMVhkuj3oqDkP+aLWb9RpjvLftmgech65+snCBz+HCzbOpVhrN9/BQikhIiKO8CQIK0Yn1BQy9x3Jbg==
X-Gm-Message-State: AOJu0YyMORXvW2pHiEMlwm0QEuWrrDeeA3VAZ6DGhHpEAx9E+fz7UiLt
	V1+s+kuNPMUR1ZGc0OYCYVfGHIfnZRR97oJANtrrLufYypJtC3XqhHr2KEU+BiFlOIKIlqKCRRy
	tRwUuQd1y7B7gO/T2M2sIXWyET/yiAGzqV6qTr0o+klz1dGxAmVdkOtT3BjK9KeNmbQIvKhIDOX
	8ti577YAyrUU5ZerngQwLvCeqTvtC/esfdtiUPg7XFM47fkZNT7g==
X-Received: by 2002:a05:6808:aa4:b0:3c7:df4:8fb2 with SMTP id r4-20020a0568080aa400b003c70df48fb2mr3355963oij.33.1713564708127;
        Fri, 19 Apr 2024 15:11:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE24uPXK76ve4p+kz9T9NLOzorCp/2i7z+OZo/ijMXuEyfIYaaX+7aIp5O26ess0IsJvcz+NdmGN13nL+4dm4U=
X-Received: by 2002:a05:6808:aa4:b0:3c7:df4:8fb2 with SMTP id
 r4-20020a0568080aa400b003c70df48fb2mr3355944oij.33.1713564707849; Fri, 19 Apr
 2024 15:11:47 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Apr 2024 15:11:47 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZgrIXHNRTB_NeDeF@xhacker>
References: <20240131132600.4067-1-jszhang@kernel.org> <20240131132600.4067-7-jszhang@kernel.org>
 <20240206-magma-deem-2c88e45a545a@spud> <43918921-0d05-41d3-a19b-f137314e868d@canonical.com>
 <ZgYn9t4akccWuHyf@xhacker> <013f6d51-7f78-4de0-945d-8902f32c850a@canonical.com>
 <ZgrIXHNRTB_NeDeF@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 19 Apr 2024 15:11:47 -0700
Message-ID: <CAJM55Z_BemQoQ8Qrcz_vYOJ3n+-3DKn_iu==58euv9HWa99dEw@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: add Milkv Mars board device tree
To: Jisheng Zhang <jszhang@kernel.org>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jisheng Zhang wrote:
> On Mon, Apr 01, 2024 at 03:28:33PM +0200, Heinrich Schuchardt wrote:
> > On 3/29/24 03:31, Jisheng Zhang wrote:
> > > On Thu, Mar 28, 2024 at 10:28:28PM +0100, Heinrich Schuchardt wrote:
> > > > On 2/6/24 20:13, Conor Dooley wrote:
> > > > > On Wed, Jan 31, 2024 at 09:26:00PM +0800, Jisheng Zhang wrote:
> > > > > > The Milkv Mars is a development board based on the Starfive JH7=
110 SoC.
> > > > > > The board features:
> > > > > >
> > > > > > - JH7110 SoC
> > > > > > - 1/2/4/8 GiB LPDDR4 DRAM
> > > > > > - AXP15060 PMIC
> > > > > > - 40 pin GPIO header
> > > > > > - 3x USB 3.0 host port
> > > > > > - 1x USB 2.0 host port
> > > > > > - 1x M.2 E-Key
> > > > > > - 1x eMMC slot
> > > > > > - 1x MicroSD slot
> > > > > > - 1x QSPI Flash
> > > > > > - 1x 1Gbps Ethernet port
> > > > > > - 1x HDMI port
> > > > > > - 1x 2-lane DSI and 1x 4-lane DSI
> > > > > > - 1x 2-lane CSI
> > > > > >
> > > > > > Add the devicetree file describing the currently supported feat=
ures,
> > > > > > namely PMIC, UART, I2C, GPIO, SD card, QSPI Flash, eMMC and Eth=
ernet.
> > > > > >
> > > > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
...
> > > > > > +
> > > > > > +&mmc1 {
> > > > > > +	disable-wp;
> > > >
> > > > Due to which difference is 'disable-wp' necessary for the Mars boar=
d and not
> > > > necessary for the VisionFive 2 board?
> > >
> > > Mars doesn't have wp pin, but dunno vf2 case since I don't have a VF2
> > > board ;)

The schematic is available here:
https://doc-en.rvspace.org/VisionFive2/PDF/RV002_V1.3B_20230208.PDF

> >
> > If the Milk-V Mars does not have a WP GPIO, we should be able to drop t=
his
> > property. The VisionFive 2 does not need it either.
>
> Nope, dropping this property would result in RO sdcard on vf2.
> >
> > > >
> > > > > > +	cd-gpios =3D <&sysgpio 41 GPIO_ACTIVE_LOW>;
> > > >
> > > > On my VisionFive 2 1.2B, and 1.3A boards GPIO 41 reflects if an SD-=
card is
> > > > inserted (as shown in U-Boot by gpio status -a). So shouldn't this =
value be
> > > > moved to the common include "jh7110-visionfive2-mars-common.dtsi" a=
nd
> > > > broken-cd removed from the VisionFive2 board?
> > >
> > > I tested the CD pin and can confirm it works on Mars, but I dunno whe=
ther
> > > this works on VF2 since I have no VF2 board.
> > > Could you please check whether it works or not on VF2?
> >
> > As mentioned in my prior mail the card detect GPIO is working on the
> > VisionFive 2. StarFive acknowledged my U-Boot patch:
> >
> > https://lore.kernel.org/u-boot/SHXPR01MB086314C47C281B3DDDF7BAE9E63AA@S=
HXPR01MB0863.CHNPR01.prod.partner.outlook.cn/
>
> Thanks for confirmation.

Actually comparing the schematic for the VF2 above and the Mars board[1] I
don't see any differences in how the SD-card is connected, so if I'm right =
the
mmc1 node could be fully defined in the jh7110-common.dtsi.

[1]: https://github.com/milkv-mars/mars-files/blob/main/Mars_hardware_schem=
atics/Mars_V1.11_20230821.pdf

/Emil

>
> >
> > Best regards
> >
> > Heinrich
> >
> > >
> > > >
> > > > https://doc-en.rvspace.org/VisionFive2/PDF/SCH_RV002_V1.2A_20221216=
.pdf
> > > > has a line
> > > >
> > > >      GPIO41 | SD_SDIO0_CD_GPIO41 | Micro SD=EF=BC=9AJ10
> > > >
> > > > Best regards
> > > >
> > > > Heinrich
> > > >
> > > > > > +};
> > > > > > --
> > > > > > 2.43.0
> > > >
> >

