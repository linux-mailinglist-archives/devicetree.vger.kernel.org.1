Return-Path: <devicetree+bounces-161427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E972A73FB7
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 22:03:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4BCC1896CC2
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32AC81FAC50;
	Thu, 27 Mar 2025 20:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JUxRemTs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B811F8BC9
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743108908; cv=none; b=H938oW8yPjaBmtmfP+YjlnUALStDICOWdQUy3CVwPr+QcNf6RZcAxiffxRRYifzb+8K71nzN4VSHz7cSSNp3gdi3touVKfA0uRT1l4PJVuVlqs412PglBB9Xqa9jZ8u3VRZXvSfLmOrhMZ95sbqWuT07E57ZOq7L2vDK43zbNkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743108908; c=relaxed/simple;
	bh=U9BdzzhWeFpEO03ZcdPUogQJ2eXNj04FLA772lDCFGo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fWKpokhsxsn6tfThiRgNK7bKuKfuYMFQaMQSkCBBtWmr6zEMJAGvKtmRPaYtmIXcJUPFl+itSK5zB2nRFFi87nYBt2OjFCsGsVnCG39UhX1vJJcdbEii/7fYIicloV/DoaaM1vzSwFFda+lGX+NLh+c6nqzykOkZtgnpXgBY+vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JUxRemTs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52REfLJk013188
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HZL2J7j67fkYh+i4KJociVMY43u3MrYZFVTQ4IabZiE=; b=JUxRemTsSogy1f5n
	SiRsW6BUwBlwwJQOcJ8z23Ozz7FB8oiK9WFuHmf54ntRAQbqXqJwwoXJ1LUgLAHo
	ZXcas7ep60/Idm5Tjo4O8k6eh/+366fMHehP2GbhWU6HuJ4ZiVC2Kq5FP9begQ+r
	vLR3JDw3uS0DhQ7/AXX5EdHEaONls3ZtCLTA+12G/PoF09BUJ2Pk24EyY+8nZEdm
	G6K8VIhUbOheT/e0GJ4qzODwhAYFKf1imM4RxwH2LAHkv8viGSWmBrGZIwnCTjLw
	z5wBSaeVq7P/DjBiaTXiqoyA8JcBxBJTeojLCdj8GSY7lenaMtQJAo5At6/V/32x
	vdMqxA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mmutm7xj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 20:55:05 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-30364fc706fso2373294a91.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743108904; x=1743713704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HZL2J7j67fkYh+i4KJociVMY43u3MrYZFVTQ4IabZiE=;
        b=M9nMxQA9i3nwLuGLPQH7pYg6qOwERye8EiIJFMRYCABsy5PHcWjk3rMIbIEsvXcO8X
         0tdpRu1+KiqZ/2LpB38gKjfYSOhXDAIupSvvbWqOzcQhy90V9wgqB+HKNYd5X4IKBBws
         5v5FSRoVzEWbXQMN54NZhooXAtzraYOSpw6UwxyLHwjh3x30MaP3wz+oNs2O/eEwtwdM
         M43Oj4x7aZaJB0Dq2DvCqpFzZkFJQ/Yh0a2t2QalwsSHAWXPr9IRDPetJXHrSMVRpt2P
         yMYJEsO5cvXPnCFkGzgusdB5Pb6TCau30UN+oWl6Rr/xRiSXAy9EHwsL+CETKWt2MwzD
         mXVA==
X-Forwarded-Encrypted: i=1; AJvYcCWlWJbJC/4WgMgQx+Fq42XKl2cJaV6otm2bj1QsFu2VHMaaqbxQb+PtUEQ4irBGLnhVt7jNP4BmHr5d@vger.kernel.org
X-Gm-Message-State: AOJu0YxvWIWNhGcFNmiOBNdzd7mFbLFSi15xrjpm8wcfjgZdCnNpVVgf
	UvJ/g0ArX71J+A0kzRhVYfgjl3SW4rAitvxCYMWHVC5YmWVg4NNhc64tNEEq1mlLE7KRPkzTtFJ
	uSnnKBabtZS0HAp60os1Aa2j17zEt39zP7K1j2IgmK9ntdPLZg+X3qT7NjuKEQQUQVdgv
X-Gm-Gg: ASbGncv6E+Je80cqAI6B2J1XrWhqywGt6wvB0xk0a4OQn+k7LMr0m+/5oviH/LuRaIg
	1Dd4CovYWOQnE2WRSyL6dPAklmyPMFjg3cVxheXfJ/ac0q7nFXaa6UOv4WWGN+s/c9so5HF70Vc
	svmjPCqtSDhpAMr+xMzpYb9dyWpgeSHhXkpYuzPCXyrTQm7fIcaR49z0WWhd4RuaRyMj9bNBpYe
	tU1kmbpGjE4KI7siyP0SoG9OEpXk3HoyhloRRx2ZIV+Gu8UOOJTkllwzAYHPW0GBtx4A5FRYz7c
	Dl6q7rWbXPvsh14cC7DF8dsLpdfUPx/ThWF34Ec25lvQ8EDiZixPCg2HzW7z0QjUhpuhV4o=
X-Received: by 2002:a05:6a20:9145:b0:1f5:873b:3d32 with SMTP id adf61e73a8af0-1fea2f985e6mr9089564637.39.1743108904041;
        Thu, 27 Mar 2025 13:55:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeWk5YIjRb7LighhOG5PT8QRBGUHODIFCxkwgKYHselhxMyeDWhxxLY5JxTwBRj7OMdUcaDQ==
X-Received: by 2002:a05:6a20:9145:b0:1f5:873b:3d32 with SMTP id adf61e73a8af0-1fea2f985e6mr9089515637.39.1743108903558;
        Thu, 27 Mar 2025 13:55:03 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af93ba10da3sm330889a12.66.2025.03.27.13.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 13:55:03 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Thu, 27 Mar 2025 13:54:30 -0700
Subject: [PATCH v3 3/4] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 MTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-sm8750_ufs_master-v3-3-bad1f5398d0a@oss.qualcomm.com>
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
 bh=MdjD8aiHN7OIuRznvg54M9HPuWn9/2mgRjQBVr1Q0Pk=;
 b=5T5ASOH7NkLgWgE7q0nmKRiqY5hB453mQWJyRvMZccbsIEoVlAaPpIZiCsEeCwYUlOkTUrM6Y
 CXJLyGLYFIWBmkxh+xrlpJHwai65gRsyY083J1n7VV+80/UKfQIC4qx
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: FfE4idBjymmGdkK7Mry2ALXMP6kPlHTp
X-Authority-Analysis: v=2.4 cv=MqlS63ae c=1 sm=1 tr=0 ts=67e5bb29 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=YBlEHuN6XgywxwcP54wA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: FfE4idBjymmGdkK7Mry2ALXMP6kPlHTp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=683 mlxscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503270141

From: Nitin Rawat <quic_nitirawa@quicinc.com>

Add UFS host controller and PHY nodes for SM8750 MTP board.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 5d0decd2aa2d0e0849414534cdd504714402458e..90abdb9da183cc6fb93d2a28811baf4e348f9831 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -806,3 +806,21 @@ &tlmm {
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


