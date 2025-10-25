Return-Path: <devicetree+bounces-230998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1D4C08761
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 841F04E3281
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEC51EBFF7;
	Sat, 25 Oct 2025 00:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oyY0L3AB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D7D1C8629
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353277; cv=none; b=sIjnWxaTW0w3o78E7vKXYz/p5VQTOU2A8x9dd7+XlbbB30b+qLPG7yZQSQEKdSVXEUCgyq+diaFw61wb0wlds/4+V+aO3JuGCr0F2hTiAAkF5UOiG2qWG8EqUXxyfJ/TE00zxQNqZgJH/kIV+kpsiwvldE/nyWQ9D0ZO4qz9iNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353277; c=relaxed/simple;
	bh=1f+SaJrbfLX2xjXPT7sMapX9Y8rP0T2mxE48gQoh8kc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=d/Gw0ZsbqdqHwX5D8xEX7tuKvYUDMMyFaJkBaOINOYnxHJiuJyGyPZRpVcGwKaPiWLwAFINYWFfl1uzluasofyJ2JkMWPya+MeHefH0u5aHCKdtUroqDsG3lvnEV4QOobYJflE3Zjb3zVCavXXQX8ocoYitqX9ktgcPQPb8LLxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oyY0L3AB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lBuP026902
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=L6IpjpS1e585bisXA7MOt4
	/08rdI0wiNtT+dUHbEzGs=; b=oyY0L3AByn15neH3IQr5o/AF/dmDLMz98+hDc+
	50WZf/hKbMH5zljy3tXr+mjrZe+rZaUyJCSvnHeRxs0EvFp+/lUEZwO+xsTiaLyF
	FxY3DMuPehYISneS72ofWIStlU3KmLk+K/wlM1x7Ehx1LQHWLczEFpQ9OHpeIg3n
	SO8J++AVjkPtXQ0a1mHZkBvUJCwdK1O7UxYgIWYItBBHxI83v45UMBKkhazGvPWp
	+1RJriUFEkMWhlLhnmEMkJ4eex8on6JE5vcC3Ybd6bjoFJ8vAIX99MhykGSUyAe5
	iHJA3LWJ4i1DyUNEjD0H2JIL+sSKyYCU/xvNvk1krU5Ttyyg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27jdh4d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:54 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5535902495so1584730a12.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:47:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353273; x=1761958073;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L6IpjpS1e585bisXA7MOt4/08rdI0wiNtT+dUHbEzGs=;
        b=GhldK+6CnfFriB1p1HU0uUN23Z6Bii6a7DUyXs6AuiMssl3GVjwXydRLZ7HExzOQKo
         4Dx1hR/o8f+WqwIK9W/+pCVCtXuPtExALklNzzbyisNAlu8vSppNR7xWg9bpY/c56c/W
         w93tRCNSyjGvzUjJDUi4eJOrQQm/YIZw3H7dYZ7WDlWPsOn8GldrAdKpSeQyfRD2AtnR
         BcMS69MLwFi9zBhX/w2r+iVYLVR8kQfP1SRLRa0mukg37P/JBx5JCc1KlR9kD6lifAkh
         F5Kf9RQ3yOzyT6mYXI7zyP+orxYqKtP3lJLfXZezNf81WcUQmpPdHo0ZtinxwT43Vqk0
         hPrA==
X-Forwarded-Encrypted: i=1; AJvYcCWLDJrnfwZk9e7aRIAXTgX16OatA6Bn7UV/EcPIx63Spu8L2b5feBqcjJBpp55OLaWaXhGgsgvKLy3f@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz5ef+sUPJ9ubWQWdNtuoI32dCw5C9h97FzteFMSNCJBc1OjsF
	iuIxPxQiUvq8+tfdAIm3lRjJ84uqiLw1f3QF/0uc1MGomMtLPyyUM0FWUa2n7Fd+UbDOSwfOgVL
	0w1y6zNKtMg3OA+z2p73sB6BZRLAfj1KDhhKYPUQeFAtydVB3HgreHYqpoJEQUQ2G
X-Gm-Gg: ASbGncuP0pGkJwajFoGqOzYqc7rV8XhJkLEMvZ506Xsq/JRH+/Xuax0SU9giv05Inkx
	Wa2Do/4p8Pi1e5ByUkgfjWbjHM+Yh4/taguvE1FmP+bCeXKxnASB+q2AhEv8RGrztznPi752tdR
	zwSuRBjIlq09jTeGFAkCyecp12xpJdM0lM9q5kN4cQ4lkcZZE9bctbGhQJZNq+J3I5H3L3ZCT87
	GfKqBmzlTNlKZez9nyr1mP23bTabI/wKysCK7EF12xrtsQNIp6645BFZlX+TRGf1Rgbd69yhzRw
	GPjMhdWuF1vWkbfkSzFVvRRW26P0RxTY7C9nAB8ZShf+IcaebkDzVL+HyvdER2PNdltl+xjMzJx
	43XYRPnLaVywgkh9PB97vKqy2BMeGJ7oVE5y62CTJATckVspuaGQ=
X-Received: by 2002:a05:6a20:1585:b0:334:9649:4754 with SMTP id adf61e73a8af0-334a85462d8mr39971263637.13.1761353273342;
        Fri, 24 Oct 2025 17:47:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaI6IX+J3gSXLi97PHwV59k1RCPN0Swx6E+HQYIPmwQxD+ZLzN0Beey+AMQrxU3ZXLo0dzww==
