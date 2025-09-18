Return-Path: <devicetree+bounces-219014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6552B865DF
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7994D1CC48F9
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914EF2BE7AA;
	Thu, 18 Sep 2025 18:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="cbTMG83O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B672BD022
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 18:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758218667; cv=none; b=QjQKZ9+ens68E64B+8Kkp2GYqELr3lO4svLfdCzlhiI+X3kuqgX8ul/M80GeJZNCGWYjeP6JdE2XPOdO3NE49lo1vYTB+FNDPxJuUtd5QiW9e2LirgaMzufra2pG9uvCqiV6vWTAWtAayjTJTL62AqlVebznXJPjVHrD9U8Mbl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758218667; c=relaxed/simple;
	bh=mezghyYpG9mlwoYI8vkAZoNv/CRCA2LbFBtzc96FtIg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YtLFWQvjjQ7EJZPc5BhzIBUXMxhBf2dhgxt68cnwzrrIisUWOdHEZcFQKQ3PlvfaR+OtnwulStlg0agcY50VnWPx1HvDKi209+ROu89q2pG5WHIOTpdKpE4n8mnSO3GoNZkdBoJIhNVINksttuajrMZRIQ7LwUG5bnlRUV+/yug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=cbTMG83O; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IDLQbU011417;
	Thu, 18 Sep 2025 18:04:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=dxA6/c8hafsPZw566V/Nuvy0x6ch0JN3sXIN7B9j0
	7s=; b=cbTMG83Ozyl9vRYpAbkqUH/CuMb5yFMO2MR1uboQQvC3oLIBuMpYJiOH8
	TST0IpESlHUwckcXx7HpJ+9RyZUL5NIjca6WR86unbS8Q7TOFJJ6gkDUWDo9gRzY
	vGF0nmhNpmddA2eOGBFQky2JhqpQIEEOjneacSL9O6KwSs9bqnFsIEUEGnbS19ML
	ukF+HjOhGuCY/Giaa/scn/161Wckta8Bki9cHKCMSefv6aHyKtF1B2hQ7NulkvQs
	i5z16fBBnA4C+/MuepAi3m9cwoPhi97GCAdQ8RZDBnuljMe35XEn3085h2OtvG0h
	NNqOUqZ8ccLKC+VN6v5zDCTaOSEjg==
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 497g4nkhpx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:11 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58IGg6Es022328;
	Thu, 18 Sep 2025 18:04:11 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 495kxq047b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:11 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58II4A1C66650486
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 18 Sep 2025 18:04:10 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 904EC5803F;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 69BA558063;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
Received: from slate16 (unknown [9.61.169.208])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v6 0/7] ARM: dts: aspeed: Add Balcones system
Date: Thu, 18 Sep 2025 13:03:55 -0500
Message-ID: <20250918180402.199373-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Authority-Analysis: v=2.4 cv=MN5gmNZl c=1 sm=1 tr=0 ts=68cc499c cx=c_pps
 a=GFwsV6G8L6GxiO2Y/PsHdQ==:117 a=GFwsV6G8L6GxiO2Y/PsHdQ==:17
 a=yJojWOMRYYMA:10 a=Hy7NEVtaT5kuqzZ1rwQA:9
X-Proofpoint-GUID: ledzNp0aPZ5P7wxnLV0nj5oMky5NKPPE
X-Proofpoint-ORIG-GUID: ledzNp0aPZ5P7wxnLV0nj5oMky5NKPPE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwNCBTYWx0ZWRfXzcLury+xJ7F1
 ZMSgGCyNbJB4fVeaaXvcoPKiANtwGV5RLAxoevtRcCPj/rSigbo8FHJJZsLQOilY7x7cYFuCG4X
 WkD8L/Dzg2haYYXDAdUFxr/SfnLtIRSaOGSbo00tMRdqPs8x1aJ7064jSqEZTkJDJQc/4+Dz3+Q
 ukeWGvUBnmrk4Gp1Vs16S+Ki7LXvNbYMC9cwAfhYtmLSWeVVIxLYpUlQV4Yu+2w1nBfsoTSuVKM
 LGTzw/f+naifBsZeijg+FGo4FhpLZCuDnTI7a+xLHTZokglBdGpWuF7fkHypX4e7UpeZk0KXHJN
 tcZv9CUhTFSW2FITBuvmRgxUaPHso7k9ynsuPRAW8vtAsBt2oP+rtO6+7jbHIBNQW9sYL7Kmwvu
 1WXA/WKw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_02,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160204

The Balcones system is similar to Bonnell but with a POWER11 processor.

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
  dt-bindings: hwmon: max31790: Document address and size cells
  ARM: dts: aspeed: Add Balcones system
  ARM: dts: aspeed: Fix max31785 fan node naming

 .../bindings/arm/aspeed/aspeed.yaml           |   2 +
 .../devicetree/bindings/hwmon/max31785.txt    |  22 -
 .../bindings/hwmon/maxim,max31790.yaml        |  12 +-
 .../iio/pressure/infineon,dps310.yaml         |  44 +
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
 .../dts/aspeed/aspeed-bmc-ibm-bonnell.dts     |   4 +-
 .../dts/aspeed/aspeed-bmc-ibm-everest.dts     |   8 +-
 .../dts/aspeed/aspeed-bmc-ibm-rainier.dts     |  12 +-
 .../boot/dts/aspeed/aspeed-bmc-opp-tacoma.dts |   8 +-
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 14 files changed, 1465 insertions(+), 808 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.51.0


