Return-Path: <devicetree+bounces-232602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DBBC19526
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:13:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A9BA1585235
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F4932861E;
	Wed, 29 Oct 2025 08:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CBqySYDJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SSPJ3MIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8CC328619
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727946; cv=none; b=ID1i6r2TTS+x391Vgu/3hlviQ6A6NRPU/s8JH3FzpBPUITy/SALlKCaMQBDnB9GygETn7lArJ67ObTGuh7c+Kp6a1Ezi6yvz61Gp5xJW71ca9mRsyfRdc0rJlJU3eSOfXJFoOF+iVWoE69X1kV3KQFPZf6Fb2Ub2dCwz/oJYyz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727946; c=relaxed/simple;
	bh=kT0nNkqfwLX+XjzaS7EK/w+Lq2GKCF3A4szZDCXzJMM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sqUm2Dbcn3uhg9cDST5NsP0slfXogHJHDEObRASciED2nkzmdVSadDRD7BhhjkpdRYkbBZpowXMZX7DI8BOGwl9wY5ivxyKPG+2QjP/9UaFqUi+j4C6r/v3/MLHIxOvLJTRV4XIYrx7o5Bb5MptcPkHsO9SSOvulqL7xR0VZaTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CBqySYDJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SSPJ3MIn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uxw43676873
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1e9oSMS+d/VCq+PGqeKk2Zb2CCfTMlkGDkQXezm1vKw=; b=CBqySYDJhaZvDH0A
	lrZF9p0C/7Cr/7S4+hc6UIbj1u0GG6AvawcvDdMRddTfj6H9rS58aOFjRjIbPjB3
	ZMWM4eEueHhYvReXdjbWQNXCKBPw5gmBuqwFXua5DS7UX0cKp3G+ugCsgLNtAeX+
	aLhysyHOl2huQMXG2zeTDOk9EE8ZQjk4I/ePAuroUouJA5wlMWNNFVY4iX/dHk3L
	9djCFxdAjULaSIa/m7UDX3unvzDEHlneTMWn/PRj/8pW3oYLw6JbocDEKogK6JvU
	iz3TjFMnsHCQ6UAv1o+rUYEB1mlohYEheeKM2VX7PD/KvILU+9FUTUDkQVp/bWEj
	ootbFg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1hujv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:52:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a4c63182so206348251cf.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761727942; x=1762332742; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1e9oSMS+d/VCq+PGqeKk2Zb2CCfTMlkGDkQXezm1vKw=;
        b=SSPJ3MInr5gcRgavQC45suagnhTj1ZUOJf96BBSQp97FTk6mfdEX9auPWGREqjAFQw
         /CRNHSYXj+Xtkiw1vo9PP6Omlxjoa2nzb9MpsdkXoMrLVNqAYmVNbUC59o77vJHNhz9e
         4FLJb/uEpPQVqlaE4g7otBCKfi/VkcKhzgoOgb5z1w/+UMctVck3KvtDS6XgwKBH1GfR
         wf0KuUo+OpwppSEZAdr6EK60SOUS31hTvWq7mtUv5tIqWeqw/ttUrVWHpQe+8FzJYFMk
         AP7g7ZCKg37UZ/qNR1Y8/SKcAjGCvZDtE5kudZwVpok1VpfoBphFIIVgsP60hcd2mkuE
         PTlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727942; x=1762332742;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1e9oSMS+d/VCq+PGqeKk2Zb2CCfTMlkGDkQXezm1vKw=;
        b=jaEjbGOFpVr+L5pRgTAPMN0eeDkdsnKtYj4IoDkYQ0aPkK8jyIS4Vp979MtatsOp9b
         vYWSFS8aUlS56KhJ5pyb/OiOR9LJBnWIsQ2bomfPktEvQ1iO0R0ep3WxzL7LrIg1EJLz
         RuatQjwQ0NDxigUFZ0xYgWhEDBSXXvfdSk2egW21jrROWPNtISXc/JNSmGJJTGdQMFf1
         NqHwfG8rRXZy5s4Lz+mbv6C7ibvtG+ecR+AjxotrzsYzrErP6FPehNgk/hv05MQS80/2
         okZl/ny8OjlZS74Z9MqZQZra4D3Ukn9BS4c/KsdnHFL2E9ObBGl2xVEgcssXH9RB21Ij
         RCEA==
X-Forwarded-Encrypted: i=1; AJvYcCUdoU57VnywJAOA8ofId1h/1L6Rc10xrYl0WGJOsugut43ccsyuVPpzBY2TZOMxqTYju173dfEdcE/n@vger.kernel.org
X-Gm-Message-State: AOJu0Yykbu0zk2/df+fOJDtRcEIpRsOju2F7dHnzdYgroGC0HYZtxs08
	1Bz0nGcbHHE6KYNPsurtabo+7uX7srUP2Hfk8paieGkutaLwEzP4sqkcV5byIF+1DSR5ETxACX5
	f5+nPR3+ybJZsmJCEfrFf/eNVR8GR1398R27OWRDdO/vz+X39a+mPxSPWGUyF8bVp
