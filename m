Return-Path: <devicetree+bounces-193893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D3CAFC22B
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 07:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6280D4261F5
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 05:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7209B221733;
	Tue,  8 Jul 2025 05:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IEQY2DUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3ABE21ABD0
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 05:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751953181; cv=none; b=Hd1a6nGDmAZ674QbllQmcC7ne70zoG0T3tpEB4o8fTWbghJ5TQn7RvGLX14h/eymvZC9B5mb0EWkgy0B8I7+k6FaFFUQM4KUDxskhlyaWbEtT/CTJgrjlhLpKYW82XssppLNyynUdfNgWekOPZ1ZbiPMKxVYJ6FMLCkVxUYlj0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751953181; c=relaxed/simple;
	bh=VfK8mEDpXLVB6H57qiYobVaPCMl4DeUgsq+1SP8HFbU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q2mIwT2povEEnSRICE6ZaOF1Jhu68UNTMVeqAGXrcvbOTSLS02LxrzA4cUHBIEhs9ipHZI7mgCBYIwjDc4onO1ZGULql9US+OjW5SOMjZXFZ00PafQDNanZKZD1y4BL0zBSym5XDkPsdAadY7ywUp0mgvVhvtgf3UsnSIwkiqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IEQY2DUI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 567JKv3g004574
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 05:39:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g5I/YdYhWivNVueACzh2oQkNO+/A7/RRFIBqM+SoH94=; b=IEQY2DUIMQ6slCJf
	BGdelgsLzUtEVGb8KcUZbroUa+/GtpfLtgNewdO7vymrXRTK7Fu2xoxqtbp/w3/N
	BW2T05amihrY0PYMCUaO4lKA1LMQXIxKETpPqlFcFF6JnTWhBSvQn3zBzGrXSEGu
	fQeD9D70jUV5y6j+8k/x9yPEAdjY9Us7rApmRmd3FzgcKrOuTtAidoNinxBKZqP5
	yHa2VGqSWtUD+GqveYFJu9Pd/f2lEueK9WEBbqeCzCHw7aaQRAji4mzwACn1sBjQ
	sq6edHnclIC0YKE4EXrBILU9G4obPLYsguO3fKqkO0VaqS+hWA0FXv195JOVMp5p
	uzXyKA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pvefb6df-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 05:39:35 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74913385dd8so5552073b3a.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 22:39:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751953174; x=1752557974;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g5I/YdYhWivNVueACzh2oQkNO+/A7/RRFIBqM+SoH94=;
        b=sbQU0e5GjcxZWXBFU0f7uF3tNdmPvrkMjp+xl8Ep1rEeOMPsU1h6qgIbtOR88fdBBa
         bLSn7ekv2Jf4wIic4Q8I911BT16AIxXRcCzNXbuO8rzIOVy0CC2VKgjrdhhcTQXKEqRQ
         pbQO9JcNnk2bYGb1Rjk/kVntHtzQajpmyd9fLdzSXZGerKkWpYSxFZy2cZbQst8gr25y
         C6RNuLtg5Cj1SNtOsIXEg/3uIlRqP4koqzuz5ktrgyND6TFI7z2P0uF2CiN7evkP4L6w
         avOIc/BuxAxqWQ9fx6SLnKirxNbPuZ/gKplrS+kAaXQopU6Tf6fOK34T2gC+2yRysVXc
         HMdw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ8dUVXK/lVe+WEY+FSChtETS7UWmvA2lz7rmbnuOx9mBDDbGUHr8eMx0uhSl/DxSBNChenwRcIVrV@vger.kernel.org
X-Gm-Message-State: AOJu0YwZQ55gIwHciXUNoBiK6U5KxmEhYIhV7DA0LQQ8q8P0vA1z8Nnm
	Ftc3fH+oabTGJlgjOZPGzRSpTgSpYqxuIFf5sHHhY1skN4S1CCpfsljHQlqKkBftwSv9XkhNf5R
	TT3ZmQFxyFDAsaXHlPAdPzOd7CESllBckNCkb18IHZZe/cMbHJ2uk0yadWRfdknAq
