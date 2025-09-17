Return-Path: <devicetree+bounces-218448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84500B80287
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:44:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A021D58698E
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F2012F0C5E;
	Wed, 17 Sep 2025 14:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="o+EZo/EH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93872FBDE5
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758120159; cv=none; b=kA65IGnO3vYHQtjyxmc0RsbKc5nxL6+MXyHlcxid6RpxYvv3YkCkl8w4cwpfEALhxBFYCzvZDTdoZZeA1TVaGq4n0IHr4oO5oS/JPp+o/ThLxR4a566NXwfZh0m/rnJvtuUu3unNCO+DBF1qafNT2TyvC4wUbMrTfJX2w5fwfyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758120159; c=relaxed/simple;
	bh=AAYWPk2ne1WPadv1QHFbQCisifs0cN/QDCwVVlDtG+Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EbmASQkpS0aJ4hnbtw65eeIMvjBuR/RvUb4AM73C+dai9Ei7dBY0wY+yLM1XYRAIL+G4+bR30UNOPQzA7unj5BHt6S4v1NnjNdI5w+5PtvDrBex6ouqg5dXLC96wdHkR59YYo7IkxlvWuXNWUaRb/KK/BkKASu0rgO28jj7/o8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=o+EZo/EH; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8dCFe023732;
	Wed, 17 Sep 2025 14:42:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=MD6AbnscHWN81+Pc/unez7JtIk39dRYIR+VWn299l
	GA=; b=o+EZo/EH+9ClyoJE81vL5DQb7v3NbebhdCO87Ecyb+EFovaRbNJmbfoey
	5MhVsJghxp+zYGy0rMwwyrFdQkmtZaNvNS02h4LaYWLiO9/O5Xws5qN3L1qW4wXM
	OuwBPhZ7iTaOsvSLv3uBLpGKcoJ8ASvY5VCilcj4qkTknKIJVl2AShGofscAxoS0
	Han/RXgVu7q3VPDAbivT2cgbeBSKi4XRllSADM1xSYg5taziydwGM0P6q6Avc37F
	OifH8jHcDKWDrRg8D6t8n3PO+JLJbC6004iCuSUunFMgpMdu3nceX8ev67uoIDtM
	lr+QABT7vR3mTnDoAoRfqE8RMRn0w==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 497g4qm45j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Sep 2025 14:42:20 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58HEYYPv027349;
	Wed, 17 Sep 2025 14:42:20 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 495men9npa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Sep 2025 14:42:20 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58HEgJGe10093552
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 17 Sep 2025 14:42:19 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8517B58043;
	Wed, 17 Sep 2025 14:42:19 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C5ADE5805E;
	Wed, 17 Sep 2025 14:42:18 +0000 (GMT)
Received: from slate16 (unknown [9.61.98.41])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 17 Sep 2025 14:42:18 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v5 0/6] ARM: dts: aspeed: Add Balcones system
Date: Wed, 17 Sep 2025 09:42:04 -0500
Message-ID: <20250917144210.160051-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: yqCRxC8zVTCq7tsP03GetSx7TvM9H5B_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwNCBTYWx0ZWRfXwkpSYzxgz3Lq
 JxWu/mMh7lgsIWkMe7XD62Mg9vWTmcyRNKRcj8HLq6fifVJvSYG3D/7UFIxg8FRgwxxWjbuY5lk
 QVa60Eamh28EdUVU4J/PI7noIhTwk15cZDVDnOd1cfLFIcYkGCIH/V7pZNfoQyguQTGq+MbqTeb
 /U7xdmfZaBZdCap3RW8m0fV/Nf0Une2AF4nn4ZL1tlf6tqAu6iD3137Nn/MH8Y8pHyQhYKDUuac
 1b2WBZ3/By96HFDtY94VK7rCd+ixnW9PbTLndZbv2n2hXJK5iBzSESiiPoRIYwDp1vSxALpDoMh
 yoE9KnW9r6XG40fFI52TtI6SGguHIztVdtxETllkGe0DpCzuPUpkAH3zUXwgB2BQcl5hkl76s4a
 RPaAr1JT
X-Authority-Analysis: v=2.4 cv=R8oDGcRX c=1 sm=1 tr=0 ts=68cac8cc cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=yJojWOMRYYMA:10 a=Hy7NEVtaT5kuqzZ1rwQA:9
X-Proofpoint-GUID: yqCRxC8zVTCq7tsP03GetSx7TvM9H5B_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160204

The Balcones system is similar to Bonnell but with a POWER11 processor.

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

Eddie James (6):
  dt-bindings: arm: aspeed: add IBM Balcones board
  dt-bindings: arm: aspeed: add IBM Bonnell board
  dt-bindings: iio: Add Infineon DPS310 sensor documentation
  dt-bindings: hwmon: Move max31785 compatibles to max31790 document
  ARM: dts: aspeed: Add Balcones system
  ARM: dts: aspeed: Fix max31785 fan node naming

 .../bindings/arm/aspeed/aspeed.yaml           |   2 +
 .../devicetree/bindings/hwmon/max31785.txt    |  22 -
 .../bindings/hwmon/maxim,max31790.yaml        |   6 +-
 .../iio/pressure/infineon,dps310.yaml         |  44 +
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
 .../dts/aspeed/aspeed-bmc-ibm-bonnell.dts     |   6 +-
 .../dts/aspeed/aspeed-bmc-ibm-everest.dts     |  10 +-
 .../boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts   |   2 -
 .../dts/aspeed/aspeed-bmc-ibm-rainier.dts     |  14 +-
 .../boot/dts/aspeed/aspeed-bmc-opp-tacoma.dts |  10 +-
 .../dts/aspeed/aspeed-bmc-opp-witherspoon.dts |   2 -
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 16 files changed, 1459 insertions(+), 820 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.51.0


