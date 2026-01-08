Return-Path: <devicetree+bounces-252670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF82AD01F35
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD1B43043F41
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478F437BE7F;
	Thu,  8 Jan 2026 08:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cwFID3MK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fd5Kg/yT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF48A36827D
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862699; cv=none; b=BHmAKVPeN0+7sTsP4VHE0TNyOyfAijLnAoswHYpR3zJJQ1VEG4Flj70NyheEsDDzTJXDYl+L3Kv207ZPB8eiljcmJvXq3PiJ84OCfYUmfwlpdhF8lOISiVLlVF3xfrGJACI10SrCipiSf9OYdJ076KUq0B7VV8tnSsMhYPxXgNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862699; c=relaxed/simple;
	bh=k21KuLqrakb4fzczAxo35U6ZXCS51oohpzYX1tys+us=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V9ZAIZtij/FttX5bbWSDJ7HchkWTVN1DvBF7l+KLw8IBEx/1bOZBOK3E34UBDGbtTC1ZvM2/xHJnu1th5hNBztq+6SSg+hUATelHdW80CgGbVYWKv/FrcB1YNCRYHQ7FRiWhLOySXW+Ff60+jyRuVuBnXc7TdwllgL/mAkgpGbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cwFID3MK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fd5Kg/yT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608193ps4051873
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=D7O7zbR7bk0
	RBrH6WlI0a+LXkFPZYFN4ZGyTTHv5I0k=; b=cwFID3MKDYKuRkIpd5VIj7CQX80
	IIeZdQuPcSNfydPzPOdmuw9iQumQlXD7JTLsuLfBEAW7845tR9e6liYyieNchtEr
	4fnDAWK4abSlCZLdbiJFQUjt/DtwZdqv//UD+enyPhLOpRx4bg1QAJKl1M9XD/md
	Xvgmst4sdC4nt+aSG59pJ+03r8f+NGc/yfJemkQmAohN2iL1L7IvjvA0q3Y28ELr
	fVN/nCVeqcStpmRPKeAHtP4FyZXFUt0Yv58KULElYh89VeVOsojNdgSVfTsO+AB4
	dJeSVybIHzJRgihto5ew5EiXAg5ySQpytw2AuaQ7ZCBSPNK8vCUjMr++1Nw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj2n8haka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:58:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8804b991976so73475946d6.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862687; x=1768467487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D7O7zbR7bk0RBrH6WlI0a+LXkFPZYFN4ZGyTTHv5I0k=;
        b=fd5Kg/yTxKXW2Ygdyg3XGVk+6t5tPbMEF+s6pXRy2dycAYUdgEQakM/fs0V3EEnkp0
         4mhJd8MqjQeZchP+0jMMn0WtaSQ4Xi6k+kjK+d6mqn4pmI3PbOrkmdAtSdL60OulBrFK
         eB2lUok19zeH32PBcNPj/aUS+fklxCz3x4k82fEuQBsSN5jB9NI5oIdMrP50p1N6ZW5r
         fWMXGOzLyawZZPlfCk+D6MPTxxn1d6x0TDpYrGHn6U5Ns6jkvcZndy1z9GGggqgKo3iJ
         ip/ofL0/LZEGSKiyieVVJEPV1K6MoNPH0lkRRdhHXtV2FUZInDvc6HZWAYz685uajae4
         /3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862687; x=1768467487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D7O7zbR7bk0RBrH6WlI0a+LXkFPZYFN4ZGyTTHv5I0k=;
        b=ZhMZ4CxRWROBMaBQvmjl6FUQe3H8t7dxbM0fOV4zn0RtB4SIAs6qn9119bvIpRr7uU
         p1AV3vpSkQv6LDjHUf4DdWW/tFjU7zR5arGB/bejWpFOH/TCTiSyd/qOljbN129bqr2I
         HIqRY9F0OV/3uvk+Uad7dOZmcL10sy0a+9gGQtw3m/41S6t7YSMd9tD6V/81aJCfcLI9
         qbYSWYCgDlVZmHDkkpzzYJKy86cT5EXcFnbFeT0kAQIlPKLv16V/v+8JnATdNC0hj6uC
         vC2OR2f5naMoA5T6Wrm1IA1KVpLFwklwHTvSzd4HqgXCVDW4YdUgmZxBJqkp/lM7AST2
         A+rw==
