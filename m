Return-Path: <devicetree+bounces-260039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C0qLVXneGmHtwEAu9opvQ
	(envelope-from <devicetree+bounces-260039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:27:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 302F197BD9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6882D305B5A2
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646463612EE;
	Tue, 27 Jan 2026 16:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAtnJ3jr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BA335FF67
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769531011; cv=none; b=A/dLwQZHDGJ8yxXC8avH+qCR1j94Zd0+DXdn0Kd0fmymMfGYrks2lTHHWXfy9hZrpmg3oMe7DIbG6BcGd0BtTRHtEvKcdVKYngy+lhJiD/3wvPftXbFZY6iTgYgER2jXNpXTsKRB7dOK8u582N0zS7/+haUrCZVHcyDkd1/K6D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769531011; c=relaxed/simple;
	bh=ng3TUTTTBDRy0rtbqF7smmu0BJ+VQvXZsYUzEv2KdBM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SNlCIH91SABAXoUktpdnkIoVveyBgYTMsEUGfSbJ5h7D3JDsVvy9/Utmt3ZMzTt0SRkx6CZG0ikqKH464Z5zDchbe9EUh6guGwktFJlJ0929Z9W8P2jrWbL3EKxcyUkNhUjREthcm2S09VZscoWVr2cHdDqsafgqc1C6NUMKFjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAtnJ3jr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA65BC4AF0B
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769531010;
	bh=ng3TUTTTBDRy0rtbqF7smmu0BJ+VQvXZsYUzEv2KdBM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MAtnJ3jr1qpG23YBtt1vwxvLAvIZV99UmbDN0DTjAoU5wISKYZa5NPO3wYUMh72S2
	 84diZyhKFsg0aUzwXDAn7RSiSeTcRMNwAP98Jew2k7fGIpYD4GDmfgGvmMmIJPyUVd
	 CCisRMeKMUQZCJyYDkf9A/U8FwlXRezaiyYNWijJPMCcDegusKfrP3a+EtWOaimFg8
	 et7oBsrOLlIvwzEYd07CHtqEHogOPopzFoXuR0UdYGlqbcUT/pWoOPAZKBWMFeattt
	 JNtDFPGmWu3/XvDTbh8HPsuidO5QNirDq9Zr6wPP6Mwvn9jVl0KXOUEeapij+h5eht
	 hFoAXGaLBUxgQ==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-65808d08423so8896594a12.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:23:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVcu3Bi9lR84eaSvLDCL7BJxirwkWNu8dDX8Hub1yHWw+LNzVFJY+C9xO1NMSEi2JPMEZ5AD5B8K+KR@vger.kernel.org
X-Gm-Message-State: AOJu0YzkcyLQaMqdeQHgxiFJy5rUdLitiRKqid4gBNDF59FKTMVEVBHv
	ndwoBarApAhtJS30qB3IjSfozbSKvvQI/f163SYe8DC3lLFu1N7RGk7AQMyR6C9KHx5Yxniq+2D
	uZD6d3CNdC6A/XAz53TwcYTiKWrsHpw==
X-Received: by 2002:a17:907:3f22:b0:b87:4c74:b316 with SMTP id
 a640c23a62f3a-b8dab45e21emr179295566b.50.1769531009427; Tue, 27 Jan 2026
 08:23:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122165923.2316510-1-enachman@marvell.com>
 <176910484185.3007016.14688980539020105749.robh@kernel.org>
 <87a4y4lmn4.fsf@BLaptop.bootlin.com> <dc6e60ec-f460-4713-b1cc-97ceb2d344f5@bootlin.com>
 <877bt8llvn.fsf@BLaptop.bootlin.com>
In-Reply-To: <877bt8llvn.fsf@BLaptop.bootlin.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 27 Jan 2026 10:23:17 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+xwk3vwS3UzT1sTMcHs6dUT49OiN0wtRiCY0k-gZ4QhA@mail.gmail.com>
X-Gm-Features: AZwV_Qg9CRzmlnHWWeVpZp3ZzH3qb4tDrMOrLR3D447WP5EbvsXYT4DgGzTNCbM
Message-ID: <CAL_Jsq+xwk3vwS3UzT1sTMcHs6dUT49OiN0wtRiCY0k-gZ4QhA@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: a7k: add COM Express boards
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, Elad Nachman <enachman@marvell.com>, andrew@lunn.ch, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, 
	chris.packham@alliedtelesis.co.nz, pali@kernel.org, 
	devicetree@vger.kernel.org, mrkiko.rs@gmail.com, 
	sebastian.hesselbarth@gmail.com, linux-arm-kernel@lists.infradead.org, 
	krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260039-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[bootlin.com,marvell.com,lunn.ch,kernel.org,vger.kernel.org,alliedtelesis.co.nz,gmail.com,lists.infradead.org,linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 302F197BD9
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 3:27=E2=80=AFAM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
>
> > Hi,
> >
> > On 23/01/2026 10:10, Gregory CLEMENT wrote:
> >> Hello,
> >>
> >>> On Thu, 22 Jan 2026 18:59:20 +0200, Elad Nachman wrote:
> >>>> From: Elad Nachman <enachman@marvell.com>
> >>>>
> >>>> Add support for Armada 7020 Express Type 7 CPU module board by Marve=
ll.
> >>>> Add device tree bindings for this board.
> >>>> Define this COM Express CPU module as dtsi and provide a dtsi file f=
or
> >>>> the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier bo=
ard).
> >>>> Add the Falcon DB to the MAINTAINERS list
> >>>>
> >>>> Since memory is soldered on CPU module, memory node is on CPU module
> >>>> dtsi file.
> >>>>
> >>>> This Carrier board only utilizes the PCIe link, hence no special dev=
ice
> >>>> or driver support is provided by this dtsi file.
> >>>> Devise a dts file for the combined com express carrier and CPU modul=
e.
> >>>>
> >>>> The Aramda 7020 CPU COM Express board offers the following features:
> >>>>
> >>>> 1.  Armada 7020 CPU, with dual ARM A72 cores
> >>>> 2.  DDR4 memory, 8GB, on board soldered
> >>>> 3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
> >>>>     all are present on A7K CPU module (none on the carrier)
> >>>> 4.  Optional 10G KR Ethernet going via the COM Express type 7 connec=
tor
> >>>> 5.  On-board 8 Gbit, 8-bit bus width NAND flash
> >>>> 6.  On-board 512 Mbit SPI flash
> >>>> 7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
> >>>>     COM Express type 7 connector
> >>>> 8.  m.2 SATA connector
> >>>> 9.  Micro-SD card connector
> >>>> 10. USB 2.0 via COM Express type 7 connector
> >>>> 11. Two i2c interfaces - one to the CPU module, and one to the
> >>>>     carrier board via the COM Express type 7 connector
> >>>> 12. UART (mini USB connector by virtue of FT2232D UART to USB
> >>>>     converter, connected to the Armada 7020 UART0)
> >>>>
> >
> >  [...]

> >>
> >> Does this mean we should add 10gbase-kr to the phy-mode enum list in
> >> Documentation/devicetree/bindings/net/marvell?
> >
> > No, 10gbase-kr is legacy, one should use "10gbase-r" instead, cf commit
> >
> > e0f909bc3a24 ("net: switch to using PHY_INTERFACE_MODE_10GBASER rather =
than 10GKR")
> >
> > That should probably be documented in the bindings at some point :)
>
> Thanks, Maxime!
>
> Elad, I=E2=80=99ll amend the commit unless you have a strong reason again=
st it.

You applied the .dts, but not the binding. So now more warnings...
Please apply the binding too.

Rob

