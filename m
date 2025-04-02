Return-Path: <devicetree+bounces-162599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD39A78EA6
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB611165582
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 12:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A460523957E;
	Wed,  2 Apr 2025 12:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ABITKrGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25814C8E
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 12:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743597391; cv=none; b=HTTU5fLRZmaSPYxkozr21mE0NHQxb9kBK9UmW9C0qq1pTsGuLXr27Xk8ciLvjFRHR0/qRqjOJzQgrJJ48DKfeCKgWN2dIPV6QtzRXHN19QKPSQPChf0E8BBitYxM1GD8Zx21JrUTXtIJUt4EC0G4A4LgLDSBq4myGrlD2br7pIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743597391; c=relaxed/simple;
	bh=NmjqACQfrJ37s3N6AuU/MT+sQoPHZ/C361eXGCGz4RM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h6sXCNlT6VvlD+I7aFsP50YUuifUfylM4W5CDCqVzFK2q+HYW0aOf/pa2i0tBIh3UzKWnmj8lnmuuwmkTKxOsCKscn7cYrx0UTSCDBCw+xaPc+sdUeodreY7fhOhuWWpXPV+JzCVWJiR285JVJ/TmR0sTnQcaELMTvyk7jDf9/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ABITKrGv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5324XYD2023729
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 12:36:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0bPtfuVNMDp
	Mwtr99Ca6KpjNhFdUmZN/eMQmpw+ZHAA=; b=ABITKrGv/uJeGzhT9bRGWfmEh4E
	wLmkUDX3TEs7bZymIE15YW43xuGD4jrAdn+H4PdtgWzipCIhbm+z5H+OLxDSdBnj
	u12rzVJpvZVNFclb6dR0xZEBs4zMI3yIhrI4Y5NZTKUYlfxtmy+hrGCj+p7tvrWi
	DzXzvIjv0KXJZJEdoSdYEn2Zkaxu8psp9jgXX3K+slNPlB/ZCfp6YHJAmDdO14AU
	O4PN04DAluSZsQMPJ9TTUrmH71Vnch3VB9NbAam5eNsVWGbWHoC7PB5gelPak6nj
	98TvsyXM6EGS9Ak39gSfch7+BPiYhqv8vNY+UFxi07oM5Qwzk3KePCEsnKw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rxapsagj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 12:36:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5d608e703so1203786985a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 05:36:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743597387; x=1744202187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0bPtfuVNMDpMwtr99Ca6KpjNhFdUmZN/eMQmpw+ZHAA=;
        b=kps1loE+NjR/1LvXkdFTwL2RYZwiIu5vyGJj0/0gJc+6k/Wovd7a2fuVCq/jf3tF8K
         4WNXjzyFYfH6IQcgmAvKyjOhq/J+0VwPJVQUC79tTCsjeZhc4jbgiCkMOlWxRVSuieYA
         CadfoqqsxonQbNNVgw5+9xBpAhnZDHoLPAaPb6HqoHKFH3STe6rmWH9yov0rpsjy2Its
         2wZnbIKIJ218DbgDwY6+bayaSwDWYXFku5MVCnR5QQTuqFxWnCwbVIfNgHpStqw2hefX
         CD33QSk2hDIqdtu5UJtYk0M5QPEEjWKCma7gFkLGZSinq+bjZj3bLWFTn7B8QUlWYWMo
         G27Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkozlsb91o7X1slJZp/yq5mMHkQtKNXXV2yEOCQGa6HVhuqbuf70KZx2hhVWShLqeTXFB8qpuAd8Pq@vger.kernel.org
X-Gm-Message-State: AOJu0YwNylhwovqCGvUyce8JvMZSVCgq53Ec7E7rEgqYji//jerZigft
	f5NgfspznoKZR02K/nHrI/cgTviQ5eYx9HPQoGvCaiuJU6juaeTrDTAVIrID0pAQaJatMUnQwSR
	vE4fx+VLDS4PZKGK1LSw7I6aV+KeKvs8G1xFojGI5dVy/G2XQj7KYFWf2jZsv
X-Gm-Gg: ASbGnct4X31hdGiTA3islND+jao7gw//MJNapJG84hTBzz6jHzY6osd5l5MNnhyEA8s
	W0pHXIRPMlAVXuuMaMpjTxD3l8UBh/768MVR6u3bTkXmK3KV83ozMRdOaP25wMg9ej3MuoAA8bt
	udZkoFlDZ1wg3bkRZRh1FZ+w54MUt6z8RBfAJOjAvm0VX3G4fro1u2Ony+QdC5ZBAH9xk+4jXFp
	052/sWNtu4vqjw4P2DxiLyRyGrzFUtvKNCxreQJ80nheCqRIlplWJYW2bDKCDgTBw5BEJv6Xmc2
	B5Vzm3Swj1MJTh+konLu5fNHcf9MWKlOnCVDCKotRh69IdvgTA==
X-Received: by 2002:a05:620a:4041:b0:7c5:49c9:e4ae with SMTP id af79cd13be357-7c69072f131mr2448519885a.32.1743597387606;
        Wed, 02 Apr 2025 05:36:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtXQXBQ11b54A1rMlOiGsFCvVN/Cb23GD5YAaRljh7pVcZH/wsAgAlR1FthR3T+tKOcPc8Xw==
X-Received: by 2002:a05:620a:4041:b0:7c5:49c9:e4ae with SMTP id af79cd13be357-7c69072f131mr2448517185a.32.1743597387292;
        Wed, 02 Apr 2025 05:36:27 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:3450:ba3:21fc:7d2b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac719221034sm916438266b.32.2025.04.02.05.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 05:36:26 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 2/2] arm64: dts: qcom: qcm2290: Add CCI node
Date: Wed,  2 Apr 2025 14:36:22 +0200
Message-Id: <20250402123622.11984-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402123622.11984-1-loic.poulain@oss.qualcomm.com>
References: <20250402123622.11984-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Vbj3PEp9 c=1 sm=1 tr=0 ts=67ed2f4c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=6k4BM0uUCjRUaVwtoScA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ivnEaq1v7JVxYVNcTQtpUQBgsuyGWuyz
X-Proofpoint-GUID: ivnEaq1v7JVxYVNcTQtpUQBgsuyGWuyz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_05,2025-04-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 suspectscore=0 clxscore=1015 mlxscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 mlxlogscore=999
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020080

Add Camera Control Interface (CCI), supporting two I2C masters.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 v2: Reorder commits; Update dts properties order and style

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 7fb5de92bc4c..43fcb4f40a8c 100644
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
+			clock-names = "camss_top_ahb", "cci";
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


