Return-Path: <devicetree+bounces-188905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8804CAE5FE9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 10:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1278E4A7D0B
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B372797AA;
	Tue, 24 Jun 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QyKcr4Hc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D008279783
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 08:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750755113; cv=none; b=Adj8k4md+CFdMDFToD7G5TspIzuBRhrBSjLvuMQn5epGYo8jzD0Iqj0hhHGPeG8Mcwx9fhpbTOBrw5zeGYNmgqZZKhOM/BqbarUgG5dZ/IydJdFrMakdAVhLDU3lPDjshKKGEhVV2nKZb/d4HhvrbR7t8PKqfqLRkEt100rg6is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750755113; c=relaxed/simple;
	bh=O+0/NNdyanOsKuo7VkrM3TfSK0WCzMVIxK4peN58Ks8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=rlvym6JKsbS7k2CXxTaq8/YSR+QOjHYxfzB6TYzDqGUfNG5+XJfJZWhBj3MAjIaq4SVSK+zj6Be7SY6+sakTGscIMswCQrvUxFo9twz5PUW2ElPwI0VDxQCoEysAmbMnh7/vmjb3mm/3rsaL7cwP+4JAtGrgFieN4gUL+IQsZ9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QyKcr4Hc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8WqGf013820
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 08:51:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Ez3Gwl5i+FDthYRtNWM/xe
	hIhu8C67oWMqeNxloQp3I=; b=QyKcr4Hc7h56gOwh8hQoWHThGTdgMO83kEcbQn
	o+1tbecCcZFLE44vtZCpsVKHDBBFsXU/BeqYXrz9noIuU7gdlZvkPO6yEvCvjNEd
	Cs7TvRR3TNU9jhlsBNADcQwO2wx15pj8wVYRPUzGWEMQWOIZKmXVZ8BEaHFm1ytX
	hO+XSCHUIYmULiGqYU57mU3JGXrXrfT1qPW4FeFYKLMZPRJwY9sCjImnD858R3/n
	+hbExo+mVlQIebPuQ97tHnx90jQUTuXl2qoeEh6jx+Q4RPOegN/c6+AyC1MiUZcG
	FsdIY/6j3hATNRCgI/a4DR06Zz2z5SyKeueCliV048h1E5Pg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1swqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 08:51:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b115383fcecso155432a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 01:51:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750755109; x=1751359909;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ez3Gwl5i+FDthYRtNWM/xehIhu8C67oWMqeNxloQp3I=;
        b=QWB9kvFsrkUBpUjWLVc0t/OIVmK6osy8OnbUYWf6zB03KwTHgn0Mn28UAqoFOcIbkT
         gQzSqz+igENYPqkSH2UYpzpz9sqmZOiGqjGsIWJF3tdpoaImabIrh3H9+G1sCo0lORLU
         216uBHcr3sdE+L2XTW9MrgAVLISclPE6ITOieC+8BT8OWKVhB+VNiMZ5j6YLr8yHx72M
         RlE81aWOFRvEzqzbthRVpibx+G7Lgw9szc66sM0K63rchNvwuQsQ9ftzPSRGi6wWkDtv
         uzHc0XjftiicWP43dmysByKkfyo06WGBU0hchQt+C/QPWCJIFt7b8HnwTT+Uu0P5s3Cv
         dkwA==
X-Forwarded-Encrypted: i=1; AJvYcCUwuQ3DdRAJJ4yGJWjtA6esl66Feiu65NB59fFG9V1/F0yH79KurEDXnSOxU3OqC5rdtJ/flI0I69Uf@vger.kernel.org
X-Gm-Message-State: AOJu0YzWIH4GBHmvC/Axu2eCGyT4OiYVAyblPwyii7L4PALlaeka4paM
	mSjIcDixUWbPDVJaNwDnrLTr+AInvZ1ng3peGpi46AXMgafGtmxZfkuD+DOtuZvtvAdlXU3VhZy
	RfXb1PzPIC5M9M7+HHq40Wuy55Xkb9qgQ7WXZ5CzglrAKaDMgj6kc0AKvD6hSumYU
