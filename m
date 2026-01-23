Return-Path: <devicetree+bounces-258819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL3mJrQ/c2mWtwAAu9opvQ
	(envelope-from <devicetree+bounces-258819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:30:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DE6735A7
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5A256302BDE8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25DB5346797;
	Fri, 23 Jan 2026 09:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="cJHBVICC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61593342CB0;
	Fri, 23 Jan 2026 09:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160455; cv=none; b=hqRnenCpZrsFSI1aO2mNsx0GPgkSCJEaQhIsr5fxNc5zo5vJU19+1YD3Zs9ReSZ4QBCS03ICv+J0YW2oGtOfe2/sjjYhhAddzwMxtsCzJFE4KZo4wjYn5UPyAPMJqmYZZi0ldugPtZvbTng69DRkNbSMhVRrHKI+dpdMsF+0T14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160455; c=relaxed/simple;
	bh=yBoXLKqGTyRtlgh3aNcGfOwPPoOFwEqRCOFwE0KZXb4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=hUwK0SaXSpqgVuy826Cjj4z9Bx3hvOlRcG9GecGx0PM/VllfauKycdghsfcxMNiHko0xWAa1QGqMDEB0KSfljj9qT9IrbiH/QNapLkQroTdKI3cup1oQsUzEObd5MRLvfnXZJyxrZZQxmzx1HGinM7v+3kEYWIgLzos16ZM7NWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=cJHBVICC; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 8C8D34E42212;
	Fri, 23 Jan 2026 09:27:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4F9486070A;
	Fri, 23 Jan 2026 09:27:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 95963119A879B;
	Fri, 23 Jan 2026 10:27:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769160449; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=OjNMi3uYqeJT6EZEf8oL0XR2ewQFjYD7V2Tq1CWUJaw=;
	b=cJHBVICCrIkBsWGROKu1iYDGsaGofBZWLdayRKYT+/d25Zvaq2IqZ4nLU3w/l37JMaPX1H
	5O0yNnnUjAYK3iCsXsSTLiyaf0Ias5zgvGtNaZFNTzvA0MvIDzzbLgLE2ufEPLhKeZweCc
	9qka43P9ULTbJGsxx+hGXQ6dq15MoTFDRRC2y/217G8a5P3EpGcXA+PBetsqbcKgedxOvg
	cmy+LQTnPoIeT5RDaGbVb/3EEY59GZCZtcXlblrtQbS6I+9S6aLnfaqEgYEN057Aarb8Bw
	FGvrPxt9YrTJoP2AcUwxaDZye2m0eI/fGiQO385Jd1CKPVyzls+cd7ky1fzecw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>, Rob Herring
 <robh@kernel.org>, Elad Nachman <enachman@marvell.com>, andrew@lunn.ch
Cc: conor+dt@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 chris.packham@alliedtelesis.co.nz, pali@kernel.org,
 devicetree@vger.kernel.org, mrkiko.rs@gmail.com,
 sebastian.hesselbarth@gmail.com, linux-arm-kernel@lists.infradead.org,
 krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 0/2] arm64: dts: a7k: add COM Express boards
In-Reply-To: <dc6e60ec-f460-4713-b1cc-97ceb2d344f5@bootlin.com>
References: <20260122165923.2316510-1-enachman@marvell.com>
 <176910484185.3007016.14688980539020105749.robh@kernel.org>
 <87a4y4lmn4.fsf@BLaptop.bootlin.com>
 <dc6e60ec-f460-4713-b1cc-97ceb2d344f5@bootlin.com>
Date: Fri, 23 Jan 2026 10:27:24 +0100
Message-ID: <877bt8llvn.fsf@BLaptop.bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,alliedtelesis.co.nz,gmail.com,lists.infradead.org,linaro.org];
	TAGGED_FROM(0.00)[bounces-258819-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,BLaptop.bootlin.com:mid,devicetree.org:url,bootlin.com:url,bootlin.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,marvell.com:email]
