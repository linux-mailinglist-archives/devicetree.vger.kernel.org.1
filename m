Return-Path: <devicetree+bounces-215892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75885B53047
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 943C73BF572
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF98831A046;
	Thu, 11 Sep 2025 11:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="etRA6v05"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CF031DDAB
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757589884; cv=none; b=qS4Jek1OUwrnX8/OXeoreDUdoWcynf8QwMCMZzU7QBNvNKye2n6IEOc5laXlA3srRtJIZo0zk7fKnMn11ARH3ducTcHTwXWvmXcbctI0Bmjgruuc/nQpb/7R6PPuyZWegZ9QVKiPIOIs5arbOLXb/9sugqU0yAnwjCsOq+ndWVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757589884; c=relaxed/simple;
	bh=FEUevD/Bir/UEqCMgp3K3Th3lwTSdx1DDp6SRzW1JOU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HmraPBdbkX56XHdYJhfbdTFpt8hja4C5Wz+onJix83uOaZ6dBveBD/UUoEfiuqp2dqwAHXrYj/PY6WSVNr6zFjTDqM/kwDRcHl+GEkP9omqop+IBz7Xw4l8kI/tt/JStHSVCqX4JUgX5JZmA9LSCbahH/9CXj5QfOVnee7U/rlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=etRA6v05; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B8Vob5003774
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sPoNsm7+PfZj4+jNLDfDUvmKCs26wErm+BDKGeJyvf4=; b=etRA6v05WeY0gSV1
	AAGw3riumuoDZwva/V+yCG332jRGagJmA4AgeLpwLY563RooGGZ1XuNz8HUmeJeI
	0UoVxqnGG69PnFQgn7yXxrzpO44azNFFeMW3uMAED5FvVX0hi/mV5yy6o3cNkpcN
	w4pnvyC4eEYc4FQnw0QxHaCNVMOXIVnPlujc455XJL2o912sWcBBAHmJGOVvs42J
	nNa6J7t0cf6JYtYwyDURzqfuOz6xhKvrdCUeLh6qeb1kaJxGrDBZI6fBpVesv27Y
	PSHe0daUdZ8584T3TA+P1PEQVtpbPCtjmZk9k4OihnU7usNSXzUhVH69bJ/rLI7B
	IyZTgQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493tyxrfxk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:24:41 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24ced7cfa07so7710585ad.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 04:24:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757589880; x=1758194680;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sPoNsm7+PfZj4+jNLDfDUvmKCs26wErm+BDKGeJyvf4=;
        b=nhFffkKTLh1BO0icRMaJgRDysRRVOublzwH8MHelCdRYXBlYvshD4aL+fZHOfN4n8A
         Cglj5P2P9oplpraQE5e0pZ9PBOYQwsUyNeS/pqbuN4hMKkUKo6q84a2kfiiyTrdpnyXK
         JkhwAPyg5P5a9sB/nc3mwlk5CsGqmRphCZHviVvnowi6SHFUJRQIOwflctk7D7K9JqnR
         NEjVSAYiaxFuKavlotxivqfkV+xP1fwQjudK73Iar9egYdZFQnTqtxh8PiVPha4DvKE1
         7t/j72W2WUojexKm5umlLjQqMrJD+L7pWg3M0+Pm6rNMgv5qs2t8xnnTInhIjvVaFWSv
         QTow==
X-Forwarded-Encrypted: i=1; AJvYcCXzHnwH76JBYvYtnLhckx1TXWyyV5/BG8l6QrU5hrnOYKcT1BZc84b/FrF6WY70+0ybXGJqksOd6FGy@vger.kernel.org
X-Gm-Message-State: AOJu0YzPZC7f7zZxk1K7HwsrBBRAVlvnPmStIQYlEB3H55IG7+jC18hQ
	CZ3mHWmUAdHOTjGbCTAoX+ooGxwDiQIals70zFwgLhHTdxOpokTOawX8KPLOqqiDcd3/O7hVOuJ
	ao4hXPc87JkF5Sx68G5bxjBj+O4jH2CQDWHnnaPCFZU6kALHN7Fr4Gzil3/sen48A
