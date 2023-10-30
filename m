Return-Path: <devicetree+bounces-12908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF8F7DBDB8
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DDD7B20B61
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B9A18E03;
	Mon, 30 Oct 2023 16:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="KHUFHvzd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B7F18C38
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:22:40 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20DBA83;
	Mon, 30 Oct 2023 09:22:36 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39UF3Wru012001;
	Mon, 30 Oct 2023 17:22:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=WWjvixk
	x1+sUJudPBiinwlW6wYpb+vSAYAex868zvkg=; b=KHUFHvzdpvB9wB8g7w2XTRG
	Yzoq/mVxTwda2uxkNZ7zx4As5TV6cwA8r1yLgoHbak1dX8GUcm6p64pIudqwuGeB
	fSsX1zIs2ON9mRvFyThxiPYcqC7gJYrCNzWVJMyK/grkRpdKePRm/0rk5r7kPh5l
	fhjSKjtVwjmTdX26bZq1nFYxdHIWoE7cK8j9t4h5qdKTajGPaZjJTMyikv6vEJde
	bBOb7m38xJ4NctwH6V65vGkfA2aU7VolwigG6ERzD4wPOtMOuxzptVDLSGlB5TKe
	ACDosYaHira/AflfM4v0CWUt37YUjjA1AFww8V0O6QItPHjB3/6fLVRVf0iLBIg=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3u0ttvh0bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 17:22:07 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF16110005B;
	Mon, 30 Oct 2023 17:22:05 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B116D25C61C;
	Mon, 30 Oct 2023 17:22:05 +0100 (CET)
Received: from localhost (10.252.13.136) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 30 Oct
 2023 17:22:02 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
Subject: [PATCH 0/3] Update STM DSI PHY driver
Date: Mon, 30 Oct 2023 17:21:54 +0100
Message-ID: <20231030162157.218901-1-raphael.gallais-pou@foss.st.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.252.13.136]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_10,2023-10-27_01,2023-05-22_02

This patch series aims to add several features of the dw-mipi-dsi phy
driver that are missing or need to be updated.

First patch adds runtime PM functionality to the driver.

Second patch adds a clock provider generated by the PHY itself.  As
explained in the commit log of the second patch, a clock declaration is
missing.  Since this clock is parent of 'dsi_k', it leads to an orphan
clock.  Most importantly this patch is an anticipation for future
versions of the DSI PHY, and its inclusion within the display subsystem
and the DRM framework.

Last patch fixes a corner effect introduced previously.  Since 'dsi' and
'dsi_k' are gated by the same bit on the same register, both reference
work as peripheral clock in the device-tree.

Raphael Gallais-Pou (2):
  drm/stm: dsi: expose DSI PHY internal clock
  arm: dts: st: fix DSI peripheral clock on stm32mp15 boards

Yannick Fertre (1):
  drm/stm: dsi: add pm runtime ops

 arch/arm/boot/dts/st/stm32mp157.dtsi          |   2 +-
 arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts |   2 +-
 arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts |   2 +-
 arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts |   2 +-
 arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts |   2 +-
 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 274 +++++++++++++++---
 6 files changed, 240 insertions(+), 44 deletions(-)

-- 
2.25.1


