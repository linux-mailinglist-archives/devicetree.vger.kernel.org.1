Return-Path: <devicetree+bounces-223953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D402BBFA95
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 30D6D4F1D5C
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1522219E8D;
	Mon,  6 Oct 2025 22:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DYS9EGDO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84F9212566
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789217; cv=none; b=OCzRv6ptGm6dmT6KJXbasU0sbN7WiiDTe35m/xDun5LokRS7yYb/TDIwomXYadNF4i8R+A/Ub8yQNb5pMiq5IVu7Ol3/kUJeBuHf0EfBXail9T2rjT5als43cfonnxBN3ScEINjXg+U1H4f5FRO0aJka9B0vZO+aPPYvPjP7rQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789217; c=relaxed/simple;
	bh=jYbMkukNfUrVsrOi8oI9ZoTQ53vpsVBeUKRkto04Vyw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=N+C5WRvZtYIG/74SHT0k8RU1glHWV8Lj5QcG/9y3gA9nFbwUsQZW7GXt1/vcDYHhasI50qj2JBtzWor+zylOJyDbB0ci75OCnE8ZbGHybX/esXuHx7p/8M2XkuQTNlGV3g6kPgek9J529q1e1KIhZyv5Is6WyBo6d3VGhNhmD0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DYS9EGDO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596ET6Fd010297
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RGKF86TVDvAKv1fL1H0rAgmHc9LmQpxf1z8
	wB1amINA=; b=DYS9EGDOyjSCwLQjSssmFxKbQIh9+ybfQfPcqOrjrwn+/jVzKgP
	3p50a0MWkA5UDhy+24Woqz9K49yby4sm1uJ8xkh0UC1LjKa5PqpoywU2R3i6HKM5
	HuDKOicvCkDj7M36DOuBfKnoUxYV6jf9a5Tfk1ysf3gO/cS89taA1sSiXLM1rurq
	Y1ZJKE/uGP5HgB2EAmlLtyevh+BLl7+DC7u3E6vr/kdOIO+Ul7szYvTDhd4O69UZ
	Y9Rm+JGIBABOS2enF3KIZUVY7n75koOkPC2YoaLyvCvPYOZHzohb5LFZ+MlN9IoM
	fMimOQI5iFsccSGnTZTVMQw6LooSQybtrcw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1n9y4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:15 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780f914b5a4so4778816b3a.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789207; x=1760394007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RGKF86TVDvAKv1fL1H0rAgmHc9LmQpxf1z8wB1amINA=;
        b=vRyisOsA2H7MPHrNhdWhoZOfkxj/W8+Qa/N6J+OQ97x5laCjKnq+e5pMg2U1PjGa2d
         94lxhpp79035UCkJxYcSaEgTv3vPUpau1WxmfjHV3YuIo1sf8qX5mHjsDxiVd/KsW0lv
         zpaMQkLoAGSQgAEEcya3QZGYSMyALc3l/AupNJ3HVEhhS3q03VCRj5IjUgo2TXt03AYN
         L1w66YB0EfkARiEzkiesfG1yA9ZCb9xortMu8UN4v7aG84k4bUAXmgAGrEi5dLmpT2/C
         xRqeYh2uTlruuI+KKGvHghqg93tEBJ3bJGBi689KIy57YxPIycjaIRwl9ZB4/BMMPtCK
         yPew==
X-Forwarded-Encrypted: i=1; AJvYcCVeaB9JNOg7ClQouLXXQJIqv+CyTgd+VfDpd4izhN/1mALPPcqqnMTlUNQ+d+I/uj1dgX2pZeZpu1rK@vger.kernel.org
X-Gm-Message-State: AOJu0YxNCPJnb9ZgyMIphbRgOcrCsU1zp8kerIRg48kH9XCmxrBaBLYP
	Ms2NsinoAAWOr98/nUYxpftnpfLYZi/nR3okk8wuFcWrzVEc6XLfcELRkLVsz5ud2UcQ1NfeF9g
	AuKXMQb4vOcIR7LCco6GuCE1VE2+8RKE2oJe6AylUUm3EsHQGMYie/gpBirJNX2of
X-Gm-Gg: ASbGnctRPZ9Sr9x9D0rLsmQAvBEEMGqqQga5czJRghbsbyqI9SKfro3+nkBlJXTpTx0
	x8YPq1c/84oClQRDo0whtHh+yyonyoUda/SfkQI3FMEC4x/oW8VbCgo7JrMFdHLmTDRoJAfVMPJ
	XdnY6dPBdLQJyU4d0ARWJ+iJpjL3QZ46154voUp+ksPF7dyIlX4VbwG8Rvx+uy+5KF4/WuiDQ2j
	9C/h5nNk1vwEwOaJsU514BKGBPmR586071GQ7PmNEgV5MD1UkGcD/zGTBw2G0VXX7uPjnP4dK+F
	ScKM29cLSyEBzIibRywSuQ3Buy45kE4BQFFnRLTHZEt69hnZsSXQda3+17nF20AGEyk751Ppnel
	ZK9KDvT17Dy9924+B31qTig==
X-Received: by 2002:a05:6a00:84a:b0:781:d21e:136f with SMTP id d2e1a72fcca58-78c98deac4cmr16335591b3a.26.1759789206891;
        Mon, 06 Oct 2025 15:20:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKfPsN6sUhqkQtc17HeV3fxUqq2CQHTosBe9Ogh+oYvS7dvTA1+fvWCJRnPz3xcYUrQk7a/g==
X-Received: by 2002:a05:6a00:84a:b0:781:d21e:136f with SMTP id d2e1a72fcca58-78c98deac4cmr16335560b3a.26.1759789206391;
        Mon, 06 Oct 2025 15:20:06 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:05 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 00/10] Introduce Glymur USB support
Date: Mon,  6 Oct 2025 15:19:52 -0700
Message-Id: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: juKwzD0EXOr28qDPwwb9Yz65KzHUGRx9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX+XqktOwhu6U1
 3XYgQy3IWCdJCs+CBz45uGvQYymBd2q+LeRRRYLcBG/MzUlp2CtLywKvtirShoWPlB2wmiOcdag
 BAwedHgeAJORT2xmOJ5EH2C50b9j57pv+62vN61ujh0evSuvXGdfrID2YVeJPesW02y/kuD7/r8
 ExlHB19UV/g61kaUe/3HQF4ro/oeHPZT2IeI9qsxm5SNLB6Zi4Ztovf2fVIfGuIHMUTh94+uanO
 bQUBx3HCNJtqMFy3BAW4dTkupBJRTE47tRd9X7ABdKLhdL3svKmpr4o4TBCacrPnu5+KF/4gY5N
 I6DIfXzBFz0cpDwcpP2VxK3w7UiFCy4p78JLTMFn9VXpnFnWaaP/r0rsvXMZbV3hDmvMYtyr2D7
 47N8XytYB65ogKKEVOk4zzqpX58WIQ==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e4409f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=K6vXddHitPicjvNs8NYA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: juKwzD0EXOr28qDPwwb9Yz65KzHUGRx9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

-----
Changes in v5:
- Moved phy-qcom-qmp-usb43-pcs-v8.h into USB specific QMP driver
- Fixed DT bindings for clock properties for QMP combo PHY

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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  72 +-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 352 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
 17 files changed, 1622 insertions(+), 19 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h


