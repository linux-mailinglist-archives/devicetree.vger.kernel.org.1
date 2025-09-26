Return-Path: <devicetree+bounces-221754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C132BA2B53
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81B2D625AD4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18187286D7D;
	Fri, 26 Sep 2025 07:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jOmbzYoO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C03286D77
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871576; cv=none; b=A71W4LuzzkYwq3pnkVw0GtpLlPlgYbqNu9RkeEX2bEOmLaGE71o+MDiFHNe1OlYC8XYJvitz7O5wtIPzV9beBR1Avq9Cf0X5EUxRW63k5Vrvhh5A9Pd9ZMKoJCo4D6vH0lkIf6pbNF3hbvDW6VSeNeKIlahhfo3UWpa2tZ7YZRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871576; c=relaxed/simple;
	bh=YPasll5NQP6TVIaoA2rYTgUFmw5RRjjIlz3VdB4qxWU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bBnxEId6ZYQcKSBDHyqw1dzsVOvqmRPXNoL7K7l9Ta1twRLKAZec2eKWi5nI/UZCGnjAK2OFxckZCm/8RlOWQA1DJKJOGSeaEVKYhPu3rg87uhCeJTeGty9+ou1q4ZEExJQAwfLEyz3havkcpmLp7UrvWl9Je0ncIkgifbowQ/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jOmbzYoO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q7GaTr024193
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dud8WJNENTmI5gxnKUE5mo
	+sgzvsIU1AqAlFb2/ff4g=; b=jOmbzYoOcF389FUnUJYAwuRjQ4tMNMig09hthU
	W/HdEmhKbPeDGO6974HooNYmQip1WKawnXhYyMvjGlc5MyBrrYgHvtAPttELhJrT
	bbW4trrFtsXJw3EGGF+G2bDlLt0f08H4CiSKh46yv8oQTZIachK95M9NdKWWsJci
	LjiXcw1aAht8ZtRpMJbE1hiIpmb7pxFbjeREu+xXD1st4lXAcsFFcQtemhFoZmwk
	8VYb++/FECvu//MbGsRADUE2t3xg4IRGiF7JV5IjfDq/mvNaD3W8fblXkGdC4U8b
	vfWUKFU2Z5T336aEy8sMmIEFIrRFZSxJG1U+6un2iY0lW/IQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qsvfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2696ab1bc16so4923715ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:26:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871573; x=1759476373;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dud8WJNENTmI5gxnKUE5mo+sgzvsIU1AqAlFb2/ff4g=;
        b=PUYVFgi2mzUPgdxxa82cS/N+L0xzRBbmC0MpxdVCKLyVX2H80fhLEDnSfbUVNX+Eqy
         xrGeD0yx1IkiM35j28EL+JjNmPINt+lCGCEybvPC0Xf2GX3MTd/ZMWII0aGjWD4oL7vl
         1nJF1syf6cuaLsr/KrVMXyULwn2uBfBXIbPx/lzGpp7n9scH2oZkwk1Ue46r+Uy05lAy
         /Xw8XK2Aqcoo4i9QIvKOIQyL2f/G+c4JJzYnRbqk+AK+/pA7X9ueQY2AgRkKYFRe91/l
         ZyOZMSBzkHvWRP3XamjmbQsck2/zu+qc5eWt9K6qLc7UyQX8nwdeJevFpwDbh2ACMGin
         aMPA==
X-Forwarded-Encrypted: i=1; AJvYcCU90VA2ggNURCiYX0Qxza6hIUHvyV0aoShqyQrI4VlW2t6OmQ/Rc36cg9HzTxmLyB3zoYw2t1w6oiPr@vger.kernel.org
X-Gm-Message-State: AOJu0YxRvX+aVW1txcrscL3Z0CNbjO6kS0HUvErIo5BVo+MGaD8PyGyk
	y9p53NeIJ1If7zrnlMudEBzInn8t2D/4/vLK7DAb7lz857+zHzVhT3pF2bnOjRBRq3REu5/kR5Y
	9jFjNd8OF6lDRtKdzfPFU1h2tM0PHlC7rMGHiRmsdmEwNJHObtmAvaFjBo+/USsNG
