Return-Path: <devicetree+bounces-166711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA0DA8813D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 15:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05B8C175380
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3952D1F4D;
	Mon, 14 Apr 2025 13:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FMPqQeZw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A8129C344
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744636287; cv=none; b=FrtF4HnThCK8zka2lW6kU64qM21L35Q/E3suchcEQcka8ruc82ZEzwS33z0Q5JXvzAbW3NIYkSqrHTFY1J+2H0bZ9tn2d4CQix2Y2e/Jeb/4eKV1+EOO/ANkfY9kEvmgtFht8WFgx0s17XghHxJTnIhClXiPkjI0rLvY5WIpufw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744636287; c=relaxed/simple;
	bh=8dlfgO/nT9QDeuTKJLT4YPhW3/iNCTuCfVdLXDV4TfQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mMJpBBiHN9DHLtoZ1ErRsUJgbMIxh/6opfw9SXN3uWhrGvNiGmXBoaRib/NAibvfsA8rDmPuBgDtIRUg1x47wEMlos90oHbiSpdi6wJlZj5E4l2nmGrqYgaLg8r9EGyAEfxo8z+TrxJA9qgRCBrN1gQsAe+NN2He4Nq7DzIT0zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FMPqQeZw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99r82016334
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:11:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nG9q4ZWCsXY
	pQ+C5Bf/n5D3rrnTWdldgAj3/oQTZUe0=; b=FMPqQeZwhvTIYr/ZtR1l6DssYxu
	9mkDVhuozzhMMpuB1a4E3W9+EOVcidBh8odPksGGdnoD73nIP8akIbmWYhzxhOW1
	hksI2+R+81a1Iw0I8RD2hulykOlSiJ5U/j3GikrEm7CzS5YnsThn8YJ405/wOgp8
	HcIxnOXcpH9QJNwMTWDVNBv69F30okIeEJl+MvgF8JumSofCVmTeC6HeY2leoRSd
	CzlqRz3reSpj1N6ku2qEaW9G5WtvzvNNvANXplc+dV7twRo4QPoCE8HdimRf5ek/
	PdBQRc5O1ltI1pWKmeB5f1eEVQGngPWikG2b+37LlPaOlISwZKovB2Fvfdg==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjcmt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:11:24 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3feb24cea56so3779554b6e.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744636283; x=1745241083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nG9q4ZWCsXYpQ+C5Bf/n5D3rrnTWdldgAj3/oQTZUe0=;
        b=mIDfmn8KrvTZqKE+d2YW3puuSjOzXtu4eI0v0wOZ3fHOt+IPxGvbhV+QJsBpvEuzXo
         +JRKrCbwQ8mMkkTV2LYljxrh9JNbNVbcmYij9gkmK7xjuYMZx/v8f4XxHZNYj+cthVZL
         FieaNaHOQ/IqvHmHB6dUV7oO6UIxU1ka1ur9uE2IYZ7QMgMmWQFQt3Fo+f0/KGJidVjW
         9lX3IjU9mjQnGOR39CdZ8LgAKJNPBOKZDiNqb6adRfxqe8MXm46S2s1YY2g278BwM9Da
         SJN7bCZBKUWNdy0RS1Xzb91k/lK/2gwBUtpYRYd6zPKzuUA06Ikn6Hq9w40YfZb2yiFA
         egiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlmJNtlnCU3JxLQYjjc9ETH1d5XRIYNyAA2ZSSMCgK/+LS9g+rPMntm/4w3suheoDpebqFEHFnlt/q@vger.kernel.org
X-Gm-Message-State: AOJu0YyDQtRSF6TgRZ/Rx1ohR+/cezbdX6hTkHB5Hv1ANg3nuK2ilPkb
	cCnylZrTM/5pkxTqHX0Gg5uveNwIYFkbf/t76nuZPFK7C/1efJlH7A/psze5Fr/fHh+dpeKhdTI
	Agbe0anImnJHa8FCtPfeHjn8nkKHubsrh+VTd6Mt+NskGSQfke5Aeai6qnVAl
X-Gm-Gg: ASbGncsPnOK0kR420H6CIMVfUn4s+mQKOVI2rE2pNAiS2wBVZcVKhmuM6O6UCGiteu6
	XjYVGe3ll5po7IExk1vfpzQe+XUl9hXmlXZBwk5fsUUpyrAflVdRN3rxE5jkZE39EE/7hIv12rq
	xIJJwfYQ67TLAm61YvSR1qDRMf4rK33Avpa9cy9Nw3Atz9oTvJlV7axIk54uTjy3QQSX8jx93Xe
	+cg9eSY01I1HrpgZtRlBJohP6YbE96aqdEHvCeNOS7Wq2bxEnmBICcoXYfpOVwuZVzm7mLcRXqp
	oN8SNL7BD8GS3WLVDK5csHJN2pp4dkvU1KcSJkpOgEKyP4mMUZio6/rccRJ8Ww6NgfgXkkDwThF
	s
X-Received: by 2002:a05:6830:6306:b0:72c:3289:827d with SMTP id 46e09a7af769-72e863c17d5mr7044378a34.18.1744636283138;
        Mon, 14 Apr 2025 06:11:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6xesVJcOTA2uYzPP7/HWqZvfBm4vsbqS8nuq1uRD+DYxic8pCMANkNX8xi6eFWrGD6pNgZg==
X-Received: by 2002:a05:6830:6306:b0:72c:3289:827d with SMTP id 46e09a7af769-72e863c17d5mr7044354a34.18.1744636282681;
        Mon, 14 Apr 2025 06:11:22 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com (82-64-236-198.subs.proxad.net. [82.64.236.198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f206264a1sm181921375e9.9.2025.04.14.06.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 06:11:22 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/2] arm64: dts: qcom: qcm2290: Add CCI node
Date: Mon, 14 Apr 2025 15:11:15 +0200
Message-Id: <20250414131115.2968232-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250414131115.2968232-1-loic.poulain@oss.qualcomm.com>
References: <20250414131115.2968232-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: aezKDDo-7B65dYzwr4dzf783Ljv7BtG8
X-Proofpoint-ORIG-GUID: aezKDDo-7B65dYzwr4dzf783Ljv7BtG8
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fd097c cx=c_pps a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=MDeckJw97qnk8wCBExTehA==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=7004nz7suiqLHAzt4fYA:9 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140097

Add Camera Control Interface (CCI), supporting two I2C masters.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 v2: Reorder commits; Update dts properties order and style
 v3: No change for this patch
 v4: change AHB clock name from camss_top_ahb to ahb

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 7fb5de92bc4c..4f071cb25c5c 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -557,6 +557,20 @@ qup_uart4_default: qup-uart4-default-state {
 				bias-disable;
 			};
 
+			cci0_default: cci0-default-state {
+				pins = "gpio22", "gpio23";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cci1_default: cci1-default-state {
+				pins = "gpio29", "gpio30";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			sdc1_state_on: sdc1-on-state {
 				clk-pins {
 					pins = "sdc1_clk";
@@ -1603,6 +1617,42 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		cci: cci@5c1b000 {
+			compatible = "qcom,qcm2290-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x5c1b000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GCC_CAMSS_CCI_0_CLK>;
+			clock-names = "ahb", "cci";
+			assigned-clocks = <&gcc GCC_CAMSS_CCI_0_CLK>;
+			assigned-clock-rates = <37500000>;
+
+			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-names = "default";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;
-- 
2.34.1


