Return-Path: <devicetree+bounces-203705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9A5B224A2
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FFD53B82C0
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA4C2E7F04;
	Tue, 12 Aug 2025 10:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cJck6q9F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39961311C27
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754994770; cv=none; b=Z3zbuJJ9SPBYnQQv6/975GS8C4omUSAKDY3szd9Ew64LRZGXxBTzAqGzc1DG3RL4AT7y5aHM4jTVMaK6pwp6J3cedGgwyW0DahIrhmd7J1TysyCr3bKwBvwpG43cyj4OPzuwd8s2FDUqzjg0s9jITZ8pgAh8VLKBsSqXWjU8poQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754994770; c=relaxed/simple;
	bh=Zwix8pen6Yo1Fj/mEtsWMgFNTSBofUUZufpqCVfnogo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=RmGJnRBPCeZXiaDtltU6eKSxXeSzhmifiGVyAzQN7o1bZjBOGKjdEA6TV1frG9Np9CVtU1MkwPShg7Pf+O2bjSfzEAnx8anJYYXp5q0OpFs6gpWgl0Npd6qOEKQwT8jIK1MDgcku9H3XMQ8Yr1q1FpHTptRdaIaYXeQDLq/gH5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cJck6q9F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5Kxxi021654
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:32:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I/yvSv1Fr2dEsiKBH2Rhrq
	TX7XXrniE2jmkhiSsbkIg=; b=cJck6q9FJsLrFLtH1Af3cuzRUuYyO5QKLVqAcf
	Uo3ntCWxiwENGGviZJ6Xm9GoWyNpRmb21KCRvqSZRRGqVVIdraxYxpMd9KTSDL2r
	UgUhEx/+zVR6SmMXhfzk06RPvVCJ3A7NK2HbHEhqWAcZOxKWfGzjgbaj6+Jw8Tx6
	DNw/7jSbAlZtUc1DrVf9VqagQxqrK9M5kAbqAx+j/eGbCAlTwYOPU870vydQg5tf
	EJhVb4Yyb1JjJ50cefQxDz0jrxJtLE5+rMRCVQk4AgErLHOkH+j5r2NRgepgfYpV
	EDAyamIS8hG8Vba39NOnBG+6cVtJ1YKBul26wPy2MVRlT/Cw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj47rv9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:32:48 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-31ea14cc097so5066796a91.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:32:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754994767; x=1755599567;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/yvSv1Fr2dEsiKBH2RhrqTX7XXrniE2jmkhiSsbkIg=;
        b=iLGQdfm39F1zqt48kBdJsFFFLb7YuMljsEobyvzq0sSK+GWFKl1P5rMMdbDnRJqx+J
         fD7qNNWe6cwM/fi83Up4+Yt/UerTXP3VD53eQJQZVLD4J8PBVTpmc5+7As7YUr2mHQOG
         5h1EBe1bukFhfuwu1rCTSdSxqkqJFSrLjC9X9CNNmxkP+BAAMdNHomt3LqcYTg96ssgc
         xZDKK4mNvw0JdnqiQYlVH2AP6TB/kZXOxtI0FS7d9Lr8UZERgsyKGSU78RC5qPcwzfLv
         91gF8YJKSu4hNYMzKlVwJazmOPAiCkN/2eLChH46A4z7Eu7qmOwIq5QkdcYcJZrnoxVo
         ao3Q==
X-Forwarded-Encrypted: i=1; AJvYcCX2ZqkCL1/WLo7Nd+b3QaJVevMAtpgX9cti58/fi+pPpDzbb/5FzCoBAS9397NzZWTc0OfDtNp5avYE@vger.kernel.org
X-Gm-Message-State: AOJu0YyD6fUps9FnnnPaXg03zNwx2AdarIpV29XrobwfIH1o814aGcJN
	9Jw/p4IlUNpmYu1pE7tlj1fyRSUH6BqTsNQgzhCLZxnn4YiZK63vl7diF5FoCG7OkpAoRjqQHRY
	g5Vf/6S3WlmdnOzrNmFUcVUpd12sILs2Q+D+D8JK6sOFT/2q62FsJjwWcJQZgf3CW
X-Gm-Gg: ASbGncsdQ5mRGsC/2T7+3SL3IQ5nHl6goU8zlLOrWydargk/ExacsQ5fflSVJa3ypAO
	9AwkdtD5AieQoBAgVFdrZNsXCXNGITNwLtJ9xz28kNv/sbP8JjWx4UE77EKDO3LUgycoA6H0rVk
	T82UbYXbN3ycgOKLt/NxhPoLLiRZh8VcAL7yMljH6mVFN7RmH8IiPR+4fToWyJKbs1cBrnI+gxb
	DYene4PStAenEoqmv549/GXTnD+9LX/KZi8TMbA4TbA6Mu+7fFn3BfdZc4y6z8ztmSexDvx6rTE
	SC31190iwshOumYgpkoC4+6rryqd7kF+yxUu5usySYv/qyJiX+PYl6KZtZsgMZQyA4Q0Kc+D6tb
	DIo4J0DkqXSQogLVH2IdcYYk/hj+8Ypi0VY2NqIVKaHPr4f8rlfHQa1HUBDGcmxMY3H9H5v7ruM
	U=
X-Received: by 2002:a17:90b:5805:b0:31e:f397:b5b4 with SMTP id 98e67ed59e1d1-321c0ac9f4dmr3525955a91.22.1754994767346;
        Tue, 12 Aug 2025 03:32:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNqzpXCGTc7BzJ+b+Y/i95FDTZGkUqpqGqRJHdC9mzekRbVPu2i61yvQQx3jX2Yxjf7qyC4w==
