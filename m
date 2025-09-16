Return-Path: <devicetree+bounces-217801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8280B59411
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89EBF1716D1
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2BC2D028A;
	Tue, 16 Sep 2025 10:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ILXFi8ai"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793422C3254
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019637; cv=none; b=HxkGY+PINopyLGRdmCJo3FARFGMhJ0XqoLe32+kHrP6uHiektkbyj2Q1A8R60d6iEo80zBIPRJxpzXjgqg/CycAYj6mXQcr6D2XPyIo3uffMpAOeGgKLOvzltEisEzSfBIOWbbr2qYHv3wUkBqoAq9ztbgKam/kiWcz067/5zVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019637; c=relaxed/simple;
	bh=fa+ov2f/0xh12Rc546amD99lGVlgadBm8+mcInocPig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TrK1870gg0TVgfmOOnjg0kdei7yU2yGsUpOH13055FUl4/SnGjUEm6rEUfos1rwy81NWllpjHFxWpjRI8hoY8Lf4aBmrmbLOQnVZrVqbzkuNJfCWAE2ejDapP3OzNWwz0j0TqfMmOTocJk15s+hkro8mQz1iwRg0e2iG38Q9E4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ILXFi8ai; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAInAB010531
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ajsFvmL99uD4xdhW1XhZvWHm7Pqfov1TAZi2gC2+njc=; b=ILXFi8aipRGdTx6E
	GAkQSO8okHQyzkoiUP8UACtxOHp5QmmkLIm6AI1jRwywh54UPWwxqCTze6Lh0CHV
	yXgwg3Rge8fWmNImdnc5YYyQUVxYmZIfgUIimIZ5UfJ9aPwFsRJBdydpNBUwPTka
	3KvTCuICqK0iDa2Klw8cVgTykEESa2hYVlgwUQY8GmjIJt/SzCzhBUjeWekXCj4N
	X9srRLJH5no/3bcRmxpiSengFO683jxbC3m/lQiB6EUGbKWarYOh20XYCWpvF4MS
	Nd22xmjgXaIlL6nMqSfGmfdFnHg9sqYmiRqRDuQrwQ2WZJs+KgXiEDyZ/8GaoxU0
	IZNrLg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951snrc6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:14 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244570600a1so59346465ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019634; x=1758624434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajsFvmL99uD4xdhW1XhZvWHm7Pqfov1TAZi2gC2+njc=;
        b=dMtC7mRvn9EzaJgnjAyMbLbWlT3APL06ZvhffJvDxui96a+1dfqsS1qBMxRIAqNbEs
         tS2cGfH9Wj7rGbAO+k38JqEljQ2eYBzvbdKUJEZ6eSnxEYigcn52gCrYQy5NglRYazgb
         JNRwVFJ54XmILDnGaO6SmkKNrHBQYHsUptyPu9UVh/5GNw5DyYeRkiP5zlVCv5tXvbJ3
         QyvCjb0TzrYU12AH3RssHhhVhIJatBd2cZKnzL1xv+PxLZnmhnrhftoYATnJh4/Dyh5L
         eoAcbVbgfnQ+WhA1Yy5Pzevn9XQUu9MbLS4BlKbpzRdvBYMJsbCPEJhekkLxtdZppz23
         nf7w==
X-Forwarded-Encrypted: i=1; AJvYcCXOZW5XgyMj6688OKqpjAZ3eehLs9+HjCJeqFXDn3Cjtv7TJ93XKSw3ZEgXk17lcF25H3qtjnKunTfr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8rORf6zIhPBZqAEZ494ayhToKRzvgOtmDQOtIUgH62s4dIFOW
	6tpYNOz6iiJ3IkPBjOUEEg2lH7MX+LnlrVjrLli99ts7XmI9lF2M4INdnZOUKHAspIaxB2kmsB7
	aL/cy19M7ZXWXpXf5o4Bad0aMqjoNTAaJ8GxZDHJwRGe9nQy2zl0ukYRmlSaXBNlj