X-Rspamd-Queue-Id: 37DE6735A7
X-Rspamd-Action: no action


> Hi,
>
> On 23/01/2026 10:10, Gregory CLEMENT wrote:
>> Hello,
>>=20
>>> On Thu, 22 Jan 2026 18:59:20 +0200, Elad Nachman wrote:
>>>> From: Elad Nachman <enachman@marvell.com>
>>>>
>>>> Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
>>>> Add device tree bindings for this board.
>>>> Define this COM Express CPU module as dtsi and provide a dtsi file for
>>>> the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier boar=
d).
>>>> Add the Falcon DB to the MAINTAINERS list
>>>>
>>>> Since memory is soldered on CPU module, memory node is on CPU module
>>>> dtsi file.
>>>>
>>>> This Carrier board only utilizes the PCIe link, hence no special device
>>>> or driver support is provided by this dtsi file.
>>>> Devise a dts file for the combined com express carrier and CPU module.
>>>>
>>>> The Aramda 7020 CPU COM Express board offers the following features:
>>>>
>>>> 1.  Armada 7020 CPU, with dual ARM A72 cores
>>>> 2.  DDR4 memory, 8GB, on board soldered
>>>> 3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
>>>>     all are present on A7K CPU module (none on the carrier)
>>>> 4.  Optional 10G KR Ethernet going via the COM Express type 7 connector
>>>> 5.  On-board 8 Gbit, 8-bit bus width NAND flash
>>>> 6.  On-board 512 Mbit SPI flash
>>>> 7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
>>>>     COM Express type 7 connector
>>>> 8.  m.2 SATA connector
>>>> 9.  Micro-SD card connector
>>>> 10. USB 2.0 via COM Express type 7 connector
>>>> 11. Two i2c interfaces - one to the CPU module, and one to the
>>>>     carrier board via the COM Express type 7 connector
>>>> 12. UART (mini USB connector by virtue of FT2232D UART to USB
>>>>     converter, connected to the Armada 7020 UART0)
>>>>
>
>  [...]
>
>>> My bot found new DTB warnings on the .dts files added or changed in this
>>> series.
>>>
>>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>>> are fixed by another series. Ultimately, it is up to the platform
>>> maintainer whether these warnings are acceptable or not. No need to rep=
ly
>>> unless the platform maintainer has comments.
>>>
>>> If you already ran DT checks and didn't see these error(s), then
>>> make sure dt-schema is up to date:
>>>
>>>   pip3 install dtschema --upgrade
>>>
>>>
>>> This patch series was applied (using b4) to base:
>>>  Base: attempting to guess base-commit...
>>>  Base: tags/next-20260121 (exact match)
>>>  Base: tags/next-20260121 (use --merge-base to override)
>>>
>>> If this is not the correct base, please add 'base-commit' tag
>>> (or use b4 which does this automatically)
>>>
>>>
>>> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/marve=
ll/' for 20260122165923.2316510-1-enachman@marvell.com:
>>>
>>> arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dtb: ethernet@0 (marv=
ell,armada-7k-pp22): ethernet-port@0:phy-mode:0: '10gbase-kr' is not one of=
 ['gmii', 'sgmii', 'rgmii-id', '1000base-x', '2500base-x', '5gbase-r', 'rxa=
ui', '10gbase-r']
>>> 	from schema $id:
>>> http://devicetree.org/schemas/net/marvell,pp2.yaml
>>=20
>> Does this mean we should add 10gbase-kr to the phy-mode enum list in
>> Documentation/devicetree/bindings/net/marvell?
>
> No, 10gbase-kr is legacy, one should use "10gbase-r" instead, cf commit
>
> e0f909bc3a24 ("net: switch to using PHY_INTERFACE_MODE_10GBASER rather th=
an 10GKR")
>
> That should probably be documented in the bindings at some point :)

Thanks, Maxime!

Elad, I=E2=80=99ll amend the commit unless you have a strong reason against=
 it.

Gregory

>
> Maxime

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

