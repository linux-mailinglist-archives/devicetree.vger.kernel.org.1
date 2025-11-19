Return-Path: <devicetree+bounces-240226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D54C6EED5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:35:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4F11934AF1D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 354623624B0;
	Wed, 19 Nov 2025 13:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="etfWme76"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A60B35BDD8
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763558857; cv=none; b=uoTZVofS2kkZ/rr++BNSJe3ru03b80b2lZTxNSEy5+rWdDQLZy3uMCTIgTsbpqpriL6VFvoz6ijH0NzDGIyEv0dsOQ4tv3HdL40n2ddoZlwq+Za0X2W3Pni0/eX45N5WvKxKH/r3qob3ymhg2TByQU9HA8L9x9V9Bl90qvYGTWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763558857; c=relaxed/simple;
	bh=6rsSfWyVnaU5/X11J4qai299yHBsXVwzci2eXOoVEtc=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pQITX0mDL81lUp4tGlKFS2my1v9D31mAer2lHRLb5v4RinTQOwPyJeqxHvRn9HZI2aw5p5Xw67jpm/UJ9gVdsQP1iJGzEEVAwarDHuSbOsezPG39/WoNvQdiEGz+oxKwuuRkVUqdSk9I7iGIz7j4t0kozUYz7Wu4sqPo0tQxpGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=etfWme76; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 573F03F2EF
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763558852;
	bh=Zf71PPi80OPlEx8Il95aFJzJcBxtZN/TTdL1nSo4eyc=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=etfWme76pbWblOsGe8O3tz4NBNcCaBE6D2txsWt+2ORnnGnEsJugjNyuPO+yTKulz
	 5Wtp715L+LcHhReQxspHQR9feRDN0YrzOUhv1P/nq5fpkaUOdBXckxl6KUh79Yg2Ic
	 fbXny/dwcpPTsRtGvkapOIf/SkH6YAunx0kb/dwaSURL9OJbpLHoVkuztCHRlz+5KZ
	 KcpFrA0U1wV0obR16R+A4AyBtrkCe9o+iv2iPeKXaOF2DDB8wDcw0t5OVsf8Q4jVEu
	 umotyAXZBN1OAyWA2JGZSSeeV2qUMTUVT71E1TCv5sD+BECNu8RqJisEOkWsO3k8xv
	 D3se1cVFTzjue2pG6mcgh+eRs8ucnOnTIZk9y1uWCYxvFLKgpRbRxyTBXE1JgTikta
	 w31zxs1lwT1GSkBF5vPvA5n4nR8764+VGAacE2h00953P1D1JuRW9DbDpjHiT1aS+t
	 xHhPZdRrqKnDxIaqm1YXO5fuJQf4WIgmCJtiqW7s3lVCPqcDizJ+ZhUfJnp5iJseWs
	 OM9ebyjEy0FE+VNVOoLnLg2ohKR/SRAdLviKufVPo4YnUCro2kyOXxsMJ5N6MfNUdc
	 z7wuRJaSK/MWjD3y6OOJX9Y1y1ClzdwRG6J8HcWXOdB1AAAaFxa9Wb89T+Ht40BSO4
	 J6ZrRVftip1+ser7T+yeGsz8=
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b72a95dc6d9so959460066b.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:27:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763558852; x=1764163652;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zf71PPi80OPlEx8Il95aFJzJcBxtZN/TTdL1nSo4eyc=;
        b=WSU8p7qGgDCycbE/DmggzgaOPilR3VXUDHqLRje5kHhg5j8zHAR2aYap+hvNjKs388
         zFG/iWYUINhg6Z8ELL48v9HHIrao9+cNITOLBCD9BtTfkc9vnOrgygK1yOe2drvHxCjw
         ri2ba+98ph/e+YoUVj0VVOMDru3JV01FlfJl6I2RAiwwpGhxWWgKVP+v+4KOJxa6JDmC
         MAfIrtdhEa83eSjmH9VnsuBwqmmKy8v4SFPNjQFVsxm6G8J0MjcbRHn5RTfXYFyU1EG0
         OpoLnlva4+61fs7xyLoiM3HV0bhaeFTJzzlje/K8PvdVjHs9MmZGSJ81vY1Aku2TAs6g
         km0g==
X-Forwarded-Encrypted: i=1; AJvYcCWujvg/3tL0KwSTU0Nhb8Kmld5Ud9xb5USh4dOgr2a1MpHnB6CTnjaMksD4KtREgT/XB4jV7tkYmTms@vger.kernel.org
X-Gm-Message-State: AOJu0YzuZzioZjWW86brhMg4OyKAR+ajt6O/KcjFwzBlbwcnsmZNRRKD
	5ZGnjwUhd0U8+MQUY3u2a2ccdZEyQaSnTDHmBhMLc4Br2OM3+9wwYq/C+l57E5fz6JUO0motDU9
	tQXl9i7r88yEJr4wunY4s7CvHnPImF4BU6Qa0puPbFVFjhyz9u11og1/Sn1OAqEMTx0oWJ9omAZ
	5nQ+4lj0o3hIz/Ax+0j0y7TEcHS0RDrMaWGTGiBJv05Q86MYyheJ7p0w==
X-Gm-Gg: ASbGncshl1DWy6uhHZ4TzDBaXnzxWFTYTLqSOY7zv8IR8IGotXZHwtCgrBa6i7lSyrI
	/6t4Y51tv6IglMhRVSumLLHcUZezWaHEN8YlsAdjosHyfn2DcZpQWnqRB6XsAq+orP9aYDH5JcU
	FmGlNT051soRfHfhcqDlj5vGBXS7+TansEawj4jERIIoXX9jNVJTGMl6oUg24cCesCRl2Ek1ZNV
	pvrMdS+5+rzkGNfl/2LDvY=
