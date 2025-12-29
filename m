Return-Path: <devicetree+bounces-250037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA77CE5EC1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 05:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DCCDC3000B72
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 04:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B60226FA5B;
	Mon, 29 Dec 2025 04:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GhPQuK3a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q4iBG3CX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3F6258CDC
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984145; cv=none; b=aSXgpIAolVThUbN8Vfh35V69CUQwqbDORsvllGcupRe838xI2X03GumdXW72p2v/jLUjYUjXWDME3Vkmr0dKZb0FJjJ9XW5QLIKVzhNc6nycfPdnNRtMoCYjykf+dUTuFZ0ceKtQ+yCBLfpByvyLLJOYScSWruSZN4TySkJ8QJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984145; c=relaxed/simple;
	bh=zfRE6HDH/oF9kt+zrOv76BV+vG94brTWdHbAGi6F1EA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=arsdH2kgpahvWGpPbHeSEvL4czrrti7SdXmevOPelPUuE67rsgi62JVKecBRnWM5sbF9CYFF0qaT901+rIOv6xdMbeuWkvkVB/EjC2Tgqth9/6SveT8klbXe63gWcJWy4vOTK7birwUUsGP9KGx++dIdGVidX+FyFRNX6ntECNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GhPQuK3a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q4iBG3CX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSMTZUp3850328
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:55:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9JJcvoCC/Az
	K5BxMcEfo4IlZ7RecYF5sBRU9NuOJgNs=; b=GhPQuK3aTQFsr2DpsqQhLEK/daO
	bu2RzLTXw3ad/z9ztV9xYW8LaJ2zFfaVUWyCtWAL+hi47OWFYSFJeNK5CUoKyz6j
	G0ybgksHwwjAtrmF7eQ5HroaabF8fO352itH8NUki/hNFgUmZgfA2YyDQ1E/vO5x
	xWMZr6Y43C/XiH655LHjPk1/ghboOW1qQ+ElvhsoiooS5YymEtJjTSu7Q0segx1I
	M0vYCOoEPn5ELEJT5i3NHzkjoQVZavrlBZB5rnm4xRbUf9TUeg/zpviic6IxPbON
	PcPGP2sz4YZgRU2cnjp+xBCR4McAIF9YirUHfTwaHTDlv/WjgvQr+PyG+lA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr3fsx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:55:41 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b90740249dso15740617b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 20:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766984141; x=1767588941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9JJcvoCC/AzK5BxMcEfo4IlZ7RecYF5sBRU9NuOJgNs=;
        b=Q4iBG3CXLcLcjjqX/a32mfUqKcLL7PCVTvE5dFUayNT89yug+hVFpYfsPxqR82V9NV
         E5zOUkitdNELpxEn0sEvlY9q4nvPThex8VXWEhcoRUAkefV4u2amWjSJalQekM6Gouq7
         FJBhWlnJNpAtGKFahpW84s119W4XMwYsUR6+DiJF3I4b4R6es85yicF/juTdL3XKjMje
         RaGdIR386dhkTjfvusTIFrsVTLwyrsUh9Cp8+RpbfU0GJJL/YhBRXNrEKO7dyHURujhr
         XeN7vZSGIl9uLupoFqI30JI1oJMPhMVEzMnnyJ7k5uwMcVN6z90pyITVSkY4HKrQEhZC
         ettg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766984141; x=1767588941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9JJcvoCC/AzK5BxMcEfo4IlZ7RecYF5sBRU9NuOJgNs=;
        b=Fyr6cYmR081QZgpeN6GEunozzOLA6YE/HYrAxNvB5kSjv9+QQno9CoAW34CTW7Gn2o
         AaRQ3VhD///pr4k2oXMkF8cVp1tbFeAwksdedGm5Z7AQMCLgJj4KMJXWB/aJGxAs3ylA
         T0MkGG8WbAHK3flMEk9tdDbwl5aI+ZwCzOMpDryWssgrYudwYLa8TdZu//ICjcskVRxz
         35UtnvQ0Cj9+IlPifX85gKv3N9keUwnuIep2SYQocuop9MHyC+ZkyczTyeDmlga3C11S
         I+fRA4fDzq40QxaNlP0P9NFQ5bvSjOQHDvzFlwGV1freMl3sIGUlMyeH35vbZuantErp
         Bnig==
