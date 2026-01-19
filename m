Return-Path: <devicetree+bounces-256898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EB0D3AB39
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 250EF30D55B9
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4173F374180;
	Mon, 19 Jan 2026 14:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fJFE0a/p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dqcpra9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA12936A01C
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831375; cv=none; b=MkarrEpVjXkG9SBjdtpXUMmR1YSJCMCeK9Q+378y6Kff6yHBnGThCbQSDSOy9dZKwM118Mgl66WrI0KxPvhnY11/pymUmUayHzANb1EllOfcNS6BZyB58EVyN5E/SX13rDoY3h+iQSW1CQoGaBZziS4ZVXYlaacfpSC4fmSeJjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831375; c=relaxed/simple;
	bh=Vf3whddBTdV7xjptVAcFKDPou5R77L8fHdI9ZXlEbW8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BbAJDf4xe7gf7/GpuefCwat4A5vde25S2vUmDxf22Lr61FX/ti0fVGa+3Q2Zcs8YALJ2XQvKYq6kGaYCqchqqEpTuw+CLDlnxH2pFhaMITwg1JiLbbNc+Ry2lC2evkJ/lyMT/zHphQVYKp99/d4lc4FBMYEWVm/q6C5cms5063U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fJFE0a/p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dqcpra9j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JBDMMd1440838
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9lX1BPtTqqh
	G7Gi/G9hTfEQjmDYEFYWw7UxUB8RToE8=; b=fJFE0a/pbHMR91J1XWTIBZ27muO
	Yt7G0LdCNKLDe2Jg8LRzUx2KlPBgu0FgDyjNfCJa3YDfXGIMfeByYJUVqwnIzgmz
	h0utKjEYojyQxe43WVjsEH3NQEK7cOnCKXoYAkVYRn/pGRQZy4Ik0S0f2DIBS0SK
	ifpyFIZN0sAh8TzHKrUQKCGjGaffhYNVwDXv+3PKbTA1sY9+anIWemySeVPCxPr0
	agS9c1n1y7Se76aDaDuil32ah91GSGfB9MxNq4JIx4CC9uili5wP08Wb4Yg6q4Vz
	lx5T3dSb3HUHpERisEvIGNbnXt1vZXflKf0DRWdVP+4utDy/NtWpnZx/y2A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bskj3ge8a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:52 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c55434c3b09so2450185a12.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768831372; x=1769436172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lX1BPtTqqhG7Gi/G9hTfEQjmDYEFYWw7UxUB8RToE8=;
        b=dqcpra9jq8WfkkRrBjTJqiPsSGJHBQUrxDH8AnpegGEi6IcSIc/C3PS3K9qfMVgD66
         m3wTXgNp3roMkqHZVTEgESR8Hl5moF45qv08F4JhznbqoAcVnEK9gHwmwYn+rX+8mHoc
         JdXf7gA7pm3vvJ+uGsv2Vax86NVUeVx1wIUCUJcWgYpog10YgRSiYtRNOMc9wy9TzIaK
         BGHiuu/w7Wig5V8cGK8sreZY8ofjphy3IZHVZJTbJQCbVCezl4ZsG6aXGVuGG1N+QGKY
         HeCNSrE11NUjWYCgkweu+Q4bnocTRY7ETQZxpiWxUOhaxeMmlNcsLtxT/K9OhTg2j2lz
         9iUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831372; x=1769436172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9lX1BPtTqqhG7Gi/G9hTfEQjmDYEFYWw7UxUB8RToE8=;
        b=iK9XhEWVvmAdyh8qJ85zLzmweGhBRt3bJKNFLupTNIIvRnLsg7ElglP2SOPzhVmIQW
         mEIyEuCnx3HmM3qNFC+98G926RAW87zyt4r3Qww2RxFgoK510TJMAFtCeQGpWlH0BSd8
         zecuWwtQ/pzYDyY5z0+ZlqMd+zAJmkH7b/cmXFHSmK+TBNMHGnkKD0cYdiScv1s9V4V0
         18IluaoxIqGAOxJbYsgSIdDbB4APGVt/iEc7s6uapKgyi2awpGUVNvEbkil8HCe7TABC
         wEdnNO04qDYO+pU/He7r73ma9hgvgFV19TIlf0yeg/CQT6IuswjxHvjHQLxgHXrZJfuM
         Jnfg==
X-Forwarded-Encrypted: i=1; AJvYcCVkKtcQMX29dQ6syjXBSIY+v5N+uuqqPvF7OPGPfVG+AnCMQrNBsuWQ09rFT9+vzDh/A4GOYKjjlpYu@vger.kernel.org
X-Gm-Message-State: AOJu0YxoufPk7J2mV9czxSRfr4oEL733QNMM0HymNpW6FXrhl3y1uBqE
	BIX0xElBqlhuKGOiCZkMycZd/HgX8Ennx4jRgLt2EwI6+GDNZS4RYvtztTVlcEV7aTztNZ+noJs
	RH3xV+JM1bI8Sx38CkrlIPxqZQFQQKAJbMCJYvbnfa+Im2+4XBZkAegA1jY+rfpJI8mEVyNprbd
	c=
