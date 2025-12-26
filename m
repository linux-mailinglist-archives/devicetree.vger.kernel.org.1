Return-Path: <devicetree+bounces-249771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4226BCDEE27
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09DFB3005B83
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC3B227B95;
	Fri, 26 Dec 2025 18:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QT762RqC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IUAfRWNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A05271456
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773810; cv=none; b=n+lzGQTHIvR4M/USBG+gYWeRJHrtAY2DjJ5tiXKTIqhsHrFuQJUnEBRUUs/08zw75J/kesBLSXbJ6Qhchr9HMWwlEZHdrx9/CKaocfClzk91t3sVnAfMWkzLPgDjuc7l7GFnXHi3oUoE7Z5kSPISmPNU0K2JqMQglhQiJxmX7eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773810; c=relaxed/simple;
	bh=8qviCg3tVu0OI3dD01WjaLx86rinUn0YtzTxpnh3jwY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=F/qBw0xrPMOlvQagmMEprHrPxciG9Tv6n8tZzvGA5nu0QkDopHOo73PQFeBN3dzzeB1Filei3kAmlW/aFLUd43JmgNoZpg9WLWADPRiRahPCpz732h+FCHeWidKr0SXoywMePnzDe61Qc8lDKe0iayjoCyK4AMun4sBEmabAiug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QT762RqC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IUAfRWNZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQGEfec3377092
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lsexRv5oeh3abptMWa+e6/
	J7GN5XUkLyYBJT9ad91TA=; b=QT762RqCtlhfkxcld50j9LC4rr6no3EAvjoDhL
	BMH5xLGCmqy0FCbN+qTytxWlXT/zdeC9/DDiBakJW2lt889+wogbAuZOHm3XPuVA
	quB6BdIVRWzrEcwq597RZjPrh0SKUC/ZwVh2n3b1B94TexNu7fZGeRdasb/7zY0z
	udtce1jRfy20Rn0qIVxWk16siZYu4RKUizCQSE8l9NVVcUU/i0OO0GT5FkIkQvQV
	17KLpENEaOoTajVEFQuZqtPU4J6J9rxSED3+NmCev+xT6Iqs18w4YEczC2uOu+Ii
	dCkbC+du3mZllCTNjYINazdpFzkjZ+aNefEr3DE/d1BPt7Bw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8hwe4u8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:05 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c213419f5so7169267a91.2
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773805; x=1767378605; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lsexRv5oeh3abptMWa+e6/J7GN5XUkLyYBJT9ad91TA=;
        b=IUAfRWNZLl5aGutI8Pk7ADYCqY7AVTp+kx0637TTF1GECGU6Db/rbUMCzDS2j7iHeo
         cf8scRwj+d88zFcbiq3PeIuwqkviUEckikUgOVey5ImCtxc/LI8HtWGhppbzF+V+iLtb
         nipFOeOnibhNWpKve7YdeZxbJ7Crhk0ZwCl4x4DO4so58zaGdkJFaS9eOAHhcNiJT+Cm
         imMeceSJsQXinuhiqpRZfZUjjOUCfDsTlVOAQpyaNoYrHKEO+Cm+gTOSwVaReAPP7tY1
         Zr/B8M1yYY8nUT9LRgTOFnWJtjBoRdLz3S8Ktc3hcljT9gnOogBSpTK4+o1xGkaM8Y4j
         Qm3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773805; x=1767378605;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lsexRv5oeh3abptMWa+e6/J7GN5XUkLyYBJT9ad91TA=;
        b=win10o87D2LFsPDd20nHQidp4xEKets1IpqxGonrXrE0OiVX8n9DN+y8BN1Lj2i3Nr
         0170eAPaF3/IZ/6EYr+tQA0VwAglzk+kEoNqCVerR2W2R+w2JHx+afdCIllF31dSUEck
         P9sngo2r9PrQcVLXWtlIg4bTPhukMkf5XTCuHUUfxKuklesCRChBgSCaEFFokam7/4WF
         XD9U1Qfg/P34OdLexaBJIsaapLonPuoPCUVKVglZlUQNzSYCD2goeuWi4h5/gWU+gB4Y
         bthdMrTGgYY8X1HaBNtWjs37GzwWFR7l/lns2AMi0D9w7qWA3Gw7Jhi2+oFIDOTAZAIm
         HEUw==
