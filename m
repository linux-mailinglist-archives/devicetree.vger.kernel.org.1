Return-Path: <devicetree+bounces-251845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C81CF79B3
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C42BD3157172
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB533246F0;
	Tue,  6 Jan 2026 09:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KCaC7NdV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ktuNe/dV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8933242AB
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767692444; cv=none; b=VofUZFxEwdCJ/1m2fZXudN5orPNuoQCFDs723jp2QCflOJfjksfpttScAl1lFFdh9H0aQqICgZUJtNL5DHJs7rTKh3SMPWTmYJz1zJ0Y4hT3GM2rWd1rmw40csGvewUB5qbPiw6bPloVy0kNiTG8kQzULF+xJSpmH61ZeoPP48E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767692444; c=relaxed/simple;
	bh=71kIrdwXOIdWDI2rV00pLfUDGbPwWfRVl4u4iAFTVI0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t8BtuQ3pV2/F1f/uZsTUjoVQr4r5cmU4rPjOJuch9yJg4WYGnHFvhopGUfDJDiQvDP8JQqYvpi8uRtQdscSRNZ8W+l+eDTTKXMu93nKqAwK+pmX4vOIwOaz4n2zPBF7ol2C4lTB29gzQary/s3PHgVwhPRNs9uNNR5F/enAEmss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KCaC7NdV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ktuNe/dV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063RDkj530099
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EFStuPjDqBGq11Y8PaNhKeVSsWepDyT54qvpTNycVyM=; b=KCaC7NdVJ9VG4PDR
	e1xRKvSi6sbivbapl58tFv+UDOduYBWSqf8kH+QgXki3I+awmXw8wBhFZQdhQEvi
	iJqdGEnSAcMjO3qCUXVXrAMiFA74RzM4GFqGzPA3P7GXgoLbX6xLOErCHPr2XZp6
	/TDEy3Owet6YmbTCOiHkw123aMiqHocMQEzNVE9L5bIEGav/rETBuOU2Kw/dawL6
	0mgilYV3nKi+J2JBleOXyGUkvY5xnHutdDWCrNbqaE1a0syHQugCJOi3VfCFiTvf
	kv1pgEmWF8cTQ/ii2aZueZmcqZo6SFPPTRVrgOeRyPocu79YutMkDzLd0JlhGoWd
	n6J4Iw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bggqu2nbd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:40:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bc4493d315so193023285a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767692436; x=1768297236; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EFStuPjDqBGq11Y8PaNhKeVSsWepDyT54qvpTNycVyM=;
        b=ktuNe/dVIEd7VYR/fpVbVym0Kb/vjSLTIYVokN8HpqQsUfU6UKWAnwuJ2pIzOqOtm1
         6wRNB980+kgiR9Dma3gSySnm2oZJ29oIqskOXuwVAJ9AExBIjkbBa4j5z0Ig/NvZqQKm
         VqNpc0xAxJPmZ1Psek0oX3BD6FuN6Ebhwyv68bU2D5si2/JzMj8OX3oazbJ6635or0t9
         2TqFpEF7B1V63gN0fE3nu8DO4QXkGykc/CMeW8VSRB9TvtDLSZIDL+DrEw9B6k+YQDnZ
         gkepavLU8zBnS+wo9FF8yK4nEjLa1KQR2tsSbWRbOtjcPeA/+7Y9mjz0M1o/C3ZDUt6d
         8lUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767692436; x=1768297236;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EFStuPjDqBGq11Y8PaNhKeVSsWepDyT54qvpTNycVyM=;
        b=ONmBYxIbOq5B0wpXxtuECFA3W5gxD2kGvbnlG+lo6FTxN2wFxAAR00IbM5c3SlXTZp
         OUonnWuVMrR1IlTx0/6Nf0OsZDKBs/O1CNRYAoqw1wxb9/lCldfl1zuQNtLPzGY1FOdd
         YApQIR2b4ljlQ17PcIb34Bj9j/gmzGAmsDWTKoup4xs+duy0ZsxfbOI8ap3BWIe7TEoT
         QsGCd/4Jyuw2YAWxAa8IhyIclTBS/pCxVJK4A67+6TINyaKcQy+5QtqrFgCj/nuo+1u7
         JV8eG+lwVDOavP/oz/gUn6s524crfQMdVvwQgw8lGBIZUb+gZUtGcyzaH1r03H+prW1V
         yslg==
X-Forwarded-Encrypted: i=1; AJvYcCUZA9/LS0tbRCytkZ3bsJ76nHYr/LYk1k3jdAI9yw5wW5IVcyKcKt53RTlJIaeyZpwJdvDs1ZufE7pJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwEGnlPCPDw2xB472YFtC/cEmzS4sdzSDPkVC67YcQth7DUMIBh
	dWKn/3VIVAhSgm4LyljOiDRiR1Cqd8pUOOE7U5fZL4xAizKhF+WUYxd2vT1YWF/R0+0FVzEzWAk
	VMf43YCeORBdI44UwKwTnirJlVLTcNzJsUqMmYK8/GVG0C0RAkwyAFyd1wSxS5bplAHl15Sti89
	k=
