Return-Path: <devicetree+bounces-238432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 30982C5B222
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 12E5534A111
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60EA8260575;
	Fri, 14 Nov 2025 03:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MNnkr196";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zla8hqE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CED262815
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763091010; cv=none; b=b1PY3oRAlrFiWVx9BtjSy4rw1IFO+LhAVzApTPgM5UrUUwVmoPhXNByTqvf16wMAqF5YQXV6y+3qKukSolFu1MmQ/AfvVaMnvbp3uvFYvaDk8j09ALPZ2pJhDYfM55Rlnd8GLwAgezsXnqrxy+f0HWMjb5n7V0RSrabqoBk+TaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763091010; c=relaxed/simple;
	bh=TzCikezoRb8YZPqX4gJvquc17E3NxM8qIn79vKmmi9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TTEbkxNvUgD0XKLLwZeGFxLNQnLrVi/NzYUQ4wYRrzZgJw4jE/MZlMdco+gXG62ccZKpm3ULohf4pdmfPQTpqSxIqPVuVF/dkJuKlBgPGIl9dVI6jAArR6wQiYZh94OvYXyvB2TfU3gdppRhI7RHs5ntVzey1JBJtsAu8QlYjjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MNnkr196; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zla8hqE+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADManJK1745336
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:30:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KsRPldSlUkMNAs1cF8LcZleWSjUF0Z6b6sQxevYn+vo=; b=MNnkr196S0/0lF9D
	UkGiLNC3jSW4IiBA1z/Erz1xNmvzUugAeYIzqwNt0FBMlYh+pGcMIM1nsya1+UYR
	C4NA/BgI++FC0XBf1o9zjABdtJNpYjH9JyInNsIKPXoQvsgkPH7XOAmJy2JVH4kv
	5psqpV0ezfBGVQ6FHR96Rzw6OHhglrE+Mc/xOaLXhVlpcSybbOabIz0KlWJ8PHKs
	onYl+V1NA/7KYVx8fz71G4CCQQSKM0vbLmsbYAQGN/togwfcAj8dpg7IaPjhy0+e
	ylULJyRcLtbLMMcHaUPNkYPho1LAX/hc81YUZlTaGA1gbvekrfEy8ErI0JiVQArx
	T5csGQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9egp9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:30:07 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-ba4c6ac8406so1300105a12.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763091007; x=1763695807; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsRPldSlUkMNAs1cF8LcZleWSjUF0Z6b6sQxevYn+vo=;
        b=Zla8hqE+kxDLgaLGrj+93xrtLHtSM7wLkZpAJoWFPL5s0A01OlYNDZ5HyiOWrtWKaA
         eujTDLk4iKRTns5BgDuGgphdrXbR/K1FnEXL/EZuT1ilk3Iiwn0wCrJvxmk3VnIOnqck
         2TnUJ5H4+antPEZH1Syg25qieSZ9Ww4TJmP1y5dUEUtH6ZOzx0huFX+sXPr/1Z8vlVrT
         N7scVuywwAzweIUdV6vMw4Op9DenMLnmLWZ4btqZRtjGcKWuqX7Cm9hSQ1GxGtGnwp7G
         tRnKqBYxA6yFi3cqn9YTjkLOjCe3Zme9hYmrbdAEPCpSe+1JJKgnYxrekr7cz8CuY47y
         X0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763091007; x=1763695807;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KsRPldSlUkMNAs1cF8LcZleWSjUF0Z6b6sQxevYn+vo=;
        b=WIDGzuopWeG7C3iB/DOTXnKrYYxQfJpEVLPH1sMJ0/LvyVTgrdZ+bTN8mb+QwiJAEm
         SmuFG75wthBfM3q81jWO72XFSb/B8U3kLM1T9nBzcPlklqCBiJSJVuoDtFk2OJEuxL7J
         4WyaUuwcQBNv1tENl5y+Auf1KrvDzcfGqBaaexlp4TQfBkQGGnthNBmjGtdEkreJMJwM
         vfz022hp3QVvnMg6vs70GAUNAEhPSlDWSLEXy/oXKWXOfGinWkvx7+jbmyY/ALku6+bL
         58pO780EyT3TZ2BZDv2o1jjmB9CAPKBXAcUql2RB+Y5SflGPg8TAfPQtJKy+QOttv59k
         ITWA==
