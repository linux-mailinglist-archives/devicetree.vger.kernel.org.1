Return-Path: <devicetree+bounces-205229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2A5B286A5
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 21:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDC36B0551A
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 19:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF842288D5;
	Fri, 15 Aug 2025 19:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="STCac5cf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799632BD5B6
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 19:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755287271; cv=none; b=ACTsdN36dkLZWOjADFckecPUXYIV3n5d7TDGvaPSAl5oupXm8j3KA1oAjjUXoj13A8uWlfQeTqmX6RK+2TIasyZdNqW6n83Ex9eQkqLjQN3OHUnGLisEKo3PE9aMc8xRsPFAs+ZIpwj0M76Zd/vaS6gJTtu0k0czcpoBsCa5ecQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755287271; c=relaxed/simple;
	bh=VUm031d7Cr8BRBM4cwoj6CNbIcka1fqnl2WPdIHpqkA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CANlFAHAi/J8wQl1HKVGOrjXY04cQRfJyl0ibRFL9Pjpjdt5xr0piyPEL2t/Piq7oSdcZAkRbQZrLQpODeyg/5zetnN4Pl6cgYXOajdEUlDcyvN03J/rfjtWbS0ovKECGlXTgS3MOEsx+wqtKUf/eFHXH9Bur5jvEez7ATmGxRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=STCac5cf; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FFxlF6010174;
	Fri, 15 Aug 2025 19:47:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=24aLO601S3vQo0KXg2ad5ryUEm61BcUK1KpsUl3bc
	AA=; b=STCac5cfjJaXo9pUyL1cs4XseVGR2Q4LYYIBMbWY1ueREZJWGdvhsvD1K
	ET39RKZ9uRiIv40PhoswI78SExVQpOmCGkJa5o1/x2VKEtA3ZR0dcCGvYmiKxVvU
	FY13T3L5E3jUlZNnW6AnLb3Fovn1rZiENlJkvNVP8RdpMbgdeWetFeQrByPEzIt0
	LHNVt36o7tQ1qI7Uz/hsxn2KkDpgBNh3qKoW4unHmVpin0rOzkc6CTTkEM88VoBj
	7Q93XGpK0wkHj6iw0Mmsd4h11vFLxhJ9+9ozL5j1g8W3iG94REVx4Ta3GCVf3WaR
	mSqmq0vOepn/ha0d+NZy1j5twfOeg==
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 48dwuds6ff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Aug 2025 19:47:39 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 57FG3VLj026275;
	Fri, 15 Aug 2025 19:47:38 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 48eh21jm1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Aug 2025 19:47:38 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 57FJlcA115467058
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Aug 2025 19:47:38 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F392658059;
	Fri, 15 Aug 2025 19:47:37 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CCB8658058;
	Fri, 15 Aug 2025 19:47:37 +0000 (GMT)
Received: from slate16 (unknown [9.61.135.91])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 15 Aug 2025 19:47:37 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v4 0/4] ARM: dts: aspeed: Add Balcones system
Date: Fri, 15 Aug 2025 14:47:26 -0500
Message-ID: <20250815194730.41695-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDIyNCBTYWx0ZWRfX1jkt0+Ht9Cft
 CMSdMaq62/Fo3++Fte+2JJDSmHzUSyhPBuKW01Rc0uYYdsb9sLB7RjYO0QCQAq3DODqJo/L98ib
 H2d91m11EMg5/1IPl0uKKHCfQ09bMvMxQtpkXGKoSynkxNspnL3kH+7+pXuKIEkml0m4Q5clXwO
 25UJB2AiNNdlpPa/qZbey8KerON9znMMfen9/VRMNsm0vkI++Hrde30CuUdpSqUA0+LwKPHZlyB
 bKUIcv+7g4uhxsmO28Rh+s0evrq4rH2piHOXOAMEGxH3X2fBGlhcqEXRAtTSeOvR+YXTgwDXnqK
 Bdzt6H9Y367RlpA/fpMuX/XrRediUQFqse7BLX4IZPjDuScPf1YsJ6Ba6wPEd5Gd35XGJD96MNC
 S2NVei6o
X-Authority-Analysis: v=2.4 cv=d/31yQjE c=1 sm=1 tr=0 ts=689f8edb cx=c_pps
 a=5BHTudwdYE3Te8bg5FgnPg==:117 a=5BHTudwdYE3Te8bg5FgnPg==:17
 a=2OwXVqhp2XgA:10 a=_exzTb3LTX8wHh0XIscA:9
X-Proofpoint-GUID: ZM-5wk4AYj1ce9wV14igQ4OR92zFYeIa
X-Proofpoint-ORIG-GUID: ZM-5wk4AYj1ce9wV14igQ4OR92zFYeIa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_07,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508120224

The Balcones system is similar to Bonnell but with a POWER11 processor.

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

Eddie James (4):
  dt-bindings: arm: aspeed: add IBM Balcones board
  dt-bindings: iio: Add Infineon DPS310 sensor documentation
  dt-bindings: hwmon: Move max31785 compatibles to max31790 document
  ARM: dts: aspeed: Add Balcones system

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 .../devicetree/bindings/hwmon/max31785.txt    |  22 -
 .../bindings/hwmon/maxim,max31790.yaml        |   6 +-
 .../iio/pressure/infineon,dps310.yaml         |  44 +
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 10 files changed, 1442 insertions(+), 792 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.50.1


