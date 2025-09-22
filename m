Return-Path: <devicetree+bounces-220178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2B6B92817
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 19:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16FCF2A58EA
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC38B316904;
	Mon, 22 Sep 2025 17:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="CtBOOLo3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413442E9EB2
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 17:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758563903; cv=none; b=V46uVz+skYEkpqsCm6UinBiUbRbl/7GinC1woT8lBUNWxnQln9CBs6E4bOfZVgmjTshT500CeyU0GnNw7nS+fhUo7vV/zRDdtjfCQHFrdeG03Es1lRSBmo9MKPKrUKa8O9W0Oaritj3RSY2MFQBt8PmXHNyuaG26e3Jw21RkAS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758563903; c=relaxed/simple;
	bh=Cnaz3p1n+nQyieemM1JPwWAn2k3ct0eaKMA/ZviVUXs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Av4DYRLtrUmg+fjWU2oCBIQtmDZYblVOm7JFPZt7H7hgIsJDBytmqHZgRBm0o9JtvOLTvBR7BuiKgY+CytrqfZc16f96HG2+7RDbAvJf3jhtt+gcpkwXKdpa20pD4AhWZln+gQd5XbhlwzTYccl1iwJtMDXBksEQP281+qN8i/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=CtBOOLo3; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MC1iLR011029;
	Mon, 22 Sep 2025 17:58:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=zolTJVBjpAipV1fMb3a+ZCYRNoqZ+X283t5H38F59
	4Q=; b=CtBOOLo3UESYwdh97IcBnHSaU9Yby6gzwZXdlhU6CuKE/Fx6c5xuqnlqS
	6BBZH4JYUH0fnrTJ+h75f+8lhqlR6rXcraMpuWeSk9XcIcs9G62Hx/hCSBJYuQjX
	laCq6AH2FIm5dVkBWuff4JdkaO+vNJhxicJMtVi7Mp1hnMYQxM0qpTBoq3uRmnyw
	PWA4VJxsF51UGb5PPX1EfgvRZh+blIf5mwNyw8GFfB9vLoAecCSsAfIZbjlWr3v/
	Os3FLqAI8B77z+KIiYq5xqq5/Zl6gRQQAyucfcwPFIsU6hOegUB4ogb7HuzMdNMm
	TTbSyLRAvCIRY41ksa5wqS414Hd0g==
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 499ky5vhku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:12 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHEQbH013602;
	Mon, 22 Sep 2025 17:58:11 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 49a8tj767q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:11 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58MHwAch8848812
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 22 Sep 2025 17:58:11 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B459358059;
	Mon, 22 Sep 2025 17:58:10 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4954F58058;
	Mon, 22 Sep 2025 17:58:10 +0000 (GMT)
Received: from slate16 (unknown [9.61.160.40])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 22 Sep 2025 17:58:10 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v7 0/7] ARM: dts: aspeed: Add Balcones system
Date: Mon, 22 Sep 2025 12:57:57 -0500
Message-ID: <20250922175804.31679-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: mYf0pmLjX0JAqVNVQ_9fGukWoVmpU9Tq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMCBTYWx0ZWRfX69MxYZaOHw33
 kGti/mSpuLXGSqY1+oZ6FskcpPnEE/1UK05NY0J18exdX+L4UUL+SAfw6WZBljUlZEIdDMvfE2B
 Al8JbUZikaWm750+ZuF7J4ElSTew4ISrBY3oMrbbPdOaNKKQp9gKK9Typ7/7P4ick1/6HdIlkpn
 mSEZMZbXKh4+55w4d93aSYYjO2a9BfhnWMcnhNLygBzNB5w5BwLrbknuqwg34MKo3I9jiOoBPQs
 dJTJyYQJAZLDr8fYpSD0o7j5zKPmph3gRwG+gufZVEGVBUAiybpOTOKChdvO2TgNFLSBAeXBS4y
 ayDsMvgORd3n+tdanwWetCaOJoXKPqLL/f1+stEk2+ScOr1To6hsa+cyigw9+qMYmq4afDUF/Kv
 IbqD5wSL
X-Authority-Analysis: v=2.4 cv=XYGJzJ55 c=1 sm=1 tr=0 ts=68d18e34 cx=c_pps
 a=AfN7/Ok6k8XGzOShvHwTGQ==:117 a=AfN7/Ok6k8XGzOShvHwTGQ==:17
 a=yJojWOMRYYMA:10 a=Hy7NEVtaT5kuqzZ1rwQA:9
X-Proofpoint-GUID: mYf0pmLjX0JAqVNVQ_9fGukWoVmpU9Tq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 adultscore=0 malwarescore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200020

The Balcones system is similar to Bonnell but with a POWER11 processor.

Changes since v7:
 - Remove un-documented fan properties under max31785 nodes
 - Change fan-x to fan@x in max31790 documentation.

Changes since v5:
 - Add patch to add address and size cells to max31790 document
 - Don't remove address and size cells in max31785 fixes change

Changes since v4:
 - Add patch to fix max31785 warnings
 - Add patch to fix missing Bonnell documentation

Changes since v3:
 - Add max31785 to the max31790 document instead of to trivial-devices
 - Fix minor formatting in dps310 document

Changes since v2:
 - Fix a couple of incorrect i2c addresses
 - Document dps310 and max31785 properly
 - Drop the UCD binding documentation update, it's been fixed

Changes since v1:
 - Add all the ucd9000 driver supported compatible strings
 - Fix node ordering in Balcones device tree
 - Improve commit message to explain addition of ibm-power11-dual.dtsi

Eddie James (7):
  dt-bindings: arm: aspeed: add IBM Balcones board
  dt-bindings: arm: aspeed: add IBM Bonnell board
  dt-bindings: iio: Add Infineon DPS310 sensor documentation
  dt-bindings: hwmon: Move max31785 compatibles to max31790 document
  dt-bindings: hwmon: max31790: Use addressed fan nodes
  ARM: dts: aspeed: Add Balcones system
  ARM: dts: aspeed: Fix max31785 fan properties

 .../bindings/arm/aspeed/aspeed.yaml           |   2 +
 .../devicetree/bindings/hwmon/max31785.txt    |  22 -
 .../bindings/hwmon/maxim,max31790.yaml        |  22 +-
 .../iio/pressure/infineon,dps310.yaml         |  44 +
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
 .../dts/aspeed/aspeed-bmc-ibm-bonnell.dts     |   4 -
 .../dts/aspeed/aspeed-bmc-ibm-everest.dts     |   8 -
 .../dts/aspeed/aspeed-bmc-ibm-rainier.dts     |  12 -
 .../boot/dts/aspeed/aspeed-bmc-opp-tacoma.dts |  36 -
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 14 files changed, 1456 insertions(+), 855 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.51.0


