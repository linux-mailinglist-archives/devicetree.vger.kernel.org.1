Return-Path: <devicetree+bounces-161428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32107A73FAF
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 22:02:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61B7B17D19E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B017D1FC7D0;
	Thu, 27 Mar 2025 20:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W+w2mFpp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C697A1F9F7C
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743108909; cv=none; b=UP7kJFj8Q4I/jl98LdRz14MC3FkOSu8fKPoym8x7a6JNh4f8fsjUhTzPUTOBRigOO+ooGbuFfRnu/GHJCRPD0bHe1Dx3FN7/IlmYDc+I4cNh9upy14QORTxNdK+xxJrfZaTwonBbL26NgAg2treoLpz2U4n2lISx7uQIfyYSAKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743108909; c=relaxed/simple;
	bh=JCGsJhs2SdD98uzBuqAjuVdnbspv67Sf05zG+7tanQA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OA367o4EwYJho2u609ZiL04mzRHrdZC7Jsu9F63cFnmQRPLBFm/wCOUANE0PYKp11CNXrG+241GgZ4krIDB/Fx9oOGAXrO9mppy+CauyhoEbJcC2U+b+4MvthtXUq3ZEBQ++iKfX1HzkehXCP+9FL49YZj4el0CwK9PvUN3hqTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W+w2mFpp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52RFVUpV025752
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fcdg1VAc7ndOycsxLya+Oon4ZP22hM8HpfAoB386QYY=; b=W+w2mFppuL8VrkT9
	HYG26zp0j2NxqlqlgUtCOF1jx9KDBWwgxtcNGigOHRx29u6lnl1KJpkbKPJOEdb4
	6HtHJ5IVee6QZliwgdP9rv364TZbkktJA6BEtvhVwgWL4x+2BvhGJIa1xkMV6JND
	ODNV95L1zcPECqrAz/1bQtPO2fHAYkNHT3Un6b+gC0XJLDzmB/t72bee/4PVu1+J
	0ZMr9cJQcWKVLV7XufdfRfTIjrspPmJ33+Aquk2lb/lMQ43wPOr61rImGH1laBps
	EKt+/qHCtgISO552F9p62pO8gKeGFSn06LiUmDo90G3IZ1Ta5VaJRBAQr7rTWkiA
	oq4dzw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45n0nutdac-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:06 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-227a8cdd272so23746765ad.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:55:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743108905; x=1743713705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fcdg1VAc7ndOycsxLya+Oon4ZP22hM8HpfAoB386QYY=;
        b=kKftGN4mhmmkJZJxhMTbTKZpnqWhgvgMHfp9G2iX39KBksIV67XYc1mc5UKN3rabX0
         K1X+M+yag0lVve1m5wOi26y0ihtS3Zrq5PdC0UOkjIWJspH8Nfg2mVH4isAiFBLoOUMs
         TrkBhdEbWa03AIYuKXq7w82n6OMzKH+yTSEFczraub+vTmqEZjsDvUg4OxtKtvoJzOfA
         K9WptD3KgAGx8YFkIw4NVX8G5411o0qrWqXsHTjNUgvD/41z7re4nUmxQ9yAQzLWtTxe
         Ei+1ZkijNzV0b1ESj1E5UgRtptnZLbZumlwwLCa0+FXiclXs3Od1JJgdWufOMgrgSpM2
         YnAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhuHvSHvYQml1Vm8rSh8jBmhanUH+oO0iEPu0E2002Jo2SBtcZTW/WGz7OZ9oqhPkX9dt6To3OxS8e@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5Dm6ZD49wtMFGEqZn5+jUtGwnu94RVBj07yZOBlxfXUPO26rN
	QWri+nOMn1xj5VW5qmMqce0a130+LjaPeopq7/udFbkS/TxAZL1B0/gA10xUL25HnxkRM+V+3rr
	SIFlLE3mjdW5VDd2Qqh5HLiE12L4d3xsiAzcIoHCDui7PPZTSvAYda1ninY6PNHFBZpEG
X-Gm-Gg: ASbGnctY7rCLnLbvXS8GJDaupgnDcW1jbPNd70zfBFUA+RbNlUmbIFqiVBHcZtw019p
	wBh8ymADlwjv2nEL2vG3Pp55MXb8IGJYPh3UT/B8gpbMzElCi6C5ZQ3/xJzmRlEFkVE5RCHUNIg
	uG6+PCGRVikEzDRqd3Z9CE4Qey9DQxwWoYW3/0fju0GtDQfJBEhiZjrrRlgwxIxXsFFHiH4L0Ox
	B+dQsJkF08tdljJlqdMYu4jt2xq4ygPDXJV/ItjEveKThNbi3Llhda7+e5ZKEDPDdq52SbjBnFF
	eGir3m6qC+/mlREMrjyRFXqBFURpovjnC+FDux/sgoCSC96RoFjLtr0EvHIJV3Fu54EymK8=
X-Received: by 2002:a05:6a00:848:b0:736:ab48:3823 with SMTP id d2e1a72fcca58-73960e0fb47mr6484339b3a.1.1743108905420;
        Thu, 27 Mar 2025 13:55:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEnkJJIMtRyqYK/2XjsY392pqaxRnmSP47y/7BPqGi6PK3Q/ePcfNg+0eDau5s9cq3RkRCoA==
X-Received: by 2002:a05:6a00:848:b0:736:ab48:3823 with SMTP id d2e1a72fcca58-73960e0fb47mr6484305b3a.1.1743108904909;
        Thu, 27 Mar 2025 13:55:04 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af93ba10da3sm330889a12.66.2025.03.27.13.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 13:55:04 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Thu, 27 Mar 2025 13:54:31 -0700
Subject: [PATCH v3 4/4] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 QRD board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-sm8750_ufs_master-v3-4-bad1f5398d0a@oss.qualcomm.com>
References: <20250327-sm8750_ufs_master-v3-0-bad1f5398d0a@oss.qualcomm.com>
In-Reply-To: <20250327-sm8750_ufs_master-v3-0-bad1f5398d0a@oss.qualcomm.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manish Pandey <quic_mapa@quicinc.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743108898; l=1323;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=ihtCyJmMmitRot9saRcjMZSy+hpwYazvZIqBi+G/4wg=;
 b=IDJhIzbndFSOx87EYr1g2L25zIqku3UnkqGVLM/TErGUoJU79zC+CXmGHBN/uF8+henbwcJQy
 7eIMRcJVA5RA4quh1i3Zrlo60wWo60V6R0GJKNKoWIXc/GAWA41gUu4
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: colAddwglMgSXRI9H98tARO67M8yM9At
X-Authority-Analysis: v=2.4 cv=AcaxH2XG c=1 sm=1 tr=0 ts=67e5bb2a cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=nWr6sicSGW1Kan4-Y_kA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: colAddwglMgSXRI9H98tARO67M8yM9At
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=748
 impostorscore=0 malwarescore=0 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270141

From: Nitin Rawat <quic_nitirawa@quicinc.com>

Add UFS host controller and PHY nodes for SM8750 QRD board.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 7f1d5d4e5b2813c59ea9dba2c57bee824f967481..363703e3ee8fa2820c72c58a0f4b3a73e7aed59f 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -804,3 +804,21 @@ &tlmm {
 &uart7 {
 	status = "okay";
 };
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1j_0p91>;
+	vdda-pll-supply = <&vreg_l3g_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 215 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_2p5>;
+	vcc-max-microamp = <1300000>;
+	vccq-supply = <&vreg_l1d_1p2>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};

-- 
2.48.1


