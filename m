Return-Path: <devicetree+bounces-211209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCB4B3DF45
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF2D17D952
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 09:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1890430E824;
	Mon,  1 Sep 2025 09:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JWAhe3A1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF2230E0F1
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 09:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756720711; cv=none; b=NLROA+LAHpvKuIZRWMW1xplyB2B1oNGQuTypNG+/i19mJm0at0/6HDanknRhbs79LTwSTSm44mObl+zd49JmNCXeM0vS3vP76j42M11B4qoKZBaD+mQrSeh7yl7WzxH63+Wk6D+nLeITFv4Oo6pCrb8TEO6lFNt4/4ekm/imr68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756720711; c=relaxed/simple;
	bh=/6uXAHc8u+Q/a1DjNDEMhzB6keYn2be9cZkXxsbUEe4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Gj2+13ggeMIQF79rHBwRpVwAmGtB+SxEV8Asvnj2PQLMlLde3Ceh/4AKeasJgJgX5LOjoTD/sSjdOGlrV/LyYH+vlZc2Cv+2hT86PDV4E5tPRUBgX7smYP6fujdg1sF7vrHfZFVt/Cyy5IZ4D/OfqAxV3zcgagc2ntFFn8Y7qUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JWAhe3A1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5819ePcY010963
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 09:58:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WIK2qr3/NE94iQwkqEL7J6K1o6tIhuvxaoMJhpu+NbY=; b=JWAhe3A18RmjzDzZ
	Z0AsmrpBxizSatiAvThVXP2/Wmn3h8IfP14ej9OKyOd4uWbVwYKTGh5K71Gcxg5i
	AquS9r6CT/z5Xvpi8TucNSAOhQS4HOmXa4DUJM5GbQva1hIvLcUAgWBuIszMoZht
	78v8V1nrUwwIq638aGRMtOCjTGDpvcWTlLBZNdz+H2CRa8psa5dxMkivuI9a78sn
	GUs62Gz5jm3Cm4yQeqTUE+5EYEPWHxWlsFeZQK+tqwxwNpQVt97jAyHqh30q0sfn
	uP4PxMkeJ9ZqEX38uWAguaeJe6Bc1yLOlpgMGNuZ3xTsnhLrTIS+EF70mxtNYMTR
	L/1A5Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8v75b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 09:58:28 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4716fc56a9so5738830a12.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 02:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756720708; x=1757325508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WIK2qr3/NE94iQwkqEL7J6K1o6tIhuvxaoMJhpu+NbY=;
        b=br9+7sTGXdD0kGZ2+vfendHjdnRTdKWMtNmua8UT4R4TUo5PuagWI0U7yE4vIBCb8L
         qDURbLFOqAJYDjK4mYRbrJP8JqCSI+nXIekESj3e9wfZHMSbgAcJ2uaegcRozHhAPkD3
         kXXEhduwjzd3e7NAxhibm2seYcQCDwN6oSBKRotCOl8X2Fs/BHEXDK+Bx8dsC2v5qQ+Z
         9PZ6gMSzTJGSyn6Lkx94Zjb7Q/n1eWcQKCvGgLXKbH7LrrCeQf6eTFkzVsVJaome/ECi
         gDByQlsN3hGX2RJh1GwAOwBeWsVTWScyFV/fnfN1qUnvvaeIDMif5Z3JTVtnK+L3A5AQ
         IsZg==
X-Forwarded-Encrypted: i=1; AJvYcCVGfD6OcpPwKekTSHV2Vlkch43S6E+dkyrpIP/ihzcBdVYgyJ7ftPNpdfJfYpkEMQqdQi7Dp0x/TEhN@vger.kernel.org
X-Gm-Message-State: AOJu0YzL7RAUAlNH5jVX+X/ioQzygjlbTjdusQscJGKHdEzNryGoWZrC
	mmU38CD1qPNQJPoS/yoYvsekDwjNlEf1D8mzrnj/+lcKkGJo9O8uqtFkPmBoj2LohNfgyhoPdmX
	3HbuwK50nCtiw7MkmG9EQ/FQSv/ERdnwtRSz50uP6WClvVfXKLIZZb0X/DKGpIamHmWdOfYaY
