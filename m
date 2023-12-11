Return-Path: <devicetree+bounces-23989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF2D80D383
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE4151C21182
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB424D582;
	Mon, 11 Dec 2023 17:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="H4+s839w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27DA5AC;
	Mon, 11 Dec 2023 09:18:03 -0800 (PST)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BBDsDfA019781;
	Mon, 11 Dec 2023 09:17:47 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=pfpt0220; bh=HQjl/rzZ
	4A3I+hdnOYUB1SUF3E3e3z2HKcp84M2sxEc=; b=H4+s839wVTGmKuqyg9l0B5lU
	OWkAwoqPH6bw0z+B8BzF8c7gOACzg9ICbTtoytiTiukj0Wh9YLm//jGE0cZC7ChP
	LHWkXOjCxAtMrHEDEFYd/4Lss7Vpoa9oUR2PHpjtb4YXMx8JpjI7MeRFJb8yR6w7
	xo/kZqObhJmlT9uYI4DBwjxDW3j1IP/TAznAxHDNBtEz3eyUy4tsqQ0ejGVFFCOW
	kQZgxIZZpxGML4/92IWpGbMyJpRYIWAITuXoT1hGDqu/JtWBBBZLb5yoo4Y3nb85
	nyGPQq+wqc4lOH+Y4UyKSLw2CS8Tit0LEq2n+YVJKnhzomOhYI/mVy6zMfI8LQ==
Received: from dc5-exch01.marvell.com ([199.233.59.181])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3uvrmjnfn6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 11 Dec 2023 09:17:47 -0800 (PST)
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Mon, 11 Dec
 2023 09:17:44 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Mon, 11 Dec 2023 09:17:44 -0800
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id 6E1833F7045;
	Mon, 11 Dec 2023 09:17:41 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>, <cyuval@marvell.com>
Subject: [PATCH v8 0/3] arm64: dts: cn913x: add COM Express boards
Date: Mon, 11 Dec 2023 19:17:36 +0200
Message-ID: <20231211171739.4090179-1-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: Q40hGiHm4nDp6pJNgceDEURyVu5N7B6b
X-Proofpoint-ORIG-GUID: Q40hGiHm4nDp6pJNgceDEURyVu5N7B6b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>

Add support for CN9130 and CN9131 COM Express Type 7 CPU
module boards by Marvell.
Add device tree bindings for this board.
Define these COM Express CPU modules as dtsi, and
provide a dtsi file for a carrier board (Marvell AC5X RD
COM Express type 7 carrier board).
This Carrier board only utilizes the PCIe link, hence no
special device / driver support is provided by this dtsi file.
Finally, add dts file for the combined carrier and CPU module.

v8:
   1) swap enum for const in dt bindings

v7:
   1) update MAINTAINERS file to contain all marvell arm64
      dts file in one line, covering all files
   2) Add Documentation to carrier dtsi and combined carrier
      and CPU module dts, explaining the configuration and
      modes of operations of the carrier and the combined
      system.

v6:
   1) Add cn9130 COM Express system

   2) Drop with from compatibility name of COM Express system

   3) Fix indentation issues of dt bindings

v5:

   1) List only carrier compatibility on carrier dtsi

   2) Fix dt_bindings_check warnings using latest yamllint/dtschema

   3) Fix subject lines to remove unnecessary wordings.

   4) Remove dt bindings for standalone CPU modules

   5) Move CN913x dt bindings to A7K dt bindings file

   6) Fix dtbs_check warnings for dtb and bindings,
      using latest yamllint/dtschema.

   7) Move memory definition to main dts file, as memory
      is socket based.

v4:
   1) reorder patches - dt bindings before dts/dtsi files

   2) correct description in dt bindings

   3) separate dt bindings for CPU module, carrier and combination

   4) make carrier board dts into dtsi, make dts for combination of
      carrier and CPU module

   5) correct compatibility strings and file names to use dashes
      instead of underscores

v3:
   1) Remove acronym which creates warnings for checkpatch.pl

   2) Correct compatibility string for ac5x rd board

   3) Add above compatibility string to dt bindings

   4) update MAINTAINERS file with ac5 series dts files

   5) remove memory property from carrier dts

   6) add comment explaining that OOB RGMII ethernet port
      connector and PHY are both on CPU module

v2:
   1) add compatibility string for the board

   2) remove unneeded hard-coded PHY LED blinking mode initialization

   3) Split the CPU portion of the carrier board to
      dtsi files, and define a dts file for the AC5X RD
      carrier board.

Elad Nachman (3):
  MAINTAINERS: add ac5 to list of maintained Marvell dts files
  dt-bindings: arm64: add Marvell COM Express boards
  arm64: dts: cn913x: add device trees for COM Express boards

 .../bindings/arm/marvell/armada-7k-8k.yaml    |  22 ++++
 MAINTAINERS                                   |   3 +-
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../dts/marvell/ac5x-rd-carrier-cn9131.dts    |  44 +++++++
 .../boot/dts/marvell/ac5x-rd-carrier.dtsi     |  34 ++++++
 .../dts/marvell/cn9130-db-comexpress.dtsi     |  96 ++++++++++++++++
 .../dts/marvell/cn9131-db-comexpress.dtsi     | 108 ++++++++++++++++++
 7 files changed, 306 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/ac5x-rd-carrier-cn9131.dts
 create mode 100644 arch/arm64/boot/dts/marvell/ac5x-rd-carrier.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi

-- 
2.25.1


