Return-Path: <devicetree+bounces-234081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2524AC28428
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 18:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C82A04224C5
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 17:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE302FBE14;
	Sat,  1 Nov 2025 17:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BBYN2kAR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WhBaWPJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF832FBDFA
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 17:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762019100; cv=none; b=EOgdGE6mfe1UU4ePtq9h1cefAqWJRWhuMGO2ct3WEeje3xWMpRjsbXdboESIrJWxZh86YVykmJpfe9mfDwV9GecQD1R2EkEx5Hz0cOGXOxAiNKMzhShD2TkgAf9IsYYsrklk485rjIQR0KvpIinKqAWqQwFKN9U0mhzbPcXO8PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762019100; c=relaxed/simple;
	bh=jSI75LVlTR5NIuFWKjV4cutObj92tH8PAwHy4R3OkTI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gWwfVMlvFJk0bvue9glalC7UFB+hkBU6IYpy5P/9s24G5A+pWAhn8FKS1cwzB0GEtJYYJ57DayI02W7A3zzczzluaRFV1IwoOxxXVLHQP40080ZL+8P/uk+uGMoWpiLU+/2SSW/QB3dfH9qgSzP66sw7QSgMqMncFxuTE+nxLq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BBYN2kAR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WhBaWPJT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A10gk9B137470
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 17:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=HXBFazNdQcM
	aRyXkcXCOV3jbONPk1UQq3Gx3Lpy3RUU=; b=BBYN2kARu42Eyk/0oXeTww67ErB
	7wZrN2Sch9luk8Qly9p9fN81jzyL8qsE3kQcM8OQ+2gmdkETdj7EtoE4nPLS1zG5
	3R0K4Jxo7fYmidmEeNOPzAETR/Csuse5gA9JP42wdfIxtGsE1n2o8m/uIB5frHUF
	+Z6XhTFLijSuq2FbEPgvHZfhnPG5rN1xEbHflBfQ6xqqJoetfaEYysz7EdBkFigz
	Wsr1OWo6XIxCzrZToQDedjIbcRp6Bpv2SXjgSyzLKybRW8wWs/fWRCjopX2SyotF
	Mabklvx6tMNbsyARXDa3UUJFuOxl2MmImCeCpYiRyFzF8PD073RY+CtguKQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57we964s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 17:44:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340ad9349b3so2566249a91.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 10:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762019097; x=1762623897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HXBFazNdQcMaRyXkcXCOV3jbONPk1UQq3Gx3Lpy3RUU=;
        b=WhBaWPJTkBfu79Tl9Iyam2HzXYBY9yOBgcBA5nPrq6QtfOV4D1a4ZHgqqsRJjEklpX
         ahlkPGLYiYA8k1FCRhCRkbsZ8WFvFWGgcTzVtUe2E1pgOBhAJ0pHfxztBLW87h83ovGc
         ao+I9d72OOGQKePn7+aJWDJWSCgBzCwAS92yzKkAhmhjxpAbG+Dc6V80G497JMURSEi4
         xKXjNJa1LFG9ClynLXbo0Chxzqbr2F9Us3D8rC4zJ3I/EOYoHHFHPIrBajG6LN9LNUDg
         D51+Vxah3EM/+XbmuanHKGd1ZGIQ9zq6rHsvW1FpjTVTpDFZQLyLjKDq8x0BLU4FQ0BD
         4ozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762019097; x=1762623897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HXBFazNdQcMaRyXkcXCOV3jbONPk1UQq3Gx3Lpy3RUU=;
        b=jMnVU5Hd5QD7I1JHTKAq3eVYaxWGgH903aGEcfNwkz7p4WjvZ7iahqxLOGF09zTUrJ
         AzqoHkPjrCS+U7B0+ngyzWcufpFy6/TJWEcsSi8+DPDvppnEHUJ1okhXZ815uy0ULJSP
         CBIsmiYpcc9eLR847ZO3Ix+qPQJcJKICmYWErUZiWV/O+4bgj6LIPGQ1iRn+aL8IAUiL
         6cSCfz2ZqmgeZY1SkfHrYZgFM+X4GssdNLGGogYUJlw1UvKdwQhpPdn3jFApJbQzNgJz
         r96Qp2kMc2hKEjjW6bae+PWMvHw+Edqcvq4f6J5V2kd5FH2wjrz6xG+bIAf08OiNLC3E
         OFig==
