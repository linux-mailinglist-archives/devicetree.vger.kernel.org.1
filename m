Return-Path: <devicetree+bounces-206074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 269E2B2B7A0
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:35:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 813423B61B7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512C32376E1;
	Tue, 19 Aug 2025 03:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CGwL40L6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973B31D63EF
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574440; cv=none; b=knFityIGvDUh0567SWvLOVT8t7VwPbyFueck856yb9uReBBbEM7kaDf6ChnlXyo0x8DwuP8kqmoYl7o/JsnRJiODtuurSeJfjDI0t/3fOuARCEMxYT1Vuderh1odqpIfnXsbOvbVFkXV9eHmv27QGiObx7x0yVkjPq+10aLBwgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574440; c=relaxed/simple;
	bh=dVyBNXGz5ma3x0LUn2EkFXAjKM3emel65zhTYxIPsTY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=O4Jx42/cbWUoofBBhrn90sqks5nKNd9vQg+QvVh9KNSkGa+p85NMrdOkLLVjvylOiiej6aRr/pmZ/WBbh8h5iYozeH4p0OU31ilOzJ63PCpiEFsLvwv21TAe4kmEtRf1EXdLg6zM8qhd6rJdLdPk5n2wExR1l/EAQYV7N/sjqFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CGwL40L6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J2ZZ16028594
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:33:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ENUwjWediX0THdtA40OPB/
	h6B8YY9WYqTFCdS0y38fI=; b=CGwL40L62zj7GNu2jTStu3ytqsnU9cu1ylemt6
	1RclrS+d67M0thflp1mT9mhPu+OGqObxzyBpGSd849HSKjN16Sq/oBGE4BnSp/+J
	/9MnWUdzin2PIJw7WLhxOkre2ltKUHPfoe0g5qjzNhonJ+XaYBvJB0M2DryihfBk
	PfqqPTK825yQSf3lfYPPMg7+c2a/l/0UeABPaRcdsuGvjiCPiX2OcDhjPq05iDr6
	ot78nOdW3AfTfxtMzCpxZ1Kb1ZJAs5G9yr7w6p4Xueq0IME7LvxcqWdCLQ0LAhrn
	h0bgW0co5ktpl6uHxmHJeGrUhnfMbuyrdmzhIQNiWVix8RtQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk5mexgh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:33:57 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2445806eab4so49984205ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755574435; x=1756179235;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ENUwjWediX0THdtA40OPB/h6B8YY9WYqTFCdS0y38fI=;
        b=oFSsfWUm8CR95eJXh+frm50kb2ELyWWZskNV8Ekp1H35AZC9bJOvujiz6hM5kCDhkl
         aIjQPsxGdAGj2ay9sALowCx9+C4dWJReTZjUthpNchH818szakqv5l77OCIp8nJRXObF
         lq1tAMr6Garzpoc0LEIQL++thNlrr+qsnrcf60h/lxe8heM1OF5vaNQzUgN+t5pGxemM
         i4Eyg2qzPTK9ghsEUUbwSIZbjXXVXvmzkW1Gq1AUYSrmyXciJC5ErsDHyi74gxRiL9jO
         3fIflPHdEp8nbIopzy2xsqYPep3UjcxNRzfoJ9kcVkw9PSc6QTl0GfdIVnF9V8hzuTsM
         UVXg==
X-Forwarded-Encrypted: i=1; AJvYcCUB7HB/Taplz6PktE0RlHsrV3xEsDVgvuWmjsfVh+clLCQ3HojZNGbWVCkZVCeT+6UvI96SdI3vtswj@vger.kernel.org
X-Gm-Message-State: AOJu0YxwKPu+GcZbpivJ2tDo7UUSlM1cfcQW9eud0feqXjUbwr9jVbae
	rO8nnNdGoRsLDMdeM12pAHRS1QTgzX/YQdf0gOl84R00mMtfPexrjKuMRM4DwPRD8qKHUZEksSQ
	fJ7f+NvOg/+zQm4+8JAwgVyMRTvg+XWKG4f5Tz5TvX8Vy4fzxc7RDGZb38bG8SEjU
X-Gm-Gg: ASbGncsFHGvTfeh0zkq5+Y8ArN/gRXjal3hmAZsqraRjVmVfcJkuW5FCGndbVasaZh+
	K2zlPPCdM9ltmPVmpkz5C0qcQP7YIHb8D93J7GdeYMeoEw1xKtg5I8xM16DuV5fK3WmQe5ePqL6
	IXooBxDvbFX+1RkNkUHDHVe5OM1gg5b3Oyd0bMipNI/YwWjaW23+etHNQZT+wm2ts7mRVNQgJdQ
	vhjmEaupeIdoNH5r3lmT0bQ/Ge8gtLvVoypIBYchWg3vzGoTDDv1RRVfOc1YcSNdXDWHHrKmNbz
	jLiPDU+Fa1zqpXNaIxC8R27J+wGdELM1it4ZpZKSeTgGeMnnClKhRjAEw3Dje4Dl+tNqe8c=
