Return-Path: <devicetree+bounces-212583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 348FDB433DC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 425841C21957
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A85F62BD580;
	Thu,  4 Sep 2025 07:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gkWJDUfK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2514F2BD022
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 07:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756970655; cv=none; b=pm4Y6Wvehlq2bPSU5XFACBDauVfHx3MLqmqht2wR9GawyWgnRKjKstns8oyJF89b/9nBM5f+0rTM/xX9uldVuSD2irglm/t/fZyviGWNJvfd9aamrGEZB13Gj4ZuZ6GoV3ysyQwnjXf5erLghgzfenqRXf6jfkzCh8Cj/+IhxUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756970655; c=relaxed/simple;
	bh=/6uXAHc8u+Q/a1DjNDEMhzB6keYn2be9cZkXxsbUEe4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UlshMKZ9JiUZHevY2zlFvCD80YOv7GgR3Unt0o8EofZTXv+QaWp8Wsi2yrT54DpS0z5JY2AIgBg6QoAScaj4K754cMkpTTGR2+8SbO/KPGYGcy2N7ejjs9IfY0zk+bi0vgxdWd6BjV/eQB44w4A5qw7dT5tb34lzYHFnu5TRf7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gkWJDUfK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840xSKS030167
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 07:24:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WIK2qr3/NE94iQwkqEL7J6K1o6tIhuvxaoMJhpu+NbY=; b=gkWJDUfK/EmvHJOp
	Il4ZQV1HfyFRXs2662MVXFJ4c5Nmx2ZkLS3Xqw3rMgecHgvVVGkpuIzRXqSAaWrl
	eyXb8wRZguWLa2N6u9cQOte5cBqL/xY/EwsUWWgMRzC5FLOXnFVPgm2Rxd+s8+9+
	fU3n+/VdqBw46eWok3GBw8G3LESkfwIy8va/izdkYzitN/9cLaYwUVq/jznk5oRa
	QD+Wj+yG1KqjnATqoiIaewOlcCn8oTmMh3cLcoBlqn6KsaBgKFBtyPe9sy+2EqW7
	vQd/sAJ0ErLlyqduLPc9VlofPrcl/9ea3A7YaZzIciz01VOjRS7z7rBQX1d/uEPP
	hZCGSw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnperg9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:24:12 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471737c5efso488987a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:24:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756970652; x=1757575452;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WIK2qr3/NE94iQwkqEL7J6K1o6tIhuvxaoMJhpu+NbY=;
        b=Q8JN0j9KMxF4G0edyvY6ZiEouyWrQEdXsLuTp4u7c3SUSNMTebKoNNAZQVLjUD4ilm
         OEeTMumCwtDYwkIYNelo7TuzxtEOb7yp7LCXu+gkK2aQG6XnnEiJZQdAOlVXoFmBqVBR
         ySX+bRTqRzZ3wi8XOP9wXxNMoeyBeTSEVujxneHMeE6VAIqoey5LXCa6yhtG3EmRgU22
         SVSnNEsq/fCSXXfz6zQFgTdZ+Ex/FKW1ggixrvr5I13XiP7Tj58+vnH6JHEXcWofPqUk
         vQKFZgwXzDpzYlIIEcbCmUvn2WYLtu0GPji04O03EeYOUFundLH4u4ViVom2e5MaMmww
         0QUQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/+NnsEgbaHiYY0JP4zQ3IaFjmuzwV4eCWX5d4HqdDlqbGgSR2ROiAxgqy8mwlHICNxkaPUSSzgx4t@vger.kernel.org
X-Gm-Message-State: AOJu0YwCRbHPtvcASvCSk9BEDcpL43IttyL/V1UKbh9+r4vUq/i2tuAm
	lxxN/XV5orw6TgmZPYx7L6twtitHrMnc3tsO2F6L4D7uvI9MlThC+dq5TDoelmI6AOddeZtU859
	2ATP0A7oxkWbNvxKWbkf/jyyDh5JDvpBwnwDOEV4cEhje5xx383oG+Xl1rN7vGgeU
X-Gm-Gg: ASbGncs2QDw5X6h9x6zVGBTILmgu7mDCe2MYkwghUjXc0gJlnCfy89hvFwtAEg7jcPI
	kZTty/PY8f6hLfQL0FHqtcKbrVX45m7KSj7UMKemiXCrBJGMIIx2gHlOcEH9DxHuKrSwu+mz+DT
	/IWfpfAkq6/hcwY2rd23HBrSMBxBtjH0xsB7MIEMBsIFDChoc2MMDYRLuwtJzd6cx5vz4h4JQ6o
	5iRVGdoMojPDV8hsgyTjWd6HNinATKeyCQyq5azzyR4mES2lEGTsCOOQ8QwuGyhWabpWuoqjcHy
	jxuBGynxPQTr58F5dPXryv5mA2wPx29+5p5NbMUnDqQcUouDqv7gQlmt9XYrwloo9Snz34E=
X-Received: by 2002:a05:6a20:4322:b0:243:ab0c:f0f7 with SMTP id adf61e73a8af0-243d6f02e59mr23320014637.31.1756970651456;
        Thu, 04 Sep 2025 00:24:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJ8enfuqQcqlAwxhsH+5qitYBcmR2no0dT0Gse689XelnQPF9r7les6vLU1Q3oV7U2TZEQrw==
X-Received: by 2002:a05:6a20:4322:b0:243:ab0c:f0f7 with SMTP id adf61e73a8af0-243d6f02e59mr23319971637.31.1756970650898;
        Thu, 04 Sep 2025 00:24:10 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77243ffcebasm14656452b3a.51.2025.09.04.00.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 00:24:10 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 15:22:39 +0800
Subject: [PATCH v11 4/6] soc: qcom: ubwc: Add QCS8300 UBWC cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-qcs8300_mdss-v11-4-bc8761964d76@oss.qualcomm.com>
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
In-Reply-To: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756970611; l=1189;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=/6uXAHc8u+Q/a1DjNDEMhzB6keYn2be9cZkXxsbUEe4=;
 b=KWYVYnoqYgq/copKQInvh0Aj1bnq6K/MF3klLEorICC76+c7mfr4OZNoUWfsI0R5sv1eTtWYe
 nVQENoqS8xYDc/JIPq98MskOGVTXkgR0GuWTiXIC4qigBzXIKpBSb/C
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-GUID: iwWeEixDPOcM4Hh6emK53csjl6i-sTUU
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b93e9c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yyC0Gtz2zuuxwh5CSaYA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: iwWeEixDPOcM4Hh6emK53csjl6i-sTUU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX36Lq3HRuBKag
 jmFd9+cREG/ZzjIa5MUF5xAJr61Mh6kwKQYOFUWjecgu4MPUx4i3jzW/Pf2kXplulNB7Kq0ZjuZ
 1/I7vJYBlPFPQxUmDmiRr7RIGrnA2gRQYM7MWRFJ+dRIdIivvc+GbS2yOUSghITx6JaAvTMUxZ8
 I0aqeevyAybb/5XyVPgAz9Z2opDpWaDU54h//XJJSC0AoGxJjAz/u2wG3fGjEWB4v8KI+mb5qMK
 CiFAoY6Eg+MA7PJdCKaofVASozQCATCFlkAl2bitoX4EBZ+EaxgTrJ0Ovg5FWauT/SjTTNjuR0p
 Fe+bHdF3TqzcUu5K+fKCsWnq5FJkPWZ42hgYqwsGacbLpN/JBb1w+gFi35pq9r0kOBKvnvwtr9L
 jjbyzP3O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

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