X-Forwarded-Encrypted: i=1; AJvYcCWmuFKg6qVuVqCCloNswpEIErWnoGqrYeO2hDlxct6srMEHrAnlFQ1STB7EleuLmIHakoSvigzL89ne@vger.kernel.org
X-Gm-Message-State: AOJu0YwROvQ9c32Qon5fDBOWEZLlej7VEeW+uH7l3uc5tkuSibV3hGn8
	b7ZBGIBsXUL5uWe/u95vbLf4d3pb9eooFphhSdKB1ckWI3WC7t+EewcwIXksh4flnwKPGVrYjKb
	hXNJtfuDoEKAk2LJNRh2geKhhZ6qQWab0GF+EVQhaX7iU3h8Cain3MN1PiLHmwovt
X-Gm-Gg: ASbGncsYWV9w/C6jYzmB1Va3gXc8WqPRd4TeDp0lQm7biM1P2XwsEs2t1Kv2IAyVObj
	dVMqFLlMFpsFzEosvQP6nh0TAkWl5wEcWUg2aSKcpjuC96niR3/FOl6EMKJ6BJerNlDlSTKglkM
	oVGZgq23SxP2ib86k/meeHAdC/U/UZKHu3zUG/1J83R4KtUCi9POShhPBA7vBgFv+N/iRCYPQDy
	vBIIXR2EPJXyQcZaatSSUDb4GUJ/GfyYGoQY0UP87AR3/GU86+KOoioV86NAZImivjBtiDYm8qz
	5B3mwHaPeWI+deJiL8j5V5JY5gae2QfnTakYpDbTTmudRxszgZAJ5HfIDZ5oLPX6xx+SogUOWF+
	tecmTYXMNtLSZ5c3pKwCjVxVM17n72B1lbeoQ
X-Received: by 2002:a17:90b:4b08:b0:340:a1a8:eb87 with SMTP id 98e67ed59e1d1-340a1a8ee0amr6566840a91.35.1762019096995;
        Sat, 01 Nov 2025 10:44:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQkJFr4PcROEqsuTI02n906BjLMyYV2ZSHuFfEm7g4K+opK0+bl2sspe1ltfZMxrwubxg02w==
X-Received: by 2002:a17:90b:4b08:b0:340:a1a8:eb87 with SMTP id 98e67ed59e1d1-340a1a8ee0amr6566816a91.35.1762019096496;
        Sat, 01 Nov 2025 10:44:56 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407f24ee93sm2793393a91.9.2025.11.01.10.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 10:44:56 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v11 2/3] arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
Date: Sat,  1 Nov 2025 23:14:36 +0530
Message-Id: <20251101174437.1267998-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101174437.1267998-1-krishna.kurapati@oss.qualcomm.com>
References: <20251101174437.1267998-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69064719 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JjTwLu2Kam44ScBvYj0A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: I63duSbASSsKdWPz_OoJIEAV783P6S7b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDE1MiBTYWx0ZWRfXyz2MQNb9czEK
 jc8hyBxeCbpt9zJiXQWazPmLfb7+Yt5kYat3cCmnQsBV0o1nubTnwpnpBchI3fKYP7CPSrqVQF7
 9qWjQUMLMEF9xi+Y9iBieAudx/9MxZyVLGzA8eX/R+vEVPz5eGQEWgecvCmn7lgqA08hxokO7kM
 buWdZfUprZuQfenkWxIlDbws8RklUz3i8Ro8MNTeH//2wmZFuP17ylBTYbP5TI/W648YMccMWVa
 rXUIwWGUUfnzwIenevMNaHCwm/PC+eCa3g3JktsMEkqg3NBOeF68f0XsvHWBpMYEma501c1qzYh
 gfOGUJx6FKyt1VwuSw9bBS+crH/8/EREm66w0QV/rVuMl9eKWHGs4wU+qbJrY3XnO7gCimRZyX7
 gf59MT48buEq9wRFqm8HO91qhEXU4A==
X-Proofpoint-GUID: I63duSbASSsKdWPz_OoJIEAV783P6S7b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-01_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010152

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Enable USB support on SM8750 MTP variant. Add the PMIC glink node with
connector to enable role switch support.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[Konrad: Provided diff to flatten USB node on MTP]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 73 +++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 45b5f7581567..c8cb521b4c26 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -191,6 +191,51 @@ platform {
 		};
 	};
 
+	pmic-glink {
+		compatible = "qcom,sm8750-pmic-glink",
+			     "qcom,sm8550-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_dp_qmpphy_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_sbu: endpoint {
+					};
+				};
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 
@@ -1200,3 +1245,31 @@ &ufs_mem_hc {
 
 	status = "okay";
 };
+
+&usb {
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
+&usb_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
-- 
2.34.1


