Return-Path: <devicetree+bounces-241275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDD3C7BD0B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:55:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ED283367522
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5273064B5;
	Fri, 21 Nov 2025 21:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hfecvUtB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="epfUeYic"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C18308F32
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763762009; cv=none; b=pYNty9qjsFCtsYYyFNSssjE4OgdAgBULrzNy+Jfspsm2we2nBH39iehUq0CIhSP1zlsnXu4sFaarFqHym9ccSdKPmxGdqPypdPjnbxOveq8YfBRjZYNPMIYXh63EroXNBj2z6EEeEFijrXdvelBCJDcVz0nTsnwXqZLMYuYkkbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763762009; c=relaxed/simple;
	bh=/rEpZW/nyrJvs973apvHUv+6QXlttiM+mWTNP1i5vK8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RR0hPQndr9wFx8gie46iT2Pdog4wbro6TCqX3z7/PDGOgfuMBMXq+I5QKAThzaxZn2tbjR1n38Goz9EIE+Rk/ivDzdU9yLkskperYxHQvtkBox7h7FUBLqevw3srd8bZpaMmpZobEoSomzENlfRR2WFfN4EwjyimgLafL13l+3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hfecvUtB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=epfUeYic; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALHEVos3541443
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:53:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YoEkueyGRAiMfd/Q7doMNmlVs1f6W8VCVBPpZYSbqeg=; b=hfecvUtBDr4xhEUw
	aFCnwq7/tw/e/G28N3fVgJFwHDeRgoY5rsRJragh197nKdDt26NaCEgZzY8IoUBu
	14WyLhNoJcKA9FTTtkolck188g5bdi7n1FqC+jxUer5NoQPNwV27xmosL7P36/Bk
	5WHTzrBH1PnjK0wZHX30e9JV+hHec78of5nBCmavVaIw4VM+nuHODeTjTeEGJ37P
	nKWdvB+b7CKRYtxiPNnNf6Zbzmd3tinplvGKlscEmUTUbUKdga8bdhjbtAVcKqLh
	t92+1lZHdNKH9L/2W3im0XFQ5FeKQGbq/5sOwFgazoHlbpsr4USkHPkU6xpCGur3
	A0WCIQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajng025q6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:53:26 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297ddb3c707so22669045ad.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763762006; x=1764366806; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YoEkueyGRAiMfd/Q7doMNmlVs1f6W8VCVBPpZYSbqeg=;
        b=epfUeYicSywK5uo+QUC6p+To6C74d4BL2QMrwpBskI0lF6T1pBYa5YWQQwDNq+VbJj
         J+Hf9TJNVZQbgRM7qSKFz5x2P7BkP1mg6oCuja/1K/kbPQwmcib3x82iv3krbcB5+soc
         L8iC55IxmQ16Yc/CiL97jtKhTvMPwPpaIK5bkRTX8FcHObdLLemRCuJsytNWT7e9iIRX
         SLNTx48zp0dlcmm8ruGT4BQde8m0nXQTNOUcjYGdzDINlTS/bLF/4J9VOOgBIBF/gqRl
         GNuR3jHjg1hiW513CY0qxU0/tGeMs9Zk1mYMnrSwF7rmOVS+BhmLtamxVZYCrwJRyM6u
         9teA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763762006; x=1764366806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YoEkueyGRAiMfd/Q7doMNmlVs1f6W8VCVBPpZYSbqeg=;
        b=ZdQmuITwxTIdY+GIWhzQvCQ/HhwKvMdUA9SCbL6fv2FMwKTiISrXbPHszcnj6njJF6
         Ws4bZql56XQ53S78AIzPBmuSpJCsyJYvLlFONk2c4tiTIr2hf/WHbJmWSWTLlEcl6e5Q
         uN9WQZfYyzGACAJglCmeffV9d9NcMiWfz8/KiTMd6vy7faj+uuFVyZWt/OrZuabjBHQW
         /PPSt6i7/TyhauBsf+P1n2qJZkLqU3EwmoRC4nS2BZ1Fh8crbSjjqkU/gJMSL9Ix5mrp
         BXQ6rm+Y9ZoGces/PbF3qWZglOz27Tru0cugKtpbd8NZHyW8X/q0I8Y8gBVULutegd4D
         br8A==
