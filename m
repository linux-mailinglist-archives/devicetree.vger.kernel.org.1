Return-Path: <devicetree+bounces-228277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB88BEB00C
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44C514EF15D
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 17:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774552FDC59;
	Fri, 17 Oct 2025 17:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oHgOEreW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2722FD7C8
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760720943; cv=none; b=cXpJhNm4ounJRNSYAtQdkpOZwyanFJevnLAw5I18WpW/Wr9oEpn8Q+SOVLQt8RNcU4TH+a/o7We20KKEQQxnueqjcKTfzUlP36nhu0fDFUGjeYUkecSJZ0vPoL4Vbng2lzNzFyMkalHiuBO6h4zKs3Q3Esx+X5xyyC7BLks1AqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760720943; c=relaxed/simple;
	bh=TBtnh6miwgQv8qy4YxihSPZwnvBgSc+1qmJKsqgsLRw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Hh2haveWRtyb5Xf4V8duU2R655keyTuiEr+L2zkIhHq8kifUibub62qOXEJgFiLWs+b57ZsAI/bZAx6IW/KH2MfeeZ4gx6kbt84GReNdh77axahmBp3JGokmeT0t2WVwfn72taExQWG7bePYr5H4TWnH+Nf/Hi7BQ5yYSxGRjCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oHgOEreW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HGDggj006291
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=T/pxneW0GGPQT6fV2Oc8q6
	PoK83hK+J2n9XaZIObRAU=; b=oHgOEreWy24QFTZlUVBlwmW5OvR3dOWoGq6HKh
	293zIN+SJWqTOH2lWYOMklnmI6WCEXhlDc4cjn45WBhMx0woO6FPQfROKrNkbg+H
	HybTX3igTgms2DN/c3pXqKh/KG6TKjDevjYChtsF7fkI/rxgvcJWsDOMhL0Wk0iZ
	JZbENgUGB0W3YE1JgD4r1hGsqWm+q7PBMDfL5HdY/UjZTucmMsIwC27n8WeAmpwb
	vrtHMW4JMknXEsJSD0rMIBdUkllJp957fKMTan4oiBA3HHnzGW9KUbS4l88BmE0g
	DRI3Tlh9T5q141HcMgY+FyTUJ0Lk4m3EZyLNmTyRJUyFTXVw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwye24-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:08:59 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33be4db19cfso1575035a91.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 10:08:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760720939; x=1761325739;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/pxneW0GGPQT6fV2Oc8q6PoK83hK+J2n9XaZIObRAU=;
        b=UqSJmh5nSfE0V4m7dXE0TTa2JjG2/41xXr2YqZDGK7GPU/N8sI5xAr27amBZDWwWSZ
         vBykXJELrUyn8C9mfqcsXCN9Kvg4ZQOkrUs/IkwaDiDsTzMWMmPjMlAUuymLpNC1C5uv
         v9AZ++u9+vr695UYYnN7zVaqfr7tvAAoV6L8aM9S57VeGhvBlBEpJDSDS4WiQcGV0avU
         WmqJas64w/6/HOxDZs6aLhu0Y854CDNmelLcuyXIxfKtSiY2qqTjTZXeanukp+bTsFpe
         GhY8mULdmZMIBGiyvvR2a41TaRG8PgTv6k8lIKTetO3fTKNDjkntIj5UdIdenmFSJZj6
         yl/g==
X-Forwarded-Encrypted: i=1; AJvYcCVqNVrgfv+Tzv9TfX8lkpNOh80RF/Rr4y2mPerpaZg3CqadEpVJduBuqO2XBkp8qDGe4DvtSEHbG4V0@vger.kernel.org
X-Gm-Message-State: AOJu0YxK1gMyjAV+k2MnjIYZML3OWKefSOXbigRoAMw0fWD5EB1ei8GU
	imFut4F1q9Pv2fsC614656THMDoUwYI6gE60JeQeaA4LNnp7Kux1pV8ABUsPSxmAnHZbq1SRF3F
	xw5bozZ1x6CEVWzBj/xduJHt7M86eCLF+NC/a4xZtmV8hnz5/L47tUEHBUsYrcqj4
