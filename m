Return-Path: <devicetree+bounces-148594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 217A8A3CB65
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 22:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A676189BA8E
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 21:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B770257430;
	Wed, 19 Feb 2025 21:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="e7prNTw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C569F22E019
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 21:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740000470; cv=none; b=g4Fbxq77yf/nwlbbQwrlp9ojG8njeppRn/UhI3j0eW5OR5xNSb7rgak052HR3Hry8I9Pon5fZmSzKfQZ0+KvsdqrQ6a+TfdkUAwF9uRN/vN6c4WPIUwLHvTto/6g2dAQej228QRwM3GEDK3rv15b+U+AhUv1bY+DgcCd5KCPtfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740000470; c=relaxed/simple;
	bh=Ylh44ixi4R6mrD/Rq1tqlkfvktQqxKi+jAw+Eau/mG8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MZBs5bm+UhV/7p1tF1LO45wqw4ByFZdXFYiIMsrVK86SiAgchzPlEVH1zWy2VgvN9DEPPw6yi/Scg7NFgpETApfbEsmXMxdrgK9XCvojFz6eMDeRA/KkBIQ4poXQ7uoWOi0rYzfwryBjodLF4BeIA9lJoD8Nmu/U6fgYQvpyFq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=e7prNTw9; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51JFdixx002595;
	Wed, 19 Feb 2025 21:27:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=MVEygU//SJzwOg0KO9buxm8BjLr1/yXOe2pCU0Ajm
	aY=; b=e7prNTw97n+revsn4zulttijqGDiqTnaXMu7nwkUpPGDgck8UVMDgZCbd
	zwL3edDXilkjitL4BohSYq65fJX8NTm3fDYvBcX4htDSvZr4xLD7BuhdwWLe7CVx
	wPhZuNRJJ0wC7HuIqY1/913v1SdwZoDm5H5f5ux28WigTurAYKM6Gbff7j4qskzP
	i0k/HILAGbLGKBuT0GGCR3FQ4vqVcZW5D6RAPqU1MFVbWJx12ZlIZBWbjO6wRmSP
	XAS7G8D4m20x5uF1I9do+kfUHYlDOyO0uwDGQRJ+snLk5SyhQwwc5cSLkMCL5kwV
	pbk05pRcdElgYGDLRkunLpMCfrz0w==
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44wj4thprn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Feb 2025 21:27:37 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 51JKeKe7009691;
	Wed, 19 Feb 2025 21:27:36 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 44w03y6cck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Feb 2025 21:27:36 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com [10.241.53.101])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 51JLRaIG3736164
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Feb 2025 21:27:36 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3B1445805F;
	Wed, 19 Feb 2025 21:27:36 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 07A3E5805C;
	Wed, 19 Feb 2025 21:27:36 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.48.195])
	by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 19 Feb 2025 21:27:35 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH 0/3] ARM: dts: aspeed: Add Balcones system
Date: Wed, 19 Feb 2025 15:27:32 -0600
Message-ID: <20250219212735.1365050-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.43.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: o-EC648i8254ScYcKCXzW_AipTFXoB0q
X-Proofpoint-ORIG-GUID: o-EC648i8254ScYcKCXzW_AipTFXoB0q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_09,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=650 phishscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502190158

The Balcones system is similar to Bonnell but with a POWER11 processor.

I think I've addressed all the warnings that aren't associated with
aspeed-g6.dtsi. Please let me know otherwise Andrew! Thanks.

Eddie James (3):
  dt-bindings: arm: aspeed: add IBM Balcones board
  dt-bindings: hwmon: ucd90320: Add 90160 compatible
  ARM: dts: aspeed: Add Balcones system

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 .../bindings/hwmon/pmbus/ti,ucd90320.yaml     |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 594 +++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 6 files changed, 1378 insertions(+), 767 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.43.5


