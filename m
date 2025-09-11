Return-Path: <devicetree+bounces-216003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ACDB53670
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC3BB1C21863
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3789C343D7E;
	Thu, 11 Sep 2025 14:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i5GLLpNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B2B343205
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602540; cv=none; b=EC+2PIbHV6Ak4WRhKemE4mxiIbz2vYZB9wP6iBx7oE7MbJ6QIlIR6RzW5bkLHoaaKof7WCBLhJuqy093j6lXdUMmjO+OkQuH4BDewmbWvgXGxU5Ca/Kx5nlim/cX0Kd0c+kyephN5bDm3nrsgp/4460KaTvhw84o0f+U5mnJPK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602540; c=relaxed/simple;
	bh=PxQ+Nl+6gXCfV0SnVCZ6IaDcnEi2VND1S9/H0brbNM8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hdWBGOywhLvqGLppSaOU+/PLpX3bR6zHqwDBgIxbF5T5CbAuUNqCfSBzzlSPc9665dHy1dUlo/jz1/Iv9jW9Ry41NR/4GHKAstUJKgcMMdnQk+TeCzOFMs6T797a/YpExje+cDkwy7j2l5GDeCVyfhh8V1PWp8t0hdb3yJIDBag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i5GLLpNV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BDSm1t019094
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/xEH5bhCDH+EambDfpLJYH
	Y3ZvSSk+a6Bg2AG4xJvXg=; b=i5GLLpNVVOTy2CW0REr5xB0CVkwKWoa/nOY0Mz
	wfJuewuRr4rQ3XXbvGR5f1cL+hzkp6VaW4mus7Rppxp42EtCqo737Z4WisH8xxEt
	JddOqTCEmwc2gYdnm6WhvEPtMVAoPsdN0pAHpheVWcqe81jByEvaQ9qDybuYeoQ9
	W2SItl6kOFh97G5XtDmE0wKzsNgSM3Y19pcdFWZlmAtEishR9yUxVbjn/IxOhaVo
	5V23rmpXuwxfVBhE6RIQlFLrrKVBdolb+51/6CG1M8PGrRUdg/IUt4H/1UHPPW59
	4rCe2kVUll+DVn6Fs1UvHolgvSXxie51iUWifFhUOZ7hivHw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphswap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:37 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7723b9b0293so92719b3a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602536; x=1758207336;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xEH5bhCDH+EambDfpLJYHY3ZvSSk+a6Bg2AG4xJvXg=;
        b=M2VOHw21Z0or3htyBOc3Vc707QLtvYC5bd9xF9XnbWcruF5NYpaiiBjEPvf8ZAziGs
         b2d0+tpjyfhoLXOQ5BJ628SUOOi3Oxc8CfCet7UxFZYO7ylWPCHBAH9/MagMJc8Ppl4m
         /kMgIHrzPL4zkwtdOWj5pGZDT5nzZq29Q9YQrzBMMIuHhwUxQu/BzoxvLN/xpAwViFx9
         A34uIa0jSA0636qtB47sOmpeVYaDoYgt5hvdYTkcBaAQl30QJQfO8vcWeWFM8At9Flci
         RK2vCZap38wxYmFGKlARimUm6RyooDMjBNm9Fe2m5uELwYoxNRQ7+YQoC9yikTG/HZGn
         Ck4A==
X-Forwarded-Encrypted: i=1; AJvYcCUXScSoNCkWfPGiyoTFJsJeEnL/Rov2A8kyk85/3o/ML+nhvkNqmkRHoQpMqPRL9uZrYqIFWjs1+9vf@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf5+wVZJavSfxQuXZByiUf1oRpB85XXxYFZjt+G4ndoirxtHTX
	8zQjjD5LudwSQWemJopWyBShPq8R+rRzjrjpyOuNXumvTz1jOmSFAiZ8pNtL81tuFH2lbu10tl9
	abZsz8vJrALhpm0F0UMGIEKUNXBRzkWixK/s9ANLuwA+Oc4HvF+tMEZobyFYiaWHv