X-Gm-Gg: ASbGnctbiCwH5ZCcr1hKkXTdN3YI5A+7CsvV4eOcF2DnG5Yei0LGRP/oBnmOqULsOgM
	8lkQFqVaScD++NZMHDLU+WyqoGJdyaJgClup0N4uBttL16BFwLM+6v2rcZLODVAr2rM02k0BDMg
	Ymb4zrkyeFuo5uSj5+QWdDZOhxAKr14CMy23uDMV9MLIcqe4ZOCRk/iR2gGR1qqM+aDvxy/Gb+8
	xlAJWHosvIJPLEgvodE7o76jicqEoZDZn6RORvSF9wFVGZDFDCxFeInUz2k0EjzswAgAgfjismx
	MYsETehNHNC6DuVJi/S1IdjV5uitpHdeHZIUrMhgsv9P+7UWWGum+1wahzmQeCKcjzJdseUdqug
	Bl0t22WNlGlVJX+aUm7law7M=
X-Received: by 2002:a17:902:d4c4:b0:26e:7468:8a99 with SMTP id d9443c01a7336-290ca121e99mr59640175ad.36.1760720938717;
        Fri, 17 Oct 2025 10:08:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+KFNhG5PcZbke3N7Al16y0Yp79mNDUlOZzFtifVQr0J9r+kCgoWT/WU7gFhlnqZFx5kLQEw==
X-Received: by 2002:a17:902:d4c4:b0:26e:7468:8a99 with SMTP id d9443c01a7336-290ca121e99mr59639625ad.36.1760720938250;
        Fri, 17 Oct 2025 10:08:58 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471febc6sm173625ad.86.2025.10.17.10.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 10:08:57 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH 0/6] Support for Adreno 612 GPU - Respin
Date: Fri, 17 Oct 2025 22:38:28 +0530
Message-Id: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAx48mgC/yWMQQqDMBBFrxJm3SlJaES9SnFhktHOwqgZlYJ49
 4a6+rwP750glJkEWnVCpoOF51TAPBSET59GQo6FwWrrjDYO1yBVGVk4oUWKL+d1JN80NRRnyTT
 w9997dzdnWveS3e4TfC+EYZ4m3lp1VE9TYw4Guuv6AffKjguMAAAA
X-Change-ID: 20251015-qcs615-spin-2-ed45b0deb998
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Qingqing Zhou <quic_qqzhou@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760720932; l=3877;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=TBtnh6miwgQv8qy4YxihSPZwnvBgSc+1qmJKsqgsLRw=;
 b=4vlqn1FI+5GLuRp7hEPEMU6tpBGe/cYZpbh7e15CysO9nwiTDdXKs7XfOcCbNDUQ9lpt5zfyz
 vOTIQvH0kErDs3BQI8ITy1aMbf68szIQY7oWYSlrtjxsDwvqSv8bPxn
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX+sH5k0S8GSLb
 isSORHmsL1yqIlHzWqit1NU7I01NJ8j2v07qgDohtIedup7CNgjotwBbuSAR/bmnMOstwcoYmKq
 muQl4lzySZTpx50Drx6qN69RrN9wIeXZGDFgOSBtrHFjgVmyD/QLjx5GeyDf50w096yVfaYzYIq
 MkEgqLV1FGgukwy6V0RtAPEhhNDzyK7qBgzLEEQluTh/DdWuUwjGGrV4B3ekWBHJ55gYuMnzUnn
 bZkER9+NZhA3VL1tx8l7OUJqLPzQYqjlFPjQ9BGzLRLAa4kj8qxzwzumDHIyasS7XLjNtzAH52m
 EGsoRTuNGENEBjbazqWj8T8fSV/q447jJLai2890F6Af4QvpRDUCyUQIBngbH4MzMxjkB6cX8xv
 nAovQ9/zVQLJHPSz8BZgNWq0I5wnAA==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68f2782b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=tVI0ZWmoAAAA:8
 a=pGLkceISAAAA:8 a=QyXUC8HyAAAA:8 a=e5mUnYsNAAAA:8 a=vemyJuc05ARF21wryp8A:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
 a=-BPWgnxRz2uhmvdm1NTO:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: Hc4nkLel7U4Afw6DjBApYp8ymtcXH02x
