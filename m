Return-Path: <devicetree+bounces-249189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A82DBCD9C46
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD58B3015007
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9092286D60;
	Tue, 23 Dec 2025 15:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CuvII3KC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cxQVfe6s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E802BD031
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503496; cv=none; b=sINqoPCVDYTHwKdDe00OG1GhHcb3jjg/5WUNSuHrtGhAAV7Xndj0O6N5L/47/NJWBVSQXg++sNCy1GhmGgKu+iWdJuCJPe1lOGLhiydnq8QDqIhIuP2Fbw8RvEoohonb5OLjUC+TFxq3g/dTk5BXLbLror4cn52A0hakEIouuPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503496; c=relaxed/simple;
	bh=ZfV60eI8bPTndKZ4E0qoGgo0zcwtq9HEVDplofw3dTo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aho09Q2dWJ6pnx5C0sDzdu+Ondveqa7qpLorneqKS6hg2ZSNkhXLLmgbpLEj9GM6yA/roLL3fFRPOjRPr0d0MyIJPnthZcWXZrmApF0P1A3qW/9FWcu0Ui/imb4bQWH38MAXb0PppSV7UCs0Ji7uUqux0asOeMbPQzNtU8lW+jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CuvII3KC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cxQVfe6s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNErtt6461351
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=UF9Tw8xTiDZW4cRS1Un7Hhm0oQJvm+B53rR
	tZytlD78=; b=CuvII3KCi4OlVC7JwX9oufGUk5Cv+LLj4kdosWkePtAW7TtI5UN
	+hz4owUL/CsOAGhGoa2io0AvKc1YMexFyX9sAeLJVHxkdZnvceycjgit4xQpY0NV
	TNUUoKC76HL7Troqa7CToVsRtopawCg/hraxHhn2fNzHCD0tSJ/L4rn+pjcNAwEy
	5BBB0mzQYhWFXjlqmDZtnoE0mic10LWdU7Hewm+mK5MQwPHBYEgro+C8M7rR5YmA
	fR4OBpt0BPE085JSCh7d2QO7fxsPDgaiAAuNs4+S6EKv3mi6sPvYoSRIF0+U+WSQ
	i3hnm82RE9s0i5N8v/GnaFpaKEWkJroDL3A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7w8fr2y1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:54 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed74ab4172so121072631cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503493; x=1767108293; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UF9Tw8xTiDZW4cRS1Un7Hhm0oQJvm+B53rRtZytlD78=;
        b=cxQVfe6sFjiWH8XUy2AfrKnpQCe/Nh2P0FR4eaYlEZjNzDpciaY7Rt3/oeLIiiYIo5
         cwwQD2YBVJ7BxZaBqZkrLY2LCAtTT6FRgMqN3atsPB0w8D9aYAvL9JDEgC98vjZxLDrf
         rt1IVmfyDHzS19MoqKXjaNKcvhC9XFPpzaaC/K2R1CWRftZxaLcrum1CJ4Z9BUbLXdpB
         s+v46lVfK9ERkX8JPvNXkUaYMBSV1/bSSt3A3J1Iyz6Pwrpb0NF0OCMNk63+3ESZo4i2
         qP2ed47YOvvICVWJn1/gi/ju93CfcZOdP9H6PHfiVw0bnFsRkUOhCMWZhMLsHSB4c4vF
         5CzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503493; x=1767108293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UF9Tw8xTiDZW4cRS1Un7Hhm0oQJvm+B53rRtZytlD78=;
        b=qyLUyAiFdgvgjKNlgOMv3LAbX1zEpMYKyxmUkAj9LYj9QVZHjK6NTT3jk6w4ETb5OA
         Dcmv/LSoKCqEA0caGM8lVa8BreVmcDUZ+01/O0tsAycBA5tVPlTDdJDypCJP8dOojIlF
         5Jwd5TBBOiNh08k5qSYKAhhTsOJJCd67UtYoJOqmsugPgAa7ZmlI2joC6RYT001heemH
         r/hS/cAOB4DaumTL+rUAbCBHBBkgJn55/IDzp/lj9C+XYL3S5A/AdLXGNFb5VM+vae+V
         M3ISgQT1h+Z8uuafdDWyUSY8NbvqruPZhxj7dnLIjILvlwTHmCuA2xM3dYxiLJvQiaRD
         yjZA==
