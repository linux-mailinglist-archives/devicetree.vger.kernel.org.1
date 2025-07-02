Return-Path: <devicetree+bounces-191976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 095D3AF1180
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:18:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 537B717E726
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1DEB2571AC;
	Wed,  2 Jul 2025 10:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fc8zhPZa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B92571D4
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451474; cv=none; b=FvIEQtNc7CWz4eFIg5ceH62p/Rndhg6JmfswlLMwSL1Ryk0/P6a/JxBZhXiXIsOCWVzYHerH+35VUz/mWQFqrcOQeMvxQKxllchx9fhIn8MH3njFoYwJCgzyMYnWVzRH9yWFbUDFFBP6znOqoMkVg6Mkj4OLfoe+njxDA0f3+Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451474; c=relaxed/simple;
	bh=HTG5mnN62E5lVvmR9M3o5ZKUlGwP4DrQ+BOVs5noMkg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VhiIbxgr77f3P0UZ0v9rIJrrIngasVdBFSk5AUq6m++kQeIUWJicEo49A3IFz/d1Ioel6Cl6q2kzaH+a6QKPFZNdFS2Mlm+Yxnt7TYmdHHfCAcuuaGq++5RwFxveWU+W9gD97lSTxkzFHX6Sf5tuP7o/zkWOi+IxYBRiIFGY6GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fc8zhPZa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5626Drcq024817
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:17:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qop/b5pDG6wy5PweIeJVl0tyyRvgJnpZddFhEDO1zb8=; b=fc8zhPZatNCHII1u
	n81VDJmS1mrAASvOVy4nOlX5JXoBdtrk2v04GKSwsTpR/32G/yqal/h+I7bc4usV
	WiEx08lQcAK+uflmq6y497Nl15SLyJQO4+ZY3+9HzBJ7VaF2fTMYlylrOR1IiOzV
	bbuNs7QsYyOJ6oEF91gxw1clCIepWU4ZuLKmz/BWA+j7MwTj9jnW9lIlh5VtksWu
	/7eWGUt0j8dWStc0S9uWNVMXWxr+Pfk4RP0r/ltSrrCFgZkBMMdpzaLVXyuP55uA
	zpUJOjbRcGelLvgWFALtZNha9dOjU0cozjWA5nZjKdyMoIrdlMD4xRfsoMl/aplg
	W++O4w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8s9m82x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:17:51 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748f3613e6aso1974128b3a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751451470; x=1752056270;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qop/b5pDG6wy5PweIeJVl0tyyRvgJnpZddFhEDO1zb8=;
        b=U9miq05NwuxdwEFuyFt6ravpizpC9pdxhQ71hVnbQboF+T4Jd71j55D3f0rzAS/UHQ
         PN5y252zR3zNklDbOcgrnUrip6u/IX+8cIi9O8yd5mbqpjU7eiNOMPCOsc70uXL3dpVe
         MN4Bq8jwEQajB7y2CA0eSjn1zkkBIYnPf5uvicugt8U4RhF8U0XE3/+rQpCRtLKfdTA6
         biK9PzO6T2oTQOOYKENY4Y0BmodFTsGPet2rBenmlAZ7CJKWmOcJRjRz+5/5ynUoj2JZ
         n2xQBnwVw7sHhXjBKb0NyuSVt6oBz1Ukw2CA+lq3CJlpS/qtm6HPXNryBAK3CUBcMZcH
         nYuA==
X-Forwarded-Encrypted: i=1; AJvYcCW+8CInMP8xOTcU74VRg3A3ZIZluKViFKSJ71Ey/1Umpr9Z87Oxp+291DaCxgrsFLJo/V4ouwf8xOsx@vger.kernel.org
X-Gm-Message-State: AOJu0YzyEBsSsu2yJaR4Lom4ayiyJmGHnKCP5Q61ZsQPeMCxHVuIkrqq
	OcK99OmIaUzfpnYnwnVqMLUCRt9ClWymUq7uOvJVyaPR/uMVdKJF4FfNt8/c9c+Aeuvy/fm2dEa
	AxglJsPwfTkyt/nWpIJJMp+YJ/I2DQpRpUTZjdfvR2LnO7eQjofXJqbFIy5a3VR9bVQnjqGSq
