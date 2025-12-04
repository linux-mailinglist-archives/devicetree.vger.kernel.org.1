Return-Path: <devicetree+bounces-244233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B70CA29AA
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E80F0303FE69
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC527261B78;
	Thu,  4 Dec 2025 07:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g699UPge";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LbJOTM16"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE81A23B60A
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764832279; cv=none; b=ahyFmKNbQfhxE+9mgL8VQwgwsFpeY1ZNVgub+7Gq4QYpfWGrQJyRHbIHm9r1+N7TBcEhkffz6xH825e4ys5BKhdVF6N2srH5EWS0VDBpPgYZQQm19bTqMDQWYxW/NZZ6qtQXhWaUYZDIySOyOi/uuaL5Whd/bMm1ebCU/AvxO7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764832279; c=relaxed/simple;
	bh=2wVXeLWe3ZnDp4/vITX1AjAmqZE9UuKve3+vH8//3Gw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f3WqgsBNYZBC1vdzlH8+OiSutzYruxWyoczIisLdkcD/I/QYO/48jrkcshwRDoT5cbkKkQdX+9Bg1psBXfDrIi3Vjdg1kwdrxZFhN41xwENJ65kmJuuZvXOpbP60yT2moh2EMNcZJHOqtaDA61XQnmMWq88EtMIfJDxIaw/6XYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g699UPge; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LbJOTM16; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468qrI551707
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 07:11:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=w+Yt+b8q8Vj
	xvzQ2cWX0SzX2S2I2lHz/ZTVgM/PTf5I=; b=g699UPgee6rpPlKYIFmSLUSMWZI
	MuQWa8FPTVolJHpm88IBtaYuLFaIQndvzXhA2oHtR0Ahb77VOtkhXUhKu5AzK2TK
	BO9o4EdY57haEl76uforGRDZt6PiEJtcGgIbG37UdT4yEGstsk0Wo5OoCTkQ7/kH
	wdE7kWBNZedfzpMF/MpxuUGeXX6GM2NTd3JxJXqoeF+RVpYK0b8zgBBQUbcPVXE/
	44vHWlAXVRC0w1+gcZclZKuIPCtsmHxweIte97ZacXNovp1JdmEfwyNaoEfbKhpy
	4eNPkujo2ykPllmhdSgEWEdk1Lg/QGCKAkB90nn25dVzFCZiaRxdNdsoing==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdb1td-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:11:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b9ef46df43so648050b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 23:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764832276; x=1765437076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+Yt+b8q8VjxvzQ2cWX0SzX2S2I2lHz/ZTVgM/PTf5I=;
        b=LbJOTM16g+ogTMY2Qhkoywq4IKuWitK9/tpoqBBM2Unp8HM2ffN2I9uLrFZ8dkjws7
         K5iQJaCv+qlHPuAhv/UHbOe7wEsWpaoAARB6qFiMk3yYN8s/FdFfNPTmtyfdRaEocs1c
         Cos7t7RbVqe8yTzr6CQsM+WplYLJjaWjvsjgMSs8qJgZpNTzwfB6N7UrZQz95SDC7ObR
         7lb6TnQ0eTSBs8Xt3q8qhb/ICZR/rvwDh81iv98nTkoPJMY0GHRpkVNleb55NLrkeFys
         OToewoJIy7AifsLgYueAjngWyN6It+nzrBnb/XRV1tb8283KNBqREBC6gAdg2WS4EJBW
         H83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764832276; x=1765437076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w+Yt+b8q8VjxvzQ2cWX0SzX2S2I2lHz/ZTVgM/PTf5I=;
        b=LxlZDGpDR0qkb0cPEvEzi6nNkxpTXUyXr+csQI01I5VPJyFdQHZXvIkoG4t42CPDQ2
         VC8lHiwRyDu5iRd54zuL14VWfZLXZuOop81xjIa9bpwEwtzz56JbPw630ZV4I2rzlUVp
         7ZUdcVQ530vxqG+PSzW399ZCKFtDwLM86pcgty/O8nfa0NKDqyriUjN9nk24fFDzWUjd
         56mV/cTaDHCy5gPeMUzAIilNQICZuc15W3mJJt9yryf4lKVDMSo4a4Cur3R8AQnIHx/3
         n9saesxNQ602u4L+JLBAfrt2nc2rAtbOioyYs8/yxMdyT3w3q+G+SuEDPgFZP/oc4kyq
         3qFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHrRSv6c9Qmqrcvt5H8dxFZDth2t4ECP0mC1Ve9247HhwzrWU0PqSkSfAYkAWODSGf/D15AD/QsSAd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5+WSMWPbcxJwrPw8WDuITao84c7uC18nUknCIi/zT7mZKGKzl
	ON+4YOptK8ySMQ6GfoGH5w8Ipw3P9+c/YbvUd2ukV5QbmddPaFs9zAayproDHu9BY0jHMexAUx4
	6PYoRFl8HEGiafiYI/6J6kOoFeoqrRiXxcBZA+rBe5M/58ciU67oZFSa/ZjX2DN11
