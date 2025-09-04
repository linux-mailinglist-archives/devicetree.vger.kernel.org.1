Return-Path: <devicetree+bounces-212579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AFBB433C6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:24:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9608C168A8E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995EF29C343;
	Thu,  4 Sep 2025 07:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fLEzabAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C1C29BDA0
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 07:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756970625; cv=none; b=XtP2kkRp1LJ5h5aSw/6T7+medP5absoAW6c/0/m8d2DokaNTlYl+UNp22/SmTEcEDr6GcD94mEVIZrXMUfMCVTTlVqrc/Y3DRzg7bGUMAj4njkClpk+B/eK2tVwNe16SugKsSknstYpl86rqQXvXiIekwrAP0uNIXLemniGMrbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756970625; c=relaxed/simple;
	bh=milK9U8X8xrrjEMe2lOr3TfqSKSar/o8RKtRJSJqJCw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KpeP/3nqtnfZ9wY1W4Zh9yzKN6Q5Faz2JrBmYoXmoSI5XYHezLyhmsJUcOdAU4jf0u/jRktD02/lTcmDvYGaAGRUDSs+DUTFe8jXBaiQIKmf/+nCxN5nYJr1ufKf/dyq3n5B+YQtd1jjhtEX3EGOSbAa9x+Bc9dmAf6ysclCkYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fLEzabAl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841IbuL008926
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 07:23:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=raBDu7BvR2OZHcdaAjSN1n
	s2iHUt5nIlVnCr2GasZ4o=; b=fLEzabAlOJmfCuYTC0Y5LyX5xrMynqqeu1ve2T
	q8d6vpb2wmD0AtnvP3P2xkOPdgXMNPciRDZTNkGoixsfq7kMMJA8kfxRQ+Z3YhDe
	IIXQfEwGBbUoXnTfI3Fut0SzusKvGClnerOS7RQCH5PoNEYR/zM5qV3qs1krZBuY
	FESc7ynuFNJ5POSl8fssJ6RSQ9WYD9jh8qlnOu3yUtG3SWTXPx3VBpCFs5TRRcRP
	5XA+fLAN4R7l9oLk2HzmbmWC5jMd9SEHoBzaZsuZ0TshTxZXWD9iFQanLpW/y9Nf
	qy/vuu0rhZi/4Lk1SnVRnUuLCpcna3IvkAINhv9/+CoJRl4Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyagb5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:23:42 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32b51b26802so636477a91.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:23:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756970621; x=1757575421;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raBDu7BvR2OZHcdaAjSN1ns2iHUt5nIlVnCr2GasZ4o=;
        b=HasP2olOuOUgpI54JBQx4X+neqgQXOOrD4917dHBx0Mj6+GC0bIlbSso47fDGAUAL+
         E/TVAR1qQdGeqkgkuD8u8QGLgq1IDpH2w002cyqqW+n89vNaNjIWkvOb9GNaNHoKE4P1
         uVOLsidWJdW19mFbHuqWNAMUcxev2gbXPUl5fq0do+4TvgFSDgN2gNO7UTXcsohR1Nrg
         ffUvwkMt4BNRkb44LUX8ftbvgvWK4cMSn60RbodL650yGVBVPzVIl+14GwsXFldv90v8
         1L1sqviFwLPjNaAeMs+NWTWNMDkrH21D+z+4OgyxbMy0EROiUUicyTVQVZ4llfAK8fTX
         uyUg==
X-Forwarded-Encrypted: i=1; AJvYcCX1UVuwvps0kp4t1Dc7YhPEatJ7hKQXZwmnL/MfPmYIB7iaLA/hcIQ2nSmtg9p5qYjq0Y0URYJR0H+h@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwo9vLjVNcjVVbYfIkVqiS3rzwCzmnIdeXfnyaSCWaQbPW5LZu
	hCDSdWYDjzicFBKxSJ0rJ1e47CZ04noG+J95yLWubRGZe8wyzELM3N8O3R4M447EE1NB+TITbn2
	Ny4G/O9IGe43fKaZKNL0TL0wiLjVt8SC2zbzqF6GMxuzoN81hmMNTDH98DdDPF9EL
X-Gm-Gg: ASbGncubd5jNO+SMUYr8Jl46FEhpilwcFPu+N2R2cAj527sv2VizvngefD/a4Gcz8n1
	O4sZ2sqLsAKu+3DF0SfSl6EDvxRGAv1uqoHOPNdDFLstcufchAJ5mAeXWuwgMrFaXdYAU497JxF
	SC/1YFV91uLs458F1wV2prJrHG2VJp9gXv3TtbnHTQPJn1silDbZM8oo1fEZfOH846Yv4tcqg7m
	+avJyUZgFEtXIjng+RaYBP20Qkjg8m0emZZeD74E7YYemJzUUZnp/otZwX58YlQEWf5yn2vKWxP
	rbzbMd8r2euJX+y44VWSMPNCQ/X4uvE348w+67APXB72XwwZrQjMf8hiRWgrDO4IiwRx1zE=