X-Gm-Gg: ASbGncsYo4UsEhnGWC6g6MlB6CVxThAo7CmAMf2oQnjgES+oPsLfloPXojSq39Ipy52
	5/M6zmr+cCEWG7/FHNX2r3DfVcktW1f+GYJp9meb86pg9E9YR+mCAm/TMsOWF0fToY9bPhQnXw1
	ZAoMTLuuFb1y2zmCZf8ycL5r8ihAvzV99XN3qvZmVPCYyx9m0l7iZJEFLgosi35otdxQvAeGnH4
	WQ+r3VmD3RXsOGqHWbY9e+AXwrEa2WEi/ullMP5nHdLDyxn4PIBIxqKAYYsf9FlKUFdxiKAPLwU
	/lbNO8Dnpqd2zfTjAdCmL4XMs40vYzZcjplXtb7wTOf1ikdu/1ls1vZ6qpBpXRBqKCNNyHArWwB
	tSz4Gr1Ewq3s3voIXIRMaQXN0TtZRgOKJ8O5Qyt5E4YfHWd5qm/7kFGvk
X-Received: by 2002:a17:903:2341:b0:257:3283:b859 with SMTP id d9443c01a7336-27ed4a47a07mr38672875ad.9.1758871572579;
        Fri, 26 Sep 2025 00:26:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6gfLG3g7l3wZ67mkycPSyt36CZJqPFSpdlPEG8XiWyzxlncH2l4wJA2fUOLl0HLc9gG5qqg==
X-Received: by 2002:a17:903:2341:b0:257:3283:b859 with SMTP id d9443c01a7336-27ed4a47a07mr38672575ad.9.1758871572067;
        Fri, 26 Sep 2025 00:26:12 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:11 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v7 00/14] Add DisplayPort support for QCS615 platform
Date: Fri, 26 Sep 2025 15:25:36 +0800
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPM/1mgC/5XRz4rDIBAG8FcpntfijBq1p77Hsgfjn63Q1DS2Y
 Uvpu68JLOlhc8hJPge+38A8SQlDCoUcdk8yhDGVlC81qI8dcSd7+Q40+ZoJMpTMgKHWe+pT6c/
 20efhRsu9n9+YB3p1pQFJ6+xWY0ej1lIa1XKpOKmN/RBi+pm1z6+aT6nc8vCY8RGm38kRALjNG
 YEyyowVnGtveIjH6z25dHF7lzsySSP+tUumELe1Y20X2ArGFSiI+phL2V/v9lzbu4XgC6GRbSN
 4Jer6rUcZHDduhRALYQC2EaISqBi23lsQwa8Q8p3YeAZZiWBD02iIgjFcIZo3AuU2opluASYGa
 RquwfxDvF6vX7s/6DfXAgAA
X-Change-ID: 20250919-add-displayport-support-for-qcs615-platform-f885597b3573
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871562; l=5625;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=YPasll5NQP6TVIaoA2rYTgUFmw5RRjjIlz3VdB4qxWU=;
 b=2LVd7ANysco9u/gEASSF1mlgveF/gQTbuuMOj3m6iaQ5teJqwkL9kUDMdyVJ6HODH8UZA4dS6
 kR8CdvESMCmDUKy8f44E9UVsAeA2/W30sm4xS75w6nvKhT5ssRDrfZa
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: 6-5qQrBPPxmwWPEzoy3n9FG5Z9eOtNle
X-Authority-Analysis: v=2.4 cv=bJ0b4f+Z c=1 sm=1 tr=0 ts=68d64015 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=-mfqEiHr7Cy1ujZptoQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX1+cFw7e66fKe
 G3TnoBqywT0y2YgyAo+IbPWFD8zWbC/l7usiVDJbKv5oKhNQCLqi4tOTQvKf3UUnc9wvOp+gJKt
 ZBOCir86vTq4Oa6ubWwvzY7y8X5apv06D+tXhaYqJyxKQhfPoh1JQUDq4n2ksJM0iS3N3TEDWGr
 IJGPXZ8xwkwhn9JmtsA37vFpCilUR8/pvaDrHPtPFTOORjZA3o6TogsIfNSY+t58/SF0kavybtY
 iUgmRmLmhyFn4h2YVZ18pHpTtcf0QSifDKuqZv3JsKxbNVPRwv3Lk46kR0BQiJMy4/qGgZgMB5m
 vYCayQWhNKdYTpHr5j4X+leCLTf//GK47Ga/5el7LMylQdDZDEo+5ea0XAnWBYNUgLeFTKOR7H1
 4yzWumsEQajjpwG5q3hRkiIEOlMkSw==
