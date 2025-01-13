Return-Path: <devicetree+bounces-137933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B34A0B217
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 10:01:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7ED7E1885B3E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4A223DEBF;
	Mon, 13 Jan 2025 09:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="SnSWLvBm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A9B237A38;
	Mon, 13 Jan 2025 09:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736758840; cv=none; b=h1tbr0YrTaGMmGK5gXxjY537CZqvuzXZaJINjYjn+sDnbDynMEiBrM/FuwGtU09NXh+hUGHXasl1s/9XOJSu41hxncEBUFDFlfx/MpnOL5/Q1P1IyvFfKKCxIbhx81gTANmBXbqLY0rbyq4YfYmY9I80GySLLek5+emLsVIlAKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736758840; c=relaxed/simple;
	bh=zLGrW2MRu2ljW8FD4WwIc6H3nvZcXa78oWt1WnrJXrA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=oLZooHDzdFq1PTSmBkGY/b4RLOpO8lMm1hu4LTE9GvMiHJQoyzPpSG15kuAjiARVLO1O4sq3v79Ew47qvNE7FtKrPpwfufh6EYZ885+kcXqNyVYA+k07ISyfrVuCaz8JNCIT9ldVaUb1I7adO24vYUsWBWZfdTB7sqVdCNsy8Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=SnSWLvBm; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D4XvuX008255;
	Mon, 13 Jan 2025 10:00:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	mvpHg9TQ6IL1UuT8hLct/OvilUvBkO53Z6F+HaXouII=; b=SnSWLvBm+iMa9qDv
	9EZh5y70pbxqyVMhH5H8alY6MMIR4CKUH/O3Vh0wbWpo2OUpBj9v6DS3EgU680nW
	Y9t/AwkljqiJcyYN0Nh1kY4LFPtv6ehTtiu+OmwnInQkm+2cYRbu5AjvgHyLKQRj
	EbZhSf3hLzKsYq3QA6o/xibQj0Hqq2mqxhCkvHYXOjvMeLqQaSP0tCUUdyRQmc8A
	iTKBqeNUR9lw27uOKdtzUAB2Qlgn7gEtUDuYz+asmVlBPj5qLshJz53ss93vD36T
	4d5XZWwrmtNwtWHoGcpg5YiXfQsvzT0C+jBr2E2T8NH8UY8LzBLjiCFFSw//9ElT
	wnKY1g==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 443hj5d85m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 10:00:23 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 5692440054;
	Mon, 13 Jan 2025 09:59:05 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E727D234C36;
	Mon, 13 Jan 2025 09:58:17 +0100 (CET)
Received: from localhost (10.129.178.39) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 13 Jan
 2025 09:58:17 +0100
From: Alain Volmat <alain.volmat@foss.st.com>
Date: Mon, 13 Jan 2025 09:57:59 +0100
Subject: [PATCH v3 9/9] media: stm32: dcmipp: add has_csi2 & needs_mclk in
 match data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250113-csi_dcmipp_mp25_enhancements-v3-9-33b96744df46@foss.st.com>
References: <20250113-csi_dcmipp_mp25_enhancements-v3-0-33b96744df46@foss.st.com>
In-Reply-To: <20250113-csi_dcmipp_mp25_enhancements-v3-0-33b96744df46@foss.st.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-media@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Alain Volmat <alain.volmat@foss.st.com>
X-Mailer: b4 0.14.1
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01

Introduce two variable has_csi and has_mclk within the
match data of the driver in order to know, depending on
the compatible if CSI-2 interface is available and if
the mclk clk should be retrieved.

Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
---
 .../platform/st/stm32/stm32-dcmipp/dcmipp-core.c   | 23 ++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
index 5a04018a6a9d..1b7bae3266c8 100644
--- a/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
+++ b/drivers/media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c
@@ -89,6 +89,8 @@ struct dcmipp_pipeline_config {
 	const struct dcmipp_ent_link *links;
 	size_t num_links;
 	u32 hw_revision;
+	bool has_csi2;
+	bool needs_mclk;
 };
 
 /* --------------------------------------------------------------------------
@@ -164,7 +166,9 @@ static const struct dcmipp_pipeline_config stm32mp25_pipe_cfg = {
 	.num_ents	= ARRAY_SIZE(stm32mp25_ent_config),
 	.links		= stm32mp25_ent_links,
 	.num_links	= ARRAY_SIZE(stm32mp25_ent_links),
-	.hw_revision    = DCMIPP_STM32MP25_VERR
+	.hw_revision    = DCMIPP_STM32MP25_VERR,
+	.has_csi2	= true,
+	.needs_mclk	= true
 };
 
 #define LINK_FLAG_TO_STR(f) ((f) == 0 ? "" :\
@@ -296,7 +300,7 @@ static int dcmipp_graph_notify_bound(struct v4l2_async_notifier *notifier,
 				     struct v4l2_async_connection *asd)
 {
 	struct dcmipp_device *dcmipp = notifier_to_dcmipp(notifier);
-	int ret;
+	int ret = -EINVAL;
 	int src_pad, i;
 	struct dcmipp_ent_device *sink;
 	struct v4l2_fwnode_endpoint vep = { 0 };
@@ -304,15 +308,9 @@ static int dcmipp_graph_notify_bound(struct v4l2_async_notifier *notifier,
 	enum v4l2_mbus_type supported_types[] = {
 		V4L2_MBUS_PARALLEL, V4L2_MBUS_BT656, V4L2_MBUS_CSI2_DPHY
 	};
-	int supported_types_nb = ARRAY_SIZE(supported_types);
 
 	dev_dbg(dcmipp->dev, "Subdev \"%s\" bound\n", subdev->name);
 
-	/* Only MP25 supports CSI input */
-	if (!of_device_is_compatible(dcmipp->dev->of_node,
-				     "st,stm32mp25-dcmipp"))
-		supported_types_nb--;
-
 	/*
 	 * Link this sub-device to DCMIPP, it could be
 	 * a parallel camera sensor or a CSI-2 to parallel bridge
@@ -330,7 +328,12 @@ static int dcmipp_graph_notify_bound(struct v4l2_async_notifier *notifier,
 	}
 
 	/* Check for supported MBUS type */
-	for (i = 0; i < supported_types_nb; i++) {
+	for (i = 0; i < ARRAY_SIZE(supported_types); i++) {
+		/* Only MP25 supports CSI input */
+		if (supported_types[i] == V4L2_MBUS_CSI2_DPHY &&
+		    !dcmipp->pipe_cfg->has_csi2)
+			continue;
+
 		vep.bus_type = supported_types[i];
 		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
 		if (!ret)
@@ -529,7 +532,7 @@ static int dcmipp_probe(struct platform_device *pdev)
 				     "Unable to get kclk\n");
 	dcmipp->kclk = kclk;
 
-	if (!of_device_is_compatible(pdev->dev.of_node, "st,stm32mp13-dcmipp")) {
+	if (dcmipp->pipe_cfg->needs_mclk) {
 		mclk = devm_clk_get(&pdev->dev, "mclk");
 		if (IS_ERR(mclk))
 			return dev_err_probe(&pdev->dev, PTR_ERR(mclk),

-- 
2.34.1