X-Gm-Gg: ASbGncuhyupAr5w6UNM+nRetdV11txph9hKIAQPMoHYTPRpe2XJXjwOGvTPiXhLooU5
	C+YEt7fHlzTWk1kq4Z9TeP3jHPtb4oVU/lNmeoCkwo46cWJ8urhDpbHHP1BMRL3xMYX3FVMl2VF
	/3UxmQuJuo6VYQwETrn6uTWTxZYbtF4crGSM5qsGKcUwquqsE+Z7z4goO0VRaWXAMHp4M0k5Mzv
	PrBaVTzMzHwqKPDMoRUssqr/lJksyWE+jGKmJaaDGVw/DJDeD09W8gFE0IjDm/qrAYKe28gxKFu
	JbOFb4s4XNT3V1m7cTp8crQgEQTYlg2Gajxs1ziaOv3Sz794TYRpXi0voFqgQjE3ZkREIUOfygC
	vyar3lNWVJ5LSqZ2lSUUWgiE=
X-Received: by 2002:a05:622a:260d:b0:4ed:1ccb:e617 with SMTP id d75a77b69052e-4ed1ccbe7d2mr2855481cf.6.1761727942303;
        Wed, 29 Oct 2025 01:52:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhx7ax4/RlPT+IUaI3UXmPttDiy0gzUvlqhRIcryDt0sdvPy/2AnJ4i3HDDVRg6uQM7MD3xQ==
X-Received: by 2002:a05:622a:260d:b0:4ed:1ccb:e617 with SMTP id d75a77b69052e-4ed1ccbe7d2mr2855141cf.6.1761727941812;
        Wed, 29 Oct 2025 01:52:21 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ed0817602dsm36760171cf.18.2025.10.29.01.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:52:21 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 16:51:37 +0800
Subject: [PATCH v13 4/5] soc: qcom: ubwc: Add QCS8300 UBWC cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qcs8300_mdss-v13-4-e8c8c4f82da2@oss.qualcomm.com>
References: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
In-Reply-To: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761727898; l=1133;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=kT0nNkqfwLX+XjzaS7EK/w+Lq2GKCF3A4szZDCXzJMM=;
 b=z7KgsgL6QAqNhspcyEXiISLQx3yK4dMx/rLPpvzTlBHiZhv7tB4FcIzHldIVlGllvk5/X+Ibn
 7wQqJO/f0kqBH3aLICgSJ4J+ZrJZHN5Q9FIij8s0r7NDf2uFfNvEmCp
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901d5c6 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yyC0Gtz2zuuxwh5CSaYA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: vwcZDRPm7nN0M8AtlGFHO3rXcgzY24k0
X-Proofpoint-ORIG-GUID: vwcZDRPm7nN0M8AtlGFHO3rXcgzY24k0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2NSBTYWx0ZWRfX2ncWCwJItyPN
 6jS/6IM5Y2LLu2vCHqZt1O14xU0rs6bY4TpsF6nQCTeGkKYNRSZdcjvWevr57q5GlQcautQ2tJN
 AghFJiWk8Krky3zY/ZK6p0/FrEHeB+RVQ/OQYqL0K3YBaBqwMJV6bRZr7mTMOBFDbM9bJbgLmtC
 YUks0yKp0dPjSk2azcXhHhCQ/X5dmaD9hIOOb9OCzXxQhtRTDPAfqWgPRKkVIRd2S1+w5DsHZHv
 P6wRJixnfZMAosGj9ng+Y6HP+HRgsGUUukMS4pZtYTyUyIT5CbxJm702o2ZVOj/fjTKBj1K3AtB
 cAfQR1cq9uDWx34ZB+NhIhoGseINDFZVXwA5fa/NkCWWTYCQ/s1HBfiRpW7nKjgpGoAVbwdCqbX
 YV0BV/VDBxYnKNRsrU/UpC4Cle3jfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290065

The QCS8300 supports UBWC 4.0 and 4 channels LP5 memory interface. Use
the SC8280XP data structure for QCS8300 according to the specification.

Acked-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/soc/qcom/ubwc_config.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
index 7cca2afb68e3..942fe6c17612 100644
--- a/drivers/soc/qcom/ubwc_config.c
+++ b/drivers/soc/qcom/ubwc_config.c
@@ -249,6 +249,7 @@ static const struct of_device_id qcom_ubwc_configs[] __maybe_unused = {
 	{ .compatible = "qcom,msm8998", .data = &msm8998_data },
 	{ .compatible = "qcom,qcm2290", .data = &qcm2290_data, },
 	{ .compatible = "qcom,qcm6490", .data = &sc7280_data, },
+	{ .compatible = "qcom,qcs8300", .data = &sc8280xp_data, },
 	{ .compatible = "qcom,sa8155p", .data = &sm8150_data, },
 	{ .compatible = "qcom,sa8540p", .data = &sc8280xp_data, },
 	{ .compatible = "qcom,sa8775p", .data = &sa8775p_data, },

-- 
2.43.0