X-Gm-Gg: ASbGnctIMpYGHve83obpaSIp+zZLYHlkWDLm20VJN4eBb/nDQ9OK35i64+xbvqzRw1i
	3Ew0SOrFm5RO3d7bbpn5jrfq4KFtzRB7XXy9sxLjYxDgLlwDjkWPRapjlxeRJMWZVer8xqzYVWr
	VFtKUQP+fGXpRRuoQmKBHjrlCnwl/9Ep+EQzIMFQnwS4f3Xlyqbxq8/yY9u4tAEQTue4+VPRVd7
	eMr14Azj0u4iD6GYlJl0wkRuutaa6s+ZOH1Y6UmWuO65OjfC3dJoP/3/nv94JkfDtK6V14RQev4
	UXfrp7Bo8IppRF4BYNtZqcPc+dbjaZZZJXUDWXVutCxdnusnLsZyoDMJ/t9xkFheyDx12LsVzT2
	IW/9IyGxik8Ty+Ja4ccCF5c3SFdgMFAcfz+OYVFhp1Y59sa27Pg750Mov+A==
X-Received: by 2002:a05:6a21:7a47:b0:216:1fc7:5d51 with SMTP id adf61e73a8af0-22026e9ca83mr25244516637.37.1750755109169;
        Tue, 24 Jun 2025 01:51:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdJcCzJ0lzhXtZPX3cXGruU06jzOsonnUDOqdYvKlzOVRBG/862XwlRpc1U3+CHVebQ0xzBg==
X-Received: by 2002:a05:6a21:7a47:b0:216:1fc7:5d51 with SMTP id adf61e73a8af0-22026e9ca83mr25244485637.37.1750755108770;
        Tue, 24 Jun 2025 01:51:48 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b31f118f7d5sm8760344a12.12.2025.06.24.01.51.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 01:51:48 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:21:44 +0530
Subject: [PATCH] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAB9nWmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyMT3cyCQlMTI5P4jOLSxKISXYskQ2OzJGPL5ERDCyWgpoKi1LTMCrC
 B0bG1tQBBkuiYYAAAAA==
X-Change-ID: 20250624-ipq5424_hsuart-8b136b39ca18
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750755105; l=1552;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=O+0/NNdyanOsKuo7VkrM3TfSK0WCzMVIxK4peN58Ks8=;
 b=a+sVgAtYouBwL1e9eTQMZbFW8Ggaa4Dcb6QWyE9eBhMavn0AqEdUsEnsDlhx8C66pGw54ithr
 EDQpl7nEJxHDArpu+fswDkkau4OPcy8yjY1i9oXFrPgyhKrsgZwKFZo
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685a6726 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=EDESvqxZEWg_xnwLgQYA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: uISXiagbISDiiNIWZhD9ANnViXiLHmq3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA3NSBTYWx0ZWRfX2u0D+xXH5r6x
 ekFytYkCkpy7OEtEP4fwkE3cIb+sJ41yoBW8yX8W74vt4fUMwqQy03UNu+/IUaQU6bHnKqeAQa7
 zxHr3U9Z9wxppamjZnQXxMYbIRdzMvDm9BlOm6k0DqnD4hoHfOznyjdW6CYCLKdYd+zmDS9nRDj
 KKqrk6RFbmMCGe6yOEXk2Ck/fDfyJI8kGyWrjJRRQkBEOAoMuIEASPUw8nckGrqFusNOT+0MLAH
 19qiZApXbNkWBSTART4mM/MafYrTQ5rDXlJrHPPHMOcRAhMiSTeftDtLFKNTsSMdJSqbQS0nLJp
 TChtbtGb9qBqSXC7MqxaIzyfNcn7IOn/qpod12CFbKOpZudKF3JOAMksiIX7Ws0yujwZcgY3I31
 8L9YWy+k4PHSTt3CgT9XVc8Evd9loiSjVx75ZD2rzJGHJb+KqaQtKgV5WZ7cKWu62SHCbumy
X-Proofpoint-ORIG-GUID: uISXiagbISDiiNIWZhD9ANnViXiLHmq3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_03,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=918
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240075

QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
first SE, which supports a 4-wire UART configuration suitable for
applications such as HS-UART.

Note that the required initialization for this SE is not handled by the
bootloader. Therefore, add the SE node in the device tree but keep it
disabled. Enable it once Linux gains support for configuring the SE,
allowing to use in relevant RDPs.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 66bd2261eb25d79051adddef604c55f5b01e6e8b..d7c425a54c39458b4701a42c55a226ac5aaa7a3c 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -417,6 +417,15 @@ qupv3: geniqup@1ac0000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 
+			uart0: serial@1a80000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x01a80000 0 0x4000>;
+				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
+				clock-names = "se";
+				interrupts = <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
 			uart1: serial@1a84000 {
 				compatible = "qcom,geni-debug-uart";
 				reg = <0 0x01a84000 0 0x4000>;

---
base-commit: f817b6dd2b62d921a6cdc0a3ac599cd1851f343c
change-id: 20250624-ipq5424_hsuart-8b136b39ca18

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


