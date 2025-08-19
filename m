Return-Path: <devicetree+bounces-206078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F76B2B7A7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33B827A86A6
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF7D2E2299;
	Tue, 19 Aug 2025 03:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hrtw1sKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7116220F21
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574465; cv=none; b=U/7c7AhcBxq0tplSNc+GBf3QOU3GSw1/fWBZA37jQln9t104L80aTf7AGQqLKQiw6Ioo4PoFo+cnRXkB77K0U2v5o73q0XfuxRJGAHVEuA/EwWp84DgQsBm98DpCG/EcYpLHVI1PVQbK8Xz4mz2bT7OQZMRUuK7rBsECdV/wMkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574465; c=relaxed/simple;
	bh=jOpI4nmnKEmv8uXLQgSky6yvZ4rqxGLbRu05MSmbQfE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aeRlfdLzJR9pL3OK6cnNrSEVqDyyow5dpmcIvybCf6urt8cGwm0Doj1a497udzZseJowCslGL1vF/OgzX8UJQZlYTDTnJCDMEF+dsqR9OSff6gcnySyS5JjP63tZrOgupUSS8geOA7+yp+XYhaTovOzFnfNECi+t7E6JrYq5kkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hrtw1sKo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57ILffAS025291
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OPWsmdBgWK2fzbiKII489PmVXT2aCRqmtO36lTZIRwY=; b=Hrtw1sKofE2SkRn5
	eqE+EmbaHH+lURmilUFvUpZOSNvIo9oYtSr9HmBzIzK5XT/hDatw2LTi3QhFyeQr
	/xRh6j0VCu9RpRN8SPs8Mgar6t7snovEIyvU1i5aX29NaQQfrZ/XkkDanmRCg7Qs
	2RatRD4vD32mevX4ZVbsBjTepv2qbeF9cE2aDrn9fndepz6HheVzcTNeekZ+pLIT
	J+mEkbampmGuOOOquPe5d9NpXu+V+Zbw5G31MxLUBa6HwCWJUWQZ7Wv5DTGA2tNq
	R97EkBtJsMzxwQgg4txqtvcjntPr2qAr8C4yIPSbjivGQSp9zDnv8rZBe1jhbV9V
	aacaCA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48mca5gq98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:23 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24457f42254so117435335ad.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755574462; x=1756179262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OPWsmdBgWK2fzbiKII489PmVXT2aCRqmtO36lTZIRwY=;
        b=dp9HtVIdvSXs/w5fPEmDvWCYoNdRtogQrjpWA8yFR7HSeAi8x1kJgDqtixh6qDgspb
         9AjJlyQGEVeMfwtiW1FGvECh4K38+UwX9qWydwbw5iXTAjuWtNDDRlDA83O/UX0ff8xZ
         A9FshxJ4Fy7EnoRXl/KIh2uuWMrpOKghZ8afFKnh5KlAPRo0O1hikvzTBRnzkiV8KI6h
         R5t7L+j7+yAiYD9PWsvdAN86TNMcHRKH3QHb3mm6WsQ0OB6ib8BXCA4tm10m3fWHF/L2
         YNviDkptwwF+Ry/nYKS7zM12F3kY0jAoGs9jpqT48XEWIH7MS+FzXxzjzJGcpapyupAe
         7hXg==
X-Forwarded-Encrypted: i=1; AJvYcCUx8Jg/242yOud4uO7uE/KvafLdghWroeXnvDY8iErBHr/EOAl2re6oj3rnhAPEJC2mcWgvPyWHhWE7@vger.kernel.org
X-Gm-Message-State: AOJu0YylgEhKvJLnX+jn67rwryj6JwRXugNWBIxUWH/PaB6pP8lLHs39
	WTIWQljQ/XowLo47mRYsi6r7AVnwE+lhN3CLCkw643C6yqIv2kFVxn66MLUENmUUk4vdTP077LD
	vRWKUi9J5ecRlWyr/NkFTl8iw9ErQdXL4Oxps1/0NdAWkIXSYOMUr6315k90pGtxs
