Return-Path: <devicetree+bounces-198476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88571B0D2C8
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FC323B4BC8
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA0482BE64A;
	Tue, 22 Jul 2025 07:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p2gTVgHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674AE28B511
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753168948; cv=none; b=IigrHqz6eI/9jwID/8yqCgWci6vULhgmZ7DL24Sa03Vhne6Mt5uvLIGCa1Ty+cBjOsOQIEg8/E4WcFUetEEbgl9Rk6Ykf8SkEV+6wFVeqHAbBc17CVomvzotPsp1wUDY3BD9m41sh1cUrJZxxakZ0ra9+oOTHJc8roC2atNLJ/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753168948; c=relaxed/simple;
	bh=j6byM6mQFWNoIMiAy5TxrSVRDC8viNz/BdGaO3ECzk0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kQvgw143Ftuj+/A5sXjHgn6+2gxw3dofWbFnr2kX6MGVOW/Gp7/hMo3IbIIVUrmslN3aklGgTT/jgEgJQj9kuRJdMD/PiAvOQelpFbyl+ja/BIgWTuvP+pXtxDzMGCsEqt7uESUaYnvMiFpTR0c/h9xJxNh2EzZVJuLeBYEe4Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p2gTVgHJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7I2lu010847
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=gpJoZHcyQpYbDfacgmuG1Z
	OCeDG5rolbgOKq0QUy07I=; b=p2gTVgHJXRjDWGfJx3RwFXI6wF4ThOqD69ykb3
	me0obnJUeqo29BRQ4nWhkcBV4lbPuCq6MXqvsWdc2iWf5a3GYUi2YhS03gsf9sbw
	j0pp4i8tlB+EX2pzfsmPuV40ocy/fIO4dZ8rMktttwZE0nHnDBSqt3cUsyw3KQj4
	nMDr9RTgN0AB7zQYAwiGBWXzlAXQUzH0yjstEzNR3Cd5F+4mhD0lZanfqmZoguIt
	9HQJprslWeu0UNFCNsbB375icZMo4/xNW4ROdBQ5bhHf6C10iSCkw3rO1yRUuW9Y
	cm6QodoQFht2qPcXER2SqS120CYLG/VZpBtIqmVqBkNGc8+g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480459pysd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:22:26 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-313f9eb56cdso1548298a91.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:22:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168945; x=1753773745;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gpJoZHcyQpYbDfacgmuG1ZOCeDG5rolbgOKq0QUy07I=;
        b=Zw3q0ANWX8FEgIoofofG5it1/DLpUHEq7lpF0SQ/kw6TbdK/vJ6RAdd38mrBP9VJQj
         BH3Hz3DQKHAa60zopc1bIC+L99PScfXyNwj/YNmZM5PbKXP0vPfrqqOUiMttNBTJOXLh
         uvTBC6+Q1zOpQy1+yZOwJXR0oKSqpgoVQwJYE2UYyPVjB/3UgDLz0g+8/L91Wkqgs7lH
         ryNNO3FxPMkD79CZfXrhfLt0hfv37pupTDZV/H0upSfcGTm/EWnBSQ0lH65ss0XQJA1D
         acSx8eLXSRmBz8ZG1PCjuJDra5hXKO7FcwHO9VrF+BnbQlHBomOF/p/Hht6XhJ9A9kgs
         OqkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqgJm819A1zilyBYSxY0csfH3bOf3qdF8V5wU/FWYfVLueZlEIQnN5MCrMmDy9mfCT5uqFdRy9rK57@vger.kernel.org
X-Gm-Message-State: AOJu0YzQmktdDAEv8uwXtBRJ5hxgbC0pXeJfn9ZGiCBQ2gOXU3xRRc1f
	FpDvoqhGsb2AhO+pvrQUJJ8HjnMKwEPAdApONDOcCOYW4MM/RMX3xkf3Ot9xqnEM1cVowF4lRzQ
	QnTrGXn56Sdm+U7b+kOCWpFQisomawdHgxYWmvs6MHp28E5Uz9B6+PlNOC3V5l6Jn
X-Gm-Gg: ASbGncvh/AbUgEdHmdEFXKnzqbUQ+sa2AiVqkmtZUqnecwGgfi6Ced2+onlpRSlwa1T
	QXBrHFCW7HRdETPkeyEkvGX/4468zlF3Xvy724j76M9ML8hCGby93pB9vylvXPE/rK3+dykFp8D
	iheR/trCdP7Jb9wK/wXbG12+il89ZOBJVmahTVsBI1N1zm4eyZYy8is86La8Ok+E3OGsKSCROsr
	kJRuO6JBxi4TFVeXTJrD1FGwWwuLwP9seGOoeneV78yQsV124gKGxppMLGWkVPfGfRnRI9CiuF6
	LJzfmVfpltXYkM3oucWrmtozsvTj8HjYX9uNu2CemOEcdYhw9+GGO+sqRok9P9FMSEQafoxuqRJ
	/s0azvPU5YglxlvQSnRHEo2bpBr+uYhPkHrwDDP5Jl12nghLU0zwsN8f+
X-Received: by 2002:a17:90b:3f8d:b0:311:c939:c842 with SMTP id 98e67ed59e1d1-31c9e7a4012mr13684955a91.7.1753168945516;
        Tue, 22 Jul 2025 00:22:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNu5XNjC9N7LggT70nJqL7zjLR3AcsqyEnguxqP02Q/pBp2syZy3iYCoyam6QqSrFIAmJ8aA==
X-Received: by 2002:a17:90b:3f8d:b0:311:c939:c842 with SMTP id 98e67ed59e1d1-31c9e7a4012mr13684928a91.7.1753168944987;
        Tue, 22 Jul 2025 00:22:24 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:24 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v2 00/13] Add DisplayPort support for QCS615 platform
