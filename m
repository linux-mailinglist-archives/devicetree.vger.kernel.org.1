Return-Path: <devicetree+bounces-120311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DDB9C1FD8
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 15:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 610D11C20A0A
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 14:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B220A1F4FD3;
	Fri,  8 Nov 2024 14:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="XIBNqvHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010241F4FD0;
	Fri,  8 Nov 2024 14:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731077926; cv=none; b=Ohm3FFdfa9A6gjrLtvYGsvmZgRbuRRAjzv7wdlRYgpKGimzRv6m8kYQJW2lCWZcilblo9nmsWBsrkJdx7CT7I/x2MVm6QlsmBnuDfTiKvzb9wL4b1Srn6Z7OEkj7g7UqbITtfgsXzNCym0QkEUep4KULxU2CcOgW2PU5jMhM8mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731077926; c=relaxed/simple;
	bh=6Kst4ixaJAPM3FbeYM5n7Iob4c6xXcYWWt8yZzHuuJQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fF6wbPzeNke3c85bEfov+w/Ispa5etRX/hQFO4qCShoNd8fR5sizuOlxBYs7mBBTp8K6dDGvSqbLPA/Dy5XtR4jqjJTQrxZ9oAaQsexsuzZ23+oWgApEG9XDMk5u72ByyY6eGcHai68hRZLj1ba9gtZ1RDChNoVWmCBXhuo3w6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=XIBNqvHO; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A8DBXp0001699;
	Fri, 8 Nov 2024 14:58:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pp1; bh=zbQ/7ajaIUHGgWotTYl7JBdEMFP9k+dUhiJRbgtHL
	w8=; b=XIBNqvHOF2R1YdeL7CXowNR4wqAOMUzKpbgEDXznKwrIgP8d5dSMQImlM
	8onEXw51YTzdg56FnLx4UVpEcDMVubquzpniNtvYz8wL/tNyEcD/KI7kde9nAOc0
	VK31Bck8XMMtSoWKaSQAwE6gJvzpYd+nEhAP4jlhA9YlL3tHzAVKquWzrbi3VQsB
	da94cTXxg6dwr6NsQPeDDgYzjN6VsahH5qUsnCL5T2d5gP7sn+QlaRpLNJK5JBHj
	Be6vbbRCbMVUKydf0TyqpKbPCqZT2WMzFqY1J/UlmsbVXUW1OXhbhJC/U4TBqEkv
	o28S26i1xJVkf2F/GhZDko/8DcQ3w==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 42sk9s8hxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Nov 2024 14:58:25 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 4A8EQCsa008433;
	Fri, 8 Nov 2024 14:58:24 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 42nywmjfh0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Nov 2024 14:58:24 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 4A8EwO5E24117922
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Nov 2024 14:58:24 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E31A65805A;
	Fri,  8 Nov 2024 14:58:23 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B37E558056;
	Fri,  8 Nov 2024 14:58:23 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.24.137])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri,  8 Nov 2024 14:58:23 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: andrew@codeconstruct.com.au, joel@jms.id.au, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Eddie James <eajames@linux.ibm.com>
Subject: [PATCH] arm: dts: aspeed: Blueridge and Rainer: Add VRM presence GPIOs
Date: Fri,  8 Nov 2024 08:58:21 -0600
Message-ID: <20241108145822.1365072-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.43.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: uEoh45k5zx-eHpSrTI_hq81m4nT7e9B5
X-Proofpoint-ORIG-GUID: uEoh45k5zx-eHpSrTI_hq81m4nT7e9B5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 mlxlogscore=318 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411080122

Add GPIO line names to the GPIO expander to describe DCM and
VRM presence detection lines.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts | 4 ++--
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts
index 5f9a46c2abb8..d504ae84db89 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts
@@ -1232,8 +1232,8 @@ led-controller@60 {
 		#gpio-cells = <2>;
 
 		gpio-line-names =
-			"", "", "", "", "", "", "", "",
-			"", "", "", "", "", "", "power-config-full-load", "";
+			"", "", "", "", "", "", "P10_DCM0_PRES", "P10_DCM1_PRES",
+			"", "", "", "", "PRESENT_VRM_DCM0_N", "PRESENT_VRM_DCM1_N", "power-config-full-load", "";
 	};
 
 	led-controller@61 {
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
index a4aec3010456..eefc69d0d032 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
@@ -1280,8 +1280,8 @@ pca_pres3: pca9552@60 {
 		#gpio-cells = <2>;
 
 		gpio-line-names =
-			"", "", "", "", "", "", "", "",
-			"", "", "", "", "", "", "power-config-full-load", "";
+			"", "", "", "", "", "", "P10_DCM0_PRES", "P10_DCM1_PRES",
+			"", "", "", "", "PRESENT_VRM_DCM0_N", "PRESENT_VRM_DCM1_N", "power-config-full-load", "";
 	};
 
 	pca_pres2: pca9552@61 {
-- 
2.43.5


