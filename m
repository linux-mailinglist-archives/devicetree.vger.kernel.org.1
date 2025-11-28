Return-Path: <devicetree+bounces-242917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3640DC91451
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD5D64EA179
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244552ED15F;
	Fri, 28 Nov 2025 08:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AoskWwKe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RklvgYOM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C82F068C
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764319225; cv=none; b=eH5n3XJvY18Wtiu9h6SrG5OxTETN3JaPKbjOFbbBeRN9o+ka1LgeJuHB7Q2RjiPmUErFXhAzSkipnzXztg3zraBw2dDDHpZrRG3QM7sK5R82hbZAjkEsZx4cqhY8kaxWRGEvOrV04LqtIIrT6/eQeegZzyxznxWMMZEmK0nXS2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764319225; c=relaxed/simple;
	bh=ysZn+zbAbrbWtVp4TXSJi2v2dI+VNGoIJydWTuqjj7s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uzzq8jhjvIOph4XIp7Jota/DqX7iK3gEHhdodBvk9zaQjubqaVjl+AEY/6jn5NHE1TML38VVo5GMpqSLKrVahLhD4SSMsMNz0T5IeuvnJpu2PBDuMprYAh1R5oJoWZwBCBdg2n1iHgUvi9HkYXzjRovibSCG6yG8vDUNy2Uyhp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AoskWwKe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RklvgYOM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8Nl7a3122998
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nVCTkrbkT/rzInG1hgyw5Lwb+5uuUMolAlYJ/UpUKYw=; b=AoskWwKekCFt5Kxv
	1zpiEgHdTIbAibWHNkN1KMOk0+yklZ6CvlhT043yrJZDLPwhjSlYdxdbcPgDtOtf
	iu1xjNEUHMRCfiYtLogPQ51RhJecnSF/UDEPZnkBxoEydIoBueFFtrpzKcPLE4RB
	TCgkZQdDtFe6eoOv8+B3rBWsqppPFdOWepUaUhAuK9HGBZ6JZ8mr9wwTAO/xun/1
	9YwtFkNG5IkUKId0TjDfMguuiSmbfE04mtbIJgevFYZsQi8G/E/6tsRGtSr6K4xN
	mWdQphg3KTltRYca99NufP0ZIRN5d24hkSq2eSoDqWmVlU0511NJSxl4+ORH3Ma0
	xltvDw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aq58ugj3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:19 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b9ceccbd7e8so3038994a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 00:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764319218; x=1764924018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nVCTkrbkT/rzInG1hgyw5Lwb+5uuUMolAlYJ/UpUKYw=;
        b=RklvgYOMCcsfeTdxR9aEiqaKaktleFnNOEP0YKGUo4H6OOuXShROW9z6WTWPMilBE3
         sVSMH/ip6f7U0VK/hxO+KIgfzWkyRNj14JAgdltnI41r3vVyfszmRTfdVTfPRlWwyG+C
         cxePEZStq8jnk1ikIQellFnM9KFZwCnpm4+f4Qlq9+6GaIfJ8beUJN+qNlx0CT5ukVUC
         R4Z6Q9Ra7SqZ15XvgLVH79emRG1X/PBniviqwn6v7Gj9XKK8bd+lPmfR+Kg0DsnYw6Cq
         lVQR+xv5kK0h3RaRhmBSwKFYkpi42pzKM+XNzz+Ea4plj5nilAFkJrt/ZO62vtcr7pM6
         /7gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764319218; x=1764924018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nVCTkrbkT/rzInG1hgyw5Lwb+5uuUMolAlYJ/UpUKYw=;
        b=AtO90DEsGsQoxIfH80sCzgi7PWtMgqBtenWFc/26rwJZGWYPAI98GqbM3v/53FeLzj
         49WndMwn4KFRzD2IvmNTtMO4SHwMdPEFd77uzmu0kZghRP5xYz8sQ/rY1EiBI2GVQqPC
         8LFlqygD4qOoPc7EKsDiL/5qqg5tOk7+KjKLib+rMqlaovwJEz8LtVOuBkcOZAnfHEsG
         e8En85Tz6FZYmhtER/BWru79MI7l+wMUuqkXbPVe8sydfOCUuUDVuDnyX3RpnsdT4sVC
         pHhS3CYEwpfgKORL+wY2GKKvgi0Rn30Z7ut0JC+9R2O2Y7+PAc9nsK4hIFqN34UkG5aO
         83nw==
X-Forwarded-Encrypted: i=1; AJvYcCUTG7Z4VfW0cXLTHoqiuXbq/zUS/n/E6VHkmxMZx5Yyyh4ETIU5zF3nYZ7X5dXjkiTgJVRVO/AhGqz5@vger.kernel.org
X-Gm-Message-State: AOJu0YxOhXQqeZnU19Njevde3KNMgWLSHXNgP47hPndP2qvEUi1VZMhg
	MUVj/zwBi4dp37VaR/URn1PaRKe3lcFinOhGO4YEOs+murGufkgn4eIR3giCm8EdkYEEukCr3jD
	RkJUzSPHACjOI+INKnlwQ29vEt8kg5QIK9MbrvpWdOrgTTBYjRTAeuCifTw/D2xDLGVkFkkwidg
	k=
