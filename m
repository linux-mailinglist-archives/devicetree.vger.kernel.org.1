Return-Path: <devicetree+bounces-149120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F56EA3E635
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D715188C043
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223422641FB;
	Thu, 20 Feb 2025 21:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="N2eGWgaU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922EF1EB1B9
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 21:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740085209; cv=none; b=BkpbopiioayT1QTouvqjmBDdeo+tqQ8/78Ry7BaZdfZxKD0zi1o0O/s8G+ondimNKX6f6f6zQWrPlhTkRrU7fPI2m6RNJKiu5UCVmM8DAaZtRrQRMfhKb4qfMYUG2E4Uy7QlESE6dtxVo1frgGXt1EBvk1L5A+sZ0+3sr0LBvro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740085209; c=relaxed/simple;
	bh=WGW2UHqyf60UGKjfqVwTY9uJ6ULEeS2wFSdlsPLXyCA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lfm6lMsmXyKCEaRnQWlgwQmRt5J9e4sSJY34ZIXDeLxZ3/T2FL2HuWrMAM86LcA5iASTeaCyipAYNsihkQVYqZ6PJlIBlnNlXosOWjWXrbg9eXgshwLBFFbYKbirpPQQNQlUDz5WwiSn5WbBsA1lIBzN/eqrbGeiJ9zfE1yZ05E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=N2eGWgaU; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KH1hSW010230;
	Thu, 20 Feb 2025 20:59:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=Ay90aIoC12ub+sc0fHvsFF5x1FZK0nWJsCdk9go52
	qA=; b=N2eGWgaUoGXSDi66BDr5tA0WdtrHAtk/swtHmFULEQo9iRBYY8OdmPSHV
	6d5R5Q8WIZdTw0fdnVn1g9FUleTXrzdUvNoSGDQWBD/B9yNXSTJayCvfdEmHddZE
	lbHCFkhazqUv3yiYei+ScgS38mJymzG5REIOrwyJOzjweMI8nPgXRBTwZGeIBsKn
	ICCBJcs4kPv6MPNJMNjxK4GyG4LhoxVRVKVSLZkZubkK2h4uD3Bh/8pr2X9oLGB8
	wejvGTloIOHgfzYaTkZ2uqkPkd8Rszo52iKkA77+DAwTqIR5+CM+JkpE/sRHMhs5
	RaXwqA5XKPSBVnB2pOx54vqr8cbgA==
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44wu80dc63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 20:59:51 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 51KI81Cg002323;
	Thu, 20 Feb 2025 20:59:50 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 44w03xc6p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 20:59:50 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com [10.39.53.233])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 51KKxnDh9568946
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Feb 2025 20:59:49 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 979295803F;
	Thu, 20 Feb 2025 20:59:49 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2785358054;
	Thu, 20 Feb 2025 20:59:49 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.129.233])
	by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 20 Feb 2025 20:59:49 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v2 0/3] ARM: dts: aspeed: Add Balcones system
Date: Thu, 20 Feb 2025 14:59:45 -0600
Message-ID: <20250220205948.1777200-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.43.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 9nsGT2CUchekFR5PniEZCCRtzcHlEDhH
X-Proofpoint-ORIG-GUID: 9nsGT2CUchekFR5PniEZCCRtzcHlEDhH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_09,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0 mlxscore=0
 adultscore=0 mlxlogscore=787 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200140

The Balcones system is similar to Bonnell but with a POWER11 processor.

Changes since v1:
 - Add all the ucd9000 driver supported compatible strings
 - Fix node ordering in Balcones device tree
 - Improve commit message to explain addition of ibm-power11-dual.dtsi

Eddie James (3):
  dt-bindings: arm: aspeed: add IBM Balcones board
  dt-bindings: hwmon: ucd90320: Add additional compatible strings
  ARM: dts: aspeed: Add Balcones system

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 .../bindings/hwmon/pmbus/ti,ucd90320.yaml     |   6 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 594 +++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 6 files changed, 1383 insertions(+), 767 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.43.5