X-Forwarded-Encrypted: i=1; AJvYcCUqUrNmKiZriAnJWcN5kwngMi9SLrUQcUeUITMwKjLU6iJ+rOznzB/d+Wnw2d+5zPF7FSEfk5Te97ku@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7vBosAPAWIbUK5hSBh/I6H0iz7nVfP/gVLhgSWfmtY2ouPbx8
	UGARV3FCcFp49fOaYA36yUAusYlVpGqMCw17D6r0L84e8V5gzJOjDNVSlq/InjiVWPRbjfu262l
	9KU4i481ioHRIj1o+U+Y2HhH5Yz6Dfq+mvC5CL5AxP2EWJci+CDcPfUIB/T3HVlxg
X-Gm-Gg: AY/fxX6kQNjSEMoccPtTJNWzWgWoLMYjcrOuhfEaD7LzupIGE+OGlyxxfyjnM+3z/FD
	/I9FuM3Yv2qXJZCXr+8QJYCOs6TlniRAGvGdRXWreVVwVDcfKkqiIBQWVxe+AGyATft0Oso+JPv
	aMcp8mrkiLvZ9Y8ynB6TuvL1heRR7kOcsug+BphegxZOTqO688AZhf75fPAYNTIhRn6i6bnfURx
	szvvTtLqU1ho2nK7nZvI/X2uuDHfo2wVYXbAzhLeCfTLNC0KNy0lQXMOpcih1bVPhnU5JolDx40
	6O1+b2z7UL4PfPjVBQhNzZvX5J0E4AQ4/3J0MZlCTxygWTYlO2Yd9ZqVS+7Qdz3QPqmLG7Ap62T
	wih7gG41GjcIQPxn826vtK7UEZUEp7xeANolBz8iqqFJxAg3HK3Dr1s5mJmVwdC7fNaA=
X-Received: by 2002:a05:622a:1f13:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4f4abd1c387mr210379461cf.24.1766503493329;
        Tue, 23 Dec 2025 07:24:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBYSK239h3Y/KuS1iIuolV+atod6TOCfHpIJQZpFX6UpTkFtxdNXGow0/5H5UCYYBN8a1ESQ==
X-Received: by 2002:a05:622a:1f13:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4f4abd1c387mr210379111cf.24.1766503492870;
        Tue, 23 Dec 2025 07:24:52 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de10dfsm1407025366b.36.2025.12.23.07.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:24:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: altera: Use lowercase hex
Date: Tue, 23 Dec 2025 16:24:45 +0100
Message-ID: <20251223152444.155342-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7278; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=ZfV60eI8bPTndKZ4E0qoGgo0zcwtq9HEVDplofw3dTo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrQ8tuyQdzfxWsUGI2azRTfqFwrfNLY1fSkyc
 IIPhMqOh96JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0PAAKCRDBN2bmhouD
 12BiD/4z0S4UuPiN17emqvhO3qNUuaIcx2MHkNgo36f8rJuPvHlm43GAuzi8F27lgreb+fKVcVy
 QjQJpiPZgMtz1FpdO/Aupy3oQg2De8Al5TjvuXTXWByTvZEvLa7evwfemx/VAZddXH1lR8bc1Bk
 7F/i0q4kUegFw0f/KOiTKJUscwdiyECwJy8CuzhODRRy+3zt/2Vz70DuM1uwSarwpTUCmslUlMm
 bYgC3tUQLp2kEH+qznsISfcGcUP+GzlsHDDf+UtSGsa5S4G9G4ibr1srlWiwYwSo9lR1TKkPTbG
 d3m0mZSpyXM0wp4Hg+9DpjkAPnOzw53Y0ptboT6/4kY+5KbAhXuU7pg/CnwKkKVWGPPXr3O9oc8
 tvzivm8izMURG6x9rLJdyYJaFy8FVO654EWGvG9BQfvN3E47pi7RxPAXn/BkUWgfWWrUeSemDsI
 KM0Be/pW2jYTkMPDWxaAHwINz93rxcMug4ZCQTWJYV/e0Wny6kb0/c5WJnq9l/SgZ/fv3keK9hT
 8ncF53PM7xqwJSou3N0ktpuKdZgyMaC+Xzspb6+BTUeyxCqSjuccCpq/Rf6QP1Aj3bIErBXIyQZ
 5WYfs5vaVYnIIpcLSW4D5/xmykK4nvpb60a2MPWgFq0iqC7dSc9RGaUSna32wmGFQdV2vfFfFej 6u/7/1CT5VXs69g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: DGlqihVEDTC5GJP8wUc0AaEPMh2Yui-N