X-Received: by 2002:a17:907:25c4:b0:b5f:c2f6:a172 with SMTP id a640c23a62f3a-b7367962920mr2271129366b.30.1763558851800;
        Wed, 19 Nov 2025 05:27:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExSS9MaUldyLPT7Iou5C3NP0DPQDxJxzB9TQhVXWuuilvLezgx6R8t0Ds/PpwPKNH6hoMB6uCLUA2EuEKKjh8=
X-Received: by 2002:a17:907:25c4:b0:b5f:c2f6:a172 with SMTP id
 a640c23a62f3a-b7367962920mr2271124466b.30.1763558851353; Wed, 19 Nov 2025
 05:27:31 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Nov 2025 05:27:30 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Nov 2025 05:27:30 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251118-throwing-marina-14a87d65465a@spud>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
 <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com>
 <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de> <CAJM55Z-bRdNmnRZ7wi3PMOkzGYrxQEGk+7F67Pdu4WXwKmTjCQ@mail.gmail.com>
 <ZQ2PR01MB13075CDDEFC2F03C837E1B31E6C92@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <b33919e9-e100-4629-92cb-d1ec3dd756a7@freeshell.de> <ZQ2PR01MB1307DADE17FFEFCE70C3F391E6D62@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <20251118-throwing-marina-14a87d65465a@spud>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Wed, 19 Nov 2025 05:27:30 -0800
X-Gm-Features: AWmQ_bkXMb__BB3WeHVgakQ5iZHBjvvMXAjrpqkcU7PRZ3VxAvyAIYzaQhqJGpo
Message-ID: <CAJM55Z-MfpVX3EuQ_AjvDSk6FwR51R5cQdN5RybS9pbJ8r9NNg@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
To: Conor Dooley <conor@kernel.org>, Hal Feng <hal.feng@starfivetech.com>
Cc: E Shattow <e@freeshell.de>, Albert Ou <aou@eecs.berkeley.edu>, 
	Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Conor Dooley (2025-11-19 00:10:08)
> On Tue, Nov 18, 2025 at 02:12:58AM +0000, Hal Feng wrote:
> > > All,
> > >
> > > I repeat that the suggestion was made months ago (by Hal) to split out the
> > > OPP tables per-board from the period of time when I was complaining about
> > > 1.5GHz JH-7110 operation pushing TDP into over-temperature thermal limit
> > > on Milk-V Mars CM SoM.
> > >
> > > Whether or not JH7110S is a new compatible should follow precedence in
> > > Linux development. JH-7110S is evidently the same tape-out as JH-7110 and
> > > however you deal with that in Linux is the appropriate way to deal with that
> > > here. Selection of OPP table for correct operation will be determined by
> > > bootloader, where, it is demonstrated by patch series sent to U-Boot
> > > upstream to be selected ** per-board ** based on EEPROM content as if it
> > > was any other JH-7110 board deciding dts based on EEPROM content. Given
> > > that it is the same tape-out I do not find a valid justification for a new
> > > compatible in the stack of adjacent software besides going along with some
> > > kind of marketing-driven answer about whether or not this is a new SoC.
> > >
> > > What I care about now is that the VisionFive 2 Lite series is in good enough
> > > shape and there's a possibility to act on this months-old suggestion to split out
> > > the OPP tables which as we have confirmed the JH7110S is the same SoC as
> > > JH7110 it makes a lot of sense to do.
> > >
> > > How is it supposed to work for binned silicon in Linux?
> >
> > Hi, Conor,  Emil,
> >
> > What do you think about this? Hope to hear from you.
>
> Can someone just give me a yes/no question out of this thread? I'm not
> really immediately sure what's being asked of me. What exactly do you
> want to do with the opp-tables? "Split out" isn't super clear. Does that
> mean into board files? I am guessing it does, since you're saying that a
> particular board cannot support the 1.5 GHz mode. It's not unusual
> though to use delete node for unsupported opp-table entries, could that
> be done instead?

Yes, as far as I can tell we should be able to just add the board description
like this:

 jh7110.dtsi               # JH7110 SoC description
 |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
    |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
    |  |- <VF2 boards>     # Final VF2 board descriptions
    |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
    |  |- <Mars CM boards> # Final Mars CM board descriptions
    |- <other boards>      # Other JH7110 board descriptions
+   |- jh7110-starfive-visionfive-2-lite.dts

and have it do

&cpu_opp {
    /delete-node/ opp-375000000;
    /delete-node/ opp-500000000;
    /delete-node/ opp-750000000;
    /delete-node/ opp-1500000000;

    opp-312500000 {
        opp-hz = /bits/ 64 <312500000>;
        opp-microvolt = <800000>;
    };
    opp-417000000 {
        opp-hz = /bits/ 64 <417000000>;
        opp-microvolt = <800000>;
    };
    opp-625000000 {
        opp-hz = /bits/ 64 <625000000>;
        opp-microvolt = <800000>;
    };
    opp-1250000000 {
        opp-hz = /bits/ 64 <1250000000>;
        opp-microvolt = <1000000>;
    };
};

This seems to be the minimal amount of changes needed. I looked through the
latest OpenSBI and it does match "starfive,jh7110s", but it treats it exactly
the same as "starfive,jh7110" and Hal have not really given any other reason
we'd need new compatible strings.

E: I know this doesn't split out the opp table like you suggested, but I think
that can come later if needed. Let's just start with the minimal amount of
changes to get the VF2 Lite supported.

Hal: Do you think this could work? You might need a patch to move some mmc
properties out of jh7110-common.dtsi

/Emil

