Return-Path: <devicetree+bounces-258568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIRUAJplcmmrjwAAu9opvQ
	(envelope-from <devicetree+bounces-258568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:59:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C056B6BD8D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E75123018419
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DBF93A2AE8;
	Thu, 22 Jan 2026 17:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="PLRYpO00"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D08F36F419;
	Thu, 22 Jan 2026 16:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769101207; cv=none; b=VVAXGcG8DdnRvhqjkssVXaBJ/owIwPG2DZL6TgXVZEfLOcA/yhI8U4xVM7iXLKkWIfMA5ZIdInaD2axoiSO5vXay22KzWViRC5PgK5JYYezQctsu6V2dHEPwl/ofSS++GjDKrUV7DDBiYYe7mMCjh5N33xrWbXH0MpkyvrNj66c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769101207; c=relaxed/simple;
	bh=XNSC89DFd51hahrzEIV9BQqkogPmg4wpDhPo+6IfWKs=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=YjBfHDKblBOXaVjit8E+aypy8hrDnx6dA+h+qDoI3lJtw8yLmEi5n4VjHPeLOvWprmZC+E3E1yaV8CP2peokDmIh0LAhqAi90ab6myBxu4bHW7XxMScOWDmKEQBE3glqUiNtOthZvqFoVBJKu+3fwAxiMVDQWMk8oeV0iAtRp+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0b-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=PLRYpO00; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0b-0016f401.pphosted.com
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M6IPTT2555854;
	Thu, 22 Jan 2026 08:59:36 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pfpt0220; bh=Iv1jpKdR/ePAQZrA3ndlaYx
	aPWN5QjlywbSufi0Jcro=; b=PLRYpO003MgdVUG/htqHLlYuvWLLfCfMyZv9z+S
	IQ7AjkLVS/w3dUZt2pDZbd0LHgGXTuBmckhcYqp9l51Cj+nt6D05E9iDF72VXMm3
	Xuagd057IZCrdvYPlEOAFQVJ8thIW0elWc+CtDtcXt5H05dMcHc6UvMoEFSiYqT8
	78x3Z/Ea/OKPTLFr4dE0DxmaybjZg4ylro/ukFxBavtdhjf9qJGgZNdftj/LPMZC
	pNbdTVhQQ13ijVlsciW8iBMmHYEymqmV151JsqtwiMkN15n5RBQ1wZo92BSOg/Vi
	OlQ7ogs/vJErIdIbglehR3QYYyGahOfFFFjCYlqsCoMD7Mw==
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4btm3kmsqk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jan 2026 08:59:35 -0800 (PST)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 Jan 2026 08:59:34 -0800
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 22 Jan 2026 08:59:34 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id C19A43F70AF;
	Thu, 22 Jan 2026 08:59:31 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH 0/2] arm64: dts: a7k: add COM Express boards
Date: Thu, 22 Jan 2026 18:59:20 +0200
Message-ID: <20260122165923.2316510-1-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: 8_WxWr3DZZzI-I469COfwn1cOZvalIPf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDEyNyBTYWx0ZWRfX6rAC/TkUkgNX
 2JmxoIUZaRIhkt0SvooDjlDyhNVthGCRPADLTU5IWJf4eiR6aZLjoCqCcUI4vkqKjL1DZwhS92G
 x/j2u4VAWW03BW4wCqULky/UXMxC8DiSxWetuwv5aOssL42Jonb0BslLUm8R8y9aTBt321fg+f7
 72y7mJnOdz80rHnYvy36lAukzl3qzVx+wmbFaaq5ZR5NMpswTUtRCJ3bjAveg9H5pHap1TpuzM8
 WAek4MFgh9ZGpgMYPG2B23GNsfVUFhpp82ArbAFGZgdHJkhPbXmuJt5rwRSlqcdIxzvRWZh9m6T
 WBZk76l5Sq4faUMCuvYdAGEmHStXYD4quJOhvK9ocA7FdfFZ9ttaU75+OyV/xgfnEQJEuJ5l2QY
 o7PUFgC5xgkFdrpfCB0TBmXvklDtOY67TWEth3kn9g51JheLaGlX41ApXKsx7Z+J7A9KqeIGxtI
 99V7AxiyqiPE5fySCqQ==
X-Authority-Analysis: v=2.4 cv=Mu1fKmae c=1 sm=1 tr=0 ts=69725777 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8
 a=t2aqZsWEKTaS-QLmtRAA:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-GUID: 8_WxWr3DZZzI-I469COfwn1cOZvalIPf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_03,2026-01-22_02,2025-10-01_01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258568-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[marvell.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,marvell.com:dkim,marvell.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C056B6BD8D
X-Rspamd-Action: no action

From: Elad Nachman <enachman@marvell.com>

Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
Add device tree bindings for this board.
Define this COM Express CPU module as dtsi and provide a dtsi file for
the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier board).
Add the Falcon DB to the MAINTAINERS list

Since memory is soldered on CPU module, memory node is on CPU module
dtsi file.

This Carrier board only utilizes the PCIe link, hence no special device
or driver support is provided by this dtsi file.
Devise a dts file for the combined com express carrier and CPU module.

The Aramda 7020 CPU COM Express board offers the following features:

1.  Armada 7020 CPU, with dual ARM A72 cores
2.  DDR4 memory, 8GB, on board soldered
3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
    all are present on A7K CPU module (none on the carrier)
4.  Optional 10G KR Ethernet going via the COM Express type 7 connector
5.  On-board 8 Gbit, 8-bit bus width NAND flash
6.  On-board 512 Mbit SPI flash
7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
    COM Express type 7 connector
8.  m.2 SATA connector
9.  Micro-SD card connector
10. USB 2.0 via COM Express type 7 connector
11. Two i2c interfaces - one to the CPU module, and one to the
    carrier board via the COM Express type 7 connector
12. UART (mini USB connector by virtue of FT2232D UART to USB
    converter, connected to the Armada 7020 UART0)

Elad Nachman (3):
  dt-bindings: arm64: add Marvell 7k COMe boards
  arm64: dts: a7k: add COM Express boards
  MAINTAINERS: Add Falcon DB

 .../bindings/arm/marvell/armada-7k-8k.yaml    |  11 ++
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../dts/marvell/armada-7020-comexpress.dtsi   | 161 ++++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |   7 +
 .../boot/dts/marvell/armada-ap806-dual.dtsi   |   4 +-
 .../dts/marvell/db-falcon-carrier-a7k.dts     |  27 +++
 .../boot/dts/marvell/db-falcon-carrier.dtsi   |  22 +++
 8 files changed, 232 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts
 create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi

-- 
2.25.1


