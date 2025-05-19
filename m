Return-Path: <devicetree+bounces-178384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1A1ABBA3C
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 606693BC810
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 09:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11ACB26FD90;
	Mon, 19 May 2025 09:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kp+1KP2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AC326FA72
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747648073; cv=none; b=ScGrJIcIB6TI1P6+hcjhKK1z5Ttb1e7hp7tkO9+LnnoFqLqN3vhKLAf40r//SigbgdrS0fvDD4z3TJnWX147FqbPuGv2TfJcHGMjN+H7oVR/L1pLpoQFZPuBmtYRgIm9UMqZSEyo+nQStKijXOfvfJAc7DZOADiWhrnXf0we/Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747648073; c=relaxed/simple;
	bh=a96bmT80QtXSYOLT3zKaY6fcq7QnaWqhJty6rn6JofQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K1MyCbRFlTwukQqHDGyHCclMkAP8wjTjssWWbBVDQuG0qdghoIgSHiIhMCyCnFfISu+BG15FtOJ42xdaVL3FwxVQHNt7ZuRCdQCjaC/OMUHakaGzql+t3gtkMYjO4JAvRqPMJzkIO5SWYNkx5Cm/5EJEkrlkx8lcF8wXjZS/FO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kp+1KP2r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J7Gcno023178
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:47:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0WRudAwmmMs
	l02GAkXYXzq4ndFHKqsSnSM+L7qTqUyI=; b=Kp+1KP2rOukVQkH8HedcRSsPvN8
	jmBqB27ND5rIhbzKdTcSqg2OxaHKVcYgahyPREkMxi9KuTUhShKMpu83ID6CwF3s
	MCrVBoEu5phnWWQpJKy2dg13c204NuK+ykYD9lNBM2SIqmS+Iu7JZtBdmraO1Ju4
	ouCOqm0lH1+ki3H0YK5RIXjuMQVqzET75lzjztiQhf7Q2VyqwHOhPT0ZZrDjOLN+
	zun+vonT8JN5UQNbB1qJyiI0OPdEerUMFOeKzgLMu7IVBsUgTcxawiFaijX28F20
	mw1rIKdXAP1lohIBNazRroWxCZfPhfudo2qeoB6uR9t12GtmHKGSd16iO3g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r041re6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:47:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8c0a83f9cso48253186d6.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 02:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747648070; x=1748252870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0WRudAwmmMsl02GAkXYXzq4ndFHKqsSnSM+L7qTqUyI=;
        b=EIRC93JASDrJS/5mk18GZeDWzFouRBPfObLcbAhLaHUSgwZkN3kyPwp2sZOckfP992
         jdnNuhIOzZSjcxYwWRnoszw2KR5c5e0JVbk2SFKRSngLdgzRmcifmrL8O7wsSx4vm6iP
         U9JAC8KQTQcmS3tqHkpnL4/xHs5vN7bRMpcrmHQ4ezMo9UX/fWFpUe4fpjw8vPS8Lz81
         rX+KnlNuM7lLkf6zDSEUcp8j2spP201ugREtRG1bX4EfQr0mJrte43bqkURcp2th8FmF
         DJ3VG0kMk0+icIj6yXKt2WZxQq/p1VK7W10+MyQGKz4G5XWUDEzRLO7khvuAWu0IOP06
         xgKg==
X-Forwarded-Encrypted: i=1; AJvYcCXIjtOAMoephitE1mbxyRUTLHm1J8vXnnOe1N3bABIsad4/R8es2oKXHxTy36rsgB9ZT8rZn9aNvdYg@vger.kernel.org
X-Gm-Message-State: AOJu0YzfvnYOx+lEaAbdIwrb5by8MuoeQ5MaOVMNA66GG2zAQ7YAWI+k
	VAUW2+sU6w3Wfzc+C8a54C/xKR9nNIIwlU+SPwDVkXd72Oos40f8LTUc5lQfRPjVYHhMWIOX2JC
	EYOXCL3l5+mCwVWoiSGvs+ETWNTdkjD4E0XnFlC7y0GNhIiEywJ3sj/hcNc5uySV+
