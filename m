Return-Path: <devicetree+bounces-217909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E50FB59B4D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E898716790A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D813568F1;
	Tue, 16 Sep 2025 15:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VrxxxJtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847C0259C98
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034814; cv=none; b=vFi+45Lj4iFfgpoHb4fEFLzgirWyjuGiaCbsD/pPUkHvSt2SP3Oykd0m5hc5a4D1SWKXTR+lnpTcHUnNN7ULICe4vcu3x9+YfXMglm/aWG3Iek9PO8wDD+1S21o6+yojHGrCyH3YLUBugMYc55997d6uOni3Ckzr0fPZxPXP/D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034814; c=relaxed/simple;
	bh=AeQJ+Mvvn8Zchtp2KXj5ziKvJddoHzFNlKss5ip7LDQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i/49Lxy0O9Gb/tnyzUkD79GxUww1mRNnGnACEiIPRrgrYoSbaUJiz6cemBZp//aoV1zxaJV2m1eVIRA0pUE2DmdnFSCM/dWEWZJYdFvoNGAGslk8jYEtcTLNuTujp5Q24fWoBcsa+mO0Ff5IjABNh/IO11J6h3qkZcvfMMcxveY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VrxxxJtX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAEjC5012731
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V05d+jNh/czCFv+YIOyVmfzj3aJzSMxM9iGXDQbdqsg=; b=VrxxxJtX3wb6uvTI
	RlmtyTUDMW4FctOt7ox81ZwBZgb8+PR9ljugdi/ATbfkr6eT6qL5v9EnVXs082wB
	G66UZbbh3CBNyee0ApvAJ6T8/oHweTFibb9GIV4rcr9gqGY+542egPuihmTPk9fm
	PdlZUtnMOIbnWHJzhUKP6GeQz+TRfIkueKzEwVTPtOJo0GdAWpJfZMaS+Ak7goWW
	LvLNTYpdiEQGR4noHOvPgjQAAXBeP53A9ym2FeQw/UrIq1xQE4CuR59456oDlqvl
	fbdI17TjfXspVlMmdi2JH1TFlHf3O/fWFYdBmmzFAsjtSv2/nybOT5cmpZUx2R8w
	LJ31Jw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g12mwte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:12 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2641084fb5aso28880375ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:00:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034810; x=1758639610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V05d+jNh/czCFv+YIOyVmfzj3aJzSMxM9iGXDQbdqsg=;
        b=azOR7GnYMDWkRPRBNmgsJBH+Wo9zxdVr99uNMi72gPxYkk0mY/nmzGiziIgZjPtb2d
         xbf4ybah6ja6oBBGESChU9QYK+ibwmnwYF7KjQk/FlAp+sn34ibkLTWuqFVwZr5Vai7z
         gK4QkgWh0j3tKsBMplKiuQPYJ/pwgUlrjJulIWPVrutTdJKhEN3zFy/T8ju+7BGVFdO1
         AvqoR/c0FZoj62GKsjTVTdghpWcIES77bkkCGnww3pdJq9KNcVgDUWHDy1P1kHqeqCBb
         ynB0eC4WFov9tvnFoxHg2JErQ4ibzgbx+QiAe4eGC+fFmsFdFihYe/vfzbyHxFjOKd+F
         krhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcLV+1f1Z+iZI6FWC5agDoqKGMsm/jMIZpYKUCZgXDucgmbowk/sFTFCJ0fKAMafce30GtSCCcRX37@vger.kernel.org
X-Gm-Message-State: AOJu0YwLSWQvAB5BYXeKS8v320kT5YR8aB5VHOPa58PpUfeGD/9MYWpA
	Nzszao10oULC9/8zsoCbh9dl/VxeEPEuAWzeMD1wz/YLYiumhHLc7J6EeDLhlfhtt4rLfoGsoXB
	eIenEOEA0h/6mHY6pdlvlBxRXZezQ8pxCtPefq8JhCZZMuvB96+c8UX/hE+EHo3s5
