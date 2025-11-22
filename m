Return-Path: <devicetree+bounces-241315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60FC7C7B6
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 06:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B301B35C665
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 05:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1AD2BEC3A;
	Sat, 22 Nov 2025 05:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hYvBfpky";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dHEazmVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E992C11C4
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787715; cv=none; b=d3DHhDhg+KgkpoLc7SO8321KK3ARTejWJzqGbyOLroQ6p+MJzMrCH/mCks81V8s5LLF+Kgmo+iG7IATlNNi/kN7JLfmoDVxXX1kiP8JkPeB5n5PIQvzofOyFYbaJhI/3j+MHrFA7wOsKIqY7j57iVLR0it1D5g0HUkJc9WqTXoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787715; c=relaxed/simple;
	bh=MBM+ts/VrBooDvo02TVv4oxPcwhNnUNkwE9LXeeYjfM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F55fkZcfo925GDnZ5cOPxUErdofmyEHugNxOegZ4WiQsDLPAnZpQSnoAQh5J6MJLWN6b25zbCjJvW/4gV0khm3KHQZfDqefXUPMhVVK6bp5Oh0D2QwVCIUbHEKXV05otgiWhc25kHXzSYt4SWRnT1yGlVHYpjQ5PoOtLKr+hI3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hYvBfpky; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dHEazmVz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AM4lkUQ1252927
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LvNM59OZXdb
	EJkj2qOKcKocVhop40G1a3Ur1tuOXqxc=; b=hYvBfpky3c5i0vi++CejKMEa/ez
	o13Q95GPSRCAAV1MtbCcJfYpnGtepjBNg5+93KsfrRdOzgznwiFwXBYtuqzBIf/K
	6ePuZnpzooObfGJe1wK1sbhov6h4qI5AojuDzyxlqxdQgL9cJRsc4raY8nDxWhZs
	jYeU+rCNVABjqYym/j1Rz1Xw9/Y6M5FDOEVYdkBi/lvt2R0zS+V6PPrId5HDGp2G
	8ezNhRJuX6Fod+k87g01MeOH/K2jLwScfpiieIINpPuWr4Gno1gAcLxAEmD0VLOR
	uuy5xcQooAeRUMGWPy95YiAR1XT6u8hqDU8mnc6ewssn+v6lFomnLk3VTnw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6f800s2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29557f43d56so36317135ad.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763787712; x=1764392512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LvNM59OZXdbEJkj2qOKcKocVhop40G1a3Ur1tuOXqxc=;
        b=dHEazmVzRA+j2qenrkffpSycheFor/D/gHzoWh/CY+2K183fdKZ1iw38FwX4sH2TA0
         csufK5xS35g5fa5RzjP4IdXRPgATaA4RlqnFOHDjajy+0SgUVRGp5fVrCQcwgs0WaadC
         lktgwj5yGiSXrZgbR55KTi1Q8J4OQ6Bv2la9cyCqj8axPpjq33ZYgU0QD/TyEc8LOXvB
         Z1KjGCHrNj8D3C9C2RPhjNckqdWAWTX/s9gOXkzqUQtKFTL999d6TdX0ICpvkbZzqPNr
         r8ph1epYceCUojF2XD8GXw0Xv6kUzJaYsES/t53PErYTEATJu5qjzb6zZs9By/wXgUqc
         bA4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763787712; x=1764392512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LvNM59OZXdbEJkj2qOKcKocVhop40G1a3Ur1tuOXqxc=;
        b=OmrD6MyY+dO4fnkgiMRRRKI33lVKgG0DueKH/pa4KO8qF/Eqda0Efob8rdtxiVTOmr
         O8qZ1/S6CjuJr60pbIueDotIJ1HZBphG6ht33lLxVdZ+okYRFc/P5ymlqB0+MHWKTPed
         LjsqvnIBGfwJjO06BFbg5LG1EPe3ELBJ9yiEa4Udx3pA2RAt+QnVbaDACx39TWuxU0Pj
         iyKab45VTcHNidNmokDMP6NJgN5DxgKGYydBOwbm1GYzBRmmlQSNrhtV7YOqqWAYnJz9
         agQ+Gaxj/btIP/uRFVc0qLit2Ge1z7a8uEpEp/nRb1xaqb8EEHT/bEJMaNcpMTDmU6u1
         c1rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyyPZsAUV0JO1D91sqi3c5W0w1ltOopckSr0MiEWjbETT6tRPAJZV+9RPrUpT5rEvtB/hu/8gHmmr9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsl3Qq3jM837gDL2Vo+cWne45ny8DRE/t0OktesULZvkAJXCp8
	qZFS9mvBZu5U6kGC4lPr+u/PKk+ruVfJ07Nc3whAUO90f4PK22x/wTCVIlQ0qVW8wJXC34o2vTk
	Cxpe4YXOHkiqsrnEqxuo9DZADPm10HSbQ6YP4EFgv9Uv+HAgWKDhJMjvxj2zvf9VD