X-Proofpoint-ORIG-GUID: DGlqihVEDTC5GJP8wUc0AaEPMh2Yui-N
X-Authority-Analysis: v=2.4 cv=QutTHFyd c=1 sm=1 tr=0 ts=694ab446 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=W5tS-MohnFFR97_vL8IA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX7KJi2JTH6p6C
 XAPKyrYAoMLMITYgC1piC9H5xKiEuZRN4BqTEOR0NCjaz+S2YP5174GpsTTwlU7H9VdliJ0PAuD
 f8csO4qbmIXHY7X+ypdJMGM4sqfQGgrtwICns546CaWiO03FlP3coXAPPw80JgcpUoR/vkngnky
 WmCaAtdCeP/rFVmlDoA2zGR55hHXhzYqbgQSoZEcwzJICparAzFwmNwVyqEMJq7GMn4Pa5fwdSV
 lMCq3mqo7Iz6DN2id3XkYFrFJQIZEfeKblUvwQndea4DhePcwfZnjXXJIvfDy7vc3eiNQLoh6VN
 3uGOTTh54BIozVSxBnLEziRyPUrO9MOzoWjVC9VAt1owSsRJ8Vox68lsYS1hVPFpl0fydsbwkyV
 RavdS9pUsfjX1RvC1lJ3v2OzeFhuL02gbnX/n9B+aOcF3xuAsZ+0jQBdUjvfgQodwTJbaayNue6
 jaBNzRAbTy4RAOycOAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230127