X-Gm-Gg: ASbGncsUnOnVCmaJJBt7Vh0Ug0lBmYRC02zKuFx2Ov0cudVkOFcgPzrkxYljNA+St4L
	VHug4uXU5nbXK+Hw7H5CLFnecxbzh0lbTCcH6ws7OkvlXs4L93nXmZp8oEamjHb2K9cGuQ0Zrm5
	hyjG+T52hhtmQ3cvE7PwxdmsvsCswEC5d5dRu+VVGHWx2TtqQ8CfuSPuRlNMdMP6O59GhmOMvnZ
	PiPu7QAQWCoyH3yog4a0kr69vHI0TBUdHUxeN2GWSuZsvyPGZBSF+TCst2u66Cox8qtDJ3v8NQC
	gJWytHgLMAQVpEW4j8CYUfAhmMW5/XFwp+U3IGxMFQFsJhaihz7es85KsJqZ3F+A3ZupeCMExAi
	LZ9kdcy5QKewtffgEl5BvOtbWHxz97W8vxFQi5a6zydaQo5hHghk44V+96A==
X-Received: by 2002:a05:6a20:d80a:b0:21f:83ae:3290 with SMTP id adf61e73a8af0-225ba5370f8mr24537714637.33.1751953174311;
        Mon, 07 Jul 2025 22:39:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaR3Zf4jeFyswPR0CteXJAtjrD1bBYM5QPstP1VOUIEAlqfyBhmGfJ3hqAyq4EsiP2imSQdQ==
X-Received: by 2002:a05:6a20:d80a:b0:21f:83ae:3290 with SMTP id adf61e73a8af0-225ba5370f8mr24537687637.33.1751953173910;
        Mon, 07 Jul 2025 22:39:33 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b38ee450db7sm10531829a12.4.2025.07.07.22.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 22:39:33 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 08 Jul 2025 11:09:15 +0530
Subject: [PATCH v2 5/6] arm64: dts: qcom: ipq9574: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250708-imem-v2-5-692eb92b228e@oss.qualcomm.com>
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751953154; l=1206;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=VfK8mEDpXLVB6H57qiYobVaPCMl4DeUgsq+1SP8HFbU=;
 b=nMg3aNuDKdIr2q8zeAB2OvDbVWDunZRHLbepwRF19vaXxBcg4E6YNjWdr+HKoy8u2Ctcu2SNQ
 F5F/LeaUd4MBHtLgkl/GJ8cwcUG3kR9V0sUn23lhvy5fn0PyJDONuKg
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA0MyBTYWx0ZWRfXymlw4Y8JN8+k
 6fGO6gVY6lhK6OVITPNh1e0KgsUkzLAXl2zAItFTB6M7rS8bUnBAes4AZyeCfsFmOBfsIQriohb
 LcOFQdQVn67R0108QFwAqmlLzmwWWg29gv2PpcUFLmfMOcmWPgYUSDJfKK+9/i8rMqgvxuoBBsE
 +a+FTkLwQ3sgbzvmgOGu8zSCyf98Ks+72QT48OwxE2Ynza2UQkg7c24TklYOOicrdOq0tWS3NBE
 UgyVkctU5bM44hDWKIWJBn+Zn2tAB6VXNBn5avK5RJFqMWThjycXKuRoSzXWb+z6X7/7EwyGSV0
 pUEn7F2l5g+xyARiD9fTxAPYTCaGjW59IjLb+E5dSlVtC3WVkx6Pcu7XADqc921x0cqAqVZALNt
 VWHyamcCXJk8FvXsIBSPCX6Sph2W+xXwKx0Jtuw79XGJ7r7pjc9Bx19n476Sw8bL3/lQ9Ljb
X-Authority-Analysis: v=2.4 cv=dciA3WXe c=1 sm=1 tr=0 ts=686caf17 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: zeRTc0SqEfCVSIb_sb3B73s5Pj0prpsf
X-Proofpoint-ORIG-GUID: zeRTc0SqEfCVSIb_sb3B73s5Pj0prpsf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_01,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxscore=0 mlxlogscore=782 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080043

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 32KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
- No changes
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 815b5f9540b80e91e81e02a97b20c0426f40b003..2a42e8a9c79274f2b983d31e0b7b587ad524b211 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -741,6 +741,15 @@ usb_0_qmpphy: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq9574-imem", "syscon", "simple-mfd";
+			reg = <0x08600000 0x8000>;
+			ranges = <0 0x08600000 0x8000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb@8af8800 {
 			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


