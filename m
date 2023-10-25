Return-Path: <devicetree+bounces-11560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4107A7D62C9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 725811C20D6A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE131798F;
	Wed, 25 Oct 2023 07:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="TwEMY6PX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6DB2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:31:14 +0000 (UTC)
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 838DFD5C;
	Wed, 25 Oct 2023 00:31:12 -0700 (PDT)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39P4ABqh023029;
	Wed, 25 Oct 2023 00:31:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=pfpt0220; bh=0ZfGdwRUHbucisYnUDz5UO8MTwwmmWOJWbiCA2W4CqQ=;
 b=TwEMY6PXz/Z+5E/WCLHU0jhPhgJOkzvdIGj0LuVkvzW2ypswIwFNtqr8baZgrWhYzGmq
 BnH4fkNrEFcrINaipANtWo2zjiA+JaD+PI3/jo0WKfCWrfQ7/8+uQD2+pW86qJ6q2QX6
 /xQXvTCfZqYu9odwmUqOi9658cOLeeXAa54gSBf/JdAUSJ3ltfqzqjVaCu+ztZi4rv4F
 g+pMnroM+6jga2ua5L/DGEHMv4aTmbsy8f79xC04MYYOBYDVcHgC90VykU6IpAH6TvvA
 OUvPZACjNgMcHa4ZKGF13B/FcE7hmqDD5xJcC3nR4kescHHfn/Sa4Jf48bSeB2ropl/w zA== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3txcsqv1s0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 00:31:01 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Wed, 25 Oct
 2023 00:30:59 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Wed, 25 Oct 2023 00:30:59 -0700
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id 0C4F83F7053;
	Wed, 25 Oct 2023 00:30:55 -0700 (PDT)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH v2 0/1] arm64: dts: cn913x: add device trees for COM Express boards
Date: Wed, 25 Oct 2023 10:30:31 +0300
Message-ID: <20231025073032.2824877-1-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: 478sOiMvVwBpGDDpyDBrwoJC2n1YFqIs
X-Proofpoint-GUID: 478sOiMvVwBpGDDpyDBrwoJC2n1YFqIs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_01,2023-10-24_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>


Add support for CN9130 and CN9131 COM Express Type 7 CPU
module boards (SOM boards) by Marvell.
Define these COM Express CPU modules / SOMs as dtsi, and
provide a dts file for a carrier board (Marvell AC5X RD
COM Express type 7 carrier board).
This Carrier board only utilizes the PCIe link, hence no
special device / driver support is provided by this dts file.

v2:
   1) add compatibility string for the boards

   2) remove un-needed hard-coded PHY LED blinking mode initialization

   3) Split the SOM / CPU portion of the carrier board to
      dtsi files, and define a dts file for the AC5X RD
      carrier board.

Elad Nachman (1):
  arm64: dts: cn913x: add device trees for COM Express boards

 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../boot/dts/marvell/ac5x_rd_carrier.dts      |  23 ++++
 .../dts/marvell/cn9130-db-comexpress.dtsi     | 101 ++++++++++++++++
 .../dts/marvell/cn9131-db-comexpress.dtsi     | 113 ++++++++++++++++++
 4 files changed, 238 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/ac5x_rd_carrier.dts
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi

-- 
2.25.1