X-Forwarded-Encrypted: i=1; AJvYcCUdGEyp1H/udcuuE0E9hOSBFN5ud/TAj8IPe0Ng0325AAB+MQq/hHpm9Yco3yOiScACWNjH4MfJ/Xgz@vger.kernel.org
X-Gm-Message-State: AOJu0YzGH+S8u9lzlfpLKYhX5aBII40OuX5c7PBZoOXtXwO62WFm8afl
	3D1XfXVEF3pRu9DMy1ii+zFNBmT4vUyV+KSb4/Fzh+FaZmdJnrh7X1Cnvy7UqZRtKOGqKHq5n2q
	GTkTiVYTucZFOWIpw97yUeks1lWAysbN3q/rMa5NHpPcXfh6gwMi4LYMpTI7aqpjr
X-Gm-Gg: ASbGnctVFWICzZW2UGenhHHzhyo0qmr3lJ2sZ3ntiV+5pnt/3gMxiup8D0pZghaXrtJ
	Yfxh6T2EkClOwRJDy1rlnmF65x/sRL2qh0SmtlnFU7lsYZPVASfA+QyxWrRFWbD+3Ut6IxNAVtJ
	cVt/buD89zWZ9iHc0uCqr9aFIG3IJ5PD3sK3F048ob5J2kLdW209g47zcX6toXuzInj4yOj6QzY
	GM8RafOgcWLWYlkf7iXm830NlaoEfuLZzNlaVG5zJYQw6QLmlv+qmqIBrB7L4Jq5hEJUiEFJ8h8
	53+AdMX/0K8GWBsrYrMJRuN/m7HOiBr9nYxhWh83sFBTYtODgSx6NorXi1p3WKwLpmuQ1E/F9eA
	ZhtwxntuIjDHBuideH4kiRSePqDdvk9X/rQ==
X-Received: by 2002:a17:902:d508:b0:295:7f3f:b943 with SMTP id d9443c01a7336-29b6bf3bce7mr57332945ad.28.1763762005963;
        Fri, 21 Nov 2025 13:53:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/BZzIAWj9eYtoZjfdFhYq2QQUL0Yy1J7PWU+USKHwk6VLoY8JPIN8Q5g/Xze3sjEhINVm4A==
X-Received: by 2002:a17:902:d508:b0:295:7f3f:b943 with SMTP id d9443c01a7336-29b6bf3bce7mr57332775ad.28.1763762005503;
        Fri, 21 Nov 2025 13:53:25 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75def6314sm6399270a12.7.2025.11.21.13.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:53:25 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Sat, 22 Nov 2025 03:22:20 +0530
Subject: [PATCH v3 6/6] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251122-qcs615-spin-2-v3-6-9f4d4c87f51d@oss.qualcomm.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
In-Reply-To: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763761959; l=818;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=G0zTCxAvZRtlsdP6kfDAlHz0/SPT4i0igeosXxhSpIs=;
 b=UbZP2+u7xwSxifbmFhS00jQ5//QuBFBJ3iJG36yuYizPabimYaRuDuTVZlieh8B8RWujVwS4X
 02z5wPC8isCBS4Kn2o58wioIRiGaRNFvL5AnTCMusCeanbW/ZlUnlI6
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: wx1jVx2FeHMmke7x_K0jlFKwZednJIRw
X-Authority-Analysis: v=2.4 cv=R+UO2NRX c=1 sm=1 tr=0 ts=6920df56 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Xl3f10jGzgz6Ja07nhwA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: wx1jVx2FeHMmke7x_K0jlFKwZednJIRw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDE2NyBTYWx0ZWRfX6/GUgQvT/l5b
 7/70HT2VX4Y0sux+shQIAEFKydnvvRpJJsNq35GN/lg3RT2h8V+0EA/kZuwO1L/Y6+M/rbiaRSJ
 4SlfPXP8t3Ee/8c4U1sxn/xlB6Lw3bk4Z7yansuXFXX431pw6TJwU1AzpZvt+CQc69PVihb239l
 6H9qzUPADDwP/xmPFv9IQFk9IxInKcZC+oRSDzV603M9l0k2Wl3P2phNzzEBRXyRp9cnbk/+6lE
 mK3A1GQK7q5TFU43NWkNuVvlxx5nlkr1fh4I+FKO/3yxhI/nRYb2uWKSFCI8hEUF1v2flGP4jOd
 j1BnjejqXO0gwTZfVVLiOqTnCVoOFFcABb0LPZUJHFJ/TopAsJTDbverEhzvEpzns3P0HxRc1YJ
 EmOGpRL0Wro8DLm3l+MT3UYc2cQt7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_06,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210167

From: Jie Zhang <quic_jiezh@quicinc.com>

Enable GPU for qcs615-ride platform and provide path for zap
shader.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index be67eb173046..33e33aa54691 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -358,6 +358,14 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs615/a612_zap.mbn";
+};
+
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.51.0