X-Received: by 2002:a17:90b:2ec7:b0:327:e59d:2cc2 with SMTP id 98e67ed59e1d1-32815436083mr25797422a91.10.1756970620541;
        Thu, 04 Sep 2025 00:23:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvOA18UOO5fj/pE/AR9/3wW1Txw51n6a3eh4wNlsK9g6AtfEPiqzUPTU9ReL1nPmXEWJKuHw==
X-Received: by 2002:a17:90b:2ec7:b0:327:e59d:2cc2 with SMTP id 98e67ed59e1d1-32815436083mr25797373a91.10.1756970619889;
        Thu, 04 Sep 2025 00:23:39 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77243ffcebasm14656452b3a.51.2025.09.04.00.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 00:23:39 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v11 0/6] Display enablement changes for Qualcomm QCS8300
 platform
Date: Thu, 04 Sep 2025 15:22:35 +0800
Message-Id: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEg+uWgC/3XQ22rDMAwG4FcJvp6LbCexXcboe4wRfJA7w5K0c
 RpWSt99Tjq2rl1vDBL4k/SfSMIhYiLr4kQGnGKKfZcLxp4K4t5Nt0UafW4QDrwCxRTdu6QEQNP
 6lKgRtQjgwRqwJH/ZDRji5+K9vl3qAfeHzI6XJmkxJbOo6+J5QTUI6ndNm8bGxs7HbpvopChQW
 fE6gGAMjdn0Ka32B/Ph+rZd5edlHnePybya5JJXK1YKIWqgjOb5rjn23bbtD5u5iJ37IaxJSGc
 0jutCGKfq0nGvrVU1KEQualTahqpmirGaCWODQzLf9h7T2A/HJbpJLsd9h6T/hjTJfEyppawwM
 FGG8u6YxZvUlcHZjTEHgtqiqoQWKugHhr42qhtDz4b1hnlU4Aw8MBj8IhpuF2GQFSWdsRJLVcr
 /Njmfz1+OxKpzWgIAAA==
X-Change-ID: 20250818-qcs8300_mdss-a363f0d0ba0b
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756970610; l=6146;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=milK9U8X8xrrjEMe2lOr3TfqSKSar/o8RKtRJSJqJCw=;
 b=wpfXD9XenxF0SDhERm5k0zhm8+8q5Fc9O0XOdpWGX12sryqo5atdgX7NgQ76eBjvWSyO+8R4G
 vHKUcVKAHeqBa5IrKVeu0aHYzx/qIEBgvGgmcgaeArGhmjg4wRDjz9+
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b93e7e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=kVosLF-rx8oHYmL-QpgA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: vXPwagG2w4rXlOYn57Q78L9oro6ET6Vl
X-Proofpoint-ORIG-GUID: vXPwagG2w4rXlOYn57Q78L9oro6ET6Vl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX5qz9nNbTkHcZ
 JixjZZXdSmg9CZttPJfEVblp8tsVhTDe8E5MPDZJggz+Y5KEIC+dzAM0craiuz9l1Mk+VfSqjj6
 7I74jEhYz3QU0Y3tb3g26QezB4cucmBs8OaHVwvw+LWHhy5ShxL797BMDYgtVj6vSInODuOK510
 XQPbAMB3VrdBL6AxdOGQvomDnHcIyPKGo+tI6b4FmT/z7Z7/3A/EQaPCD3miy2Nacb2STIWrC67
 I1sk975/QHIKOXRGqaJ0b+VBWj+ItRsZBx3ng9IFua1wIC45BhTCKxc0nquQ9hNRlCDvKN9sbUC
 F/jJtsgEXMAiV0H7wbJkDD1qWMbI0Iy6Zch1Kpu6KTHL1OR1x1ZidxtEbLPTR63ztlK2BWjgY8N
 zM0PX+ky
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

This series introduces support to enable the Mobile Display Subsystem (MDSS)
, Display Processing Unit (DPU), DisplayPort controller for the Qualcomm
QCS8300 target. It includes the addition of the hardware catalog, compatible
string, and their YAML bindings.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v11: Fixed review comments from Dmitry.
- Rebase to MST bindings V8.
- Update the clocks-name for QCS8300 in dp-controller.
- Link to v10: https://lore.kernel.org/r/20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com

Changes in v10:
- Rebase to MST bindings V7.
- Update the P2/P3/MST2LINK/MST3LINK regions in MDSS yaml.
- Link to v9: https://lore.kernel.org/r/20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com

