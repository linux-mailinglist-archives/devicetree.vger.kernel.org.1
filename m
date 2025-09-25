Return-Path: <devicetree+bounces-221048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BF9B9CEE7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:52:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3FA57B3269
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E832D9EEC;
	Thu, 25 Sep 2025 00:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mw1Y/hgf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B632D7DF3
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761558; cv=none; b=lNf1h3BQCwGRyVeSsy4yio5WKkd28E5bmDkOLIK/d2aFu+aE6Iw/+FkpR560zCg9HvAg/VAJ0JKv1X7p89aEcXHahhJuy6RhGsVbjOLSB3Ss0nxUc8Jpb0qyRcTk3NBYCxxGdkmSYYGZLGUR2F7wSjiYDcojA9MhPcEfwRcIqOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761558; c=relaxed/simple;
	bh=JO369MGgGMk171xFRwjVqeRFJxDWky0ek+7VCvbF/so=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hiXQTE9BNf+W3ZR6cdXfagfC6zfkzJOClFv6zShbj2dmGZX5dIu8WFl7k2cZpbsSUWUk2lgDsR8zeuLKqXS9oaIa/2zhwwvmvyOfTJcaATGtzJJSpBAyAJ9P7heXdUVgu9oQ/KB1u3yTouTzL7m2Mw4mWuK+54BBO8Y/6g/5qBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mw1Y/hgf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0HjS1021489
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nzXyVD9qAsVJZyPhyB0idDDfhpNBSjuyVh5
	MWcnszg0=; b=Mw1Y/hgfaRAUkNXuOLfG7N7fIOCYu0rN60W2g9HeVeH5DOjqemO
	vIVohzMTSOktedDH3VYOOiyYQ+Kx1CSK4aa1BFd4DCXfj7Qn4n0gMyQrep73EYmm
	+faT+2rAFgABGGk97TaWprDY4217dPvwAvYIR/qAnlV4dNd3Oec4ZU6PmhGYXa3e
	sMDGE2AabTpWyb1P3L3MS2le6rg9Q0CaIa31V+kc2rQOD0APEGJuBZW9iFusTzXF
	IacOhwmncFpauac6FoCCvnD4xApAc4LNaiSK4mcyt91DdJPEYj5U6Fx59zVQDeCN
	wrOAjeBqsyf122XE1hPWCo0OIPcmFk2NZng==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budads1k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24457ef983fso7480635ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761553; x=1759366353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nzXyVD9qAsVJZyPhyB0idDDfhpNBSjuyVh5MWcnszg0=;
        b=URexG/bY+Tenf/ffgF+6Hbu9IR3eW8vjHPH4t40nSwmcaK8zU7klzTtddbqPzgY73E
         lb8e8AKe59TkfWy7EkL8vMM4uqKLAJ77rIKEYiwyZ62u4QRFN5LeMV/3fv4uS/9JRxdy
         1lYAaNvFLDV/lmb4imlUrvR1SeXjHpMMaMjjDfSo9b2nrTr1i2Zh8hhwEea3aXJUiRQD
         MSHFLkt45gBuJPv6Km0Wbf1W2C//Jlv02DWR90Bt2FLz5Je6939mavK/TkKLTdA+fTwD
         VIks0myCYZiD7t0h4TZXZjCWf7M9nSLqY+DjvRnAB0rHEmNN0K5hPiyYIGJs5EeFx6BR
         Y/Yg==
X-Forwarded-Encrypted: i=1; AJvYcCVgs20eDD3kHiwgDFZfYQwLS+oXV/uP9DMVt8x5ClbvBW8b7ucKcbQFq/ECS+oCYfpEuVLN5UyN1+1V@vger.kernel.org
X-Gm-Message-State: AOJu0YzW2H37WIkdro15YgcZgSh0R9bC0Do8Dk3H+Io4UzUT+2apIaBd
	M8U6jh92hkYpD18XHDdeCAA9wIRTXybLGTEeJRp8zXBviamZTgQfwmz0FJ7FQO1AUCfv10ATZet
	lQ+cjRJYknisJew4lTr5lobtDqexLI2kjeoHO1ljTcmR3SE4CTtc5e+WVZkMeVsDk
X-Gm-Gg: ASbGncvYJLR5q9B4jQu42DDP61pfWuGXejauDXqBo/u0Qd/mwQUQ/tVCekqlxetKvJL
	+YJV/V3kVLVRUAtZ/1iQg5jSsxxDXS/yNHrxaN5y4YKIicOHXeqgMIlRBwszgm795maS+95q/cD
	P8KmyxTU0GkgI+csaQgXacLCNa0NwrRW/Sn2V3Qf8Yh49IQByVWqoyP7rhev9+t5yAx9HA+2Z66
	ucbFXjNXO6GDXe7Hb+ZBtICccV4CNRok8Cbpa+lKWeMGYCXJEJLUr/4HjdkJwzOoS4ZqMHd83pI
	FYHUNUD2bH+478wVbOhhP9eCm9gbytQMdJyfNWttG89J5ZJ2p/HwETNXtJsblrN0+cdsveXXlJO
	nUMKsRJXrxiD57pG9
X-Received: by 2002:a17:902:d60f:b0:267:cdc8:b30b with SMTP id d9443c01a7336-27ed4a873c8mr14727395ad.53.1758761552789;
        Wed, 24 Sep 2025 17:52:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZb/eqow/4MDtfwG0wirrD5pVGj+rZTu8owWBw6yjQmbqpouZLqrvcXW52IQPKF2b9fRjZOw==
X-Received: by 2002:a17:902:d60f:b0:267:cdc8:b30b with SMTP id d9443c01a7336-27ed4a873c8mr14727135ad.53.1758761552307;
        Wed, 24 Sep 2025 17:52:32 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:31 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 00/10] Introduce Glymur USB support
Date: Wed, 24 Sep 2025 17:52:18 -0700
Message-Id: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: _p5Z7j5MPbhzfYWLjkQFV2rR73x6aIjp
X-Proofpoint-ORIG-GUID: _p5Z7j5MPbhzfYWLjkQFV2rR73x6aIjp
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d49252 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=uF0vjx2ZuONpqyvErPEA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX0vKWJ+seOkUc
 qUNTFAWg2//hTB3XeFzFF7rP2xUoo0e2FjDXonn26vTnCsGGhqyyZwDpAvqTzPdNuiMUioeO4OV
 q1E0WXldqzHclAhGHWvRQ/nAJutu+YBJnWrCv89sBrMyk5oXlq7ZonxwHpXiu46I6qHCzjR5ost
 MxNkDciTpNfmMJGs6hxylNaXPt8B1vtu8cF9DAaxSsncUavFKyWuV68lD/CPauO/fL9axFmD2Xi
 NfL++f9AI3Ao/5kjHCGYvt7jTWN/oHqcFvqlfMqhxAs85R1PSQHzdEd/2A9WwY5u/Bvom0d4w+e
 di3LGuyZMpaZo309ygRDvFlgfegomuNKN32hR88kMCe4NlH5148Nonr108dAoIcyKLHveOi7fS+
 AxuxhyI4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

-----
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
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  19 +-
 .../phy/qcom,snps-eusb2-repeater.yaml         |   1 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    |  18 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 349 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 16 files changed, 1562 insertions(+), 13 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h


