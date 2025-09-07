Return-Path: <devicetree+bounces-213969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD0CB47AD7
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 166467ADA39
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBD0263C8A;
	Sun,  7 Sep 2025 11:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WEkNXS1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1DE2609D6
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244133; cv=none; b=qwp6EmljaaeJ1nMYjx5RJu58ZjBulm0eISHRDl1A68BwJ4MTHciXru+9nvyD2w0NZGaGnloc1/1cGv0cBsAENRY+XskKMdo1RKO/Z3KArR3YtYLsrQGbxCzceJjKsmcDe5PPSxv0+WQSXY9WOEE2sJbVK81X2oytSKTduCzvsso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244133; c=relaxed/simple;
	bh=ikumlZWRZ31uELt9Gx3EsqoON5ydu7Y5Jeqw2vQ5WF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I0saxk+4v4pATDXWdYB1KM7yVeA/k2sA2gA+i2SyK0jQjNz/95d1Lb7oHkrUpv2AjCua+O39XT/xglRjdOFtau2wBhS4DhkrBquwdHS1wXuW5e0Vu1DqoGWiaWr0cMTH8F3tE4xcbuaOOtlEqfMJH6lglCEBr/OveN0NcE+aX1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WEkNXS1J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5878kCdc021243
	for <devicetree@vger.kernel.org>; Sun, 7 Sep 2025 11:22:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=O3dcTOpjTe1
	fHGNnpmdRKX8jenRcrbq/0mDRIoxdxMI=; b=WEkNXS1JyGowpcnX5o1Kz24uUbx
	ocTioMUqEMtjPrHMnR3d1EB+in+GKniTcndTOw5vZhzjn4kE/6dNJn2uSoRfGnyX
	tTdVaGc/nFyxSs6eapnXypsRRuEsb+pxTrATTGE5NwhZvb4UmoB4YU7pFSoVPGA2
	OvN+VBrAfR2ojOzKyDoIQGHQoWlVQ03MkIjrQwWpO/ZoP2vZloEO8WglNijWCJnh
	6G+exLHXPDohvabF2mjnuMZgh64UP2fPoSGfT44YOIR8SF55eAWwcSkpnmgsAfbX
	agyMUcnBNZRp4gBfQvqGjkWZmrUGWqzFPwcTuqaUtSuAuEa4WGlZ2X9KvkA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8t3ed-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 11:22:10 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-71ffd145fa9so103512916d6.2
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:22:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244130; x=1757848930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3dcTOpjTe1fHGNnpmdRKX8jenRcrbq/0mDRIoxdxMI=;
        b=dHtXHn1YCgBeEaWRs5wmUk8c7GBIG3CVYZKRDmKZa+tmDcG5n0D/RETWo0xlaRQT6w
         bMBvX62iR/adoQWRCqXyrVdGh/5nbwxNWcIgKagnr4OAetqGHjt2Kj3ARktHtFLpY3z/
         Q5hFQyE/9A2P4xoBACXHTVJdUZUSOLdSMp4MK6xk4EG52ZLTh+7J1wnJH72VZ248kd3o
         XVe+6pjCLM/iUK0IF463QkkajMNUEZROE4ji9psaUWN3+jAoVXhUfyCL8lXiWelZLGDo
         lG28SDkKUbs3yrKKLEoVdSfyYnoYUXleeiAV5NzqKWXAAw0rjsTcV/H/XjF9stGcj8OU
         2CKw==
X-Forwarded-Encrypted: i=1; AJvYcCUEqmhLDHYOxOBi2Z7lxYOkQ7gOAA7qXhD2zMGITCGGRaKVOoWJUcQYsYrOx33vq5aYs/qSiYGevVlH@vger.kernel.org
X-Gm-Message-State: AOJu0YwaIXzWnuIp3s+WcBFYoQTIqRfGeiF2BybJuVxGPyxxSfo5K8xn
	fQRFNgAM7szND4moNUxxtkLsiPGCkZOhe8FDymsY0OgRxjEFskzJMzsgyvoFnJksvGdviz2E9Xn
	mgtHXL9Ar6YzoOQeyye7fwOBpBwjYk1FWzZPZKZ0NWUq4tSV1Hr+n1B7JM78tzouk
X-Gm-Gg: ASbGncszGSS5H1WQ4M1d85M59gO7RzneRDcaIb9//TrpdCqK7xStvVKRsFCPC27GRSt
	YodBmN5H/XAvrgGfqs3ngt1HgwgMRTWZtyit97EqRolV+9Nw7YggSog44NonNxL/bez/EwT30Ez
	P7C6l3WKVxCGJWtaRtx1I/rpPgWjiwNVKDLoCJ6MwV/rvPaJxrs1lGigqJPZUWupR9b2lvq9zm+
	pMPUyFPwxiaFsAKznmOWQcRcJSdfhgPwFW0qttOyvnkT0uxXU2oM+uiZoSXV+zWfrFfbPdIug89
	a6Kb6siG5kJAqOLMLMS88vJysbz+XsPzkkqgrxhS0qmxSR7v/kEKpg==
