Return-Path: <devicetree+bounces-103519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA7F97B2EB
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 18:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 949781C216AB
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 16:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45A8173332;
	Tue, 17 Sep 2024 16:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="q0QSwvUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0BD2905
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 16:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726590087; cv=none; b=bydlKAF+iDJtdMKZOlEFicBlkH74/ynM6Tp4Gfdgu1uKEGhbfplgKW8/WRJqbnlXCtSUEA5WtFcLxPnOP4WULGomiLTnkc7l56ZQ5bYHG1fquqvCajTGZMwPtPsrMegNxBo6EmUXhxBtlfKcjtCMP0+EWvoaDpowCp7l9Q4MxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726590087; c=relaxed/simple;
	bh=Ms/4vFBkVOjDpM5YqyzKIKALUrHEMKp6h+FoiXA3M1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iOvxF/RdlomYPzBV1HEqd6kxqq/zz16p2zXYnFL/eafLYJfqImEvWTL1GLrvBEFfqH/zZWLn8ZEfU6fn+eh7/JlV0VB2o3dA/4t/81TBltJdtYvIeyqbbR1MUbJnYlPYyTJPh9e7/147Q3vp7gx1NI7lhUzi9q/gIAykAEaJ3x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=q0QSwvUU; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48HAGXOa006205;
	Tue, 17 Sep 2024 16:21:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from
	:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=pp1; bh=r2pSsQ57V7ZZBxHEa9DDe3pPPZ
	/65TXqWjSRoUFmmfk=; b=q0QSwvUUfAb+GiLz4UMgtYNFmqlsinS47WvKXo4Djj
	v8DgHvM+P35Nj/hDnVRvqls5jzcNKSgKHyFkx0lLuAGANIeVeZFNwu+6lWFx8QeT
	Jzc3IR0Ugm8/DeS9hWnHbfflMH1ct52YAmv7KulKVM0qSjlOFYY9ZLumn3+v4ASo
	4zGBnT0NaNA4t2q+2S/AelKtx30ONuTfUTRVkdXKq24OqJCAP3kRyGrn7aRe+4dE
	wesF5WLTjbAdFBxqirsJFfSzFvj/QMoCnrzHo2Trc+Rrz6/Yig5qhmTgXAkXH0y9
	gyAS/dgxGaLt0l8ZRqMFnnH2LFKA+FtnK1zu/8+HM4Gw==
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 41n41agmgt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Sep 2024 16:21:08 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 48HFuZiW001187;
	Tue, 17 Sep 2024 16:21:07 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 41nntq669m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Sep 2024 16:21:07 +0000
Received: from smtpav03.wdc07v.mail.ibm.com (smtpav03.wdc07v.mail.ibm.com [10.39.53.230])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 48HGL79M18875128
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Sep 2024 16:21:07 GMT
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5BA085805D;
	Tue, 17 Sep 2024 16:21:07 +0000 (GMT)
Received: from smtpav03.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D72075805A;
	Tue, 17 Sep 2024 16:21:06 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.93.228])
	by smtpav03.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Tue, 17 Sep 2024 16:21:06 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au, joel@jms.id.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        Eddie James <eajames@linux.ibm.com>
Subject: [PATCH] ARM: dts: aspeed: Fix Rainier and Blueridge GPIO LED names
Date: Tue, 17 Sep 2024 11:21:00 -0500
Message-ID: <20240917162100.1386130-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 33ZsqN1xw8zCrbN0fcQFLBTWX9EqL2EN
X-Proofpoint-ORIG-GUID: 33ZsqN1xw8zCrbN0fcQFLBTWX9EqL2EN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-17_08,2024-09-16_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 mlxlogscore=406 bulkscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409170118

