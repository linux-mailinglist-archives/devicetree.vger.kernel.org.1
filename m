Return-Path: <devicetree+bounces-252665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9420D01F53
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA8AF30693E5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B4B358D0F;
	Thu,  8 Jan 2026 08:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IYskxefg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fBDeYLjH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2443B357721
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862657; cv=none; b=DRbsfEWIotJbVAi1567r73XHi9zEdhBgXGjkcNSyusufiD2xKNuu6QvLhQjWc4Onn/q9VJjT4KbK8GuaqAr9r6n3N8VyVEri8cFHdM/ExTg0y9O4ZvI2HGPHKxaW65iEJjenLysvMugA354I94NnJ9M6Z2XyL+PPOFyPZdXvRxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862657; c=relaxed/simple;
	bh=CndXCG5a8wBRnV+dH+D95I+BF+zuEB9hnxZSFdu0LhM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=I8PZ39EwL1wkFKdwD5oVgoM4sw55f1RI8N5MOuUT81NHqkaD4MJtvtaa5VJ7KgyUlrVpsoSBDhtaxVJ181wzJbj6/T6YnV+60hht8brIQ0ZG7EQno+CXm6eherfGI2BckiJBw2B8poT1S5iDE/NXAA2mTDl5xwHq11BLCcAx6Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IYskxefg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fBDeYLjH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084iKU63751427
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nhjJWLw/0dTCc3tfX82ZgRJq9vD0BpxCKJY
	dzLZlEnk=; b=IYskxefgt3QRAw3h5dijBTuGfQU6xrIVrgScfONlibyz30vOdJT
	TRlKwyNbA0VyR59BNjHD6yuh3hjKz/2Sj7XVCnw95EGgW0ZIeUqn1h9HbtA4A8ko
	ZBGLdijus7sGxVtiZ5LaaKmb+pSH71mCyIAU4IOmQ8WKM1SALWm3j93nM/gat6Zm
	wwSxifHphvqDc90pMmsNmqOhpw2nQzxGrTrzzrB0e/YTz40su8gMNlUyHPzGJNbP
	qpjFWLcJdmxnyA/nanIAoBaGgYS6xU0Mskh9AyptxX6mWexdC0suxNONoyT2jgf0
	hDDxZ+msI6BGJ14awRdvOlCKlG7KSilLZNg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuxctjfq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:57:26 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaf9e48ecso80431841cf.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862646; x=1768467446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nhjJWLw/0dTCc3tfX82ZgRJq9vD0BpxCKJYdzLZlEnk=;
        b=fBDeYLjHIZZdw2+rf+j6Q4ASPqjy75aORHsuuuLW7yT2sglSP+rjPg36Q6SLjmMNt+
         S+VSfHLPf+o9Ooe/Amlv8QB6pv8UYIT48GVxGguJmkTOli+rts0s0AugtrgYeNP5nzZQ
         sWHLsIGv6sJC0VWH7xx14SbgahuyTYHefpeZ4sZFsezvNsA3vfjiUZlQ5rQFuzRabCvw
         5RhkNnPMiljz5TyhkoMkookwVYkysEeIKvHjrw2Jetzcni7loYrjHAOEJry0s1+HL8r9
         itZUsG6eC9s2JAIA7TDrbW5CED9sZeqZ6hiRoUR5Ulrjbc3KVaDWwHztcyuLzdnW3v1N
         YR9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862646; x=1768467446;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nhjJWLw/0dTCc3tfX82ZgRJq9vD0BpxCKJYdzLZlEnk=;
        b=GLJQTpWmiT1+dBzvqPfvBSpgWC+V7J1pSZ3Lg1jLQS3kVJHWqRUN+odFzqz342l+aN
         r6vDwUsDg8FHu29/kRJKxbcITgXovDL66awgr4j2v9jKcg2srENPs8muRDI+tj/DV9S7
         S01O+DVOlUhQmKydlkvzLFEOVCFpYNTwCj7hHCyxkXLY46WspM96S9mDVX6m00lhnZQK
         Y26M63wSs5LMOGH6+PTYZb9mm/YMj+9DC89+PU3ttS2VZU9YrD8aJitBOWFhMYZcHjWI
         3vs735EwmWxN648V13AOn+dhVw1ZzFqBa4ant0V1pm1UCT5vlNPLwXibLdO5y9vtdrOK
         GUJA==