X-Gm-Gg: ASbGncv1MoQITZP3PmW6S7eWLK1w0z+DtIcivYEkJsqQqFyBts94QS0m4/OsdfDps/x
	SnzHZb0mXhzEABXnrrlgV/n9jrQPb89HThRWMP69HtQOoZDGO2Qw2zMtUVEY24lhvQ3+O5y8+h+
	Ay5Hyd0QK6axsXdJO1JL1Q6/mLOziBu0r8VYv+qJy3gqeyVGvaaWWUa+EROxZgewgy/aujxrT/t
	7HwSzYhuGwWlW5tWgSiEzd5cMZYTLpYQ5sxcazQ4KlAYzKwpR0GpaoyXjMF5LzEjAnnKdrPyl0u
	lxJIgI2sAxZ5B+HiFFmM091o5OiUPXQaRXOT/fDk4Sqd+/I=
X-Received: by 2002:a05:6214:2a8e:b0:6f8:afad:4fde with SMTP id 6a1803df08f44-6f8b2cec4a0mr191846616d6.11.1747648070208;
        Mon, 19 May 2025 02:47:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLZoUxsANdEB+0ZxJYwV9m08myqwvGWnpXO8PdRlFSf8plMNTGJr3z9ya1r69eEz8QoSCleg==
X-Received: by 2002:a05:6214:2a8e:b0:6f8:afad:4fde with SMTP id 6a1803df08f44-6f8b2cec4a0mr191846306d6.11.1747648069859;
        Mon, 19 May 2025 02:47:49 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:e5bc:5c94:e4b3:3c4e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d498d05sm572185166b.149.2025.05.19.02.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 02:47:49 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: rfoss@kernel.org, andi.shyti@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 2/2] arm64: dts: qcom: qcm2290: Add CCI node
Date: Mon, 19 May 2025 11:47:45 +0200
Message-Id: <20250519094745.32511-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519094745.32511-1-loic.poulain@oss.qualcomm.com>
References: <20250519094745.32511-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA5MiBTYWx0ZWRfXy+Wgdk5iJlNO
 xwItyoco+VdoFlQlFJr+jYewwmk94PdC+by5k+7+al4WnO0Wl/u35soA69ASsBQvjluUJ/YVzAm
 wKubyrjuYAh/8/NPIrARWjGXUEIBOh1JGrxvqhY0rIniTfcuyW4bux/PNr4PLTNBFtB4x69IhZw
 W1NVofEnUbgXcUCutj4sLUFFDywztqmAkS4X7U9dz6d0B6ziZs1nDC7FiubQkGFzBaJ75GRK+sP
 MeC2X6fu1TCx2ErLXcWwT6xHXdJNJeDz008JJkbY+ONpdxBIMD/oCK7nG3b75zTDirE69nk+hkN
 XEHPEg6Gsnfx/tC3FWeAvo5Y0GILiy0+1BiOHNgnINKW/3/NSQWWvGN8xgtFMeX/UIgtfE+dXe3
 zSBw+pu27Twb8o4YVJf1iRIZ1z01BcKktNbpYJlUsrN4EoSdB2hkXQcOuUbB0XqLbaL67u55
X-Proofpoint-ORIG-GUID: q-68tVpZ3hOpp7EWjA8IsOKOgCHWkTcw
X-Proofpoint-GUID: q-68tVpZ3hOpp7EWjA8IsOKOgCHWkTcw
X-Authority-Analysis: v=2.4 cv=HIjDFptv c=1 sm=1 tr=0 ts=682afe47 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=dt9VzEwgFbYA:10
 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=7004nz7suiqLHAzt4fYA:9
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190092

Add Camera Control Interface (CCI), supporting two I2C masters.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 v2: Reorder commits; Update dts properties order and style
 v3: No change for this patch
 v4: change AHB clock name from camss_top_ahb to ahb
 v5: No change; Resent with missing recipients

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594..f2db036ca8e5 100644
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
@@ -1579,6 +1593,42 @@ adreno_smmu: iommu@59a0000 {
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