X-Proofpoint-GUID: 6-5qQrBPPxmwWPEzoy3n9FG5Z9eOtNle
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

This series aims to extend the USB-C PHY to support DP mode and enable
DisplayPort on the Qualcomm QCS615 platform.

The devicetree modification for DisplayPort on QCS615 will be provided
in a future patch.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
Changes in v7:
- Fix QSERDES_V2_TX_LANE_MODE_1 configuration from COM init table to configure_dp_tx().
- Link to v6: https://lore.kernel.org/r/20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com

Changes in v6:
- Move usb3dpphy_reset_l definition to the patch adding compatible and related config data. [Dmitry]
- Add NOTE about SW_PORTSELECT/orientation handling. [Dmitry]
- Use C99-style loop variable declaration in msm_dp_link_lane_map. [Rob]
- Update commit msg with issue description for [05/14, 06/14, 07/14，12/14].
- Link to v5: https://lore.kernel.org/r/20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com

Changes in v5:
- Add new patch to introduce QSERDES v2 COM/TXRX register headers.
- Restore legacy reset & clock register logic. [Dmitry]
- Update phy_xlate() to return ERR_PTR(-ENODEV) when dp_phy is NULL. [Dmitry]
- Rename helper from qmp_check_mutex_phy() to qmp_usbc_check_phy_status(). [Dmitry]
- Drop storing struct device *dev in dp_link as it is only used once. [Dmitry]
- Add robust lane mapping: default 1:1, complete partial configs. [Dmitry]
- Reorganize sub-patches v5[07/14， 08/14, 11/14， 12/14] as suggested.
- Link to v4: https://lore.kernel.org/all/20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com/

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
Xiangxu Yin (14):
      dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
      phy: qcom: qmp-usbc: Rename USB-specific ops to prepare for DP support
      phy: qcom: qmp-usbc: Add DP-related fields for USB/DP switchable PHY
      phy: qcom: qmp-usbc: Add regulator init_load support
      phy: qcom: qmp-usbc: Move reset config into PHY cfg
      phy: qcom: qmp-usbc: add DP link and vco_div clocks for DP PHY
      phy: qcom: qmp-usbc: Move USB-only init to usb_power_on
      phy: qcom: qmp-usbc: Add TCSR parsing and PHY mode setting
      phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP switchable Type-C PHYs
      phy: qcom: qmp-usbc: Add USB/DP exclude handling
      phy: qcom: qmp: Add DP v2 PHY register definitions
      phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config and DP mode support
      drm/msm/dp: move link-specific parsing from dp_panel to dp_link
      drm/msm/dp: Add support for lane mapping configuration

 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   |  111 ++
 drivers/gpu/drm/msm/dp/dp_ctrl.c                   |   10 +-
 drivers/gpu/drm/msm/dp/dp_link.c                   |  118 +++
 drivers/gpu/drm/msm/dp/dp_link.h                   |    5 +
 drivers/gpu/drm/msm/dp/dp_panel.c                  |   78 +-
 drivers/gpu/drm/msm/dp/dp_panel.h                  |    3 -
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h      |   21 +
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h |  106 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h    |   68 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1072 ++++++++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp.h                |    3 +
 11 files changed, 1427 insertions(+), 168 deletions(-)
---
base-commit: 8e2755d7779a95dd61d8997ebce33ff8b1efd3fb
change-id: 20250919-add-displayport-support-for-qcs615-platform-f885597b3573

Best regards,
-- 
Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>