X-Forwarded-Encrypted: i=1; AJvYcCVPNJIq+zVxkrvBPyqN5zinjC4Oog/o5NfWwozUMzza79v3Bzwm5nZ3VGesvyPfiqOCPXlfBoHz9xde@vger.kernel.org
X-Gm-Message-State: AOJu0YzHI845mp69ARuC/MgTGjnYg6La68EIG6Pog7dXA42iqclczLcT
	gvR+34Auli0wrnxGwiUlj8ACUDAfZSC/NSmFn8q2wPyqjEeBmO20tNLpl6omMSRGbKh1nxCx7wF
	+TdxjVCnbv3NE+ilRnKtaeOja2ikybY39Ii1iWCAPBZ7WzLsbLiTlELboy4tInJ2F
X-Gm-Gg: ASbGnctVl0vmBaDxkTsJ5YxT9OlKeoylw8u1e0lJXd8OQ4Cstdxx4np9OJyMIrX/PcC
	b+CQCfa9ahPh96s2qVf91mgJd0Bdw9scj/7+NNZf3917uN20jsNio80JH+fXYgBTc4KPEQhO1Ig
	6daFMb7D0gU+yL7kBBt94ckXNXGNWZYeIKwkw1ZepgWmKVeygEDl8uNBBxy99vbRdEYkp80vA96
	YRAORjrgXlpS+iFl+EK6Tm0LVFfD5bmDa7JmkqgTVCInQaswO79lkGQeho8koL9D4QXd0fJJniH
	Lzkz5T3siur08vKMJj+Qj1RD2GKjzpx7T2KoSSNb6k60ysjODSTiOPTq0Z9prsrgOzVr2vxJLy6
	NgRzuOurxUhwkqk1q8e/LXIH4oFRe2vAYfYuUO17ocD1NGuh9oCUcTg==
X-Received: by 2002:a05:7300:85:b0:2a4:69ec:ff0 with SMTP id 5a478bee46e88-2a4abd906d0mr537573eec.27.1763091007007;
        Thu, 13 Nov 2025 19:30:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9iZz8TDmIXJ5HowgRjrGyJ9Hq9d+RUvxqKJkNRvYyMWA7TfjixYbmmqmfVejGF3/E0j3oyA==
X-Received: by 2002:a05:7300:85:b0:2a4:69ec:ff0 with SMTP id 5a478bee46e88-2a4abd906d0mr537562eec.27.1763091006341;
        Thu, 13 Nov 2025 19:30:06 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49db4a36asm4104108eec.5.2025.11.13.19.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 19:30:06 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 19:29:19 -0800
Subject: [PATCH v6 2/5] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-add-support-for-camss-on-kaanapali-v6-2-1e6038785a8e@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
In-Reply-To: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDAyNSBTYWx0ZWRfX8N6Dtjp3HTYH
 o3IbFXX4TrNBrzkz9PjgCGLmSSdw3GGLVWdhIjQfdiM0+zsQ4g8m5GDLFaqbdmrqxvv/7DSaacW
 OmHAZNrPOBZSD/K+AvKUrkL2eZ8qVwSEKLjJsh4BPBGApfGhgFS9mfj6A21GAZ772374FjQaEyB
 mf53qGrBMURH5KhIpX5jBgHLutkQVb9N9qcLvrFFXyvfbsmHyWKPhiAvxU5siw+CbyE0QQMeQHo
 n1yWsMtQehDTnCpIZ5165KeM01Q8P55Flt7GWxQt/evjy147Pog2Ythnqf3Cgbxp04tuWjvA4fa
 1UmEjLQmhjgelxNG6YvOC3FQf4bqoWwPNc/0AcShT23Rz9SGwFFdPhoyNx2fT6ZNJTpH1OFJmBX
 6XwarjqBnUFIdF6TihP/8a8zmKi6AQ==
X-Proofpoint-ORIG-GUID: 9F9HK3CyQrqbELiIgY3M860S-QPt3bsL
X-Authority-Analysis: v=2.4 cv=Afu83nXG c=1 sm=1 tr=0 ts=6916a23f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: 9F9HK3CyQrqbELiIgY3M860S-QPt3bsL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140025

Add support for Kaanapali in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2fbcd0e343aa..658d9c9183d4 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -4291,6 +4305,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -4467,6 +4488,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
 	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 901f84efaf7d..876cd2a64cbe 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -90,6 +90,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