X-Forwarded-Encrypted: i=1; AJvYcCV2BBAEH9NqRmM/XoGaikq2aYNV4j8z648st7rtrjOuSBRT0FJcr9DLwwxZZc5qQCP/D08VyWEY8wkC@vger.kernel.org
X-Gm-Message-State: AOJu0YyIu9DyL9sFLGA0utmDFUnCsBJBdQiJswCL8KvwILims+1183Qg
	sBRRrexy/eFNpIkeRMtldq31hP6PqlZ7X489fDyfRW33H3OMkmFEDTkukZip2vL2yuqzvu9dDPs
	bNrv4nqQpVybt6MLs/RDJDMgqxL/utb3RwFcZHMUY9TJewh236bsvq+B7h2g4SKrK
X-Gm-Gg: AY/fxX4GJ0Z1NwGKDLTvEWgX/76ZQfDdbwc/49zGVLGr/63TYnCU1av7HlyxNoMG8QJ
	ugFqS2bRuXs6on8SPXCE5Swh5EXSN/k3kJ/PalZ5u7M/YbvcRmZaMp932P5U1fh+upsTxH4R28+
	SdJLfu4wa7JGp8LwVJeLvQ/PAV7gk3PwFdp1TwDEv1A5hBIyPETjYfXGvrqiJo94pnVHmFrR8o/
	SLc0XPPLu0riqrRXI7Zfk6/9ruQbTLUGYNhwFHs5mwBPOLfddFz1EfBhSrVQWOOYa4UTW3zaHDT
	4Y3Y1L/sqJ9K1AKVaa/3vjHDxmbD5QgnbIS//j5agK6b9kYm3rJVFhMykJHmfJ2HCK6EknfKTuN
	65iVuYuHyGfLOSTMMQdSMt7UZttuNp/JiynN8lRbvAQL/mn5bs5E1zuUKBeR2w6r2GjM=
X-Received: by 2002:ac8:7f0a:0:b0:4ec:a568:7b2d with SMTP id d75a77b69052e-4ffb4900996mr79700471cf.34.1767862645639;
        Thu, 08 Jan 2026 00:57:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyRmRDDK3+l294Ljo8xxE2VOV3QjuBD6c9wXCfd+ibx7iZUs2A25kanf0Sz570Uidz1c0qdw==
X-Received: by 2002:ac8:7f0a:0:b0:4ec:a568:7b2d with SMTP id d75a77b69052e-4ffb4900996mr79700331cf.34.1767862645168;
        Thu, 08 Jan 2026 00:57:25 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:57:24 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v5 00/12] drm/msm: Add support for Kaanapali
Date: Thu,  8 Jan 2026 16:56:47 +0800
Message-Id: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfX/cPN0Zhp4HPn
 hbNEw3O98Jo0Mbdjyo0a8+4E0FpAM5iXf3PrZQRJ4hnCDhj0c0tQPyGjD8Tg21S/yPzvVCLB8nv
 Z1KFxtoc0aAs/E3lj47F6IZTWZMJ+vdlCLQLhCr8vXcWukOVoXqPZ67YRMnPo2kmCQgUUKy6kKj
 tZ7oday6Cq9wWadF0RMOGC+6ZWWoiXxEo+AvrxkWuukrk4f3QaXriVd8FR/nKmoe0dHtQM1lVct
 fdz92xM4MjGOUp/xu3KVjT3opTcAYttAcWcjBjJgyTszdi4zW1fpdM3J885vf2lktiqBtf5irxB
 YMllmLEc7UYbZgbygRBC6Bnugt63AfQy7+C69IfDmLgVvUkwR4J7FBQ/FovTjVyDlf8cqI7fQKb
 uf3aQcnXnogRi2jO1pxCOppecqte8nNXVJ3Ybx8rCJdl+k45Kasd4jPqPcaKeb6n+KwVZNu5MjE
 lulOSWcWYTrfMmZNH5Q==