X-Gm-Gg: ASbGnctyYgwPw9z6PAGl7IWJOi3IadwPnK9YOOqg7ytkyAuwmF5oUOyVNy8DRG/ZhG+
	XgY3gHqbpUpZACfRkXqSdUMqTim7zY7opVynrVoBdJ/tZeZHOfLomJOTThNuvaH04LktEimIFj7
	SdvwpObwP0TJ2LpyaZG4ugFKYDYqfBEJjmtoZ6CTJs+YVWbN4qLdIWUAFpYR0AVmKbutwdbDLjn
	5BxoIyDtnBnzORh6kq93r7Z4h2BQwLeTlTV/lmJ24uSbnxlKBaxwJtX364FOq5yI7mtBIRl2cqb
	hr79UWb56E5ntKlzddSJ5chCb5ZED+UVW8n12a2bqoMwK9wPqsCR0WZxB/GLU0A92cdbCJW+Kyr
	d9fOx4vgGKprvcFhEb6VJ2mnHJTng9JX8YfGhjO8aiis4O7lZfVqHaKw8
X-Received: by 2002:a05:6a20:3c90:b0:249:ce31:f771 with SMTP id adf61e73a8af0-2533e47d9abmr15639415637.2.1757602535603;
        Thu, 11 Sep 2025 07:55:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxaoAZb131tH41lL2qHb/K1dU+uAWx1P1xOf2PHZqYOFrD6zV6LGLcSxOT6jLhp1rAFlJicQ==
X-Received: by 2002:a05:6a20:3c90:b0:249:ce31:f771 with SMTP id adf61e73a8af0-2533e47d9abmr15639396637.2.1757602535088;
        Thu, 11 Sep 2025 07:55:35 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:55:34 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v4 00/13] Add DisplayPort support for QCS615 platform
Date: Thu, 11 Sep 2025 22:54:57 +0800
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMPiwmgC/5XOTW6DMBAF4KtEXteRZ2wK7ir3qLIw/mksBQw2o
 EQRd++AVGXTDavRm5HeNy9WfI6+sK/Ti2W/xBJTT0F9nJi9mf7H8+goMxRYCQ3AjXPcxTLczXN
 IeeJlHvYZUuajLZ9QcbpNFDuOQdTosTUoNaPGIfsQH7v2faV8i2VK+bnjC2zbzVEAqA85C3DBh
 TZKysZp6cNlnKONvT3b1LFNWvCvvaKX8Fg7UrvCVglZQw2huaRSzuNs7tTevQn5JhoUxwhJBL3
 fOqy8ldr+Q6zr+gsijr6+rgEAAA==
X-Change-ID: 20250911-add-displayport-support-for-qcs615-platform-2f072e2ba239
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=4013;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=PxQ+Nl+6gXCfV0SnVCZ6IaDcnEi2VND1S9/H0brbNM8=;
 b=A3jxmUUA2sbBI+BX54DDNMZhtyvRapP9PvOmX6yKpvtKD3v4cUgHbeOLw8W0YXg71m/8SEC5q
 PIm0TDCnoZVAoAYe6fq2H1VETMItFDUUQOJl/5mAVI6JMEu2+p4zrA6
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c2e2e9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=NhqbsNcZucgFEQMbMWwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: _8377j4YEra89ulmyjX9-JxTWIO22lXQ
X-Proofpoint-ORIG-GUID: _8377j4YEra89ulmyjX9-JxTWIO22lXQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfXzvOdyZZwzyih
 VrKASwr8PfnNruzNr/KkaIptwI/U/sk2s2vD3qLGR622/4vCXcISVJEDW+uwGVmT+ZE5TMxvM6i
 Vp9ba2z+dOfcTdWvVV7iX0p4h217pNHWOvD18PadPf48oNu3AWmCdOXJWDxlB0I3s21R70VTdIO
 Vl6squNCrDn8OpM7UZw6KWUeYU8+JHDlgJNumkt6qS8wffBdFeIxHvsFmBbWiikEU0tynrVxPMY
 wJwAwWbKJC0jN0dv31wVkiWXk0PxwF/nz1f/eDWjDtigRoYSfuX6EHNcsmswiQMG8n6gXx4HF6N
 IDitDYz3D7bNytG1XePS9UhxvL1vpvxGjIGOD9kHCZnpQSm/LvBnTbnmoJZAexvHchOTH0QhZG4
 CdFs6iVN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040