X-Gm-Gg: ASbGncvInuMYQ6rzZiNXMUYjr0AwN6Ov8z7fBWnxrHS9am8aLk+nvucSQ6dkDWjCkDF
	J53uomsZGqDrPQobbwowCBGQCtOLYcqVlzO8ZC8SmwR5cAHt0yPiAe24/ltoIXh1R9NKz+NmqN2
	ZjuQd7GkU3C6smFqZ7xSLslup/c1B4Z8/CnW3awek0grJCZQCW1/RH+pr239gWOHRxW8PZsjAr3
	1nNoQZQRktA3GBDQ5oSKUPQBVxHO33+qwWlKj7WIbppqsaALtnIRryyoQ1ox+I2TvhgyyyihG4E
	AHwW5Mfyxx2CIYjoGUZiPm5wmXkkbqxB97+pjxdH9gcjRwkqY6uO1uHPT8xvuAi/zuVGDduKKSZ
	gTcf910ttjkjLcofOUezh17qZE/MigQq8
X-Received: by 2002:a17:902:ec8f:b0:240:9dd8:219b with SMTP id d9443c01a7336-251737d3ae0mr251493675ad.49.1757589880208;
        Thu, 11 Sep 2025 04:24:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVej9XvECHnfJ2giLr8gHJUx8kOwiI628UxF466o3mzUJFirfad/bnLhSvmHcgicqE/EARkQ==
X-Received: by 2002:a17:902:ec8f:b0:240:9dd8:219b with SMTP id d9443c01a7336-251737d3ae0mr251493285ad.49.1757589879637;
        Thu, 11 Sep 2025 04:24:39 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c37294b17sm17005365ad.40.2025.09.11.04.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 04:24:39 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 19:24:04 +0800
Subject: [PATCH v12 4/5] soc: qcom: ubwc: Add QCS8300 UBWC cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-qcs8300_mdss-v12-4-5f7d076e2b81@oss.qualcomm.com>
References: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
In-Reply-To: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
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
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757589847; l=1133;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=FEUevD/Bir/UEqCMgp3K3Th3lwTSdx1DDp6SRzW1JOU=;
 b=lwy7m2h+u6LYki4ZBIiHe1vbQcfyvBfzCTgg7t+cwNsq18RqfOCaBQmsaMuuol5n/cguidvXZ
 XJ/cgV2mfRAAaS/OKzigEqVCv9kz/eEdFiKFaNFufM/k6rR1v1W/tSL
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: aGrwhyPBvGJOODvBV_VRjFa7kJxz4BLd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA3NCBTYWx0ZWRfX7+b5iKJCBrAH
 FgVlGWTI355yzvi6GEi+U+T+3lF0DaVhoRDGejAZ0Bmw7ZFRUhdKXv3HrqG6cn/vQ3k6PC0g1zG
 PDrpJB03qof18D59FQLypUyljM0rUKV/ZPluelLxOXTrQl/g531x2a4E+M2G9DihiNp3+6zp2t4
 JeNFA3dv6OiZvYTuVQrD3OsDANCwun8Bx4AUjAfQOlWvOZpFOCEkwEfEptquP1kbCc3bUgimklD
 aP/WtAk9rSyQ+dRb+2W9r4+MwHt8JNf1kFrtu+8CsgjTtm5/102WpLW9XLkDT1c3F7G4eSV1gNZ
 7/yrmW2a2GS8fFO3wD2LGH/Oy+DExObaIMzfjUqiH2l5kbxG1czRifioVQ2gC80MoHFWBQG65/o
 J/V0gB1f
X-Authority-Analysis: v=2.4 cv=VZn3PEp9 c=1 sm=1 tr=0 ts=68c2b179 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yyC0Gtz2zuuxwh5CSaYA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: aGrwhyPBvGJOODvBV_VRjFa7kJxz4BLd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110074

The QCS8300 supports UBWC 4.0 and 4 channels LP5 memory interface. Use
the SC8280XP data structure for QCS8300 according to the specification.

Acked-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/soc/qcom/ubwc_config.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
index 1490a7f63767..b70627d40dc4 100644
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
2.43.0