X-Gm-Gg: ASbGnctbnqeZFyeibSyjynDhr88Pv/d0CwlvYX5gRxYS88uJrDz7GpFPwxZ4oi02UE+
	IdgDs7pb4d/CT9DrVCoU+Z/vQ1618JCTplWVSjl3zFPCM+p788GI4RRJ3OOjWn1MyUmZymfmSf6
	eRPwJexWUYot9tyNcSVKggYXdeKihIf3lI8QAC9kEl8BZPUC/pzHdMpMsc8W9rtHo/jiClA7Bmp
	4MhuBUq64/1UP9tN8pR3gxoQZb4LhWzxXKq2xA9+lek7wxS/Pp+Spg3HnPJIHE8mY2KUtVWv1qc
	SfqfBQUObwM3/2BVKsvb6pI/+e034avUhVVmpTALJwyQmf317h7nxaqplXX/HTVqEMj+KI45jkf
	V4N2iu6RdUxgVZjNL9RXBzXgJvYv+9a8dLqkGRJQFT7w=
X-Received: by 2002:a17:903:3845:b0:297:f0a8:e84c with SMTP id d9443c01a7336-29b6bf8421emr56606555ad.52.1763787712327;
        Fri, 21 Nov 2025 21:01:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEi5gdhxHblCVbwFYsMyPI/0c2BwM2BYTDZ1N6c03YFZBk5YPwz4N45Ux9hHRFwXYiaHY1/nA==
X-Received: by 2002:a17:903:3845:b0:297:f0a8:e84c with SMTP id d9443c01a7336-29b6bf8421emr56606255ad.52.1763787711762;
        Fri, 21 Nov 2025 21:01:51 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b138c08sm70688725ad.25.2025.11.21.21.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 21:01:51 -0800 (PST)
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com
Subject: [PATCH v1 12/12] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm platforms
Date: Sat, 22 Nov 2025 10:30:18 +0530
Message-Id: <20251122050018.283669-13-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: FhUYP8GWoTyY_1eN3mbFjRdUTAE0jLcL
X-Proofpoint-GUID: FhUYP8GWoTyY_1eN3mbFjRdUTAE0jLcL
X-Authority-Analysis: v=2.4 cv=SINPlevH c=1 sm=1 tr=0 ts=692143c1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Gro-kpSgzSE2vTo3mCsA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDAzNyBTYWx0ZWRfXyoI6jpUWc+0l
 QElMqh/zh2aJevJeerkkDyuuLUXFKjats3VVKtei8c+AkzVBiyVVdx6hIukcCxLuef/Nz3FUtKf
 +pwiXfmaCA/zxDkOSdCg0aA39TjYFVU/EmNq9O/A6vYyVl61E8gyfwzeBw5Ob3mjyTQVAkPRkxG
 7BH5CFKQJy115BL5aP3L+kF436TbvZDuR8kcU/BZ/Ky/ixbIfM9ZfLpg9m8hhSeZXO83g/9EKxt
 fVgNbNAFr/AKiz669Iv/aIuPCda3tDWa7IN3KDtL0k1LkwOagL8Llua6nMw9Nn+/hlNulqzFARt
 XgX8JwbxZ9jKH/H166J2b5+oM7quW5RtC7pPIzPyFQiIRUhlybBXgCspNJQKfrx0tGFKDcx85as
 NsW+Eq79WLuAHxaKgf1Y7tZ98GYtWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_01,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 phishscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220037

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages I2C frequency, with each
frequency rate represented by a performance level. The driver uses
geni_se_set_perf_opp() API to request the desired frequency rate..

As part of geni_se_set_perf_opp(), the OPP for the requested frequency
is obtained using dev_pm_opp_find_freq_floor() and the performance
level is set using dev_pm_opp_set_opp().

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 46 +++++++++++++++++++++++-------
 1 file changed, 35 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a0f68fdd4078..78154879f02d 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -82,6 +82,9 @@ struct geni_i2c_desc {
 	char *icc_ddr;
 	bool no_dma_support;
 	unsigned int tx_fifo_depth;
+	int (*resources_init)(struct geni_se *se);
+	int (*set_rate)(struct geni_se *se, unsigned long freq);
+	int (*power_state)(struct geni_se *se, bool state);
 };
 
 #define QCOM_I2C_MIN_NUM_OF_MSGS_MULTI_DESC	2