X-Forwarded-Encrypted: i=1; AJvYcCWPZk8jGmpB2WFZfz6UZBMIJW7aWF5ZYVx1W43nmzyryWxE1RFIEsk4P3HOSfEpAE88Ppcp07uD73LA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj7RLMuLjzc7w+xvjZ9ai4uTmdQQtsHUXjI9qM6uoGTvPbF7rj
	bGhtlfMjtieaJ/qv4iczDoP70Ov2Duai+0nuL/sdXo3PZUUDQh0dJfvZu6w3lVnLzNZwSD4Gy8A
	WtYADXJVz/Mm5rO7S5+lSK0/luxQtHZxXwjLQxmNbwDH5aVX7F0d+8Rm/iajTeum6
X-Gm-Gg: AY/fxX7l/fKHF1mDSipNg7+uiYxTQ2Ltf8vlMWKBjgDqaDp7NVqrvQA9ig0o+uBuutz
	4xnMMjlI61DR8n6vtMbHn6zu8OlzxnGgJUo+kmF/Yi9k7xFS7EEerZKtSZGK+oF2sPILuq0ZRr4
	cQGrpYVCOoaNN2KCVFA+ighWPOQGq2zSCJlvi538kgxJdbKKjZESVxbHt4ln/AODu31iJdij4jv
	IaUFCbRJQP9wS2dtTgbcBOQSMIWf78cfBWxAqkzTdk8ibOY70ZQLIRZhfwAIM+GXlsnC0Ty9pv3
	tGU6nTn1l18t9Q++R3rmSH/eQ6iYsDQF19NEh+j2JcEcAsw8/pxl9q1INjkEt8Rn5nvJErlvm0I
	FPbc6N9YwaPXWTJIriaYZQ3MRsJ0RJKLY0hAmc8pS3tnTnms/O4z0cb8+OlX4vBFAm+U=
X-Received: by 2002:a05:6214:c46:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-890842d158emr79772616d6.54.1767862687089;
        Thu, 08 Jan 2026 00:58:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZ6o0SmHvML2LmrOe7eTL0nOVLedXj8klhr7BqpyaZ9HLVsEOuMtIS4GiO6aIiM/fwMf952g==
X-Received: by 2002:a05:6214:c46:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-890842d158emr79772466d6.54.1767862686705;
        Thu, 08 Jan 2026 00:58:06 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:06 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v5 05/12] drm/msm/mdss: Add support for Kaanapali
Date: Thu,  8 Jan 2026 16:56:52 +0800
Message-Id: <20260108085659.790-6-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=d+j4CBjE c=1 sm=1 tr=0 ts=695f71a0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hYg4dbXq4j5tZlskCswA:9 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: tjixUYm9Xx5J61fam5pj_Mp7pC0iYKIE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfXw0T363oc9r/U
 UBm7uYPaUkIF8oloFelyiu/0A6tuz6G3EZlJJwy3ZAB5JQxuUoyPM4MYKXDNsTw3eo8701ocLVR
 JL8fROqX5S6KsgmVw3BEBO1m0zgVGlnS5NCMKBoPu8Ktk/NDjYSV79ojl2DoNmhlpW4g8utPIFG
 j9Ckiq6fOIsA4T2BetBta8M8igltIwoKQ4BQZuIQHuBv7oLME17IMEm4EI7HIlb5uSIZWgME0Q+
 ffndLsM498PrQIX0wTDt36EXuHcqGHU3ct7Vueftp90AhsAKpYpqGrWlNACyBLPrbe8Vga8b3t5
 OXsimc8KIuQfbuoou4PkHequW1ONoD83ZgRBNvXg894BYpYaVrpyX6oz2qwJZ8MWlhQ55OMHuXt
 F1TdZQGrFmxAorSYUeNsGvM6+eXnY5RVZsxZAIx+c7L07EFWV9A9IKeYtVPwm1R4hvna91rMRuK
 nw7b1wxFPz+u5JQ66xA==
X-Proofpoint-GUID: tjixUYm9Xx5J61fam5pj_Mp7pC0iYKIE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080059

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add mdss support for the Qualcomm Kaanapali platform.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index bf9a33e925ac..7d78d16f8802 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -239,7 +239,11 @@ static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
 
 	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
 
-	writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	if (data->ubwc_dec_version == UBWC_6_0)
+		writel_relaxed(5, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	else
+		writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+
 	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
 }
 
@@ -296,6 +300,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 	case UBWC_5_0:
 		msm_mdss_setup_ubwc_dec_50(msm_mdss);
 		break;
+	case UBWC_6_0:
+		msm_mdss_setup_ubwc_dec_50(msm_mdss);
+		break;
 	default:
 		dev_err(msm_mdss->dev, "Unsupported UBWC decoder version %x\n",
 			msm_mdss->mdss_data->ubwc_dec_version);
@@ -554,6 +561,7 @@ static const struct msm_mdss_data data_153k6 = {
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
 	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
+	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
-- 
2.34.1


