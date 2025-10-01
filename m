Return-Path: <devicetree+bounces-223179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E34ECBB1E93
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:05:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C0674807C7
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2442D978C;
	Wed,  1 Oct 2025 22:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ha4LZ4Fo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4662258ED8
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356342; cv=none; b=IPgYIDHwTyQkWJXQhyR1HahlYPxRLY2U3MhNkhYLp7qllz6I+5zgW94MtE3UXY4K8MskZO0ctE7LoFEqQN6ocxQc1r72rk6vlc/xgsi8KFTS+UIyixqbzVPK8Mxcrm6pZcmkiK38chF3R0vGGt5NhVQ2JHbf+ib90S1KG7nkVrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356342; c=relaxed/simple;
	bh=9QggdL6fGbd2hr3ymExV7iFJbMfOs4Ept9ZR40FEjLc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oYYPaBuYIGJJcVUlo+g0mif6mRnBC8loQbH4W8k9c7zDPk80nJgQkd9tgAqkbgQ5+x/hUBDWhxb5xOd3OE80Ae/EEMRrcND8NaFECdCRn+RxOb0+uyETg/yJoWxK191evnGLFQowVKxqk0LDNnkrouNbZqNVW6tCbaeso09o71Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ha4LZ4Fo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ibshb023316
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2E82fWMJs7/CltSb2bc3lU2woFhMHzKTAIE
	lMVu/z78=; b=Ha4LZ4Fo0k1WjYvzIlc8wzeiX+X4GqWVv0C6thmcID+Nq0QA75r
	pzWtGB7EkPKQenbLnSZHwxQRXQgwvR0ZgDu6FZjN1VEl7eAixHKkcd4P1j7neH2+
	BQ4s+7cdmNjRIon8dEmmVeVzo483QDFTCMqdVQQrgtU6E+GEg3t1uDPnYLmV6KYI
	+gE/bZrSv6A+6s5+Y11K3d5Q3LQXGgK11GtB0FBSKx/s02/LSRxv/fvwdhMqsjaJ
	ADTSOYEeoljVutvh2PRzdKuDJzFerz0pGLPzD9HbXZGE7Z/rI2DSaNxOzVzzFj7Y
	A4Zg9tp2HqHjFOhwPjn/qd0miBklQ7FEecg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a660sn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:38 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ecab3865dso480552a91.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356338; x=1759961138;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2E82fWMJs7/CltSb2bc3lU2woFhMHzKTAIElMVu/z78=;
        b=S2eBsTjYNGypDS0NnqXfTcAgMcKg2hJ/MidZbCURdbxlPatErNWm9JgD2aAlku7Nbz
         wqSbA3gJR9uTsIfUvuxdorqYN1WzmACi2D42SdVRFnevGT/aKw+h4wG5EHpNhtPmJ1eB
         VYHk0TdgkYHmLZ3YpiKMwij2iLXCJzH+wXhp3h4RPpFJNKi2XMK7olmgh6w9TnIWbfwr
         6nMtCY0auKfw0K5w2MEdNX7p4DhqmSyN3kyqwOuWqPXPvTUY60UtbWJb9ItP4FRB1Lss
         l9x1I0DrgtJeK8DnQshshpgP30a7DCjzEcGOoTMy84RUWvO00pNI9K3NFQfhIWSgv8Fu
         cZhg==
X-Forwarded-Encrypted: i=1; AJvYcCWo9uDjWStUQa63A5SZpHyhL5tLJk4gOfj9zbW4Zp0Do7WctVHxs7krvcbYcxnKPvcd4msiY2p9hWfR@vger.kernel.org
X-Gm-Message-State: AOJu0YwUT6R5v9mCnNISiepWnLlF0jdAxpfs827TSIZ5u5gfKb6fq0f+
	x6BJfqZOf34dd6xZRR5TEvPhgAb46jOBbeOysUoYG4kGJs4ZnF/RKec82qPIDwA7+00i2vYzsKo
	XrJGggESXVFy+jRxOBo+zHuE+ouEN5yhxAyL/vG0WAJY0XLkpElQKO6tUENfqLjpe