X-Gm-Gg: AZuq6aLuNdtY58i+sXQANCKj09X1w9WzNUIRwrlot7HuXlzoCYfoIW7wbStSkhxNqv8
	gtm1OhGWAK8uM1yyHLSqyarNB/Roww/Xv3bQvKtmbVHgLuUnycAQ/FReere0nAe4d0SMtf4Dduk
	tPTjLHG35R0KBEAdFoe6IM29Ycv13+z9hh4NmRpThGuCv9nluPgDRI/QPvnoXEz8YzqgV+M7NQD
	9Fv2gl05mIyQs5OYwR9+Ll+qxHuSSKrcq7kPlIf48TCxEABhijYdtQ1nfVKFH3eBrRGCFEHGRSt
	C3t54rYQ/qO+bUJ2BWqWiyWeh+3cYpv0VAH/TdyqyFw2ytXq4KdUXr/+65S7eth0w3IfL/nfNR5
	bD9WSZ1eua4aqbzws1LAHCVy80mIA0d9Ph7RrpBj8wEzUUOzNmOZfNLETaxEA3NCB9eya
X-Received: by 2002:a17:903:1a8b:b0:29e:9387:f2b9 with SMTP id d9443c01a7336-2a71751c69emr112215115ad.24.1768831371059;
        Mon, 19 Jan 2026 06:02:51 -0800 (PST)
X-Received: by 2002:a17:903:1a8b:b0:29e:9387:f2b9 with SMTP id d9443c01a7336-2a71751c69emr112214645ad.24.1768831370365;
        Mon, 19 Jan 2026 06:02:50 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941b915sm97416715ad.90.2026.01.19.06.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 06:02:50 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzk@kernel.org, Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH v3 ath-current 1/2] wifi: ath11k: add usecase firmware handling based on device compatible
Date: Mon, 19 Jan 2026 22:02:37 +0800
Message-Id: <20260119140238.3360658-2-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260119140238.3360658-1-miaoqing.pan@oss.qualcomm.com>
References: <20260119140238.3360658-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ds7Wylg4 c=1 sm=1 tr=0 ts=696e398c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JAFltXB-HLbv1eA7pZkA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDExNyBTYWx0ZWRfX/9oRjjWc9iux
 3p0C7s552P88DOaRm6YFkQ4IH1m7k/10igBz7wFxFa1x0gDV+tc4PyV6kNmh0pihmpS9bbLvOZq
 8vfw1dE0cbPCtuZBBVUWud4HCbsP+Zpd/FPNNZRK/xlg+nyAYX4DRO+pny7+hRCR0jABFqgR3g8
 Lv7+8y5vRWsQvhYz5UjnBk0eW6WmnmUA2xIBiKUPnye3MADZ5pogP8qrHQx3jdTZJiwyGHBI8/L
 SpH9rykMMkl985//jBTXWCa9pvTs8zKdGm7jo+KnEzKjllxe+8FxuIUierFtjxQwMfF/pJC72nv
 FuO740NzlBl44m/SHCMQvxJZ6LBXp5de/6wrHFo1INgMUd6mvPynuFLWKD15ho0QYFLjS+qvs49
 7VstoO6ZC7SB3+koxJWLisyV6vmczwcYIv6U8ttmQQPWcFZ15/y5OcL0gnJFcKZHWerE81S9V40
 zSl2+FsW5ykic9FQ8kQ==
X-Proofpoint-ORIG-GUID: -NgyO5L2paRMidGRhM2Y2ddvtGkVETTF
X-Proofpoint-GUID: -NgyO5L2paRMidGRhM2Y2ddvtGkVETTF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190117

For M.2 WLAN chips, there is no suitable DTS node to specify the
firmware-name property. In addition, assigning firmware for the
M.2 PCIe interface causes chips that do not use usecase specific
firmware to fail. Therefore, abandoning the approach of specifying
firmware in DTS. As an alternative, propose a static lookup table
mapping device compatible to firmware names. Currently, only WCN6855
HW2.1 requires this.

However, support for the firmware-name property is retained to keep
the ABI backwards compatible.

For details on usecase specific firmware, see:
https://lore.kernel.org/all/20250522013444.1301330-3-miaoqing.pan@oss.qualcomm.com/.

Tested-on: WCN6855 hw2.1 PCI WLAN.HSP.1.1-04685-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1

Fixes: edbbc647c4f3 ("wifi: ath11k: support usercase-specific firmware overrides")
Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 drivers/net/wireless/ath/ath11k/core.c | 36 ++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath11k/core.h |  4 +++
 2 files changed, 40 insertions(+)

diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireless/ath/ath11k/core.c
index de84906d1b27..1cf7f4e601c3 100644
--- a/drivers/net/wireless/ath/ath11k/core.c
+++ b/drivers/net/wireless/ath/ath11k/core.c
@@ -1044,6 +1044,42 @@ static const struct dmi_system_id ath11k_pm_quirk_table[] = {
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
index 3f41e6569a78..a0d725923ef2 100644
--- a/drivers/net/wireless/ath/ath11k/core.h
+++ b/drivers/net/wireless/ath/ath11k/core.h
@@ -1292,6 +1292,7 @@ bool ath11k_core_coldboot_cal_support(struct ath11k_base *ab);
 
 const struct firmware *ath11k_core_firmware_request(struct ath11k_base *ab,
 						    const char *filename);
+const char *ath11k_core_get_usecase_firmware(struct ath11k_base *ab);
 
 static inline const char *ath11k_scan_state_str(enum ath11k_scan_state state)
 {
@@ -1346,6 +1347,9 @@ static inline void ath11k_core_create_firmware_path(struct ath11k_base *ab,
 
 	of_property_read_string(ab->dev->of_node, "firmware-name", &fw_name);
 
+	if (!fw_name)
+		fw_name = ath11k_core_get_usecase_firmware(ab);
+
 	if (fw_name && strncmp(filename, "board", 5))
 		snprintf(buf, buf_len, "%s/%s/%s/%s", ATH11K_FW_DIR,
 			 ab->hw_params.fw.dir, fw_name, filename);
-- 
2.34.1