X-Received: by 2002:a17:903:2446:b0:234:986c:66bf with SMTP id d9443c01a7336-245e02ba933mr13364345ad.11.1755574434934;
        Mon, 18 Aug 2025 20:33:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHss6c8onEoG6c911yMQzA2sYFqZ4ZMtHctzk2SNONn9jf/tAsbViaKRwP7SeFk8XYsBbF6zQ==
X-Received: by 2002:a17:903:2446:b0:234:986c:66bf with SMTP id d9443c01a7336-245e02ba933mr13363975ad.11.1755574434385;
        Mon, 18 Aug 2025 20:33:54 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f55esm94486325ad.82.2025.08.18.20.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:33:54 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v7 0/6] Display enablement changes for Qualcomm QCS8300
 platform
Date: Tue, 19 Aug 2025 11:33:27 +0800
Message-Id: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI3wo2gC/2WO3WrDMAxGXyX4eg6yncRpGKPvMUrwj5IZZqeJk
 tJS+u5z2rGb6UJwPtD5dGeES0BiXXFnC14ChSll0G8Fc18mjciDz8wkyBpa0fLZUasA+uiJuFG
 NGsCDNWBZPjkvOITrU/d5evGC85at6ytkEYnM09oV77/SmvtzH2ntbUg+pJH4peHAUYva5qlV2
 xwnonLezLebYizz+tjr/st0fk1LLetSVEqpBrjgud/1tymNcdqOO4Tk/hTWEPJdGtauAFkhHLC
 qKuulhcYgHrwY1IDaKqGcNtIPwlp2ejx+AFalP806AQAA
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755574426; l=4914;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=dVyBNXGz5ma3x0LUn2EkFXAjKM3emel65zhTYxIPsTY=;
 b=f2dkyFEWMQNkJJzFoYA+d3EhrNPohe3TcMjFLx7zGY61oOt2zLUilCNWQGrSUdIahBi/CC7yg
 zGx6q8Ie9XZAkryvRVWLqr7rnfdHLMAqpGITYishRnsUe+CC2Vnp61L
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=Sdn3duRu c=1 sm=1 tr=0 ts=68a3f0a5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=iD6vXzWbp0dc2yQZ6nwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MfOS8_ycZsCquPRR8eEXxyjCSUAN6fHm
X-Proofpoint-GUID: MfOS8_ycZsCquPRR8eEXxyjCSUAN6fHm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0MiBTYWx0ZWRfX8/0uDJEoBxU2
 /mNKUivWaA6InmVQWqWnuTp1BMc1IGYvO/TyjaLSlPM6tIJ4KRiwlmsTwoNm4EEln7yfWzRypB3
 fAMB92YsbCecLQ5vEqDx8Z+6xIRIYeRXdB99+kOBTeBuKXpgnECxCT73DZ6JEslcprZ7KVCRtde
 ct0A9B9AKauPKPlxrCGlIpZTLpSwg2YsLusXmy/nNsDVdJqm93HLrN0l8/o/8N7gq2MzjUG9JUN
 AvAWWuoaSeHUBZ/ar6bjaMMef+QjfgRDM+MpPEVZglsX+YNqmBrfdlYz/tGrsl6oKG126hpk+88
 y7qkcjTmguG31JBWYI8w2nXfFaWKIeNxkCGOfmAPOSUEqDRrwKIpua8iy/n+VJxtQ1+jtbNkZ9d
 4rymBBF/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1011 suspectscore=0 priorityscore=1501 spamscore=0
 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160042

This series introduces support to enable the Mobile Display Subsystem (MDSS)
, Display Processing Unit (DPU), DisplayPort controller for the Qualcomm
QCS8300 target. It includes the addition of the hardware catalog, compatible
string, and their YAML bindings.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
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
https://lore.kernel.org/all/20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com/

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

 .../bindings/display/msm/dp-controller.yaml        |   5 +-
 .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 282 +++++++++++++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  15 +-
 drivers/gpu/drm/msm/dp/dp_display.c                |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 drivers/soc/qcom/ubwc_config.c                     |   1 +
 6 files changed, 299 insertions(+), 6 deletions(-)
---
base-commit: 024e09e444bd2b06aee9d1f3fe7b313c7a2df1bb
change-id: 20250818-qcs8300_mdss-a363f0d0ba0b
prerequisite-message-id: <20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com>
prerequisite-patch-id: ffeeb0739a4b3d310912f4bb6c0bd17802818879
prerequisite-patch-id: f0f92109d1bfffa6a1142f2aaecbd72a29b858c0
prerequisite-patch-id: 9cabb6be69b17e8580a2cffc7aa2709106cc1adf
prerequisite-patch-id: a389a2e4eca44bf62bb2c861c96596368be7a021
prerequisite-patch-id: 4f02ab9314f95984ab7dc9b852ba4d6c676746a7
prerequisite-patch-id: 62d643df7c88d8db2279def1e4b63a605e9145c0
prerequisite-message-id: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
prerequisite-patch-id: 2ea89bba3c9c6ba37250ebd947c1d4acedc78a5d

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