X-Gm-Gg: ASbGncsYomzQAtgEfjEFg45mV1JXh0aq+o2eMB29G8UaNmp6zze6HhIwbj4OcQpr/bF
	MCOx83NceL6GeDMfIITa1GZqgb+DNQUBJyWYSPKUXd3t/uu7DbndBT7y9Pl5l1JUxuHcYRbwnwn
	S7zFpYYjjrkpOoNGpAlZ9H0cM9u5NeifXGpcKeHmI/z3TTfi6vh5/X+sc8wFK2srOUCBXQksNSu
	i0tNnu+HbDsrf+SopaF6piJyH41AjYM9zsa5w0zUGzA7qUgIrcrWnLBhczT3KIK5fYoqIEGlyCI
	ZmcKneZlGjQCUa8oV5lyPGSFluoLoj3eASfp36IP/HkNdeupfZQ1uf0yoefXt+ob9lG8xf3rgM+
	Iahaf/ETQXjkgrrzYvtRlDGV4kjgSfzRBIlwcJjHq25x8Z1EVD2PFe3IU9flwp+L6GP80
X-Received: by 2002:a05:6a00:2e9f:b0:7a5:9cf5:b341 with SMTP id d2e1a72fcca58-7e2259ddfcemr2440410b3a.7.1764832275674;
        Wed, 03 Dec 2025 23:11:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdjjjpA4rf37aA7kTwgkuuiTsJYAC1y4NmUcAkrMaRDWq3DGig0k1Wx+gXs04GDeqg0OKrqg==
X-Received: by 2002:a05:6a00:2e9f:b0:7a5:9cf5:b341 with SMTP id d2e1a72fcca58-7e2259ddfcemr2440381b3a.7.1764832275193;
        Wed, 03 Dec 2025 23:11:15 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29f2ed331sm1117470b3a.4.2025.12.03.23.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 23:11:14 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH ath-current 1/2] wifi: ath11k: add usecase firmware handling based on device compatible
Date: Thu,  4 Dec 2025 15:10:59 +0800
Message-Id: <20251204071100.970518-2-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
References: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: c1vlYCNRJzIEp2fGGilnYdvHviOCUZ3z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA1NyBTYWx0ZWRfX8olmRfL/fLUn
 smnpK7anpdBJgxgQG1b4UqtF+4+54wwp30+wgR2CqjocAZaXE4WaQQlnxWwHyC29086Y2fE3mZ/
 DP+0PsDHwaaVkZ3PtTy9r5G/Q9Kd1uRUeKw2i5YCZdW3bubhT4R0gg5N9yWDwbsqaEbKjqLTUbx
 DX8gszU7llCOrUkB+BEK5At+4vF0r/e9fG+5RZRngf/pKI5H0oZN/D6udmBLJ0lKrY/XIGFNiUD
 LSL2eR/+ibxPZonhedcZJTcRy8TlzLQMCO3ab8n7sT+qI0NfNM0ppKy1NI+vm6lAkzFEu8dMqmb
 Z3NUrb/doKT1IiXctqwCtp92qQKPCSwRR7VUe1CRigllni8Lcb1imOQ7C6QQ7VpNeYuF9mp48Xz
 Q4/OK5VrOXr6Awh5jWiYlowp4m5cVA==
X-Proofpoint-ORIG-GUID: c1vlYCNRJzIEp2fGGilnYdvHviOCUZ3z
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=69313414 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=abYA0IzpRIpkkFLbjSYA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1011 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040057