Changes in v9: Fixed review comments from Dmitry.
- Updated the description of dp-controller DT binding.
- Add new clause only work for QCS8300(one DP controller with 4 streams).
- Link to v8: https://lore.kernel.org/r/20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com

Changes in v8: Fixed review comments from Krzysztof, Dmitry.
- Fixed incorrect description for dp-controller in driver/dt-binding.[Krzysztof][Dmitry]
- Fixed incorrect description for ubwc change.[Dmitry]
- Link to v7: https://lore.kernel.org/r/20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com

Changes in v7: Fixed review comments from Dmitry.
- Rebase to next-20250818 and 4 pixel stream series V6.
- Add more description for the dp-controller dt-bingding change.[Dmitry]
- Reorder the MDSS change and UBWC change.[Dmitry]
- Switch to the OSS email.
- Link to v6: https://lore.kernel.org/r/20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com

Changes in v6: Fixed review comments from Konrad, Dmitry.
- Rewrite commit msg in dp-controller dt-binding change.[Dmitry]
- Optimize the description in MDSS dt-binding.[Dmitry]
- Pass the sc8280xp_data as fallback in the UBWC change.[Konrad]
- Add the DP controller driver change.
- Link to v5: https://lore.kernel.org/r/20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com

Changes in v5:Fixed review comments from Krzysztof, Dmitry.
- Rebase to next-20250717.
- Change DP compatible to qcs8300-dp due to add 4 streams support.
- Add QCS8300 UBWC config change due to rebase.
- Add 4 streams clk and phy in the mdss yaml.
- Link to v4: https://lore.kernel.org/r/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com

Changes in v4:Fixed review comments from Krzysztof, Dmitry.
- Use the common style for the dt-bindings commits.[Dmitry]
- Update the commits msg for the mdss binding patch, explain why they
  reuse different platform drivers.[Krzysztof]
- Link to v3: https://lore.kernel.org/r/20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com

Changes in v3:Fixed review comments from Krzysztof, Dmitry.
- Fix the missing space issue in commit message.[Krzysztof]
- Separate the patch for the phy from this series.[Dmitry]
- Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
- Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com

Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
- Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
- Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
- Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
- Correct formatting errors and remove unnecessary status in MDSS
  bindings.[Krzysztof]
- Add the the necessary information in MDSS changes commit msg.[Dmitry]
- Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
  20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
- Package the DisplayPort controller and eDP PHY bindings document to
  this patch series.
- Collecting MDSS changes reviewd-by Dmitry.
- Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
- Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
- Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
---
This series depend on 4 pixel streams dt-binding series:
https://lore.kernel.org/all/20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com/

and separate eDP PHY binding:
https://lore.kernel.org/all/20250730072725.1433360-1-quic_yongmou@quicinc.com/

---
Yongxing Mou (6):
      dt-bindings: display/msm: Document the DPU for QCS8300
      dt-bindings: display/msm: dp-controller: document QCS8300 compatible
      dt-bindings: display/msm: Document MDSS on QCS8300
      soc: qcom: ubwc: Add QCS8300 UBWC cfg
      drm/msm: mdss: Add QCS8300 support
      drm/msm/dp: Add DisplayPort controller for QCS8300

 .../bindings/display/msm/dp-controller.yaml        |  22 ++
 .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 286 +++++++++++++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  15 +-
 drivers/gpu/drm/msm/dp/dp_display.c                |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 drivers/soc/qcom/ubwc_config.c                     |   1 +
 6 files changed, 321 insertions(+), 5 deletions(-)
---
base-commit: 3ac864c2d9bb8608ee236e89bf561811613abfce
change-id: 20250818-qcs8300_mdss-a363f0d0ba0b
prerequisite-message-id: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
prerequisite-patch-id: ffeeb0739a4b3d310912f4bb6c0bd17802818879
prerequisite-patch-id: cdc3f4515ab23a8b2ce719bbdbcb56043803d03f
prerequisite-patch-id: 048b11765f49af4a728db1525fef1eb8ad48bf88
prerequisite-patch-id: f0f92109d1bfffa6a1142f2aaecbd72a29b858c0
prerequisite-patch-id: a8185cf3ddd85b9058691500b8dc0c57c8226e97
prerequisite-patch-id: a389a2e4eca44bf62bb2c861c96596368be7a021
prerequisite-patch-id: 09ec7f51de0a65c68c2c781750177017f32747ba
prerequisite-patch-id: f76ab0ae189df14acc851fa52f8f8e8faed9a505
prerequisite-patch-id: 983fc8a7bea459505c5b27db1a1ef7581936555c
prerequisite-message-id: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
prerequisite-patch-id: 2ea89bba3c9c6ba37250ebd947c1d4acedc78a5d

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


