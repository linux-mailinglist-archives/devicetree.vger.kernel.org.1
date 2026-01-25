Return-Path: <devicetree+bounces-259261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +A01M741dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:24:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B13812CE
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D873B3004F73
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B653233ED;
	Sun, 25 Jan 2026 15:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="CazD6Nr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F12C27B353;
	Sun, 25 Jan 2026 15:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354669; cv=none; b=OE6pze8UxCXCMxL+jDKbRNfgh4TmPg54bYo/DADfxbSZnsi82pMbVE/Tg3/6+IdPuTJVHsqTEtdjTuAbYSGk4Z/lqnQBisavTdkFIrQnitzO+2g+RJQBVycVk246DGBJXYEEKtkDNy27GrKmQyoMjH6WFQQvhz67AV6dNf8iVP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354669; c=relaxed/simple;
	bh=qKglan6mnk32iiE8syA0KaXqys4qA9EEa8LKN9Reew0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=eJh1r5Tr+AjCODDsbfhaq8Ahg6Toi4D7Xsb62rGDmeDaS1Qatqfx79RQ3vSENyQrH50ZwJbn7+b3GcOHu6mdZV5p6rvSpmYTpPBQbmMZGBN6b/t/y+A/GuLX812hdKibDl7359Svc2rBmwLL4oxFrDWWqaNln2UOu5t4VKJrUjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0b-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=CazD6Nr9; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0b-0016f401.pphosted.com
Received: from pps.filterd (m0431383.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PET1QR1103871;
	Sun, 25 Jan 2026 07:23:54 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pfpt0220; bh=HD41hbEWMu/XURKhuab3aO0
	P0s+6yqgsY6DmVcf542s=; b=CazD6Nr9P7W0Ih5Lkw40kbCbb6s9NWeCXOlEMKv
	FPH9JYxlF6NB7i1bmjkN/jTLF/LqV0U7MVobKIaUu8dKXsera27QV/xknDZh7cZl
	xcGaWzntL52oP9pI0mK3mmu0ZKrBAtWnzPOWJbJ28AjGeH2Kslg8IYatVxFxF7Cy
	sRNGMnxVfioTp8RxxDFse8Qiivdw634NbkQU64tQz4j1pLbYO92TVYNSKMbTkO3P
	uQD/DduTcXgAvK+bSDNFwX/yrrBhCwL4l+HMkeeRnttDYeD8DpGl60arXRwHQjKs
	yzlopqV0l2x3U8TKFwpwRB6dbsPSzvLksTPRXDG42gXCCdQ==
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4bwfqc8bdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 25 Jan 2026 07:23:53 -0800 (PST)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 25 Jan 2026 07:23:53 -0800
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 25 Jan 2026 07:23:53 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id 1788C3F7089;
	Sun, 25 Jan 2026 07:23:49 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH v2 0/3] arm64: dts: a7k: add COM Express boards
Date: Sun, 25 Jan 2026 17:23:44 +0200
Message-ID: <20260125152347.2518538-1-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Authority-Analysis: v=2.4 cv=DuNbOW/+ c=1 sm=1 tr=0 ts=69763589 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8
 a=t2aqZsWEKTaS-QLmtRAA:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-GUID: Cj3lYCF6MEGIAvrDJfaEsilnpZjB61nS
X-Proofpoint-ORIG-GUID: Cj3lYCF6MEGIAvrDJfaEsilnpZjB61nS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEyOCBTYWx0ZWRfX5bwXkDOcCAow
 j8HcxyuQlhhdrRl1OmVl/OMMNBMHR/A3p3ad6TWj2fgcuuKMFx8tlbsNigzAKT0r6rL88iMDLg4
 bRwSWivBFRdiwkMn3R7H5LGGk/bOxnyImrgxRzRz9gIJDkVQARIqkACWgbAShMt0bo9XKGJVTpT
 3ANz5qqmFukCGhcJV2fZotaBdSywUziu2PPPPbRNVQPfa9lUteLVk89aGqpfIDRKRxQzVUKzUSt
 nJUvNOVAI3kn622XQpAuzgl9DIIt+9wVEGnaTYO6ejeDA1v05STsAef3wH00L5Ylj3rjBmDCggG
 KWhH0XGJBGco7oXlgJU0Qw59HNZYtVrszhrrZ4bcwXl0A+t6DCPbF/SqG1wMF9ciFMHrkOhlZg4
 1lazVz7P0Js88uURbRbydLqJgtI8VopdQ+4tN9qbc0vWA8PZ+kvl8wQiRgjj0/1hj6Fhb3sB4j2
 5HsRSb9gil9LDgCeqsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259261-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[marvell.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 29B13812CE
X-Rspamd-Action: no action

From: Elad Nachman <enachman@marvell.com>

Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
Add device tree bindings for this board.
Define this COM Express CPU module as dtsi and provide a dtsi file for
the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier board).

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

v2:
  1) update 10gbase-kr to 10gbase-r in dtsi

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


