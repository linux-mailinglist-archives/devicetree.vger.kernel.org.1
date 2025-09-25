Return-Path: <devicetree+bounces-221189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE36B9DAE1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A13997A6F8A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E2B2EFDAA;
	Thu, 25 Sep 2025 06:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Od/8hjz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118012EF66E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782035; cv=none; b=C6cf1ZlJiLj/xDRDLAbjDTgavcBq/4q3kfLnl3gdrNyq2r6Mj9vQ0rZclTIhwqtouf7R94yJ0LLNkJZ1cDjRLquS21/k0wgr1EYbP/fn1dp2/PngYg0XckxLiDKy3hMezVJJt0di435FgKPqcYitB1Tz94bAScMRUl3GBYrwVVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782035; c=relaxed/simple;
	bh=sKIpQJiz5n+iJRMJnnf9m2DoIPG33elp5oBZ4OmiH7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=arw/vwL6eZwnxlqbH12QHRlZOUn+fy7bD+FG2iBniaD8wVyr8/y6lGrKALLZitpJH772tYetMd+Dkgyuret6CZPgSInrrtxIlgzyAQ3EZqkMwcCs7BcTmvZnF52HJtU24ZxbXsGL4Nfyfk+FNoMY+i6NYdxELappeT8GGB7TRnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Od/8hjz1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P12k7I002657
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LwMildERMeP5s/2LAPgO3c6kJVjWS2uLmJeeFeaZY8A=; b=Od/8hjz1gNy5qM5s
	fVdjsJFiDN3PPHSyTxFxolsoMNlcKxn8e5QJWDlMuZjJzsRulsRLFRDVS04cSvE3
	GrUdIRfwGAYktS1pAQ44/vzH1sCqCynKnrpXn+QZZCtAGHLXifEppCYl95mQiBlC
	p62Z6fV9U3GW4WNuVHPIw1YTY/bme4xnt19qxYQrbHr6NWaNfhidflIHN7bpbqtf
	Oxduj1GDvoJ1rlsGfv6u1VrV3vxE5QS3lvKtgyQ1ieRHMsNBuVAtramnsIYZqhvD
	p3symyND3YQQDkqv0qpCVg+1TzfJGXBfBKnLVrujIjGvxWPPy+45OPAgZxxpPuCT
	1O2Y4w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1js1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27eca7298d9so13445535ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782032; x=1759386832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LwMildERMeP5s/2LAPgO3c6kJVjWS2uLmJeeFeaZY8A=;
        b=B6fQbX6uVkMk2VMES/IOeYLhuSDKtGdVu/lIfHxrC2/eu0bAuxHwsM5Qax5OcmJoJS
         rni9Jvk8ZeYveKVnDWDCqcs8LzpLakgVfFl+4G5Ja7/ucZlwWIu9ouBV571L1bshH9ws
         U+BMakuYwHXcxlOH8bHFHSWGKpYn3ZvmVDZ+XzAlmMjQLdI4ksq5GGD/976uVH06hOwa
         ToMIuKO9PncNPmvyLxlbvdpXGUL6KNj/GQnVevc/J0KbGdkHDIo6ibVMFGoR1xJNsgrX
         /NFU2CjV45wg8jWTGNBQdLG7FbtHGfkHK4OhVf4YW6OtQVz/Nuw+gtQjjvrUDIbugb+0
         q9OQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL3vcZv/PNsHSlUv/We4U+U0ZTxfgJgWold2FFZZtmmni82Rjf+EWZmb/MyTDWCf0DPwrFNsfpy6Do@vger.kernel.org
X-Gm-Message-State: AOJu0YzK7nsKJMssGDvpLYcdOA+AEiKpSzinzCVUSI8hC/IysoUSKVT3
	lvtQgm43Q264sawVfygUv9TIZm1vMonPyYBRRzIP36VoCv4dn5w/RCV9Wu3e0pQ1ulM8C3ryr7V
	fsIEWEz1Epq8w2mYvCe1l9mvBJ7QePkSVgGhObiyOzfol1Zd9h2ePyMAsDs5kTaUv
X-Gm-Gg: ASbGncs8GSsUOqpIyN1BGQCWcsEvfyOVKQ/o5b4xt/+pWO7huthw6kir2lC+18Pamsk
	KLmo7FVqIayAaqevJAtb2NQQxe+mm++G8HfZKLGk565Nmjn02YvEaCsI7lw1yy67rr5FoizBbeS
	mjsaR+5TOc3hm2yL6OU1zRHmL0ZJm0Fyc3S6kTOYcU/fpr6i7//iOAFJtg+micJI2FfzaZquoJD
	BnLwuvKCfThXJbE5/R7Mtl5QhWQlDM5vhMrjfkb0oAjz6UPkhnCKbUhrRrQepa3FT6mYAZKKY+J
	erELZAmkr7t3ZTPm0y722qYA9o7sZ0gmTQhEWWo/rKBfex3+BLhTjKEJ/buU5RuDMvXIRHdHt8M
	M0W6MLQXVPIrnJ0E7fAoy0jvD2yxhA6OajADmKaJqe2nd7yPe/op+kjOs4c9o