X-Forwarded-Encrypted: i=1; AJvYcCXonKTubksG/FHTLTHbfp72ya5AK+OCU9Az/2zFcgUx+gHf3Z7Bs051NR5Z6IthkbRNlhLbqI5QUQCh@vger.kernel.org
X-Gm-Message-State: AOJu0YwXAjRvI9iapxPGNlsS26rdwCtskMgjz41o41bEpquUWB2kSwXw
	fVR1L3T9FZxnMAsncxLoQhiaChT7JQhQTnyks5f4PRj0y4Ts4hxqAmNl1vEGKHCV0Rsi+EhCFMF
	U7P5gRrR2KYlA/5zeK/0ZUSAhhAwyUxltwkvNo3wCm5SxzqOckjQ0dM3A8S3vE7na
X-Gm-Gg: AY/fxX4gBA2yjKnxKMv1CFCP9ZOFjHOgR2Hm0zc2bUTfy43vuA88cYGV/5KHmAp2pzj
	6w8CZXCLkmn05pLA/AAngdUQLxrZoqCg6KnzEAkmDJF5U7pUxkrSLd8iH7ppDDADJCREw58gnuX
	ukzPPr4SQoE2sJYhCoEwoz5eOekI9I7JXFnC1rPhH/CPhaZD/3ZjsXMlP5iuUkedWl8gy1bM0o4
	Q8IBCTDnKLbPFzen7Q4mp/XBB7lpFldkbScVETrGrn/CIeuNvru6efPzh+T3EjsYJ/2EMWU3fjW
	5SRqcqmbU8BnBv/JlqpoHAkjPMdr8T4XAEUvXhtcjaUYFXRC2gdKiNUSny1a2Lx7ZvYUYal0o7d
	021bse+7KKl043o4qBTl9dnQbj+Djargu5R7EGWKQ2Og=
X-Received: by 2002:a05:6a00:4219:b0:7f1:4c9c:782a with SMTP id d2e1a72fcca58-7ff648ee056mr25255717b3a.26.1766984140865;
        Sun, 28 Dec 2025 20:55:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXCTnJjfarrI9o6MPsZS7rS2u30bcKXIYNYtBf38hhzg8nPONoGbVH/4VzgJrLZa5tNpi19A==
X-Received: by 2002:a05:6a00:4219:b0:7f1:4c9c:782a with SMTP id d2e1a72fcca58-7ff648ee056mr25255678b3a.26.1766984140294;
        Sun, 28 Dec 2025 20:55:40 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm27902080b3a.39.2025.12.28.20.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 20:55:39 -0800 (PST)
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
        alexey.klimov@linaro.org, krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com
Subject: [PATCH v2 06/12] soc: qcom: geni-se: Introduce helper APIs for performance control
Date: Mon, 29 Dec 2025 10:24:40 +0530
Message-Id: <20251229045446.3227667-7-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
References: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA0MiBTYWx0ZWRfX07rWGT46AdWs
 76FEDNuBQM8mRcL+IoByHs1xPEzHsg5mz3gQC2+/c4MXHUFQuieLev2JYnrQw6r1+P109QuerIt
 3NFiOh9TDXDPJSQ8uP/+BZccAKSxnRLRGOh6s6q+M8dmH89bzdvUpB0g+aOfyO/q58j3QEDUPor
 XHWjheW8eYxshSb5sp9wevfxt0tiSEx2rBetTmq2kdCIABI5DXLqIP/CyCwibIb5TUsIKhSpaDm
 pRvd1TshAXWcgkgGViI7fSHHBgl7+SC1abWnI5+GRvSSiUQ/t/zCuhoQu5Mc6WAg6d52ZcFpN5Q
 1LPIS2fsFJdfQ+USinRWjlrsE6JWt27cUId/ve2Y2CkQfqJ0n7I01M17eyqLl+itAYN/73UaT2r
 ihoBBgZp9Eho42XVyT4dKwaBUzH/7Dz9VDpqC4bFgDNk6hcaDxdJcTc8Gs4miho6gzIUohPMzIb
 VEmJneo4cVIDAv3L9yA==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=695209cd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NwCh5GMA9Nt760FYQHkA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: Sr-G_T1eGP8UPL2RBvSKDkCDlIfpuVfc