X-Proofpoint-ORIG-GUID: Hc4nkLel7U4Afw6DjBApYp8ymtcXH02x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

This is a respin of an old series [1] that aimed to add support for
Adreno 612 GPU found in SM6150/QCS615 chipsets. In this version, we
have consolidated the previously separate series for DT and driver
support, along with some significant rework.

Regarding A612 GPU, it falls under ADRENO_6XX_GEN1 family and is a cut
down version of A615 GPU. A612 has a new IP called Reduced Graphics
Management Unit or RGMU, a small state machine which helps to toggle
GX GDSC (connected to CX rail) to implement the IFPC feature. Unlike a
full-fledged GMU, the RGMU does not support features such as clock
control, resource voting via RPMh, HFI etc. Therefore, we require linux
clock driver support similar to gmu-wrapper implementations to control
gpu core clock and GX GDSC.

In this series, the description of RGMU hardware in devicetree is more
complete than in previous version. However, the RGMU core is not
initialized from the driver as there is currently no need for it. We do
perform a dummy load of RGMU firmware (now available in linux-firmware)
to ensure that enabling RGMU core in the future won't break backward
compatibility for users.

Due to significant changes compared to the old series, all R-b tags have
been dropped. Please review with fresh eyes.

Last 3 patches are for Bjorn and the rest are for Rob Clark for pick up.

[1] Driver: https://lore.kernel.org/lkml/20241213-a612-gpu-support-v3-1-0e9b25570a69@quicinc.com/
    Devicetree: https://lore.kernel.org/lkml/fu4rayftf3i4arf6l6bzqyzsctomglhpiniljkeuj74ftvzlpo@vklca2giwjlw/

To: Rob Clark <robin.clark@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Dmitry Baryshkov <lumag@kernel.org>
To: Abhinav Kumar <abhinav.kumar@linux.dev>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
To: Marijn Suijten <marijn.suijten@somainline.org>
To: David Airlie <airlied@gmail.com>
To: Simona Vetter <simona@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Akhil P Oommen (2):
      dt-bindings: display/msm: gpu: Document A612 GPU
      dt-bindings: display/msm/gmu: Document A612 RGMU

Jie Zhang (3):
      drm/msm/a6xx: Add support for Adreno 612
      arm64: dts: qcom: qcs615: Add gpu and rgmu nodes
      arm64: dts: qcom: qcs615-ride: Enable Adreno 612 GPU

Qingqing Zhou (1):
      arm64: dts: qcom: qcs615: add the GPU SMMU node

 .../devicetree/bindings/display/msm/gmu.yaml       |  98 +++++++++++---
 .../devicetree/bindings/display/msm/gpu.yaml       |  31 ++++-
 arch/arm64/boot/dts/qcom/qcs615-ride.dts           |   8 ++
 arch/arm64/boot/dts/qcom/sm6150.dtsi               | 139 ++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c          |  16 +++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c              |  87 ++++++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c              | 143 ++++++++++++++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h              |   1 +
 drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c        |   3 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.c            |   1 +
 drivers/gpu/drm/msm/adreno/adreno_gpu.h            |  16 ++-
 11 files changed, 511 insertions(+), 32 deletions(-)
---
base-commit: cb6649f6217c0331b885cf787f1d175963e2a1d2
change-id: 20251015-qcs615-spin-2-ed45b0deb998

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