X-Received: by 2002:a05:6a20:1585:b0:334:9649:4754 with SMTP id adf61e73a8af0-334a85462d8mr39971228637.13.1761353272815;
        Fri, 24 Oct 2025 17:47:52 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:52 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v6 0/8] Introduce Glymur USB support
Date: Fri, 24 Oct 2025 17:47:38 -0700
Message-Id: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACoe/GgC/43Qy07EMAwF0F8ZZU0i++bRlhX/gRAaStpG6gMSW
 qhG/XfSLtCw68bSteQj2zeRfAw+icfLTUS/hBSmMQf3cBF1dx1bL8N7zgIEywTItl+HOb7O6U0
 2AMhU7GyjRR74iL4JPwf2/JJzF9LXFNfDXnjvHgxVINJgKhUMnNGS5bdPvV9V3fmxfZpSUp/zt
 a+nYVC5iB1bcA9YIguUypC2FYpzgv4v5HlLyrDWxCd3MH8CE3G+3mqjNDtniM8J9l5w+wMJCly
 iKE5csW3bLzE8uHWyAQAA
X-Change-ID: 20251022-glymur_usb-f222049165f3
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Elson Roy Serrao <quic_eserrao@quicinc.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX4blyqozXthIZ
 Ot8WZKUeCuhmTuV5tjG/FmFcM1ZjXXxmZ4ZPHrMHg5JM95XbPRKqNK15JDUbpFQhFV2ktNu/CJB
 Z9ZCehQ19xzSkLrHdvK3MY/BcX+eoP4L4HL+BUbFVhDQBLAAlWqByYwigsM/+0+5/4I5rQwtl0L
 fqn0BxMcFpE/Zx6LepvaExrFUWVdQJDAErUnqEMgAg99ZKsLXCnPoff1Tz/E85XwLlao5rpnuDl
 5Jb+6ebgGxrcn4RdD3WUftljrzQ1QJ/KgOLJDhG68XP3rtlN9CzIFZ2UGJtJdVXPvKgn2SnmIeb
 iQt6J9Wq+M07CHDA3jKI5U2VvvVE5+n1Us6DawYoUAWDtCsNt3Fx/dn+YHFgGRgbbE9z6bszQD6
 MKkQTZD687j6evy1t+L4iGdCaK79hg==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fc1e3a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fXH650Jz_15WDPxxfBwA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: BVe52KfYSilKH9lryrRt0-eGdlRgw9id
X-Proofpoint-ORIG-GUID: BVe52KfYSilKH9lryrRt0-eGdlRgw9id
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
Changes in v6:
- Reworked the reference clock requirements for the QMP and M31 eUSB2
  PHYs.  In the QMP case (both UNI and combo), removed the need for
  the clkref entry, as TCSRCC clkref switches will handle votes on the
  CXO clock.  For entries w/o a TCSRCC clkref switch, populate the ref
  entry to the CXO handle, while others (with TCSRCC entries) will
  the TCSRCC clkref associated to the USB core.
- With the reference clock rework, dropped:
    phy: qualcomm: m31-eusb2: Make clkref an optional resource
- Removed the need for a clkref entry in the QMP combo clocks list.
  Removed previous reviewed-by tag due to this change.
- Split non PHY subsystem based patches into a separate submission.
- Remove DP related init tables from QMP combo
- Link to v5: https://lore.kernel.org/r/20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com

Changes in v5:
- Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
- Fixed DT bindings for clock properties for QMP combo PHY
- Link to v4: https://lore.kernel.org/r/20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com

Changes in v4:
- Updated DT bindings change for QMP combo PHY to have IF/THEN blocks
to handle the newly added clkref, and fixed the commit message as well
- Added a new header with v8 offsets for the PCS MISC register set,
and refgen current load for the QMP combo PHY driver
- RE-added the headers for the QMP combo PHY
- Link to v3: https://lore.kernel.org/r/20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com

Changes in v3:
- Fixed some incorrect patch ordering.
- Alphabetized Glymur QMP settings for combo and UNI setting arrays
- Link to v2: https://lore.kernel.org/r/20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com

Changes in v2:
- Updated QMP combo PHY to properly handle the refgen-supply and to
remove the primary core reference/tag
- Updated QMP UNI PHY to properly handle the refgen-supply and added
a separate IF/THEN block to handle the new clkref
- Updated M31 eUSB2 to make clocks and clocks-name required for sm8750
and optional for Glymur
- Fixed missing PCS MISC table
- Added SMB2370 repeater changes
- Link to v1: https://lore.kernel.org/r/20250920032108.242643-1-wesley.cheng@oss.qualcomm.com

---
Wesley Cheng (8):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
      dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
      dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
      phy: qualcomm: Update the QMP clamp register for V6
      phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
      phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
      phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |   9 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  19 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  16 +
 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |   1 +
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     |  18 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 326 ++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h     |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h    |  12 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 163 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
 .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
 15 files changed, 1495 insertions(+), 8 deletions(-)
---
base-commit: 15ba5ae3b0ede7e355c88ac074e946fc1aa21026
change-id: 20251022-glymur_usb-f222049165f3

Best regards,
-- 
Wesley Cheng <wesley.cheng@oss.qualcomm.com>