X-Gm-Gg: ASbGncu15Wf2L+rVg8XgiV/cC1mAmOLmXT8vR/fqKoo7wGm2zqc+yUOL1yean5of6ne
	9nHyduxREyf7pTmA6sS6sk3uh1h+6oWZmkjWfOzI3ahDwRSNZKyK6DnIXmbq4UuRwICtnyjAKDr
	Kx+tqL1zSEIFw06Tq6IZAHXE1tUg1B23Sxoa53yITdSSXP9+OiRBiPe82/3F7HOWPwux+dvGL27
	Cx1MdSScVc3rRNzf6jx4au/V5a9Ki15VfjizKWQMW2drs3urrSKomDloFA6rFFYwGXYfBncRzdl
	SxNQxWqpUI7I76+Uwnktyl5lf5eA7JeiZo/SoT+26bRgjWNZMmX3o9dLn4DED/56W8/8
X-Received: by 2002:a17:902:e885:b0:264:f533:75d6 with SMTP id d9443c01a7336-267d15655e9mr28942235ad.11.1758019633668;
        Tue, 16 Sep 2025 03:47:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/4CUe719nQ683Yr0dKDLjFmhdTjEL3p/FkdG21uCVslhSoP3TomxcadrneCbSYPW5Fj6HVg==
X-Received: by 2002:a17:902:e885:b0:264:f533:75d6 with SMTP id d9443c01a7336-267d15655e9mr28941955ad.11.1758019633197;
        Tue, 16 Sep 2025 03:47:13 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:12 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:50 +0530
Subject: [PATCH v5 02/10] arm64: dts: qcom: lemans-evk: Enable GPI DMA and
 QUPv3 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-2-53d7d206669d@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
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
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=1269;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=T1vtGZ+9t7qs4O9VgCmpcKFucROH+/+ubYN4R4HcRDI=;
 b=dBFSA5n41tUMXPtLGrYRzeqkG8NtFDvYbBF8HxzlbuGwFV0TvPYcv5/JfVBRB0hhAOfXvsW0F
 KBKUx2dl/A1D63z8c741ZhAJCqd0uAni0v7SBBBjz6GK30FL+2MRqnk
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c94032 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hGGMonP7TOO80wKNN9QA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: -j4H66uG-BWQLh3htWyYYbBNQLLgNIEW
X-Proofpoint-GUID: -j4H66uG-BWQLh3htWyYYbBNQLLgNIEW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfX9DUJgzTZXzz+
 ctuxun8pvb9hJEQEeI/IM4Ypow+dvEjwP3hwYH2EOwW4qkgc6u1sWgTqu9n+Mz7rmnEHcX4Y/E+
 JRa/jircfTA5rbXJHzR1IQKVf3Fzho3LVgeCUjGnNiFst9rjgRNw81TNBEjGUvtI1YdMojjRrnP
 xF3401aHZ3t1J0W0Y4jdsvvyUxZ7tzfdMlHnI/yZIi7M6OnNG00MD5Lj9O/Bsy5bZP0ttAiYwid
 4I/3E2DCU0iJGVXH9Sv1EQuI/ccgHVeKjHhy4Dhi5MmdZqOnx8dNKaI9SjLP/1qt7Bvhf7N1RRj
 xxbV/ugRHS7hNqWunzbVS/ecNtWbMz/IUiQDBneKv3Lwu8RpvXqwzd5sfomIzW+kJIKsEMW6zH8
 KsrmsciC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>

Enable GPI DMA controllers (gpi_dma0, gpi_dma1, gpi_dma2) and QUPv3
interfaces (qupv3_id_0, qupv3_id_2) in the device tree to support
DMA and peripheral communication on the Lemans EVK platform.

qupv3_id_0 provides access to I2C/SPI/UART instances 0-5.
qupv3_id_2 provides access to I2C/SPI/UART instances 14-20.

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index f79e826bd5d4..4da2c5a12c1f 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -329,6 +329,18 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&gpi_dma2 {
+	status = "okay";
+};
+
 &mdss0 {
 	status = "okay";
 };
@@ -375,10 +387,18 @@ &mdss0_dp1_phy {
 	status = "okay";
 };
 
+&qupv3_id_0 {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
 
+&qupv3_id_2 {
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };

-- 
2.51.0