Date: Tue, 22 Jul 2025 15:22:01 +0800
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIABo8f2gC/5WNQQ6CMBBFr0K6dkynUBFX3sOwIO0gkwgtLRAJ4
 e4WbuDq5/2f/LeJSIEpike2iUALR3ZDAnXJhOma4U3ANrFQUmlZKoTGWrAc/adZvQsTxNmf2bo
 Ao4k31JC2KWEP1mhDpJXCEkV69IFa/p62V5244zi5sJ7yBY/28BSIqvrLsyBIkFVT5PndVjm1z
 3Fmw4O5GteLet/3H8DNPcjoAAAA
X-Change-ID: 20250721-add-displayport-support-for-qcs615-platform-dc5cee522171
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168936; l=2923;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=j6byM6mQFWNoIMiAy5TxrSVRDC8viNz/BdGaO3ECzk0=;
 b=vnJictkXtk+9QtUeMBGykCyh1QwvmsfqkvGVQTYRgXCIilV2YYr+1MsDMAbpFqSfdeEXR6COw
 bhTEEt+S5EqBB/giQEMmWBmzrA0irPIoMjvRo+qICQxEQedfAsV+Squ
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: yloN2_jXeQCLy1AzrdvCedsJT2_m43ug
X-Authority-Analysis: v=2.4 cv=fdyty1QF c=1 sm=1 tr=0 ts=687f3c32 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=KbB9N7STWnmORTLZSFQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: yloN2_jXeQCLy1AzrdvCedsJT2_m43ug
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfX4AtJf+WOBy8/
 qXZYTWUCJhWZuYTlkAk12z4l8xsspelK8cvPMklIU7/maE7iYJ3KjrIPm4HR2fcH8lWIsfHqk18
 uddxPcPhoSZ0H8ZyRrC09EluMawtictCkqy79D7dZvOqrWP5EiMAV8W92E1l6xkpBpUK6ESpnBM
 eHx70o4cuPI5zV0RmhTDxiYM3/6BAugx2vA0yU3Lgb376YX3Ni502vtAKQgupBcj+5VQr0uOVxW
 XwKng3UprkPlkgjykK73jXARrHSk0Vwsex0wKcLuc5xVTxdXoMnxQG33zx652o7d4iSpFXIc3L6
 pyEIZwm7h2JZtg1anktdxd74TQv9dDOOpkftKrhxM8oisIUOHDyjdKSPJiu8WYQbUyfarEfFpQQ
 QOgw7uSOgY8j7X9jUBy7pLqZUSUMdSkHWqXP47/8JRSmfIIe5csWK4sNFUrT6UChYS9aq3Nc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059

This series aims to extend the USB-C PHY to support DP mode and enable
DisplayPort on the Qualcomm QCS615 platform.

The devicetree modification for DisplayPort on QCS615 will be provided
in a future patch.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
Changes in v2:

- Add new binding qcom,qcs615-qmp-dp-phy.yaml for QCS615 standalone DP [Krzysztof]
- Split DP PHY driver into patches 4-11 by logical chunks [Dmitry][Krzysztof]
- Update DP PHY configuration flow to align with QMP Combo PHY implementation [Dmitry]
- Update all hex values to lowercase [Dmitry]
- Remove redundant comments in DP PHY driver [Krzysztof]
- Remove invalid USBC type define [Dmitry]
- Move lane_map， max_dp_lanes， max_dp_link_rate parsing logic to dp_link [Dmitry]
- Add TCSR-based mutex logic for DP and USB PHY coexistence [Dmitry]
- Drop patches 6–8 and remove related binding properties as rejected upstream
- Link to v1:
  https://lore.kernel.org/all/20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com/
---

---
Xiangxu Yin (13):
      dt-bindings: display/msm: Document DP on QCS615
      dt-bindings: phy: Add binding for QCS615 standalone QMP DP PHY
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support dual TCSR registers
      phy: qcom: qmp-usbc: Rename USB structs and reorganize layout
      phy: qcom: qmp-usbc: Introduce PHY type enum for USB/DP support
      phy: qcom: qmp-usbc: Add DP PHY struct definitions
      phy: qcom: qmp-usbc: Add QCS615 DP PHY configuration and init data
      phy: qcom: qmp-usbc: Implement DP PHY bring-up flow for QCS615
      phy: qcom: qmp-usbc: Wire up DP PHY ops and flow for QCS615
      phy: qcom: qmp-usbc: Track PHYs for standalone DP/USB3.0 handling
      phy: qcom: qmp-usbc: Add QCS615 DP PHY compatible
      drm/msm/dp: Add DisplayPort support for QCS615
      drm/msm/dp: Add support for lane mapping configuration

 .../bindings/display/msm/dp-controller.yaml        |    1 +
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    |   28 +-
 .../bindings/phy/qcom,qcs615-qmp-dp-phy.yaml       |  111 ++
 drivers/gpu/drm/msm/dp/dp_ctrl.c                   |   10 +-
 drivers/gpu/drm/msm/dp/dp_display.c                |    1 +
 drivers/gpu/drm/msm/dp/dp_link.c                   |   71 +
 drivers/gpu/drm/msm/dp/dp_link.h                   |    5 +
 drivers/gpu/drm/msm/dp/dp_panel.c                  |   78 +-
 drivers/gpu/drm/msm/dp/dp_panel.h                  |    3 -
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h         |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1466 +++++++++++++++++---
 11 files changed, 1503 insertions(+), 272 deletions(-)
---
base-commit: d086c886ceb9f59dea6c3a9dae7eb89e780a20c9
change-id: 20250721-add-displayport-support-for-qcs615-platform-dc5cee522171

Best regards,
-- 
Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>