X-Gm-Gg: ASbGncvjQFyrTqFh4o7ZI4jZGECUwZsdvGXufB+ArC0JhwE4/7f3nxXTOrS46rS0GjV
	6Fm8OaJAxjTA3Aohh/WmsyI0Fn7XzOU82Gt837JTWFSJQADOtegsZxYXiGZvU6vsO/0nxU8hdqZ
	pmZlC9qoyA+h0xHwY5qKWQlymGtYNeEYpwTOfW9bs1GtTK1uI+6g5FpEil26XnxEJRXwW9UGeBK
	OC1SiNJcmug+IuHLLeUaknyZ9y4nLmVfmke+2qMrRGrEEjzzR57IZKPl6QrxhUL16k8moe/MMgH
	CiYJpwr/vfPJio6kpLpkksAtlAJ/e15y6NothjFU2rEO17bZXbZxAV9uud5VJclvJOsKX48=
X-Received: by 2002:a05:6a20:12c7:b0:243:b411:ae53 with SMTP id adf61e73a8af0-243d6dd56acmr9552534637.11.1756720707574;
        Mon, 01 Sep 2025 02:58:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0MoPFSikRmyDViMrlgzOfYeCyLjAV52qLyprlfZ2BtiAd4BuV9Kdl5fEac8p72y1J2WvtDw==
X-Received: by 2002:a05:6a20:12c7:b0:243:b411:ae53 with SMTP id adf61e73a8af0-243d6dd56acmr9552504637.11.1756720707109;
        Mon, 01 Sep 2025 02:58:27 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a26bfe2sm10305656b3a.14.2025.09.01.02.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 02:58:26 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 01 Sep 2025 17:57:32 +0800
Subject: [PATCH v10 4/6] soc: qcom: ubwc: Add QCS8300 UBWC cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-qcs8300_mdss-v10-4-87cab7e48479@oss.qualcomm.com>
References: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
In-Reply-To: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
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
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756720667; l=1189;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=/6uXAHc8u+Q/a1DjNDEMhzB6keYn2be9cZkXxsbUEe4=;
 b=nK6UeSTKXTGBlXsu+2YyHgK746mWAkfKz4qckJV50Abj9bxG53cDZdJiYOqMQxNf7O3dZGDFd
 9T377LelwR/AzsUUYDWRurQHcDtjXdMspfr4wjyZmrzODmxcjjtqknA
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-GUID: S0zUh4Hndp1oPcEoIGN4Q51zkaaOaCg-
X-Proofpoint-ORIG-GUID: S0zUh4Hndp1oPcEoIGN4Q51zkaaOaCg-
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b56e44 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yyC0Gtz2zuuxwh5CSaYA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX2o1XR8TCvFRU
 U3ckpSZTQO2Ri5NfKSEQGT37Mkg930OpDvbg/lTbvjztmgBG5fh4I0NB59Hil35SjRcYNDTjEDq
 f4oKCniR7ymisFTYeAJBmq+Ag9ItqO3LYuaNmbObiVR2Hc4ZHym2u4h9CUyiZIGRJghxr53YLR9
 bqZ/bwI3BQI3h4SmUQBLqUe8okNsekW7wmd+lT2fMaWsv+lFJKZZO2WMP9l6p7dGhB05WlfoGXY
 /DR4SjNU5z1SUGb6SBAQZP1VA7BlEotHhdlWeVF8lsfmiim+65/FbxG3Fylcvh+ZQOFLuf1YsPO
 /i9rNNE1NCUJ7L2ZMqdynTNU/rmu+0m7i++shwTgscRV/IsLXOMLKcNouNpGvFxOjmazYLvBSnG
 v9Tr7lq1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

The QCS8300 supports UBWC 4.0 and 4 channels LP5 memory interface. Use
the SC8280XP data structure for QCS8300 according to the specification.

Acked-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/soc/qcom/ubwc_config.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
index 1490a7f63767bba176e8e2e76891d7d2c424bb7f..b70627d40dc4c671b8a855a17d4b8ca2dd9952d5 100644
--- a/drivers/soc/qcom/ubwc_config.c
+++ b/drivers/soc/qcom/ubwc_config.c
@@ -236,6 +236,7 @@ static const struct of_device_id qcom_ubwc_configs[] __maybe_unused = {
 	{ .compatible = "qcom,msm8998", .data = &msm8998_data },
 	{ .compatible = "qcom,qcm2290", .data = &qcm2290_data, },
 	{ .compatible = "qcom,qcm6490", .data = &sc7280_data, },
+	{ .compatible = "qcom,qcs8300", .data = &sc8280xp_data, },
 	{ .compatible = "qcom,sa8155p", .data = &sm8150_data, },
 	{ .compatible = "qcom,sa8540p", .data = &sc8280xp_data, },
 	{ .compatible = "qcom,sa8775p", .data = &sa8775p_data, },

-- 
2.34.1