X-Received: by 2002:a17:902:e88d:b0:272:f9c3:31f7 with SMTP id d9443c01a7336-27ed4a5e907mr21537975ad.50.1758782032514;
        Wed, 24 Sep 2025 23:33:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGy9xf+4ZfODJwxxZSZfr51YdmBTrmJhyNT7pD8G9hsp0frJmhp6gtCuPlJmDRkAV6whVx4pw==
X-Received: by 2002:a17:902:e88d:b0:272:f9c3:31f7 with SMTP id d9443c01a7336-27ed4a5e907mr21537815ad.50.1758782032097;
        Wed, 24 Sep 2025 23:33:52 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:51 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:18 +0530
Subject: [PATCH 10/24] arm64: dts: qcom: glymur: Add SPMI PMIC arbiter
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-10-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: vJcSdd2RCmpSkuZRE5N7JVufSl-2npuL
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e251 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fj32sBe4WaP-u41FRDUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX55SdQjSttgG9
 tZmwCLbH7AGh0XhSuvZvP+y6/eiuk2TP7pDXIv08Sui5a+ngjkODqCSWWBnAgduiYO58ZoswJwG
 xOyooEyclYTEQFkXoWZZUjDiul5p1XJLUXOqe0lngJUCE5FpWM+hgRea7bXRMhs9Bm059KQ9yWw
 5tCwN1JxCr7PxUfZzemCoRFQGdZGxVYNSTT7n0hETPqRYXeOWC+3aYi3jrrTc6Y1vsvcLIXrL02
 4MG7D270EJO+xbYMuHxB6smdfYl4On23WkB4Iruc2l3TSj720N4Ipu4s87H5/HJf/B+TT8w96Br
 /pEhPgQf4XRYBMFULWSCrfvKhp5WfkFPA2ZBDyn9TWH555JcORFFTJbGrfoiZnHLAoPC7l+4zyY
 a1YCenh2
X-Proofpoint-ORIG-GUID: vJcSdd2RCmpSkuZRE5N7JVufSl-2npuL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add spmi-pmic-arb device for the SPMI PMIC arbiter found on
Glymur. It has three subnodes corresponding to the SPMI0,
SPMI1 & SPMI2 bus controllers.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 62 ++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 2632ef381687c2392f8fad0294901e33887ac4d3..e6e001485747785fd29c606773cba7793bbd2a5c 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -2600,6 +2600,68 @@ sram@c30f000 {
 			reg = <0x0 0x0c30f000 0x0 0x400>;
 		};
 
+		pmic_arbiter: arbiter@c400000 {
+			compatible = "qcom,glymur-spmi-pmic-arb";
+			reg = <0x0 0x0c400000 0x0 0x00003000>,
+			      <0x0 0x0c900000 0x0 0x00400000>,
+			      <0x0 0x0c4c0000 0x0 0x00400000>,
+			      <0x0 0x0c403000 0x0 0x00008000>;
+			reg-names = "core",
+				    "chnls",
+				    "obsrvr",
+				    "chnl_map";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			qcom,channel = <0>;
+			qcom,ee = <0>;
+
+			spmi_bus0: spmi@c426000 {
+				reg = <0x0 0x0c426000 0x0 0x00004000>,
+				      <0x0 0x0c8c0000 0x0 0x00010000>,
+				      <0x0 0x0c42a000 0x0 0x00008000>;
+				reg-names = "cnfg",
+					    "intr",
+					    "chnl_owner";
+				interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "periph_irq";
+				interrupt-controller;
+				#interrupt-cells = <4>;
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+
+			spmi_bus1: spmi@c437000 {
+				reg = <0x0 0x0c437000 0x0 0x00004000>,
+				      <0x0 0x0c8d0000 0x0 0x00010000>,
+				      <0x0 0x0c43b000 0x0 0x00008000>;
+				reg-names = "cnfg",
+					    "intr",
+					    "chnl_owner";
+				interrupts-extended = <&pdc 3 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "periph_irq";
+				interrupt-controller;
+				#interrupt-cells = <4>;
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+
+			spmi_bus2: spmi@c48000 {
+				reg = <0x0 0x0c448000 0x0 0x00004000>,
+				      <0x0 0x0c8e0000 0x0 0x00010000>,
+				      <0x0 0x0c44c000 0x0 0x00008000>;
+				reg-names = "cnfg",
+					    "intr",
+					    "chnl_owner";
+				interrupts-extended = <&pdc 72 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "periph_irq";
+				interrupt-controller;
+				#interrupt-cells = <4>;
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+		};
+
 		tlmm: pinctrl@f100000 {
 			compatible = "qcom,glymur-tlmm";
 			reg = <0x0 0x0f100000 0x0 0xf00000>;

-- 
2.34.1