X-Forwarded-Encrypted: i=1; AJvYcCUzIqS54IDNWu6nYIzuVQnT6KHdZlDDS8BFXea++rSNnckCu0qmb6JoHqNP73152NhYYzMh3KSjTJfc@vger.kernel.org
X-Gm-Message-State: AOJu0YzF1rp4Jp4pushwhXqkASIgfRXySizdv1kuHue/7TvWVFO+9Sf6
	9174v5PbbUByzpTGtkz2QcaOVWlt8sYRdEHk8LoBC16BAt/Pvk8/IALtnMdIFTmnpK1iFkmRS8+
	YomMB2cPsrBkt6zKVgvms8AYfHBdkZBbodvSprE7fMoN9Nm+lrbanZbS7umeHILbT
X-Gm-Gg: AY/fxX7XoQli7gFF/fMEftx6zAIscc4RI0Tl5zrDwr+qUOuvRrUFudY/zRctGohNV1r
	39+3I2OscSLaUOdcKM5JWh5PjBpFkoVQtdEeF/Ie69xJ6Zh0K5Fa0rswTpMZsx8Jc3Ts7j5BNad
	H9dowTPgfPwuKKE3+nNUqSyeKzKl69bgivPVllcJiAVsiGfN3rQb1Hw3EVCC1KTgqW+mqfeVbsY
	51LVkxI3CEy/veeteCXdcOG9791itfwwlJ7wiZnDtYlE2NZCrZArPj/pr1dpACrj0krlgWuvn5/
	2tvRj3N8RPC33E28oAMRrErvXYTQlsVwH4lvn/rF2tYGhJWr/b+CpcS9wJa0/2sYRuS5UvHG1D2
	R3oaQPSdPh9OJPPPg2LhagRTK098228/T7w==
X-Received: by 2002:a17:90b:2b47:b0:33b:bf8d:6172 with SMTP id 98e67ed59e1d1-34e921ec340mr18266883a91.34.1766773804763;
        Fri, 26 Dec 2025 10:30:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjkMYWlmQ5T0oFHflGVoyOcrDyxQHAWE9NtU1v1SUQAgfmrUWLYWCIerYl6Uz3xkRR2bcnVQ==
X-Received: by 2002:a17:90b:2b47:b0:33b:bf8d:6172 with SMTP id 98e67ed59e1d1-34e921ec340mr18266850a91.34.1766773804228;
        Fri, 26 Dec 2025 10:30:04 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:03 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v5 0/8] Support for Adreno 612 GPU - Respin
Date: Fri, 26 Dec 2025 23:59:33 +0530
Message-Id: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA3UTmkC/3XOzW7DIAwH8FeJOI/IOECSnvoe0w58rkhr0kCKW
 lV599F0UqdsvWD9LftnbiS5GFwiu+pGosshhXEoQbxVxBzU8OlosCUTBBQMmKCTSbKUdAoDReo
 sFxqs033fkbJzis6Hy+q9fzxydNO5sPOjSbRKjprxeAzzrsqyZj2NBsl9+BDSPMbr+pfM1umfs
 +3mbGYUKGilOPcd9CD2Y0r1dFZfd7kuzwpmfCIM/iBYEIW2NdxrL518gTS/EMQt0hSk99xy07V
 eMPsC4U8EgW8RXhAvFIARWsrG/4Msy/INxQt5jq0BAAA=