Blueridge LED names to include the "led-" prefix as is proper.
Rainier should match for ease of application design. In addition,
the gpio line name ought to match.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 .../arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts |  5 +++--
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts  | 12 ++++++------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts
index dfe5cc3edb52..9e6bfaef3840 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge.dts
@@ -207,7 +207,8 @@ &gpio0 {
 	/*F0-F7*/	"","","rtc-battery-voltage-read-enable","reset-cause-pinhole","","",
 			"factory-reset-toggle","",
 	/*G0-G7*/	"","","","","","","","",
-	/*H0-H7*/	"","bmc-ingraham0","rear-enc-id0","rear-enc-fault0","","","","",
+	/*H0-H7*/	"","led-bmc-ingraham0","led-rear-enc-id0","led-rear-enc-fault0","","","",
+			"",
 	/*I0-I7*/	"","","","","","","bmc-secure-boot","",
 	/*J0-J7*/	"","","","","","","","",
 	/*K0-K7*/	"","","","","","","","",
@@ -215,7 +216,7 @@ &gpio0 {
 	/*M0-M7*/	"","","","","","","","",
 	/*N0-N7*/	"","","","","","","","",
 	/*O0-O7*/	"","","","usb-power","","","","",
-	/*P0-P7*/	"","","","","pcieslot-power","","","",
+	/*P0-P7*/	"","","","","led-pcieslot-power","","","",
 	/*Q0-Q7*/	"cfam-reset","","regulator-standby-faulted","","","","","",
 	/*R0-R7*/	"bmc-tpm-reset","power-chassis-control","power-chassis-good","","","","",
 			"",
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
index 0776b72c2199..a4aec3010456 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dts
@@ -109,22 +109,22 @@ leds {
 		compatible = "gpio-leds";
 
 		/* BMC Card fault LED at the back */
-		bmc-ingraham0 {
+		led-bmc-ingraham0 {
 			gpios = <&gpio0 ASPEED_GPIO(H, 1) GPIO_ACTIVE_LOW>;
 		};
 
 		/* Enclosure ID LED at the back */
-		rear-enc-id0 {
+		led-rear-enc-id0 {
 			gpios = <&gpio0 ASPEED_GPIO(H, 2) GPIO_ACTIVE_LOW>;
 		};
 
 		/* Enclosure fault LED at the back */
-		rear-enc-fault0 {
+		led-rear-enc-fault0 {
 			gpios = <&gpio0 ASPEED_GPIO(H, 3) GPIO_ACTIVE_LOW>;
 		};
 
 		/* PCIE slot power LED */
-		pcieslot-power {
+		led-pcieslot-power {
 			gpios = <&gpio0 ASPEED_GPIO(P, 4) GPIO_ACTIVE_LOW>;
 		};
 	};
@@ -203,7 +203,7 @@ &gpio0 {
 	/*E0-E7*/	"","","","","","","","",
 	/*F0-F7*/	"","","rtc-battery-voltage-read-enable","reset-cause-pinhole","","","factory-reset-toggle","",
 	/*G0-G7*/	"","","","","","","","",
-	/*H0-H7*/	"","bmc-ingraham0","rear-enc-id0","rear-enc-fault0","","","","",
+	/*H0-H7*/	"","led-bmc-ingraham0","led-rear-enc-id0","led-rear-enc-fault0","","","","",
 	/*I0-I7*/	"","","","","","","bmc-secure-boot","",
 	/*J0-J7*/	"","","","","","","","",
 	/*K0-K7*/	"","","","","","","","",
@@ -211,7 +211,7 @@ &gpio0 {
 	/*M0-M7*/	"","","","","","","","",
 	/*N0-N7*/	"","","","","","","","",
 	/*O0-O7*/	"","","","usb-power","","","","",
-	/*P0-P7*/	"","","","","pcieslot-power","","","",
+	/*P0-P7*/	"","","","","led-pcieslot-power","","","",
 	/*Q0-Q7*/	"cfam-reset","","regulator-standby-faulted","","","","","",
 	/*R0-R7*/	"bmc-tpm-reset","power-chassis-control","power-chassis-good","","","","","",
 	/*S0-S7*/	"presence-ps0","presence-ps1","presence-ps2","presence-ps3",
-- 
2.43.0