X-Received: by 2002:a17:90b:5805:b0:31e:f397:b5b4 with SMTP id 98e67ed59e1d1-321c0ac9f4dmr3525926a91.22.1754994766825;
        Tue, 12 Aug 2025 03:32:46 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b46e5074e87sm3886564a12.54.2025.08.12.03.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 03:32:46 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 16:02:41 +0530
Subject: [PATCH v4] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-ipq5424_hsuart-v4-1-f1faa7704ea9@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEkYm2gC/13MQQrDIBCF4auEWdegxkjSVe9RShntpAo1JpqEQ
 sjdK90UunnwLd6/Q6bkKcO52iHR5rOPY4E6VWAdjk9i/lEMksuWd0IyP82tkuru8oppYUjYazK
 yE72BcpoSDf79DV5vxUOKgS0uEf4yuuH/ma1hgg3IO62NkNbYS8y5nld82RhCXQaO4wMPyANDr
 QAAAA==
X-Change-ID: 20250812-ipq5424_hsuart-aea96eb2819b
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754994763; l=3222;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=Zwix8pen6Yo1Fj/mEtsWMgFNTSBofUUZufpqCVfnogo=;
 b=6TydxKzUmyHfBHekNKC5K6tDmoenhnaF18uh+kLa6qKlKp20yyLu6+cUPDf9coyqRoTSWRTG0
 paCZLVLlbodCiXiZmMl/PJ8zipHKjtG/T61aa51c+bBsrThQrdG8hrh
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfX+XbMyZrXjLOw
 PxPidfeQKUMgGQ9g4XG1p/QWbkrul6IPiVoPh5J1TO/HmK6qoUWweWiwjsdgJAuTB1WC2eikRLV
 FwQUyWLWVRMmhGqyhDZ3C0rPy2lb1JfkfVEp+5lDw88erD7frhMpiBfCzdCX1X/Jp953TbVC3to
 02C3W4FlXkzaNXCXMSKJ9yT4Pvl4fOB//KwKqOaRwy06TQVEXA4M6xfQMnxREl79Kg2XHMI1RZO
 1Nseg6krL+prVyOiGYg9bETtWZgz/dKiDrTGW/3IA5pneJnFB8blztrDAhAMwH/3iYIoZr92zEN
 XBUEGmD/ttN1dRZd8lwn7now2xauCm5TUHA8JP5UEUC2g1Tu5FRcwDGnnBy+oIr4fa7iMMhVJf5
 x7TTdbCG
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=689b1850 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=WJFIjaQOFed4XKsVb8YA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: sT0Ej9KktwRnbI7QBRJu0u3xXx31_RMj
X-Proofpoint-GUID: sT0Ej9KktwRnbI7QBRJu0u3xXx31_RMj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_05,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027

QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
first SE, which supports a 4-wire UART configuration suitable for
applications such as HS-UART.

Note that the required initialization for this SE is not handled by the
bootloader. Therefore, add the SE node in the device tree but keep it
reserved. Enable it once Linux gains support for configuring the SE,
allowing to use in relevant RDPs.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v4:
- Keep the device in "reserved" state (Dmitry)
- Link to v3:
  https://lore.kernel.org/linux-arm-msm/20250630-ipq5424_hsuart-v3-1-fa0866b12cbc@oss.qualcomm.com/
Changes in v3:
- Add the pinctrl configuration for the SE (Konrad)
- Link to v2:
  https://lore.kernel.org/linux-arm-msm/20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com/
Changes in v2:
- Correct the interrupt number
- Link to v1:
  https://lore.kernel.org/r/20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com
---
---
 arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi       |  9 +++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
index 117f1785e8b8e3eef3ea4df005ac491ad4ed76b6..738618551203b9fb58ee3d6f7b7a46b38eea4bf4 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
@@ -224,6 +224,13 @@ data-pins {
 		};
 	};
 
+	uart0_pins: uart0-default-state {
+		pins = "gpio10", "gpio11", "gpio12", "gpio13";
+		function = "uart0";
+		drive-strength = <8>;
+		bias-pull-down;
+	};
+
 	pcie2_default_state: pcie2-default-state {
 		pins = "gpio31";
 		function = "gpio";
@@ -239,6 +246,17 @@ pcie3_default_state: pcie3-default-state {
 	};
 };
 
+&uart0 {
+	pinctrl-0 = <&uart0_pins>;
+	pinctrl-names = "default";
+	/*
+	 * The required initialization for this SE is not handled by the
+	 * bootloader. Therefore, keep the device in "reserved" state until
+	 * linux gains support for configuring the SE.
+	 */
+	status = "reserved";
+};
+
 &uart1 {
 	pinctrl-0 = <&uart1_pins>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 2eea8a078595103ca2d3912f41e3594820b52771..bd891e39f33e18864a1d4c2bd8399b8b7486fec5 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -442,6 +442,15 @@ qupv3: geniqup@1ac0000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 
+			uart0: serial@1a80000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x01a80000 0 0x4000>;
+				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
+				clock-names = "se";
+				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
 			uart1: serial@1a84000 {
 				compatible = "qcom,geni-debug-uart";
 				reg = <0 0x01a84000 0 0x4000>;

---
base-commit: 2674d1eadaa2fd3a918dfcdb6d0bb49efe8a8bb9
change-id: 20250812-ipq5424_hsuart-aea96eb2819b

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