X-Received: by 2002:ad4:5f0f:0:b0:729:aa08:11f5 with SMTP id 6a1803df08f44-7394587e3b9mr46640616d6.64.1757244129811;
        Sun, 07 Sep 2025 04:22:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDHwt5qnEpcgP82XhCscnP8nH4tNjR1T6aV/vYNlsL56jTGuuf4j007iTxpaxfSjb82GbGwA==
X-Received: by 2002:ad4:5f0f:0:b0:729:aa08:11f5 with SMTP id 6a1803df08f44-7394587e3b9mr46640416d6.64.1757244129416;
        Sun, 07 Sep 2025 04:22:09 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm37523289f8f.61.2025.09.07.04.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:22:09 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        srini@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 04/13] soundwire: bus: add sdw_slave_get_current_bank helper
Date: Sun,  7 Sep 2025 12:21:51 +0100
Message-ID: <20250907112201.259405-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250907112201.259405-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250907112201.259405-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bd6ae2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=G7Fn18kybrAXfbFeA2QA:9
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: QEbMU9WFomIY2uC6TjRYaTDX1eACPx_k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX6TNVrAM3cs8u
 Ju4jyrjIyvE2DhdfevsagVWphA80p9q1PLDIzEj/yFBiqHMwIsDKCp3fpz1z90HC7JAtn20fVUm
 QhJ9W9hpgjUS1R8M+kz9b3pDMbvY/qAjpgSgOxCLP+yPmggLp2uAcgYWzC0JuuGHmPGUl6ncL2B
 GfDBXFE+6q92xRUT2OQDP0yjSfoy716MAntow2IsjR03kCXHyopL8b1xUHeCM3p7EtkZywQXd2T
 FDXkr9vVkJzGUqevlBGAzGtPCukAxMtxwR6Kvb/a9yPDmvU+Gy1hFFo7XX/Y9d9LZpqOZ7JTj9t
 VI4BTkOsJwC7jBb19UrXrjz0vEm5HawbZVZCoyv4FTfuAGI1rDDCepWxsmbKwT/51LN04y/pJzO
 Q9lVdQD/
X-Proofpoint-ORIG-GUID: QEbMU9WFomIY2uC6TjRYaTDX1eACPx_k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

There has been 2 instances of this helper in codec drivers,
it does not make sense to keep duplicating this part of code.

Lets add a helper sdw_get_current_bank() for codec drivers to use it.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/soundwire/bus.c       | 12 ++++++++++++
 include/linux/soundwire/sdw.h |  8 ++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/soundwire/bus.c b/drivers/soundwire/bus.c
index 4fd5cac799c5..55c1db816534 100644
--- a/drivers/soundwire/bus.c
+++ b/drivers/soundwire/bus.c
@@ -1360,6 +1360,18 @@ int sdw_slave_get_scale_index(struct sdw_slave *slave, u8 *base)
 }
 EXPORT_SYMBOL(sdw_slave_get_scale_index);
 
+int sdw_slave_get_current_bank(struct sdw_slave *slave)
+{
+	int tmp;
+
+	tmp = sdw_read(slave, SDW_SCP_CTRL);
+	if (tmp < 0)
+		return tmp;
+
+	return FIELD_GET(SDW_SCP_STAT_CURR_BANK, tmp);
+}
+EXPORT_SYMBOL_GPL(sdw_slave_get_current_bank);
+
 static int sdw_slave_set_frequency(struct sdw_slave *slave)
 {
 	int scale_index;
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index 096213956d31..e6a3476bcef1 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -1089,6 +1089,8 @@ int sdw_stream_remove_slave(struct sdw_slave *slave,
 
 struct device *of_sdw_find_device_by_node(struct device_node *np);
 
+int sdw_slave_get_current_bank(struct sdw_slave *sdev);
+
 int sdw_slave_get_scale_index(struct sdw_slave *slave, u8 *base);
 
 /* messaging and data APIs */
@@ -1128,6 +1130,12 @@ static inline struct device *of_sdw_find_device_by_node(struct device_node *np)
 	return NULL;
 }
 
+static inline int sdw_slave_get_current_bank(struct sdw_slave *sdev)
+{
+	WARN_ONCE(1, "SoundWire API is disabled");
+	return -EINVAL;
+}
+
 /* messaging and data APIs */
 static inline int sdw_read(struct sdw_slave *slave, u32 addr)
 {
-- 
2.50.0