X-Gm-Gg: ASbGncszUkCn3mxKTcSt8UrTToDQkQS9ymNAsNISapiFeDUJD3xL6s0nuesnRRy+PeR
	qvzKbtye9+r8ikHl58BnSeMCiLx3AuD6fE0z/EEcrzZvOavFR3BfTH0whFG3Jydm59SqDV7ju32
	DyRLmJq8TemjnECAiHB1/hOS42bKkf9izWyM08YWiOsWR/vFuWjvpu1Ofd4yn1LptKqFcI5nLFH
	sLbXwKsHCTMQHOoupmDmpq6Azu/qyY7XSG0KnfC+pgFWe4rdml5daaLsy+ftvMvXNrjla6DjaTr
	eUrm3+iPgzR9pjegfkqhyjw8O+c7OXqiPMOJu1JHqus42j+rEbxPF3eEELYdSNqySwj7ixIMY/v
	AMdjvWVwpv0Rc6zZtffw9CWSpLUWAW1l/bnQzZS3ZEEbMJcFVtNidLDooZw==
X-Received: by 2002:a05:6a00:22ca:b0:748:ff4d:b585 with SMTP id d2e1a72fcca58-74b50f683a8mr3088669b3a.19.1751451470346;
        Wed, 02 Jul 2025 03:17:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnytX/3KOhg2rvmEfuN3mvtRnpFknOUM5Iv99FSaxslQSVdJLuzMlQ1h9brA0rm3u6YY5ncw==
X-Received: by 2002:a05:6a00:22ca:b0:748:ff4d:b585 with SMTP id d2e1a72fcca58-74b50f683a8mr3088644b3a.19.1751451469934;
        Wed, 02 Jul 2025 03:17:49 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af55749b9sm14486315b3a.73.2025.07.02.03.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:17:49 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 02 Jul 2025 15:47:34 +0530
Subject: [PATCH 2/7] arm64: dts: qcom: ipq8074: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250702-imem-v1-2-12d49b1ceff0@oss.qualcomm.com>
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
In-Reply-To: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751451460; l=1197;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=HTG5mnN62E5lVvmR9M3o5ZKUlGwP4DrQ+BOVs5noMkg=;
 b=gZmB69MHK7JmUMfujejANSJG7lomSA8NVYOzbwUJDV7RLCErYSxNCPLb20SF8DIuqr24D4sQj
 iNrljTsnDiVChSBxRIO9pLM06GLnQekbvTj5JJvB5UGz0t3BTFQMaBS
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=H/Pbw/Yi c=1 sm=1 tr=0 ts=6865074f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: lFi9xdhT7srL84pPegb8-ADxhkA4vAIx
X-Proofpoint-GUID: lFi9xdhT7srL84pPegb8-ADxhkA4vAIx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4MyBTYWx0ZWRfXxmFb07JT3G+g
 6EfQ1AM790tMz1UPKeH/rmasafGhkA792ZUD2mVIyiNEvhFN4jWLsBI0gljhh+2SyYadcpyXfZS
 kYc0d0f6PIaGY9lMImgPYsMJLCYb/nqGlKSOlMNEwq08DddsL1ZzSpZC8O1iqZReYtn2xeEh2vF
 0i9V7M6ULzVPUkNNeh/45WZp4k/70c3IM+To8BM2L3175ltgbT76PoVb/HSHsoA1DLw7AieuNq3
 uFsY+nUwrA1ExxQlRv8fQZ7qlNS7EeyU8f5JQBC6r2+kczKxcrejtjQDFmMegiSvEU6m5v8AyN9
 WwxznCTnTzwIoVIpSt5b/UEQovGpw4ct+cdwMrgHb0VbI/t0zjYU3FItMFnlwNS/UkfLLAgnEN+
 FeJ58LXajXxZWBBIk4Ud2uRdEQIF8lSeaotq37IaUK+FxtVqCssPvFb8ArKjVhgxj6ZUnFLL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 mlxlogscore=688
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507020083

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is approximately 24KB but only initial
4KB is accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index fffb47ec244899cf45984adbe8c4f9820bef5c5f..93dd11c394589132f3d5ecda32bcaecad2509029 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -625,6 +625,15 @@ qpic_nand: nand-controller@79b0000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq8074-imem", "syscon", "simple-mfd";
+			reg = <0x08600000 0x5fff>;
+			ranges = <0 0x08600000 0x5fff>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb_0: usb@8af8800 {
 			compatible = "qcom,ipq8074-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