X-Gm-Gg: ASbGncuNOANIgdnrq6qE6a4VMv0Y317osD2gN8cRq1aGolKUgAcCs0Mb2/f00VikxxD
	4UwoQPg/hlhFCq/nAwCoT0DqPzVc8Jh0w5nzhuBvU2yUx5KkPdp8wyZrdBf/dseu0iR8QJuxHPI
	4SqRKvCBfOL6LGYyp1M1j4oyN4q39EkHUjJXYVQdp99mK5IsqbjPzCB4Fh9dk70LzEn7htMfv+m
	oPpKXv4HnPq7z3iAyzZGvwGuKT4HVBEQPeuHxK7FtRKBOjX370sCszBhbdJSZq8z0t9K2nyBRJb
	JBX7CYoP38Mo/WaIOy58FF9gHYbjGhJ0QbDti6Ps9RKFm/0NeHboub4PTr23cSDoPqXxblpumMV
	aRiCeHxRt+3eTuCYEQ7+NaqTmI+31k4IaxZag4e9LwuEKijBv19Bk
X-Received: by 2002:a05:7300:a903:b0:2a4:3593:9699 with SMTP id 5a478bee46e88-2a71927a3b7mr21651804eec.22.1764319218406;
        Fri, 28 Nov 2025 00:40:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvLFQjHSljmTko1192Z3r1NZpMHLko+3RxNTojw8NiRKixmbZt5C4pR0Tk737ckx+aiYNp8g==
X-Received: by 2002:a05:7300:a903:b0:2a4:3593:9699 with SMTP id 5a478bee46e88-2a71927a3b7mr21651775eec.22.1764319217919;
        Fri, 28 Nov 2025 00:40:17 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a96560986csm21895872eec.2.2025.11.28.00.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 00:40:17 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 00:40:15 -0800
Subject: [PATCH 5/5] arm64: dts: qcom: Represent xo_board as fixed-factor
 clock on IPQ5332
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-qcom_ipq5332_cmnpll-v1-5-55127ba85613@oss.qualcomm.com>
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
In-Reply-To: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com, Luo Jie <jie.luo@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764319213; l=1629;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=ysZn+zbAbrbWtVp4TXSJi2v2dI+VNGoIJydWTuqjj7s=;
 b=Slrarzk3ShB5tl2JJ4EVIvu4kZZbu0CGXywc6rmBiZ2JxPkpef8u4Gmf2rIjTg89Go7SxjwrM
 jlxlKsiZKoUAwJrgtsvaAjhEE7VG7DYU7IVjhd9z7WUveDomGc3ilvL
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Proofpoint-GUID: IK0zHWrrFPwen_zcKE4Muom00INAciJh
X-Authority-Analysis: v=2.4 cv=UKvQ3Sfy c=1 sm=1 tr=0 ts=69295ff3 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cZQRF-JHJlm1EiHCSyEA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA2MiBTYWx0ZWRfX2aW0EIr5WHlf
 oyrhXNfdPwUBILkVfT+7/PtQrRw2DZvi1hvvcIDAENdb3RutVKrxx/9Fjm86L/ea/GB+SWKy3T6
 jx5pBrG65pu6PfsDPdAVNuCb3pFzEGf4MWCHkD/h1RE9Dl9e0th5oTkWWY7TIqWXB2mA04UU54l
 j71Pm9pwSI2OBVamqklh/EFXsmFjC1Ue1NVFXFR0iR5IuBK3YAZfsuubfTgNPCr+P8+S2SV1nnn
 TyWYLcltg3rBfU8x7zbQHQeMpSo1qInf2tlbvkX4Bj5bqA5l3UECNr8SnyFK0ou2Qpmy6syVAJX
 /PVrfXqAuun9p2rbT6p4l/gXYeZJP8SZ1dCXqk+T9OMGogEzwDkNJAzzuxudKiD6j2ftRHXyw4Z
 XBiDBrVFoiPDZkpWeGpaexS5eqL5ZA==
X-Proofpoint-ORIG-GUID: IK0zHWrrFPwen_zcKE4Muom00INAciJh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1011 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280062

The xo_board clock is derived from the 48 MHz WiFi output clock (divided
by 2), and not a standalone fixed frequency source.

The previous implementation incorrectly modelled it as a fixed-clock with
fixed frequency, which doesn't reflect the actual hardware clock tree.
Update for fixed-factor-clock compatibility, and properly reference the
source clock.

Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi | 7 ++++++-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi            | 3 ++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
index 471024ee1ddd..e1346098ab0e 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
@@ -70,8 +70,13 @@ &sleep_clk {
 	clock-frequency = <32000>;
 };
 
+/*
+ * The frequency of xo_board is fixed to 24 MHZ, which is routed
+ * from WiFi output clock 48 MHZ divided by 2.
+ */
 &xo_board {
-	clock-frequency = <24000000>;
+	clock-div = <2>;
+	clock-mult = <1>;
 };
 
 &xo_clk {
diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 0707e053f35d..9e30be3930d8 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -29,7 +29,8 @@ sleep_clk: sleep-clk {
 		};
 
 		xo_board: xo-board-clk {
-			compatible = "fixed-clock";
+			compatible = "fixed-factor-clock";
+			clocks = <&ref_48mhz_clk>;
 			#clock-cells = <0>;
 		};
 

-- 
2.43.0


