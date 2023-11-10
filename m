Return-Path: <devicetree+bounces-15053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4AD7E8309
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 20:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24DC11C2096B
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 19:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86313AC12;
	Fri, 10 Nov 2023 19:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="FC+8OgDF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC163AC1E
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 19:48:53 +0000 (UTC)
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFB68846;
	Fri, 10 Nov 2023 11:48:51 -0800 (PST)
Received: from pps.filterd (m0134424.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AAJgb89020145;
	Fri, 10 Nov 2023 19:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pps0720;
 bh=0/E/HjCmwE0fi71jwok3z9eyac/BTN3f7p312DifIaw=;
 b=FC+8OgDFWIT3nbzpxbY7oo/3cpkOnj2uqo2u6R7PvARJsK9EeBY/QDcZ1fh/0GGq1z/f
 GZNV6aX4HJFnimwVHNZb0Xt7W1Oa8R5LFYaM2zg8FTlMbvRyzIr1pfNuZkUszdum4dZK
 y0z3vCp2O3pQKrNRydXRRtb1jgKyjxjw4ikxZM7up//fgMJnGNdBOm85wo7D09I6BJJ7
 woCUdJIntRO9CktGfDFOy2eukAE9M9A5OUu4BUhZLY71BxJsjpxdQArbWlIs3tzjLD+T
 2IP5FYnZ9ZgI6AC3vTCQ8GfDvDNp4wXI9450HKxZYsGK/cqfUmaii9JlDQ8JGLhqR+mR WQ== 
Received: from p1lg14881.it.hpe.com ([16.230.97.202])
	by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3u9peqjchd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Nov 2023 19:48:36 +0000
Received: from p1lg14885.dc01.its.hpecorp.net (unknown [10.119.18.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14881.it.hpe.com (Postfix) with ESMTPS id 42820805E7B;
	Fri, 10 Nov 2023 19:48:36 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.39])
	by p1lg14885.dc01.its.hpecorp.net (Postfix) with ESMTP id B8712804508;
	Fri, 10 Nov 2023 19:48:31 +0000 (UTC)
From: charles.kearney@hpe.com
To: verdun@hpe.com, nick.hawkins@hpe.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Charles Kearney <charles.kearney@hpe.com>
Subject: [PATCH v2 RESEND] ARM: dts: hpe: BUG: Correct GXP register ranges
Date: Fri, 10 Nov 2023 19:48:27 +0000
Message-Id: <20231110194827.122045-1-charles.kearney@hpe.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: _1USLNSPgNeu86J2_zytf9cSNQAT2GEj
X-Proofpoint-GUID: _1USLNSPgNeu86J2_zytf9cSNQAT2GEj
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-10_17,2023-11-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 spamscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 mlxlogscore=578
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311100166

From: Charles Kearney <charles.kearney@hpe.com>

Bug fix to correct memory ranges on GXP to include host registers. This
corrects a issue where the host interrupt controller is not available.

Fixes: 53658de4fadb ("ARM: dts: Introduce HPE GXP Device tree")

Reviewed-by: Nick Hawkins <nick.hawkins@hpe.com>
Signed-off-by: Charles Kearney <charles.kearney@hpe.com>
---
 arch/arm/boot/dts/hpe/hpe-gxp.dtsi | 37 +++++++++++++++---------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/hpe/hpe-gxp.dtsi b/arch/arm/boot/dts/hpe/hpe-gxp.dtsi
index cf735b3c4f35..5de5ec4d833c 100644
--- a/arch/arm/boot/dts/hpe/hpe-gxp.dtsi
+++ b/arch/arm/boot/dts/hpe/hpe-gxp.dtsi
@@ -52,73 +52,74 @@ L2: cache-controller@b0040000 {
 			cache-level = <2>;
 		};
 
-		ahb@c0000000 {
+		ahb@80000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges = <0x0 0xc0000000 0x30000000>;
 			dma-ranges;
+			ranges = <0x00000000 0x80000000 0x20000000>,
+					 <0x40000000 0xc0000000 0x3fff0000>;
 
-			vic0: interrupt-controller@eff0000 {
+			vic0: interrupt-controller@4eff0000 {
 				compatible = "arm,pl192-vic";
-				reg = <0xeff0000 0x1000>;
+				reg = <0x4eff0000 0x1000>;
 				interrupt-controller;
 				#interrupt-cells = <1>;
 			};
 
-			vic1: interrupt-controller@80f00000 {
+			vic1: interrupt-controller@f00000 {
 				compatible = "arm,pl192-vic";
-				reg = <0x80f00000 0x1000>;
+				reg = <0xf00000 0x1000>;
 				interrupt-controller;
 				#interrupt-cells = <1>;
 			};
 
-			uarta: serial@e0 {
+			uarta: serial@400000e0 {
 				compatible = "ns16550a";
-				reg = <0xe0 0x8>;
+				reg = <0x400000e0 0x8>;
 				interrupts = <17>;
 				interrupt-parent = <&vic0>;
 				clock-frequency = <1846153>;
 				reg-shift = <0>;
 			};
 
-			uartb: serial@e8 {
+			uartb: serial@400000e8 {
 				compatible = "ns16550a";
-				reg = <0xe8 0x8>;
+				reg = <0x400000e8 0x8>;
 				interrupts = <18>;
 				interrupt-parent = <&vic0>;
 				clock-frequency = <1846153>;
 				reg-shift = <0>;
 			};
 
-			uartc: serial@f0 {
+			uartc: serial@400000f0 {
 				compatible = "ns16550a";
-				reg = <0xf0 0x8>;
+				reg = <0x400000f0 0x8>;
 				interrupts = <19>;
 				interrupt-parent = <&vic0>;
 				clock-frequency = <1846153>;
 				reg-shift = <0>;
 			};
 
-			usb0: usb@efe0000 {
+			usb0: usb@4efe0000 {
 				compatible = "hpe,gxp-ehci", "generic-ehci";
-				reg = <0xefe0000 0x100>;
+				reg = <0x4efe0000 0x100>;
 				interrupts = <7>;
 				interrupt-parent = <&vic0>;
 			};
 
-			st: timer@80 {
+			st: timer@40000080 {
 				compatible = "hpe,gxp-timer";
-				reg = <0x80 0x16>;
+				reg = <0x40000080 0x16>;
 				interrupts = <0>;
 				interrupt-parent = <&vic0>;
 				clocks = <&iopclk>;
 				clock-names = "iop";
 			};
 
-			usb1: usb@efe0100 {
+			usb1: usb@4efe0100 {
 				compatible = "hpe,gxp-ohci", "generic-ohci";
-				reg = <0xefe0100 0x110>;
+				reg = <0x4efe0100 0x110>;
 				interrupts = <6>;
 				interrupt-parent = <&vic0>;
 			};
-- 
2.34.1