The DTS code coding style expects lowercase hex for values and unit
addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 .../boot/dts/altera/socfpga_stratix10.dtsi    |  2 +-
 .../dts/altera/socfpga_stratix10_socdk.dts    |  2 +-
 .../altera/socfpga_stratix10_socdk_nand.dts   |  4 +-
 .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 48 +++++++++----------
 .../boot/dts/intel/socfpga_agilex_socdk.dts   |  2 +-
 .../boot/dts/intel/socfpga_n5x_socdk.dts      |  4 +-
 6 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 657e986e5dba..0d9cad0c0351 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -382,7 +382,7 @@ pdma: dma-controller@ffda0000 {
 
 		pinctrl0: pinctrl@ffd13000 {
 			compatible = "pinctrl-single";
-			reg = <0xffd13000 0xA0>;
+			reg = <0xffd13000 0xa0>;
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <32>;
 			pinctrl-single,function-mask = <0x0000000f>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 58f776e411fc..4ae18a013bbe 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -192,7 +192,7 @@ qspi_boot: partition@0 {
 
 			root: partition@4200000 {
 				label = "Root Filesystem - UBIFS";
-				reg = <0x04200000 0x0BE00000>;
+				reg = <0x04200000 0x0be00000>;
 			};
 		};
 	};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 92954c5beb54..7951ce46ae1f 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -174,12 +174,12 @@ partitions {
 
 			qspi_boot: partition@0 {
 				label = "Boot and fpga data";
-				reg = <0x0 0x03FE0000>;
+				reg = <0x0 0x03fe0000>;
 			};
 
 			qspi_rootfs: partition@3fe0000 {
 				label = "Root Filesystem - JFFS2";
-				reg = <0x03FE0000 0x0C020000>;
+				reg = <0x03fe0000 0x0c020000>;
 			};
 		};
 	};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index a5c2025a616e..d503600b813a 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -618,31 +618,31 @@ queue0 {
 					snps,dcb-algorithm;
 				};
 				queue1 {
-					snps,weight = <0x0A>;
+					snps,weight = <0x0a>;
 					snps,dcb-algorithm;
 				};
 				queue2 {
-					snps,weight = <0x0B>;
+					snps,weight = <0x0b>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue3 {
-					snps,weight = <0x0C>;
+					snps,weight = <0x0c>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue4 {
-					snps,weight = <0x0D>;
+					snps,weight = <0x0d>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue5 {
-					snps,weight = <0x0E>;
+					snps,weight = <0x0e>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue6 {
-					snps,weight = <0x0F>;
+					snps,weight = <0x0f>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
@@ -730,31 +730,31 @@ queue0 {
 					snps,dcb-algorithm;
 				};
 				queue1 {
-					snps,weight = <0x0A>;
+					snps,weight = <0x0a>;
 					snps,dcb-algorithm;
 				};
 				queue2 {
-					snps,weight = <0x0B>;
+					snps,weight = <0x0b>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue3 {
-					snps,weight = <0x0C>;
+					snps,weight = <0x0c>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue4 {
-					snps,weight = <0x0D>;
+					snps,weight = <0x0d>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue5 {
-					snps,weight = <0x0E>;
+					snps,weight = <0x0e>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue6 {
-					snps,weight = <0x0F>;
+					snps,weight = <0x0f>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
@@ -842,31 +842,31 @@ queue0 {
 					snps,dcb-algorithm;
 				};
 				queue1 {
-					snps,weight = <0x0A>;
+					snps,weight = <0x0a>;
 					snps,dcb-algorithm;
 				};
 				queue2 {
-					snps,weight = <0x0B>;
+					snps,weight = <0x0b>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue3 {
-					snps,weight = <0x0C>;
+					snps,weight = <0x0c>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue4 {
-					snps,weight = <0x0D>;
+					snps,weight = <0x0d>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue5 {
-					snps,weight = <0x0E>;
+					snps,weight = <0x0e>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
 				queue6 {
-					snps,weight = <0x0F>;
+					snps,weight = <0x0f>;
 					snps,coe-unsupported;
 					snps,dcb-algorithm;
 				};
@@ -912,24 +912,24 @@ pmu0_tbu2: pmu@16082000 {
 
 		pmu0_tbu3: pmu@160a2000 {
 			compatible = "arm,smmu-v3-pmcg";
-			reg = <0x160A2000 0x1000>,
-				<0x160B2000 0x1000>;
+			reg = <0x160a2000 0x1000>,
+				<0x160b2000 0x1000>;
 			interrupt-parent = <&intc>;
 			interrupts = <GIC_SPI 144 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		pmu0_tbu4: pmu@160c2000 {
 			compatible = "arm,smmu-v3-pmcg";
-			reg = <0x160C2000 0x1000>,
-				<0x160D2000 0x1000>;
+			reg = <0x160c2000 0x1000>,
+				<0x160d2000 0x1000>;
 			interrupt-parent = <&intc>;
 			interrupts = <GIC_SPI 146 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		pmu0_tbu5: pmu@160e2000 {
 			compatible = "arm,smmu-v3-pmcg";
-			reg = <0x160E2000 0x1000>,
-				<0x160F2000 0x1000>;
+			reg = <0x160e2000 0x1000>,
+				<0x160f2000 0x1000>;
 			interrupt-parent = <&intc>;
 			interrupts = <GIC_SPI 150 IRQ_TYPE_EDGE_RISING>;
 		};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index 9ee312bae8d2..8f8a5423ba02 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -131,7 +131,7 @@ qspi_boot: partition@0 {
 
 			root: partition@4200000 {
 				label = "Root Filesystem - UBIFS";
-				reg = <0x04200000 0x0BE00000>;
+				reg = <0x04200000 0x0be00000>;
 			};
 		};
 	};
diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index 0034a4897220..d7d500f50a07 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -103,12 +103,12 @@ partitions {
 
 			qspi_boot: partition@0 {
 				label = "Boot and fpga data";
-				reg = <0x0 0x03FE0000>;
+				reg = <0x0 0x03fe0000>;
 			};
 
 			qspi_rootfs: partition@3fe0000 {
 				label = "Root Filesystem - JFFS2";
-				reg = <0x03FE0000 0x0C020000>;
+				reg = <0x03fe0000 0x0c020000>;
 			};
 		};
 	};
-- 
2.51.0


