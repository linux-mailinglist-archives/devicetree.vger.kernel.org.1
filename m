Return-Path: <devicetree+bounces-263462-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC53AvQnhmmLKAQAu9opvQ
	(envelope-from <devicetree+bounces-263462-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:42:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F26F1013C5
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:42:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 15CEE3009E3A
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7464342317D;
	Fri,  6 Feb 2026 17:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K7YKkf7c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CyPGBzov"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4193E421A11
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399706; cv=none; b=dDjwL3PIrAOfjvAF16DR2xfKzZm7rAqeb4B8kPmschXRtSvVrhSbcW5rIYO7JrBlHXPH6vIcZgNkOKgsn2b/Zc+1gSyHHEoHm0UdDuxS2Bi1rvkeHBYzNWCqQ5hk/UcCSiYjtv6gBPp8ihmnJTjc/thuvpNkHmPrM+xO2XyS7CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399706; c=relaxed/simple;
	bh=ugzI2X4T4Eu6du95zdaOBWO3+LJFBYSONj4KCG0BUk8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mJJtelUsqIKQOc4nSPt+nsmfv2UbAvvyXQyuExYGPdWouXp2yXxXJBbAl72tcyTe09v1lXBF7gnAkwbWt7K3O1Qj2GtiloeEOKZx3I86UcpyRVlJ7z6pVJ6ghettiSOaOvsmPDwNxqsNMEX3VHc1LYLDKpY65OfAGLymVB5aQ40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K7YKkf7c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CyPGBzov; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616F0P9C2482264
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:41:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=slQCzeC9waI
	6hA1xDFtb4CgPu+7qSKt+eKegC+Sl/tk=; b=K7YKkf7cErmTavUwI7SKaJQ9v/D
	QQkQGBhiXb1/ldL41nvpjRelbComZ1GsQo22ZtuRBA7l+TlkPMYOt3fPjvLnBCud
	x2rAH4CwiSrBlmHDBqyekg8EfYeec4ZMzjBeAkikpHEjENljh2AX0Tmt0eZud6Qg
	DCm7IHslIkUDuviuhSlE6KTvOLooe82eUMo+89BO74fNBGhPozb1H+CkBXIutlS3
	DUjrz0ohSdA8++FO0hTs/WqRvgH+CF7rDF0wcM39CldjfrWoaFJFXnoUGIaTf5GI
	FtTGki7kui3mKUtJqoJ2gy0nTiZJYD6rScxh/kpzjDrbxSjjOAXXW2Vu9kQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c171ve1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:41:45 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c617e59845dso1388520a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399704; x=1771004504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slQCzeC9waI6hA1xDFtb4CgPu+7qSKt+eKegC+Sl/tk=;
        b=CyPGBzovAvAPdyvgiHCtdUSEDKJAG7Av3qG0K0cAQoFuzYVobDAs7T+Wy3E64each+
         VcL3om384uMm7UWMWoolSM0Z5Wx9vh824/GzxUe4UYYzH892uWbUzsgSe9iZnACDTUFS
         NHCRxdzsx6dgf0xfnhXTpbkGFbaM1xr4gCuRg7w4riqEEKzJT9bTFKeiKKatdqmdmHLk
         /pXBo7cEzje5Lwm93DKLrtg8GirP7VZQN0za44JIxJXXmpiS5xhDUWX9hOKLOEzIWuHp
         KdTVF08VgI0YRvbE4F1P5VQsDCBHn70zq+rxX5qdvryaHxN0zf4oNV6HpUq19VP1eQUC
         VFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399704; x=1771004504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=slQCzeC9waI6hA1xDFtb4CgPu+7qSKt+eKegC+Sl/tk=;
        b=N0Vj0cYOApApZDyez5JitOUzzn3IXuDL5QT+v/MEwZSNuI1bghbDIKLp9m4ZW4tK9U
         Dht05brdtlJ246PD1E3SJCEuG/Do157evmQ59bp0mHXPrEnjuiVw6UYguGywNuJNr6iu
         trC9yojEXZUQ+/24G+9dLlH7xKBbXCAKjUuMW3XmSu/paCBiSaM44eCatXcabKhxDb/Z
         e5ZWyn3mNrz4KWqLMJqeUEQKi3JqL621s2KwG9e9ZS5ZpDqjNfBTfeHyPMECuh4Dny9a
         AqnYsOL8lNczU9GSCTvQCXqNc1C/qlSYjglWwrIImvNlv5PBSqvuDVRahjUR20vfyo/x
         +uMA==
X-Forwarded-Encrypted: i=1; AJvYcCWGKJiZnfMi+9gBU3taQAF+eDs23kbRIIzRj563QCYwOrjipNPGljH4wmK8Xj7RtRBaICjlqIFe99kW@vger.kernel.org
X-Gm-Message-State: AOJu0YzZCtzzkhpjWU33r8DXo/svS2e+iWFWqlZYp0Qh45BthkV+uvDS
	EZxZvk5xIv//RViDxHcAxsNf5VXcfy93RGMDO/mHsJLO8F8Qpq2YX26zcEC239cUWoSrh4rmc/q
	bbOb8FzyARY6inHUxnAxBIZqjH7M+g6lyN4yt9QIxPWk8AIvIGgFh3T1xFtrotDs5GfI0YQM4
X-Gm-Gg: AZuq6aJzUm1YJPM5rwUd+s8/WKno8ZqgtHIjCmjTsxlHrD5AtK8T3At+iAmGFMsPqys
	OVu7lUQQskWodML649mxTj3C/fTOHT5qKrQABQaVGzMW12JCwqhEVHNYJTccGr1O5C1tMRZdR2v
	Rge+Ej6MdhUWSgzMkr4mZ+3JJmp4wYQnMrtzLOv917pramP0BL6iOJRpaJ338nTPfXnRCHydl+K
	RmG5YzY3KAhmLnTUl0ciuTdroHndhn1/npTmM8b5wtx8RtUbDC5R0kTnfbXzCh9Jz36lmlIq1Yu
	KtxzpUgGsV/plomTSYNQQxaakybQ9rjQTcR3Wj38CBrwCiWagSg2pu9Wz2MmYQvS6J0YDsV9IS1
	NQ7VfCbcF2YQ51/qzRttYp0FeXOmSySeyFG8FYrE4qyw=
X-Received: by 2002:a05:6a20:2586:b0:392:e81f:6711 with SMTP id adf61e73a8af0-393acfb10aemr3598666637.8.1770399704398;
        Fri, 06 Feb 2026 09:41:44 -0800 (PST)
X-Received: by 2002:a05:6a20:2586:b0:392:e81f:6711 with SMTP id adf61e73a8af0-393acfb10aemr3598642637.8.1770399703828;
        Fri, 06 Feb 2026 09:41:43 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:41:43 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
Subject: [PATCH v5 03/13] soc: qcom: geni-se: Introduce helper API for resource initialization
Date: Fri,  6 Feb 2026 23:11:02 +0530
Message-Id: <20260206174112.4149893-4-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hClg0v7mnX_cVOsDlSa1UQ_A-9k274du
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfX3P6OvLUe2x+P
 nh5ZY/EI+hkWmcFcvy+Z5wEONfjx0YEsW+oCqEJNpi9ZCft0O2bn5EZmKS2POHlFmlIIVJLHNMO
 WqM92io/mdE3XACDoKsHETNR/H/uVPz5VhEDRAqyYHVVPUuSg6bLC3m8XMpd0KoiufLGCvPIJBJ
 NqG3zKG5RX/Gctdj/oSEK3dry6TdP7RIM/V/pW5e7LfYRtMS+TO9vP31UjQ1wMRx9m3HGwTdhHF
 U1Wnb7NnS8T+aDEB58wv1WHduNrjtFr6a4x5HjVe5XpOCYxsV0wG+47+daRVuM7ecRxV0W3D8Sn
 CSWOg/SCT4KnPj5F3cXHfrhmGYQ8NYtU+QDetnxH5vtgssvGHlw6Yxa80EtUZKlY98VyD75XJS8
 AipQCW7nNuVPk31M0pPSDqFv4kfNHQ1opIK3gTRIxXW1eLHjO2xfSv011zEBWgWriVavErj0Bci
 Dk8+0o6S/blrE7BR1Aw==
X-Proofpoint-ORIG-GUID: hClg0v7mnX_cVOsDlSa1UQ_A-9k274du
X-Authority-Analysis: v=2.4 cv=E7TAZKdl c=1 sm=1 tr=0 ts=698627d9 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=OYYzyx7XpuDNtx8IVW4A:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263462-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1F26F1013C5
X-Rspamd-Action: no action

The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently duplicate
code for initializing shared resources such as clocks and interconnect
paths.

Introduce a new helper API, geni_se_resources_init(), to centralize this
initialization logic, improving modularity and simplifying the probe
function.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4 -> v5:
- Added a Reviewed-by tag

v1 -> v2:
From kernel test robot
- Updated proper return value for devm_pm_opp_set_clkname()
---
 drivers/soc/qcom/qcom-geni-se.c  | 47 ++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  6 ++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index b0542f836453..75e722cd1a94 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -19,6 +19,7 @@
 #include <linux/of_platform.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
+#include <linux/pm_opp.h>
 #include <linux/soc/qcom/geni-se.h>
 
 /**
@@ -1012,6 +1013,52 @@ int geni_icc_disable(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_icc_disable);
 
+/**
+ * geni_se_resources_init() - Initialize resources for a GENI SE device.
+ * @se: Pointer to the geni_se structure representing the GENI SE device.
+ *
+ * This function initializes various resources required by the GENI Serial Engine
+ * (SE) device, including clock resources (core and SE clocks), interconnect
+ * paths for communication.
+ * It retrieves optional and mandatory clock resources, adds an OF-based
+ * operating performance point (OPP) table, and sets up interconnect paths
+ * with default bandwidths. The function also sets a flag (`has_opp`) to
+ * indicate whether OPP support is available for the device.
+ *
+ * Return: 0 on success, or a negative errno on failure.
+ */
+int geni_se_resources_init(struct geni_se *se)
+{
+	int ret;
+
+	se->core_clk = devm_clk_get_optional(se->dev, "core");
+	if (IS_ERR(se->core_clk))
+		return dev_err_probe(se->dev, PTR_ERR(se->core_clk),
+				     "Failed to get optional core clk\n");
+
+	se->clk = devm_clk_get(se->dev, "se");
+	if (IS_ERR(se->clk) && !has_acpi_companion(se->dev))
+		return dev_err_probe(se->dev, PTR_ERR(se->clk),
+				     "Failed to get SE clk\n");
+
+	ret = devm_pm_opp_set_clkname(se->dev, "se");
+	if (ret)
+		return ret;
+
+	ret = devm_pm_opp_of_add_table(se->dev);
+	if (ret && ret != -ENODEV)
+		return dev_err_probe(se->dev, ret, "Failed to add OPP table\n");
+
+	se->has_opp = (ret == 0);
+
+	ret = geni_icc_get(se, "qup-memory");
+	if (ret)
+		return ret;
+
+	return geni_icc_set_bw_ab(se, GENI_DEFAULT_BW, GENI_DEFAULT_BW, GENI_DEFAULT_BW);
+}
+EXPORT_SYMBOL_GPL(geni_se_resources_init);
+
 /**
  * geni_find_protocol_fw() - Locate and validate SE firmware for a protocol.
  * @dev: Pointer to the device structure.
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 980aabea2157..c182dd0f0bde 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -60,18 +60,22 @@ struct geni_icc_path {
  * @dev:		Pointer to the Serial Engine device
  * @wrapper:		Pointer to the parent QUP Wrapper core
  * @clk:		Handle to the core serial engine clock
+ * @core_clk:		Auxiliary clock, which may be required by a protocol
  * @num_clk_levels:	Number of valid clock levels in clk_perf_tbl
  * @clk_perf_tbl:	Table of clock frequency input to serial engine clock
  * @icc_paths:		Array of ICC paths for SE
+ * @has_opp:		Indicates if OPP is supported
  */
 struct geni_se {
 	void __iomem *base;
 	struct device *dev;
 	struct geni_wrapper *wrapper;
 	struct clk *clk;
+	struct clk *core_clk;
 	unsigned int num_clk_levels;
 	unsigned long *clk_perf_tbl;
 	struct geni_icc_path icc_paths[3];
+	bool has_opp;
 };
 
 /* Common SE registers */
@@ -535,6 +539,8 @@ int geni_icc_enable(struct geni_se *se);
 
 int geni_icc_disable(struct geni_se *se);
 
+int geni_se_resources_init(struct geni_se *se);
+
 int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
 #endif
 #endif
-- 
2.34.1