X-Gm-Gg: ASbGncv6YLnMJVYQFYVA3/IIubtaW41LLkkX45LonJEXM24/wczONSDTq5YPC238we+
	RVa0RMovPWdDik0BniEtEwhi7pXKvrXbwtZJX3Xk6yg8dDZ5dNcDA0rRv2wW09bZ/swTqH/0uaC
	2hVOTRH960yffHcWBXwjj4b00sK7Xthph22JLMUSEtIYAabpTWY07HIGQ7Q1Zz7XAXPfbOSW5+5
	MeSHpSkloYvyai3a3F2YXCXuNM5Y1i+H9wNaOiinHPuH/rdDsDDcWMy9T32CSFsF4JbS7fOCRUc
	/JGND3VL2gnLbVR4TvuHcuPux6nNYeAIPpRIuy+LHERmnmO6oaYj345GTT4kjuGygoah
X-Received: by 2002:a17:903:4405:b0:267:b1d6:9605 with SMTP id d9443c01a7336-267b1d6a44emr61499265ad.10.1758034810096;
        Tue, 16 Sep 2025 08:00:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXXtzp40M+OnwRPHaBfUHcZY3UBeT0scukJXr7R5AGOJ3BP+3MpI6Pr++mKWkPkvNyQtbiOg==
X-Received: by 2002:a17:903:4405:b0:267:b1d6:9605 with SMTP id d9443c01a7336-267b1d6a44emr61498535ad.10.1758034809413;
        Tue, 16 Sep 2025 08:00:09 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2651d2df15esm74232615ad.45.2025.09.16.08.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:00:09 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:29:28 +0530
Subject: [PATCH v6 06/10] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v6-6-62e6a9018df4@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758034770; l=1248;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=AeQJ+Mvvn8Zchtp2KXj5ziKvJddoHzFNlKss5ip7LDQ=;
 b=51Y+c1piLmdWjG+Oa/4O7vIYN1Ktuey9O6ZUx4ctB1uZetUtQKP/MyuV/a+F5d1pJO7w7XhXd
 +nqfT84i1GJAgBIWfF5jT6Royc2uMgA2cLMeKWtsu+5T7rzVdnXu+ke
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-ORIG-GUID: p_7udQb3og8i1K5OFd5F6llevJOzR5e9
X-Proofpoint-GUID: p_7udQb3og8i1K5OFd5F6llevJOzR5e9
X-Authority-Analysis: v=2.4 cv=E5PNpbdl c=1 sm=1 tr=0 ts=68c97b7c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=uxRHuE6yrSyVtnA-QqAA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NiBTYWx0ZWRfX4s5/GTEFfemQ
 wItgm9cRLX1NMVRAHu3wpk2V8hYi4ex5tzUZJf9OpMtIcFwiPbDrZ+qWjpf29vUR9fVnEVQl1mh
 s3XjDtL6JThqE6hpzKd3Ls5mClMcpsBFH6GHRwiml2CMaiQMs7Zyr3hSWDRF+qjlSe6KzGPBiXn
 kR/sW/jGclAVSrnFfOVEWaIEyKdmE6pRGQEZpLWtCCMdJQFb9V10ZBrcv1c+UVC66RpW9wE7VA2
 /0viAplRA09VtFqueZQRqfLvN9zI6CR4fD3eO1/oqEDFhgCahyc7gpeEUdiJQxoccv+XbwYb0zN
 24yykKuOr+6tldQn07J63w+vpROi3saEHLYF7MpQ14lCjP3PRoWYFv+i2GlYdcoowEpgPg8/hh7
 4cAFx+Lw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150086

Enable remoteproc subsystems for supported DSPs such as Audio DSP,
Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
firmware.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 99400ff12cfd..d92c089eff39 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -477,6 +477,36 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sa8775p/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp0 {
+	firmware-name = "qcom/sa8775p/cdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp1 {
+	firmware-name = "qcom/sa8775p/cdsp1.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp0 {
+	firmware-name = "qcom/sa8775p/gpdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp1 {
+	firmware-name = "qcom/sa8775p/gpdsp1.mbn";
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };

-- 
2.51.0


