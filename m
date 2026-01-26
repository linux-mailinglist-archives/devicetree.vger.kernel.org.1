Return-Path: <devicetree+bounces-259446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K4iDsVCd2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:32:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3CE86FF8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD4AB30078F9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89EC1330B00;
	Mon, 26 Jan 2026 10:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hfKjwU7Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE9D330332;
	Mon, 26 Jan 2026 10:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769423424; cv=none; b=IxKzEp0AWT/C7lvIy1mhTLdXDNNxe/XYgP0SgErbmMu+8rPeO4v5ROllzTHEDxzqqyUrp5O8yVaM7+0bem88E8zCg8xRfQz4aulDEAuUmMqln8dBngqb6Rwffi0CnycQX5Ss9ENFCNMYraI/p8LkPitoqQhToL66BfyN65MpR7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769423424; c=relaxed/simple;
	bh=9Nu8GALLVqt757XsZCldhaBqVS4JhMY4xCR21k26KGc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=hfO//sERXVxDgiO15/ta2SbSy7n/aN3yryo293E/eGRB0P2S4w+4KhU+FBDGKWy3LuIDzCtl1LgEpMZ0pW1eCVKc3MSfpy9wuZdUiPOFtMB4+fYxnpQ0MOaIYDpzbWMRRtLYTIUrxyCBo/bZyJCU8kV5/MYUlNBCVwtArffyixA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=hfKjwU7Z; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2B9174E4228D;
	Mon, 26 Jan 2026 10:30:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AF73960717;
	Mon, 26 Jan 2026 10:30:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5B133119A80E2;
	Mon, 26 Jan 2026 11:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769423417; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+2ToM7E+Qj1Z9k1fXgIslDJKNq8unuvWFbzBA+Z/HJI=;
	b=hfKjwU7ZeE/+65JduiU/x648c2XpeMNC0ahM0hJzkjC0bNquwvEcATHujQySNP51uzq5VB
	APmi/Du46xcSKhd2K/z6eRwdUyqeiI9XeRQpGgvNAKOWIfHgwd30vNmfPMlqzvmdgfDAj6
	LcGPjrLgiKbTMufH+q7eofBSRGXhYoK+g47ZMJF9b3+MIffL350BwLaYRCOPEMbLGU7D0i
	kXkhFjGTwE8Y5KLmnWEgqteCzIz8tfiiN9NPH9eBJh7NeEDhDItr8BVs3aPpbp5KUCJegV
	vVc61OSSxpM59fuA66r+vsTmM15w+0QZvAwluzHPjQWm7KLzlLOpWXxiUJwI9A==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, pali@kernel.org, mrkiko.rs@gmail.com,
 chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: enachman@marvell.com
Subject: Re: [PATCH v2 0/3] arm64: dts: a7k: add COM Express boards
In-Reply-To: <20260125152347.2518538-1-enachman@marvell.com>
References: <20260125152347.2518538-1-enachman@marvell.com>
Date: Mon, 26 Jan 2026 11:30:07 +0100
Message-ID: <87sebsk6og.fsf@BLaptop.bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259446-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[marvell.com,kernel.org,linaro.org,lunn.ch,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8C3CE86FF8
X-Rspamd-Action: no action

Hello Elad,

> From: Elad Nachman <enachman@marvell.com>
>
> Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
> Add device tree bindings for this board.
> Define this COM Express CPU module as dtsi and provide a dtsi file for
> the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier board).
>
> Since memory is soldered on CPU module, memory node is on CPU module
> dtsi file.
>
> This Carrier board only utilizes the PCIe link, hence no special device
> or driver support is provided by this dtsi file.
> Devise a dts file for the combined com express carrier and CPU module.
>
> The Aramda 7020 CPU COM Express board offers the following features:
>
> 1.  Armada 7020 CPU, with dual ARM A72 cores
> 2.  DDR4 memory, 8GB, on board soldered
> 3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
>     all are present on A7K CPU module (none on the carrier)
> 4.  Optional 10G KR Ethernet going via the COM Express type 7 connector
> 5.  On-board 8 Gbit, 8-bit bus width NAND flash
> 6.  On-board 512 Mbit SPI flash
> 7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
>     COM Express type 7 connector
> 8.  m.2 SATA connector
> 9.  Micro-SD card connector
> 10. USB 2.0 via COM Express type 7 connector
> 11. Two i2c interfaces - one to the CPU module, and one to the
>     carrier board via the COM Express type 7 connector
> 12. UART (mini USB connector by virtue of FT2232D UART to USB
>     converter, connected to the Armada 7020 UART0)
>
> v2:
>   1) update 10gbase-kr to 10gbase-r in dtsi
>

I=E2=80=99ve already merged your previous version with this fix and even
included it in the PR for the next release.

However, I noticed a comment from Andrew. Could you provide a fix for
it, and I=E2=80=99ll try to include it i

Thanks,

Gregory


> Elad Nachman (3):
>   dt-bindings: arm64: add Marvell 7k COMe boards
>   arm64: dts: a7k: add COM Express boards
>   MAINTAINERS: Add Falcon DB
>
>  .../bindings/arm/marvell/armada-7k-8k.yaml    |  11 ++
>  MAINTAINERS                                   |   1 +
>  arch/arm64/boot/dts/marvell/Makefile          |   1 +
>  .../dts/marvell/armada-7020-comexpress.dtsi   | 161 ++++++++++++++++++
>  arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |   7 +
>  .../boot/dts/marvell/armada-ap806-dual.dtsi   |   4 +-
>  .../dts/marvell/db-falcon-carrier-a7k.dts     |  27 +++
>  .../boot/dts/marvell/db-falcon-carrier.dtsi   |  22 +++
>  8 files changed, 232 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-7020-comexpress.dt=
si
>  create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi
>
> --=20
> 2.25.1
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