For M.2 WLAN chips, there is no suitable DTS node to specify the
firmware-name property. In addition, assigning firmware for the
M.2 PCIe interface causes chips that do not use usecase specific
firmware to fail. Therefore, abandoning the approach of specifying
firmware in DTS. As an alternative, propose a static lookup table
mapping device compatible to firmware names. Currently, only WCN6855
HW2.1 requires this.

For details on usecase specific firmware, see:
https://lore.kernel.org/all/20250522013444.1301330-3-miaoqing.pan@oss.qualcomm.com/.

Tested-on: WCN6855 hw2.1 PCI WLAN.HSP.1.1-04685-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1

Fixes: edbbc647c4f3 ("wifi: ath11k: support usercase-specific firmware overrides")
Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 drivers/net/wireless/ath/ath11k/core.c | 37 +++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath11k/core.h |  7 +++--
 2 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireless/ath/ath11k/core.c
index 812686173ac8..a4a3a65c7752 100644
--- a/drivers/net/wireless/ath/ath11k/core.c
+++ b/drivers/net/wireless/ath/ath11k/core.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: BSD-3-Clause-Clear
 /*
  * Copyright (c) 2018-2019 The Linux Foundation. All rights reserved.
- * Copyright (c) 2021-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
@@ -997,6 +996,42 @@ static const struct dmi_system_id ath11k_pm_quirk_table[] = {
 	{}
 };
 
+static const struct __ath11k_core_usecase_firmware_table {
+	u32 hw_rev;
+	const char *compatible;
+	const char *firmware_name;
+} ath11k_core_usecase_firmware_table[] = {
+	{ ATH11K_HW_WCN6855_HW21, "qcom,lemans-evk", "nfa765"},
+	{ ATH11K_HW_WCN6855_HW21, "qcom,monaco-evk", "nfa765"},
+	{ ATH11K_HW_WCN6855_HW21, "qcom,hamoa-iot-evk", "nfa765"},
+	{ /* Sentinel */ }
+};
+
+const char *ath11k_core_get_usecase_firmware(struct ath11k_base *ab)
+{
+	struct device_node *root __free(device_node) = of_find_node_by_path("/");
+	const struct __ath11k_core_usecase_firmware_table *entry = NULL;
+	int i, count = of_property_count_strings(root, "compatible");
+	const char *compatible = NULL;
+
+	for (i = 0; i < count; i++) {
+		if (of_property_read_string_index(root, "compatible", i,
+						  &compatible) < 0)
+			continue;
+
+		entry = ath11k_core_usecase_firmware_table;
+		while (entry->compatible) {
+			if (ab->hw_rev == entry->hw_rev &&
+			    !strcmp(entry->compatible, compatible))
+				return entry->firmware_name;
+			entry++;
+		}
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(ath11k_core_get_usecase_firmware);
+
 void ath11k_fw_stats_pdevs_free(struct list_head *head)
 {
 	struct ath11k_fw_stats_pdev *i, *tmp;
diff --git a/drivers/net/wireless/ath/ath11k/core.h b/drivers/net/wireless/ath/ath11k/core.h
index e8780b05ce11..f8fcd897ebd2 100644
--- a/drivers/net/wireless/ath/ath11k/core.h
+++ b/drivers/net/wireless/ath/ath11k/core.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: BSD-3-Clause-Clear */
 /*
  * Copyright (c) 2018-2019 The Linux Foundation. All rights reserved.
- * Copyright (c) 2021-2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
 #ifndef ATH11K_CORE_H
@@ -1275,6 +1275,7 @@ bool ath11k_core_coldboot_cal_support(struct ath11k_base *ab);
 
 const struct firmware *ath11k_core_firmware_request(struct ath11k_base *ab,
 						    const char *filename);
+const char *ath11k_core_get_usecase_firmware(struct ath11k_base *ab);
 
 static inline const char *ath11k_scan_state_str(enum ath11k_scan_state state)
 {
@@ -1325,9 +1326,7 @@ static inline void ath11k_core_create_firmware_path(struct ath11k_base *ab,
 						    const char *filename,
 						    void *buf, size_t buf_len)
 {
-	const char *fw_name = NULL;
-
-	of_property_read_string(ab->dev->of_node, "firmware-name", &fw_name);
+	const char *fw_name = ath11k_core_get_usecase_firmware(ab);
 
 	if (fw_name && strncmp(filename, "board", 5))
 		snprintf(buf, buf_len, "%s/%s/%s/%s", ATH11K_FW_DIR,
-- 
2.34.1