X-Gm-Gg: AY/fxX4F/DtgCQ/ly2fmHJXFOY0Q94oEFhd60vKDlfzMg1oAdQ0JQkZmgMMBP2JuNLv
	Pc0UCHQQ5+VuCHxH+HaHUf3q6wG1SVsPBmP/kKZ3FGeO6KWeaSTAb0D/LqmdJpSDenLtennTsho
	WYQjfYz27bPu0G01Fg0RrSshp5cYIQpz0G4zfFcXYj1d5aRBuFm0HtBICQIGvmjSQ7RLRTZHORv
	NcCJF5Wlpi5ErqMJSgtPohiAqYFJ0RbAZ+GxM/EDr+ZjYh7Qj5U86bF3hIXRYVW5jKQLWtHcEDI
	Ah673XVK1UHO02Ahspu4A1T8j2r5GoSHCtIRuEP4hLk/chnLF/V7x5Y435HU1mAXEqEbz3B/T3o
	kbA4XF353yGpWoOcd0agZJK+ingFt75Dp0ysXVgWKnyHBh4P8PhA66LfMt0bGiAlVKqZmrf1opu
	LK
X-Received: by 2002:a05:620a:4543:b0:883:c768:200a with SMTP id af79cd13be357-8c37eb4d650mr303475385a.32.1767692435825;
        Tue, 06 Jan 2026 01:40:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmqsSHsznJQkTB29DSsDfJAY6G6shE6/2pb2Xe1QxC/b+6pxtXJD5dv8h+jQwBKu6WgbSw2Q==
X-Received: by 2002:a05:620a:4543:b0:883:c768:200a with SMTP id af79cd13be357-8c37eb4d650mr303472085a.32.1767692435331;
        Tue, 06 Jan 2026 01:40:35 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51cf95sm135397885a.33.2026.01.06.01.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:40:34 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 17:39:55 +0800
Subject: [PATCH v2 3/4] arm64: dts: qcom: talos: Add camera MCLK pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
In-Reply-To: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767692409; l=1352;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=71kIrdwXOIdWDI2rV00pLfUDGbPwWfRVl4u4iAFTVI0=;
 b=/2qPrEPq76b5AFwh3yYxMGxslMvx3cl7umKuiGmVN2XvNYnuqa4mtb7b+r3bZaVI8AoJ2P4Im
 72afZFI40hBAYzNSqu5raZ80dlkEt9Mg2qM1bT0u8gtPf2HwjI8lxMb
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA4MiBTYWx0ZWRfX6ellp+2fVquI
 oL89Bdi5rLlVD+gDv2km43L1AtW6dWU23hRS/iTBVLsPrkvUDNSysyM14Y76oX16Uw0AM+ezoZp
 qV6KWXbprq1JyM5iQqnFmu49KtReJJVCJ/Ymcbo+nbmh+LbvMTMT0cWrKKHmZbkedwUDvnbFXGH
 VfB7eMHEYGjQy6fdiMRZvGY40oLWp8IMOL3jKgnl2v/MegLWWlKLm+Ie/VY4vJripkpgbjH9s/r
 VOa1Y2syp8YNYpMiQnJap1H17GPbn0sLcg5poJ8QatwSdA/xxbYJPv0OkegO3KW0UaTtoIusTGu
 U6EJ9MAwxo1+4/vnBp6vrl7yuM6xc6nvHiJ1j0eTV5+5C/5EXmlMhgELV3QDeZ5UVH4M4gjBM1E
 zkg5iTA6tIl5HTtuZpkzpfJUtl/xV0O1YN6+U5nYQnXCEU3x4YbFjlJZI6YeAfMXSAcR7NBNk9J
 f/tZ/4r88G7fkTnNK9w==
X-Proofpoint-ORIG-GUID: ldNRIvYbsd7iuukJqumK_gLPMl4_OGTS
X-Authority-Analysis: v=2.4 cv=fr/RpV4f c=1 sm=1 tr=0 ts=695cd896 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5gU9pCGy4F-zOMtWvC4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ldNRIvYbsd7iuukJqumK_gLPMl4_OGTS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060082

Define pinctrl definitions to enable camera master clocks on Talos.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 461a39968d928260828993ff3549aa15fd1870df..880fa10a2db993a82d31faf868195944128237c9 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1549,6 +1549,34 @@ tlmm: pinctrl@3100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam0_default: cam0-default-state {
+				pins = "gpio28";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam1_default: cam1-default-state {
+				pins = "gpio29";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam2_default: cam2-default-state {
+				pins = "gpio30";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam3_default: cam3-default-state {
+				pins = "gpio31";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci_default: cci0-default-state {
 				cci_i2c0_default: cci-i2c0-default-pins {
 					/* SDA, SCL */

-- 
2.34.1