X-Gm-Gg: ASbGnctHDvg5Ok3630WHQYEGXim4C2pD88ydkr2sR6DS3LN7jZUm/JoTwCiYulbqvqB
	nCBWrXZMHUqux9YieQePbVtgl80gfxGYFQnGyrM1SPlPgldzYQsJry6CKsfZXU2YOAXrLeobzRY
	fy654RiR1FU/cv+cButC5SZZ1VWT8Y3Day4lYi98CqQ32lq20Zp/ABDJET9G6f0tXDqg4Gf0TU1
	NImMdsaC4Bfax54kzGFOTr5xn7Icqe01pVJDCdK5GnNN0imwdaNmNCtiY4kSMojIYpqp6n0WW6U
	ong6+U6cL9eIHSQIcxVev0AIuzSThe9MOkvIXDDatV3a7M3J5PhmcVl6+BofhjDXrSjU0gw=
X-Received: by 2002:a17:903:22c8:b0:224:23be:c569 with SMTP id d9443c01a7336-245e030d92cmr15553095ad.22.1755574462110;
        Mon, 18 Aug 2025 20:34:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE13BxWQaZCSpPUM8Su6OLbnLn7Jh+VfY1RtFqcYmy31G07dgHHw7LC/2QnlPkdHOv24QeTAQ==
X-Received: by 2002:a17:903:22c8:b0:224:23be:c569 with SMTP id d9443c01a7336-245e030d92cmr15552605ad.22.1755574461668;
        Mon, 18 Aug 2025 20:34:21 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f55esm94486325ad.82.2025.08.18.20.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:34:21 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 11:33:31 +0800
Subject: [PATCH v7 4/6] soc: qcom: ubwc: Add QCS8300 UBWC cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs8300_mdss-v7-4-49775ef134f4@oss.qualcomm.com>
References: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
In-Reply-To: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755574427; l=1186;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=jOpI4nmnKEmv8uXLQgSky6yvZ4rqxGLbRu05MSmbQfE=;
 b=Mhpyzs75r/w1fcnROY7DFyp/qHvsah/YEHiiC08YAODExISlfqMhgNgkJqs5WTOYQff50uSim
 Ynx34vWm+hVCP/Vw/bmQ/fifpDV9h6NMxRK+9bcfEyVEpmAPeZNaa9g
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=FdU3xI+6 c=1 sm=1 tr=0 ts=68a3f0bf cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yyC0Gtz2zuuxwh5CSaYA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 3s-akFanm1D0N0ZpJP092tQ6GQHxKlo5
X-Proofpoint-GUID: 3s-akFanm1D0N0ZpJP092tQ6GQHxKlo5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDIwMiBTYWx0ZWRfX68uPrt1Y24Tl
 3pLj5AYuEsVAFt0Tfjxr5UB43WHFu5aNNo5sAtMZARxyRh3wrXm1+1BFWrJlucEpojPi8CIQIp3
 70HzReIqj/KN5m3KEb2ayxJu/2voE+RR8xrIOoPU5o98D9QVMJYRKP7GS6zsTBS9cUCzFua9NYO
 XNYQQtonBxNDvHrVmSZuk9nj+b2K5Q+oSbeOJEXlK3D38KwlFyCTRu4RQa9rDN3FF/XUnHqDh7v
 L9IJvQukVUuRHLOnGN6eve94pYW5HZcFy+fp/7Hwqeo0WTNWcUWXuQtQfvcljv9w9erYzMsdBco
 Wze/JTUlO2mvLlz8fqDx1vy9CC/G/PAg254b26EjLgxul9wLF2FoWFlUMIczf/FIxMA0rnYf3RT
 tD25lcGL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1011 phishscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180202

The QCS8300 supports UBWC 4.0 and 4 channels LP5 memory interface. Use
the SC8280XP as fallback for QCS8300 according to the specification.

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