X-Gm-Gg: ASbGncvg3uONnQLzDlOK7UrzMDhOrFd9gM40U4mpBhXFWcCOKkGfcRiM7w0JzsjsIcz
	zTXKUnOu34Xc1XLs04Fry05EPXQrdo3ctstOngCfGcXTVdFIsZBE9+eYtXldRxmsWTx5MPTdj72
	zjzTCsRAJNimzkvtXDov045fZWASnp6UkGmc/h5nSTyM3rzPbKIBPnys6/9eqN1wxgXnjCoIL4i
	mPYrbSJCGKrjgxo6/WAy32SVEY+g+h6IWmCin3rWuNYmjNsIa4I9w1o+ARQRMxinU3ANF78ifFN
	DariWOhQDcko4N8xhybvJVs3mW7rYLVy3XkLkRu3I9z+YcpG0qJ68riAO8SXsks/4GmEYHSJSto
	6fIJm9MLnDuhS2ho0YM2c7Q==
X-Received: by 2002:a17:90b:4a4f:b0:329:ed5b:ecd5 with SMTP id 98e67ed59e1d1-339a6f077fdmr5548835a91.19.1759356337590;
        Wed, 01 Oct 2025 15:05:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpG0a+/1ddOhqZgj2PUQhFUXjO9C38MdvW9oBXkB4sjVIrrjyTq0zZe7rYuFj7BM7r6xga8w==
X-Received: by 2002:a17:90b:4a4f:b0:329:ed5b:ecd5 with SMTP id 98e67ed59e1d1-339a6f077fdmr5548793a91.19.1759356337055;
        Wed, 01 Oct 2025 15:05:37 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:36 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 00/10] Introduce Glymur USB support
Date: Wed,  1 Oct 2025 15:05:24 -0700
Message-Id: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68dda5b2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=K6vXddHitPicjvNs8NYA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: F1iRgTwP5X8W9yquNu99rt-LZ8tG9K4x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX8Q2FpZSj6BZo
 W9yuoItOOLTgufhvgBvFCN6HQjE0kMDHb/dkW/vZq366kyu6/asqqqrZtggsTJR0Varw2cQf8Ap
 21RHCff6nrZNrkHzZrMmmBBC1eAfuGr8Td++bz1q7O6cRQlv6cc5vvpp4Mdn5m0jGszHaY6G8IG
 uCiI7ZhW5SJKh8aa0AEAR4IMtSqH0vVY+6dL2cRpn503rjhFJV9R+xOu7ghm10EiL024Qqn/5Qj
 iHmnHTA8s/XsGqBLK3crIJGyzIWKp6+aHwNTQ/n4FpdhsELxxnDNLW5aUhecS3Tsnjgnm6q3N8F
 NRkX1XMFkmCF5Kx8BdzzZ4nHuXdIp0I5aVVY33dbJpnngdWLkTNHMt/TTgaaw58wC+f6YSfUZs8
 qpvm1pJT1o3iVy6EzkKFghG9RW9pew==
X-Proofpoint-ORIG-GUID: F1iRgTwP5X8W9yquNu99rt-LZ8tG9K4x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

-----
Changes in v4:
- Updated DT bindings change for QMP combo PHY to have IF/THEN blocks
to handle the newly added clkref, and fixed the commit message as well
- Added a new header with v8 offsets for the PCS MISC register set,
and refgen current load for the QMP combo PHY driver
- RE-added the headers for the QMP combo PHY

Changes in v3:
- Fixed some incorrect patch ordering.
- Alphabetized Glymur QMP settings for combo and UNI setting arrays

Changes in v2:
- Updated QMP combo PHY to properly handle the refgen-supply and to
remove the primary core reference/tag
- Updated QMP UNI PHY to properly handle the refgen-supply and added
a separate IF/THEN block to handle the new clkref
- Updated M31 eUSB2 to make clocks and clocks-name required for sm8750
and optional for Glymur
- Fixed missing PCS MISC table
- Added SMB2370 repeater changes

Wesley Cheng (10):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
  dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
  dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
  dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
  phy: qualcomm: Update the QMP clamp register for V6
  phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
  phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
  phy: qualcomm: m31-eusb2: Make clkref an optional resource
  phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |  21 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  35 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  76 ++-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 350 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 17 files changed, 1620 insertions(+), 25 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h