@@ -203,8 +206,9 @@ static int geni_i2c_clk_map_idx(struct geni_i2c_dev *gi2c)
 	return -EINVAL;
 }
 
-static void qcom_geni_i2c_conf(struct geni_i2c_dev *gi2c)
+static int qcom_geni_i2c_conf(struct geni_se *se, unsigned long freq)
 {
+	struct geni_i2c_dev *gi2c = dev_get_drvdata(se->dev);
 	const struct geni_i2c_clk_fld *itr = gi2c->clk_fld;
 	u32 val;
 
@@ -217,6 +221,7 @@ static void qcom_geni_i2c_conf(struct geni_i2c_dev *gi2c)
 	val |= itr->t_low_cnt << LOW_COUNTER_SHFT;
 	val |= itr->t_cycle_cnt;
 	writel_relaxed(val, gi2c->se.base + SE_I2C_SCL_COUNTERS);
+	return 0;
 }
 
 static void geni_i2c_err_misc(struct geni_i2c_dev *gi2c)
@@ -908,7 +913,9 @@ static int geni_i2c_xfer(struct i2c_adapter *adap,
 		return ret;
 	}
 
-	qcom_geni_i2c_conf(gi2c);
+	ret = gi2c->dev_data->set_rate(&gi2c->se, gi2c->clk_freq_out);
+	if (ret)
+		return ret;
 
 	if (gi2c->gpi_mode)
 		ret = geni_i2c_gpi_xfer(gi2c, msgs, num);
@@ -1041,8 +1048,9 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
-static int geni_i2c_resources_init(struct geni_i2c_dev *gi2c)
+static int geni_i2c_resources_init(struct geni_se *se)
 {
+	struct geni_i2c_dev *gi2c = dev_get_drvdata(se->dev);
 	int ret;
 
 	ret = geni_se_resources_init(&gi2c->se);
@@ -1095,7 +1103,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	spin_lock_init(&gi2c->lock);
 	platform_set_drvdata(pdev, gi2c);
 
-	ret = geni_i2c_resources_init(gi2c);
+	ret = gi2c->dev_data->resources_init(&gi2c->se);
 	if (ret)
 		return ret;
 
@@ -1165,10 +1173,12 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
 
 	disable_irq(gi2c->irq);
 
-	ret = geni_se_resources_state(&gi2c->se, false);
-	if (ret) {
-		enable_irq(gi2c->irq);
-		return ret;
+	if (gi2c->dev_data->power_state) {
+		ret = gi2c->dev_data->power_state(&gi2c->se, false);
+		if (ret) {
+			enable_irq(gi2c->irq);
+			return ret;
+		}
 	}
 
 	gi2c->suspended = 1;
@@ -1180,9 +1190,11 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	int ret;
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
-	ret = geni_se_resources_state(&gi2c->se, true);
-	if (ret)
-		return ret;
+	if (gi2c->dev_data->power_state) {
+		ret = gi2c->dev_data->power_state(&gi2c->se, true);
+		if (ret)
+			return ret;
+	}
 
 	enable_irq(gi2c->irq);
 	gi2c->suspended = 0;
@@ -1221,6 +1233,9 @@ static const struct dev_pm_ops geni_i2c_pm_ops = {
 
 static const struct geni_i2c_desc geni_i2c = {
 	.icc_ddr = "qup-memory",
+	.resources_init = geni_i2c_resources_init,
+	.set_rate = qcom_geni_i2c_conf,
+	.power_state = geni_se_resources_state,
 };
 
 static const struct geni_i2c_desc i2c_master_hub = {
@@ -1228,11 +1243,20 @@ static const struct geni_i2c_desc i2c_master_hub = {
 	.icc_ddr = NULL,
 	.no_dma_support = true,
 	.tx_fifo_depth = 16,
+	.resources_init = geni_i2c_resources_init,
+	.set_rate = qcom_geni_i2c_conf,
+	.power_state = geni_se_resources_state,
+};
+
+static const struct geni_i2c_desc sa8255p_geni_i2c = {
+	.resources_init = geni_se_domain_attach,
+	.set_rate = geni_se_set_perf_opp,
 };
 
 static const struct of_device_id geni_i2c_dt_match[] = {
 	{ .compatible = "qcom,geni-i2c", .data = &geni_i2c },
 	{ .compatible = "qcom,geni-i2c-master-hub", .data = &i2c_master_hub },
+	{ .compatible = "qcom,sa8255p-geni-i2c", .data = &sa8255p_geni_i2c },
 	{}
 };
 MODULE_DEVICE_TABLE(of, geni_i2c_dt_match);
-- 
2.34.1