X-Change-ID: 20251015-qcs615-spin-2-ed45b0deb998
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
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=4424;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=8qviCg3tVu0OI3dD01WjaLx86rinUn0YtzTxpnh3jwY=;
 b=i4sxMnFwHHhJgi+ec1FMO+y/9M+hNkxQGswjg084sBzo4wvHNT6q2ScZF25kAsJ3BS0s8FLct
 tIvGORXqiJqC9il67FQAbr52uS4ZAKauYbo2PoNv5DteMa6Y56H+IRM
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfX3rvVLJJUUvrc
 QGwo0BbR7sVtJiQl3X0Wzs/y/zGiTcN8JpX4ZLtZezmJjU2D6BpuckSe8ioDYOc/Q0Kbr5TzrXC
 9GngC2/hUg/YvqEzLHkNHWyJ4HgggM8zDbPTeuYpkn+ua3BeZ/nlUdlnz3ccnaebzxpGKA+elVg
 auVKxSppQ9szqJh1u5D20IEUXt8wQdJ5hniCxxsCTs43ooJ2M/BAjPPbM/PLFFkup6bnheNhckP
 echvPwCd7mfYlo/0tXHdTYRLyzydkUYU9Ng81JUP+mJcdYCbzW3YODlWrUGM3rS+yfeLKYpukMr
 ZjczSri99EZ/kPIMJV5D9KySdLL3gVoKFfKwZYRccEz+NWedDBuOn97TT7VNun6+REGrwBUJTEs
 NGdxNfqEBRJsw13C/v5CeeDMqRJJSHXddQJ7AePXNPpVzlopBzVnC/0jABju9RhzxcQd0uoUyhE
 4I3iL6SWNk6FlkHVodg==
X-Proofpoint-GUID: 7J1zQWlx1B27dh1VwJB2WVXIWBLIGOYZ
X-Proofpoint-ORIG-GUID: 7J1zQWlx1B27dh1VwJB2WVXIWBLIGOYZ
X-Authority-Analysis: v=2.4 cv=P9c3RyAu c=1 sm=1 tr=0 ts=694ed42d cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=nlYtN0jpdUqXxw8MpYQA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

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

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Changes in v5:
- Rebase on v6.19-rc2
- Make the reg list in A612 GPU's binding doc stricter (Krzysztof)
- Link to v4: https://lore.kernel.org/r/20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com

Changes in v4:
- Rebased on top of next-20251204 tag
- Added a new patch to simplify gpu dt schema (Krzysztof)
- Added a new patch for GPU cooling support (Gaurav)
- Updated the gpu/gmu register range in DT to be more accurate
- Remove 290Mhz corner for GPU as that is not present in downstream
- Link to v3: https://lore.kernel.org/r/20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com

Changes in v3:
- Rebased on top of next-20251121 tag
- Drop a612 driver support patch as it got picked up
- Rename rgmu.yaml -> qcom,adreno-rgmu.yaml (Krzysztof)
- Remove reg-names property for rgmu node (Krzysztof)
- Use 'gmu' instead of 'rgmu' as node name (Krzysztof)
- Describe cx_mem and cx_dgc register ranges (Krzysztof)
- A new patch to retrieve gmu core reg resource by id
- Link to v2: https://lore.kernel.org/r/20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com

Changes in v2:
- Rebased on next-20251105
- Fix hwcg configuration (Dan)
- Reuse a few gmu-wrapper routines (Konrad)
- Split out rgmu dt schema (Krzysztof/Dmitry)
- Fixes for GPU dt binding doc (Krzysztof)
- Removed VDD_CX from rgmu dt node. Will post a separate series to
address the gpucc changes (Konrad)
- Fix the reg range size for adreno smmu node and reorder the properties (Konrad)
- Link to v1: https://lore.kernel.org/r/20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com

---
Akhil P Oommen (3):
      drm/msm/a6xx: Retrieve gmu core range by index
      dt-bindings: display/msm: gpu: Simplify conditional schema logic
      dt-bindings: display/msm: gpu: Document A612 GPU

Gaurav Kohli (1):
      arm64: dts: qcom: talos: Add GPU cooling

Jie Zhang (3):
      dt-bindings: display/msm/rgmu: Document A612 RGMU
      arm64: dts: qcom: talos: Add gpu and rgmu nodes
      arm64: dts: qcom: qcs615-ride: Enable Adreno 612 GPU

Qingqing Zhou (1):
      arm64: dts: qcom: talos: add the GPU SMMU node

 .../devicetree/bindings/display/msm/gpu.yaml       |  89 +++++++++---
 .../bindings/display/msm/qcom,adreno-rgmu.yaml     | 126 +++++++++++++++++
 MAINTAINERS                                        |   1 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts           |   8 ++
 arch/arm64/boot/dts/qcom/talos.dtsi                | 149 +++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c              |  14 +-
 6 files changed, 357 insertions(+), 30 deletions(-)
---
base-commit: 2408853dde584f01950a0f976b743739cce30eca
change-id: 20251015-qcs615-spin-2-ed45b0deb998

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