X-Proofpoint-ORIG-GUID: EkzUu_kminATDHCa9uhVQ9X1wBnlEYLc
X-Authority-Analysis: v=2.4 cv=SPdPlevH c=1 sm=1 tr=0 ts=695f7176 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Bo5jAF1uHjWhBEmHg44A:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: EkzUu_kminATDHCa9uhVQ9X1wBnlEYLc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080059

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The Kaanapali MDSS has some differences compared to the SM8750 MDSS:
- DSI PHY/DSI base address have some changes.
- DPU 13.0:
  - SSPP layout has a great change.
  - interrupt INTF layout has some changes.

This patchset contains DSI PHY, DSI Controller, DPU & MDSS bindings
in addition to the driver changes.

We have already tested the display functionality using the Kaanapali-mtp
device on the Kaanapali branch of kernel-qcom repository.
Test command: "modetest -r -v"
kernel-qcom repository: https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/kaanapali

[PATCH v5 05/12] drm/msm/mdss: Add support for Kaanapali
compile depend on qcom-soc tree patch: https://lore.kernel.org/lkml/20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com/

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
Changes in v5:
- move sspp v13 related change from refactor patch to sspp v13 patch
- move sspp ubwc change to dpu_hw_sspp_setup_format
- split wb change into a patch
- Link to v4: https://lore.kernel.org/all/20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com/

Changes in v4:
- fix qcom,kaanapali-mdss.yaml compile error
- reorganize SSPP patch order
- fix Dmitry ohter comment
- rebase on top of msm-next
- Link to v3: https://lore.kernel.org/all/20251215083854.577-1-yuanjie.yang@oss.qualcomm.com/

Changes in v3:
- split SSPP refactor patch
- add devicetree email list
- fix Dmitry comment
- rebase on top of msm-next
- Link to v2: https://lore.kernel.org/all/20251125064758.7207-1-yuanjie.yang@oss.qualcomm.com/

Changes in v2:
- Drop panel patch
- adjust patch order (bindings then drivers)
- add dpu_hw_ssppv13.c to complete kaanapali SSPP function
- fix bindings example dts compile error
- fix other comment
- rebase on top of msm-next
- Link to v1: https://lore.kernel.org/all/20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com/

---
Yuanjie Yang (12):
  dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
  dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
  dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
  dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali
  drm/msm/mdss: Add support for Kaanapali
  drm/msm/dsi/phy: Add support for Kaanapali
  drm/msm/dsi: Add support for Kaanapali
  drm/msm/dpu: Add interrupt registers for DPU 13.0.0
  drm/msm/dpu: Refactor SSPP to compatible DPU 13.0.0
  drm/msm/dpu: Add Kaanapali SSPP sub-block support
  drm/msm/dpu: Add Kaanapali WB support
  drm/msm/dpu: Add support for Kaanapali DPU

 .../display/msm/dsi-controller-main.yaml      |   2 +
 .../bindings/display/msm/dsi-phy-7nm.yaml     |   1 +
 .../display/msm/qcom,kaanapali-mdss.yaml      | 297 +++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml |   1 +
 drivers/gpu/drm/msm/Makefile                  |   1 +
 .../disp/dpu1/catalog/dpu_13_0_kaanapali.h    | 492 ++++++++++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |  41 ++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  15 +
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c |  89 +++-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 124 +++--
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  56 ++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
 drivers/gpu/drm/msm/dsi/dsi_cfg.c             |  13 +
 drivers/gpu/drm/msm/dsi/dsi_cfg.h             |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c         |   2 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h         |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c     |  23 +
 drivers/gpu/drm/msm/msm_mdss.c                |  10 +-
 22 files changed, 1475 insertions(+), 54 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
 create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_13_0_kaanapali.h
 create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c


base-commit: 538113b88e9809ffdf2fbcf1392c510181ac7967
-- 
2.34.1


