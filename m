Return-Path: <devicetree+bounces-258804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIAzBBU8c2kztgAAu9opvQ
	(envelope-from <devicetree+bounces-258804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:15:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9BB7314E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C91A83038AED
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6250B31A06F;
	Fri, 23 Jan 2026 09:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Nvbs12xz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353712D7DE3
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769159471; cv=none; b=sUSjKJOYfEa7xzbDCCtf+mDZvC6ZdcJVZSl1MoOkjUinxX9v5XFJAygswT34rLVJYye0yvMqzjhE7FQZYutkq3gZ5FMq+wWwNUsCi/wlzr1t/T+yeTEhe8ShIYP/Pjk3cYQLUHCIO57+IEv+176ZoQzf7nP58J5ZsNOf7WjuBqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769159471; c=relaxed/simple;
	bh=D0oNTja/khRi+0qP8WSzfdhCYmFvG0NlQkJ2KNqLnEA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=PqhfBhmw4uDo8OcP78MoAVl9vAJ8WTF+E395Tn9f+ZP6ZX1GhMIuI/4t+24osr0XqEKAqVf43/p9aNTl37qWfmZ1tWRe68dTe980Ys6QfPDWaWQD8guxIyH/sI0Pc3HEjUgLSCTma240e2nS1Mx2qlGmFBlRk1U8TgmBgVk9h90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Nvbs12xz; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 8E7294E42212;
	Fri, 23 Jan 2026 09:11:06 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4AFB06070A;
	Fri, 23 Jan 2026 09:11:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C5960119A8770;
	Fri, 23 Jan 2026 10:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769159465; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RIZ7e3GTNOiIxODI4lS6BiU8bmyIwVXyhvzRfYfBb4U=;
	b=Nvbs12xzwYaF3iqtxGXccgO+aG9ReZpx3EWb8OJOUjoF9hA7kdZI8Z1iNMJRei5VRwqJ0e
	029oK9lpm8Qe0URY9iI5kX092qoyJeIaOC+RZXc0BntygCNKHRKoEr8KiKPg4tz/LwRa7H
	3VbmI1TyhBJK2F/id3JmTdudQ6YdSJ+oP6WWLKbwcfvgLxzxlwBNhYGAdDucy78HXUR7Qo
	cc6C34Joq1gFJ3h3nWWPVru00/FvZSvEcMP5E8wLOnZi9vge2vgYOjzaQwu0uee9/g9/qT
	7N93m246ERjlJ/Xb61Yuv/rhFw1CHJKRLZwtVbmuUOAtz89ozty2FB4zZZjBFQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Rob Herring <robh@kernel.org>, Elad Nachman <enachman@marvell.com>,
 andrew@lunn.ch, Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: conor+dt@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 chris.packham@alliedtelesis.co.nz, pali@kernel.org,
  devicetree@vger.kernel.org, mrkiko.rs@gmail.com,
 sebastian.hesselbarth@gmail.com, linux-arm-kernel@lists.infradead.org,
 krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 0/2] arm64: dts: a7k: add COM Express boards
In-Reply-To: <176910484185.3007016.14688980539020105749.robh@kernel.org>
References: <20260122165923.2316510-1-enachman@marvell.com>
 <176910484185.3007016.14688980539020105749.robh@kernel.org>
Date: Fri, 23 Jan 2026 10:10:55 +0100
Message-ID: <87a4y4lmn4.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,alliedtelesis.co.nz,gmail.com,lists.infradead.org,linaro.org];
	TAGGED_FROM(0.00)[bounces-258804-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,BLaptop.bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url,bootlin.com:dkim,0.0.0.0:email]
X-Rspamd-Queue-Id: AC9BB7314E
X-Rspamd-Action: no action

Hello,

> On Thu, 22 Jan 2026 18:59:20 +0200, Elad Nachman wrote:
>> From: Elad Nachman <enachman@marvell.com>
>>=20
>> Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
>> Add device tree bindings for this board.
>> Define this COM Express CPU module as dtsi and provide a dtsi file for
>> the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier board).
>> Add the Falcon DB to the MAINTAINERS list
>>=20
>> Since memory is soldered on CPU module, memory node is on CPU module
>> dtsi file.
>>=20
>> This Carrier board only utilizes the PCIe link, hence no special device
>> or driver support is provided by this dtsi file.
>> Devise a dts file for the combined com express carrier and CPU module.
>>=20
>> The Aramda 7020 CPU COM Express board offers the following features:
>>=20
>> 1.  Armada 7020 CPU, with dual ARM A72 cores
>> 2.  DDR4 memory, 8GB, on board soldered
>> 3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
>>     all are present on A7K CPU module (none on the carrier)
>> 4.  Optional 10G KR Ethernet going via the COM Express type 7 connector
>> 5.  On-board 8 Gbit, 8-bit bus width NAND flash
>> 6.  On-board 512 Mbit SPI flash
>> 7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
>>     COM Express type 7 connector
>> 8.  m.2 SATA connector
>> 9.  Micro-SD card connector
>> 10. USB 2.0 via COM Express type 7 connector
>> 11. Two i2c interfaces - one to the CPU module, and one to the
>>     carrier board via the COM Express type 7 connector
>> 12. UART (mini USB connector by virtue of FT2232D UART to USB
>>     converter, connected to the Armada 7020 UART0)
>>=20
>> Elad Nachman (3):
>>   dt-bindings: arm64: add Marvell 7k COMe boards
>>   arm64: dts: a7k: add COM Express boards
>>   MAINTAINERS: Add Falcon DB
>>=20
>>  .../bindings/arm/marvell/armada-7k-8k.yaml    |  11 ++
>>  MAINTAINERS                                   |   1 +
>>  arch/arm64/boot/dts/marvell/Makefile          |   1 +
>>  .../dts/marvell/armada-7020-comexpress.dtsi   | 161 ++++++++++++++++++
>>  arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |   7 +
>>  .../boot/dts/marvell/armada-ap806-dual.dtsi   |   4 +-
>>  .../dts/marvell/db-falcon-carrier-a7k.dts     |  27 +++
>>  .../boot/dts/marvell/db-falcon-carrier.dtsi   |  22 +++
>>  8 files changed, 232 insertions(+), 2 deletions(-)
>>  create mode 100644 arch/arm64/boot/dts/marvell/armada-7020-comexpress.d=
tsi
>>  create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts
>>  create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi
>>=20
>> --
>> 2.25.1
>>=20
>>=20
>>=20
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>  Base: attempting to guess base-commit...
>  Base: tags/next-20260121 (exact match)
>  Base: tags/next-20260121 (use --merge-base to override)
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
>
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/marvell=
/' for 20260122165923.2316510-1-enachman@marvell.com:
>
> arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dtb: ethernet@0 (marvel=
l,armada-7k-pp22): ethernet-port@0:phy-mode:0: '10gbase-kr' is not one of [=
'gmii', 'sgmii', 'rgmii-id', '1000base-x', '2500base-x', '5gbase-r', 'rxaui=
', '10gbase-r']
> 	from schema $id:
> http://devicetree.org/schemas/net/marvell,pp2.yaml

Does this mean we should add 10gbase-kr to the phy-mode enum list in
Documentation/devicetree/bindings/net/marvell?

Adding it would likely resolve the warning, but I=E2=80=99m not sure if it=
=E2=80=99s the
correct approach from the driver=E2=80=99s perspective. That=E2=80=99s why =
I=E2=80=99ve included
Andrew in the To field and added Maxime as well.

Regards,

Gregory

>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

