Return-Path: <devicetree+bounces-202290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEC1B1CC25
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 20:47:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FE06621796
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 18:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09FD1FFC6D;
	Wed,  6 Aug 2025 18:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="pi9SVT59"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536F627146E
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 18:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754506051; cv=none; b=m1Q5L/Klk0RO4PTiGcgVGltEJteSE4ubRXPfPSGhOO6vdtyZLckp9YQk7F37g5AY94r73Q3VdGhGO4f4trJR/kvdflUATIuxjDhaGnRPzuasNfA9zMXl8v+uTXNLWI7U5xHCYwKhufD+695iLnLjnUDlujIU9WjaO2//JvAi88E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754506051; c=relaxed/simple;
	bh=yo3hvJU4F14cflfi4CFG1n7hHZcoM3nakN3hHW39RhY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fMOX9Dp1nFSDNLZW30Vci1U5wh1CnEPkrBQQe8Q4/rD6MOQuYGCjFKW8WxBH4yEkhPiMMs5//JsInN7uZwjHbSSkZ5p+p1pGLfezNu9U2ixHN9UvO4DPtMghAIMUSigx7wVyA1ehUxnMDA+mubl6AF22AyoRqTtM15+WPawtmhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=pi9SVT59; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 576EWQOb019634;
	Wed, 6 Aug 2025 18:47:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=sekh+BBfYbSfx2QW2QUZ7yL6aD0R6FHzd/wXGStgf
	00=; b=pi9SVT5909bU2SBhCOFI6o9aJctIYOizO7ZpEr3avWzYIVAhITdp9+2fn
	Agx+GAJBL3Nv2A6tGk1OMZUcGxlp4Zt2OsFfao4QjhJSj8JEWKs3Y7BICW6CHMKB
	DcgpA+aC3JXFC/yMwq2nYsUgSg0fc/No+hvncm64ThUJeR5zKz7RdHeE9fa0O4up
	aTjR1y4/B/IIUSzJgK5BUbaMbPYJhBTtPrqxFYbpxzdsxIkj/78axi0nCpcSzsQ2
	SyCGq1ukigoBzKi1m4oEA4JcKhFse9DY2shV9plbvcFM1jsgdt/SWG2E0hMzj+Ck
	Y3cfmX6zIOkR2Q9L7nCBgx05byD5g==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 48c26tua5p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Aug 2025 18:47:21 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 576GAxO4022628;
	Wed, 6 Aug 2025 18:47:20 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 48bpwqd17x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Aug 2025 18:47:20 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 576IlCBD30409268
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 6 Aug 2025 18:47:12 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7B4FF58056;
	Wed,  6 Aug 2025 18:47:19 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 541EC58060;
	Wed,  6 Aug 2025 18:47:19 +0000 (GMT)
Received: from slate16 (unknown [9.61.84.78])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed,  6 Aug 2025 18:47:19 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v3 0/4] ARM: dts: aspeed: Add Balcones system
Date: Wed,  6 Aug 2025 13:47:07 -0500
Message-ID: <20250806184711.1882725-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: EIQaBfP4y7Wpp3GqWL3umkhJeStlrh3q
X-Authority-Analysis: v=2.4 cv=F/xXdrhN c=1 sm=1 tr=0 ts=6893a339 cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=2OwXVqhp2XgA:10 a=_exzTb3LTX8wHh0XIscA:9
X-Proofpoint-GUID: EIQaBfP4y7Wpp3GqWL3umkhJeStlrh3q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDEyMSBTYWx0ZWRfX9U6/dGhQLart
 +OssgKQyqs57HtT3UlzUisZcO/SV5j+JwDFvyTwUgP1yS0OVZ6RcziGs8bcaMhcjoRTQyaCpMN+
 GGyDbeui5gAEbBNi6ReLdrk+AkKmiSBeTn3MKYjUGSOkXUYRYZKmYVk66S6nUI2GcwVTqZNUzWG
 K2Pv+0axjp0m0vvyBw50+7rR81IHBwYlnSJ1QaJGaKbheveKo6pmIdtcqWIsmjpGDBH7tmSCRB5
 ahWo0hFmL+Wr1hpYS48FV+irfcdyOG3TuWd+SdyrvYL6wF2hcqXNQE6XjRodzS2HAUlZ6y+pjh1
 icAsLC6qezhLifSLTLUg95SAPeMH/jIaP7Jq2FD8pELgYckq0rI3O8WM9jn50g4zx4zzQUJPhA7
 L/QQ7+S95SMxvPGWGP9ydZ6kt6c3JQWZ4g4NaDSbWK0j01esCZTud7FiicikbJK2w3v2Zadd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0 mlxlogscore=972
 malwarescore=0 phishscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060121

The Balcones system is similar to Bonnell but with a POWER11 processor.

Changes since v2:
 - Fix a couple of incorrect i2c addresses
 - Document dps310 and max31785 properly
 - Drop the UCD binding documentation update, it's been fixed

Changes since v1:
 - Add all the ucd9000 driver supported compatible strings
 - Fix node ordering in Balcones device tree
 - Improve commit message to explain addition of ibm-power11-dual.dtsi*** BLURB HERE ***

Eddie James (4):
  dt-bindings: arm: aspeed: add IBM Balcones board
  dt-bindings: iio: Add Infineon DPS310 sensor documentation
  dt-bindings: trivial-devices: Document max31785 sensors
  ARM: dts: aspeed: Add Balcones system

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 .../devicetree/bindings/hwmon/max31785.txt    |  22 -
 .../iio/pressure/infineon,dps310.yaml         |  44 +
 .../devicetree/bindings/trivial-devices.yaml  |   6 +-
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
 .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
 9 files changed, 1441 insertions(+), 791 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
 create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi

-- 
2.50.1