X-Proofpoint-ORIG-GUID: Sr-G_T1eGP8UPL2RBvSKDkCDlIfpuVfc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290042

The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
manage performance levels and operating points directly. This resulting
in code duplication across drivers. such as configuring a specific level
or find and apply an OPP based on a clock frequency.

Introduce two new helper APIs, geni_se_set_perf_level() and
geni_se_set_perf_opp(), addresses this issue by providing a streamlined
method for the GENI Serial Engine (SE) drivers to find and set the OPP
based on the desired performance level, thereby eliminating redundancy.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom-geni-se.c  | 50 ++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  4 +++
 2 files changed, 54 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index decf7cf5172e..fd63cc6a7faf 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -282,6 +282,12 @@ struct se_fw_hdr {
 #define geni_setbits32(_addr, _v) writel(readl(_addr) |  (_v), _addr)
 #define geni_clrbits32(_addr, _v) writel(readl(_addr) & ~(_v), _addr)
 
+enum domain_idx {
+	DOMAIN_IDX_POWER,
+	DOMAIN_IDX_PERF,
+	DOMAIN_IDX_MAX
+};
+
 /**
  * geni_se_get_qup_hw_version() - Read the QUP wrapper Hardware version
  * @se:	Pointer to the corresponding serial engine.
@@ -1091,6 +1097,50 @@ int geni_se_resources_activate(struct geni_se *se)
 	return ret;
 }
 
+/**
+ * geni_se_set_perf_level() - Set performance level for GENI SE.
+ * @se: Pointer to the struct geni_se instance.
+ * @level: The desired performance level.
+ *
+ * Sets the performance level by directly calling dev_pm_opp_set_level
+ * on the performance device associated with the SE.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
+{
+	return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
+}
+EXPORT_SYMBOL_GPL(geni_se_set_perf_level);
+
+/**
+ * geni_se_set_perf_opp() - Set performance OPP for GENI SE by frequency.
+ * @se: Pointer to the struct geni_se instance.
+ * @clk_freq: The requested clock frequency.
+ *
+ * Finds the nearest operating performance point (OPP) for the given
+ * clock frequency and applies it to the SE's performance device.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq)
+{
+	struct device *perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
+	struct dev_pm_opp *opp;
+	int ret;
+
+	opp = dev_pm_opp_find_freq_floor(perf_dev, &clk_freq);
+	if (IS_ERR(opp)) {
+		dev_err(se->dev, "failed to find opp for freq %lu\n", clk_freq);
+		return PTR_ERR(opp);
+	}
+
+	ret = dev_pm_opp_set_opp(perf_dev, opp);
+	dev_pm_opp_put(opp);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(geni_se_set_perf_opp);
+
 /**
  * geni_se_domain_attach() - Attach power domains to a GENI SE device.
  * @se: Pointer to the geni_se structure representing the GENI SE device.
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 5f75159c5531..c5e6ab85df09 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -550,5 +550,9 @@ int geni_se_resources_deactivate(struct geni_se *se);
 int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
 
 int geni_se_domain_attach(struct geni_se *se);
+
+int geni_se_set_perf_level(struct geni_se *se, unsigned long level);
+
+int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq);
 #endif
 #endif
-- 
2.34.1


