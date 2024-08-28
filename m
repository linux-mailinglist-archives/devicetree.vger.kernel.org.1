Return-Path: <devicetree+bounces-97567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B97962A65
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 16:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2ABDD1F25344
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 14:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7EC199FB9;
	Wed, 28 Aug 2024 14:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="P+RAvk3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB001741F8;
	Wed, 28 Aug 2024 14:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724855859; cv=none; b=t7KD3l1yxceiYWZLzLErk5aUYWJo4NxQ5JgUq9TuETyEuES3dlTGEhr5RhrOLFNG2wObZf9kiPHF85arvhASmm6OFNaDPkqD5WTwWKc92AwtzIb7D+5P8Ni8p7MB2zHh3MpLRQy4s09r2qFrpfGwNqclUYtqKc4mrUwaGhPErz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724855859; c=relaxed/simple;
	bh=fdpg3kq4dPHCGNskbhOT3JsJDtXXiyk+S1SADWL7kP4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=UnIt+xYoYKVi2nELRV+R9nMmrXV0nkTodfRhvAuZ36ESt7fIi0Tunr7fmzeZynwuCcAKWH2j8lfJF3Q6ZZCzwhfDmsVDxerL62BG5GyinE90TGBqQBVGQO//U/4rsYjLkWcenoqvhTtOlQJQW3qfQD+VaWm0mWarFr8KvyT8clw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=P+RAvk3A; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47SDcHJW022995;
	Wed, 28 Aug 2024 16:37:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=selector1; bh=PQt+rFDvJ2p7ysrJ52Hqzp
	olK6zn6vXicKJGfAoCcvE=; b=P+RAvk3A9n029uL7gERYrujW11w3q/SK9uzTKq
	KNRa0au0Iks/YUePgE12oywnkWS4tHca0SfsVZoFxLLmdMvGX49SYLNOn3rs8wid
	w9mprFfUSsVVt8EUYxAFMJ2ae4MABZdu15hgW243T7e1iV87f8Vau1zwANfbie7H
	SLDbSdTBgKs3vNcK/0S2krX5h7Ou/3CBUmRxNQ2nXNd6j/H+zz69QkJzZA4sr1Fi
	vL88OmeW02MRWsSetk5dzhWpVUxs23lFnA+W3l/pMU7oS4O8gjzQJs3wFoPMUGFH
	gfr6N9TA6GCsNfJ0MLva2Ag7mCIZvYGthSxwj+B+MErTd6Sw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41a4y00b3s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 16:37:05 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7773B4002D;
	Wed, 28 Aug 2024 16:37:01 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 784AD26F238;
	Wed, 28 Aug 2024 16:36:12 +0200 (CEST)
Received: from localhost (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 28 Aug
 2024 16:36:12 +0200
From: Christian Bruel <christian.bruel@foss.st.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>
Subject: [PATCH v4 0/5] Add STM32MP25 USB3/PCIE COMBOPHY driver 
Date: Wed, 28 Aug 2024 16:34:47 +0200
Message-ID: <20240828143452.1407532-1-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_05,2024-08-27_01,2024-05-17_01

Address comments from Rob and Krzysztof

Changes in v4:
   - "#phy-cells": Drop type item description since it is specified
     by user node phandle.
   - Rename stm32-combophy.yaml to match compatible
   - Drop wakeup-source from bindings (should be generic)
   - Alphabetically reorder required: list.
   - Drop "Reviewed-by" since those previous changes

Changes in v3:
   - Reorder MAINTAINERS patch

Changes in v2:
   - Reorder entries
   - Rename clock_names and reset_names bindings
   - Rename and clarify rx-equalizer binding 

Christian Bruel (5):
  dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
  phy: stm32: Add support for STM32MP25 COMBOPHY.
  MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
  arm64: dts: st: Add combophy node on stm32mp251
  arm64: dts: st: Enable COMBOPHY on the stm32mp257f-ev1 board

 .../bindings/phy/st,stm32mp25-combophy.yaml   | 128 ++++
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  17 +
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts    |  14 +
 drivers/phy/st/Kconfig                        |  11 +
 drivers/phy/st/Makefile                       |   1 +
 drivers/phy/st/phy-stm32-combophy.c           | 607 ++++++++++++++++++
 7 files changed, 784 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
 create mode 100644 drivers/phy/st/phy-stm32-combophy.c

-- 
2.34.1