This series aims to extend the USB-C PHY to support DP mode and enable
DisplayPort on the Qualcomm QCS615 platform.

The devicetree modification for DisplayPort on QCS615 will be provided
in a future patch.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
Changes in v4:

- Drop patch v3[01/14 & 13/14], will sutbmit new patchsets based mst dt binding series.
- Update maintainer of qcom,qcs615-qmp-usb3dp-phy.yaml to myself.
- Add missing aux and pipe clocks. [Dmitry]
- Drop second TCSR phandle; register offsets are described directly. [Dmitry]
- Add USBC PHY series related init_load_uA configs. [Dmitry]
- Drop v3[04/14] qmp_phy_usbc_type define and use dp_serdes offsets to confirm DP capability [Dmitry]
- Reorganize sub-patches as suggested.
- Link to v3: https://lore.kernel.org/all/20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com/

Changes in v3:

- Renamed qcom,qcs615-qmp-dp-phy.yaml in v2 to qcom,qcs615-qmp-dp-phy.yaml in v3 for QCS615 USB3+DP PHY.
- Updated patch v3[02/14] to revise binding title, description, and property order. [Krzysztof]
- Updated commit messages in patch v3[01/14] and [13/14] to reflect the DTSI rename and clarify compatibility. [Krzysztof]
- Added USB3+DP mode implementation in patches v3 [003–012], organized in logical chunks. [Dmitry]
- Dropped patch v2[03/13] to maintain full backward compatibility with USBC.
- Link to v2: https://lore.kernel.org/all/20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com/

Changes in v2:

- Add new binding qcom,qcs615-qmp-dp-phy.yaml for QCS615 standalone DP
- Split DP PHY driver into patches 4-11 by logical chunks [Dmitry]
- Update DP PHY configuration flow to align with QMP Combo PHY implementation [Dmitry]
- Update all hex values to lowercase [Dmitry]
- Remove redundant comments in DP PHY driver [Krzysztof]
- Remove invalid USBC type define [Dmitry]
- Move lane_map， max_dp_lanes， max_dp_link_rate parsing logic to dp_link [Dmitry]
- Add TCSR-based mutex logic for DP and USB PHY coexistence [Dmitry]
- Drop patches 6–8 and remove related binding properties as rejected upstream
- Link to v1: https://lore.kernel.org/all/20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com/

---
Xiangxu Yin (13):
      dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
      phy: qcom: qmp-usbc: Rename USB-specific ops to prepare for DP support
      phy: qcom: qmp-usbc: Add DP-related fields for USB/DP switchable PHY
      phy: qcom: qmp-usbc: Add QCS615 DP PHY configuration and init data
      phy: qcom: qmp-usbc: Add regulator init_load support
      phy: qcom: qmp-usbc: Move reset config into PHY cfg
      phy: qcom: qmp-usbc: Add DP PHY configuration support for QCS615
      phy: qcom: qmp-usbc: Add USB/DP switchable PHY clk register
      phy: qcom: qmp-usbc: Add TCSR parsing and PHY mode setting
      phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP switchable Type-C PHYs
      phy: qcom: qmp-usbc: Add USB/DP mutex handling
      drm/msm/dp: move link-specific parsing from dp_panel to dp_link
      drm/msm/dp: Add support for lane mapping configuration

 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   |  111 ++
 drivers/gpu/drm/msm/dp/dp_ctrl.c                   |   10 +-
 drivers/gpu/drm/msm/dp/dp_link.c                   |   71 ++
 drivers/gpu/drm/msm/dp/dp_link.h                   |    5 +
 drivers/gpu/drm/msm/dp/dp_panel.c                  |   78 +-
 drivers/gpu/drm/msm/dp/dp_panel.h                  |    3 -
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h      |   21 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1089 +++++++++++++++++---
 8 files changed, 1192 insertions(+), 196 deletions(-)
---
base-commit: 8f21d9da46702c4d6951ba60ca8a05f42870fe8f
change-id: 20250911-add-displayport-support-for-qcs615-platform-2f072e2ba239

Best regards,
-- 
Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>


