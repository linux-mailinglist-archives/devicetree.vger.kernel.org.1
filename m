Return-Path: <devicetree+bounces-212300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E37B424C1
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:16:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7961E168E02
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4762232274B;
	Wed,  3 Sep 2025 15:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UZbIdZoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6649324B15
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912457; cv=none; b=bbdQ4ws8xvSwF2BftVuTWF6s2pi2U1bykpqPXhwHtYHTRYa+1x1S/vet/x16dEqc29fGntwIqW5fLni1MhXYIeyM+106F97Db+owNa37yPI/gOzqjc7sMNHmNq789Bk8btN5kXhUQbPPjnXKvBODOJU9COkv+oDYLduw98dBbto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912457; c=relaxed/simple;
	bh=hnoUdf3rjdcAoYIydQYt2dYzr9CFPXyNlJHvaQr+eBk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=krO4/o6spZPjjvN514qwSdusJfSt/sdMEJySqyauaz3eSO156UeMHksAfhfv2a2B0wpHdhvECIaGKLilvlI7D/W9eBFFw9PyLa/vmptpx9SrjZwIXu5ydh/v1QNKZXjY60DjGUqffRlOK0a7Lp2W6kmuezPpby/l2CMSeG8njbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UZbIdZoT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DwrLV029049
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:14:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1zT+isCAMKH
	XxYTivUJqw6qOIGYD24cgm8f1bNsXLvk=; b=UZbIdZoTQNn0J0ph8e3tzsZNG47
	pqtPRdGcKMNn8Yc+SsMgDnO4TqW+xeqvZrB6hBUD8rLAOhaPOVBCLwVWZaw8YaUu
	RyPaSQbHCJZv6UH4uflkc5JziDBRcmXUIw2Tn0Ou7oPo74VS5b24Cvy8npfK98oO
	Qxw+nTvxV6f4fFz0PuQ5fRON5CtZvsCTfYWoAzEaQM3d3gM9bUtg+HV65Afkonl2
	qQ/W4lA0rqULiRuMY7LvXiPYRmwpQ89EyFJ5D+iDMHVwV3IGfGXnUWW+zlFYaxwj
	xjr1wBduuckUHQhrF1Ns45WgpSYSZ+wbl5z6T9C26VjRb3JWWuRnGa/icew==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw046x1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:14:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2445805d386so502555ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:14:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756912453; x=1757517253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1zT+isCAMKHXxYTivUJqw6qOIGYD24cgm8f1bNsXLvk=;
        b=bw+6h+0GfXLxH/Lz3NxqCZgVetkWcdDYg/jxMm6WHGlablOcYe6qrZFMa7HGiYZe4H
         Rrcn6tFEJFlEVX2OA+ln1F9aRWnf8PQJTDXtlhs38Yf1H9mj3t2xllSxJ8S7zdZstBgx
         rXbQ7e8Qb/+F6DMX77ms1vNfDFTczWvfxHGMM+ZR33iSPFK5eiL6uI5BPkR6hIRUJCrl
         YNgV95n8IrV0uh3u2ALXP18CEznHJ1FojjMPY2N0Tu3YoXWafzj/qFni0NfuYXtGQBV8
         32AIF3AAj6dN5KAKU2B4BaQDdytVKfMI38i8UeODUipwzakDdNWPyNCvv9P5Ftnd2FYq
         A1Dg==
X-Forwarded-Encrypted: i=1; AJvYcCW+0s+Kjj3HO6cB6DgFwAF145nXtIGwMzZOgjmrv9XQIyZwGG0CX2eA9mgXvw93+RnPv4TuSQMS00BB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+DyMBjdGBAWmDDRCCxrxj7NRVKqob/efKpMZMAQC3mt1kY4bR
	vkY65H76R56cTzBShZODDLJBF5q34lDoQz2O+JqhiqlHyUfh/Acg7A3JYcTsUFrpzB0JWHD8OPE
	RKZJc1BPF2JkEL1W/ToPXzgakjFFQkofSn2Scs97RPH6i2jjQutNvrJ5SIxleaU74
X-Gm-Gg: ASbGnct96G7VCl0VgX8eg/KQpaW7LBwPsbshxKQs5AyXNzG0pLM95MdZ9FxGdzauvxe
	F7XEpNLBqqPjsBf7J8z+EivhpzHSKfRWTsg9/oiY9cB1EeNLYw+EB4BsZdDCkoX2UPhc3bKJG+Q
	xtSmoBh+CiAgxmhKN7ShU/j8KWEz5dv4Oavnc1E+btCQ2hBFpS8iG6mD8+r2nhDCbKVwRTbDwDT
	Db7FpTgy24whHtDiMxPw6/7omypIdAovrSYrzaW4xv1ho42zrcjNoq524rrOG1aIj8Lv1GyEpdV
	37siXpWBts7bLH5U5OgEuAVJCYIt6z2ahKYlwxCespShK5xPLF1VggQ3vEySzwOUnpe3qdkW3Cr
	O
X-Received: by 2002:a17:902:e94f:b0:24b:1589:5054 with SMTP id d9443c01a7336-24b15895984mr77983905ad.23.1756912453105;
        Wed, 03 Sep 2025 08:14:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOVc9HbfT1Od4ND0ksWQhGbUiXjtl0OlMXb+jVj3sT9uXnWRuDf/D9PyMVC06mYe04GhUEVA==
X-Received: by 2002:a17:902:e94f:b0:24b:1589:5054 with SMTP id d9443c01a7336-24b15895984mr77982655ad.23.1756912451454;
        Wed, 03 Sep 2025 08:14:11 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903758b89sm164818945ad.59.2025.09.03.08.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 08:14:11 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        prasad.kumpatla@oss.qualcomm.com,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v9 4/8] arm64: dts: qcom: qcs6490-audioreach: Enable LPASS macros clock settings for audioreach
Date: Wed,  3 Sep 2025 20:43:33 +0530
Message-Id: <20250903151337.1037246-5-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hTWZ4oPltGXCsSe4-m9j6uBpWZSQeEs_
X-Proofpoint-ORIG-GUID: hTWZ4oPltGXCsSe4-m9j6uBpWZSQeEs_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX4rnoEfG0/eLl
 hFrO2EsuD7cBOPVNJ6H2RHdOsUpcoA5WocstKcbaBLtk62hc+BrcBXuyHuBy8OOKtgSl5ML7WQ2
 7xvolmOAhEe6a+aTIXZYMqyMjzllpaVZcPmi4ErBrwhUD9SP+sg2bZtaSPLysTI95C4Jpgb8wHi
 3qNK9NAQObzDpVpwbN016YXC+/mCb3NJ/tPSKkeYDmYZmK9/vwW95a9KQ3d63fdLRYSsQwd96AW
 I2qK7TAhHwwmB/ttl5PkjbcuLk8BjhoHlbIdRR5EJLRZxxtdOlQVyRIn50IB2m5YJL08FK//j3G
 zxQE/slELqh36BPmN7qbI3aP2OETsjO2akOsh7oUKvg0mLYS5G0+sAbsesgva8sxePIthRxT+5L
 EuxFg6rO
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b85b46 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=Ri8MtJ_oCAYdBNTneTsA:9
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

Enable LPASS macros (WSA, VA, RX, TX) and the lpass_tlmm clock required
for audioreach functionality. In audioreach solution mclk, npl, and fsgen
clocks are managed via the Q6PRM. On SC7280-based boards, the TX CORE
clock is used to drive both RX and WSA audio paths following as per
hardware design.

Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../boot/dts/qcom/qcs6490-audioreach.dtsi     | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
index 980499fb3c35..bdf4b6c3fc6d 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
@@ -10,6 +10,67 @@
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
+&lpass_rx_macro {
+	/delete-property/ power-domains;
+	/delete-property/ power-domain-names;
+	clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_CLK_ID_TX_CORE_NPL_MCLK  LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&lpass_va_macro>;
+	clock-names = "mclk",
+		      "npl",
+		      "macro",
+		      "dcodec",
+		      "fsgen";
+};
+
+&lpass_tlmm {
+	clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+	clock-names = "core",
+		      "audio";
+};
+
+&lpass_tx_macro {
+	/delete-property/ power-domains;
+	/delete-property/ power-domain-names;
+	clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_CLK_ID_TX_CORE_NPL_MCLK  LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&lpass_va_macro>;
+	clock-names = "mclk",
+		      "npl",
+		      "macro",
+		      "dcodec",
+		      "fsgen";
+};
+
+&lpass_va_macro {
+	/delete-property/ power-domains;
+	/delete-property/ power-domain-names;
+	clocks = <&q6prmcc LPASS_CLK_ID_VA_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+	clock-names = "mclk",
+		      "macro",
+		      "dcodec";
+};
+
+&lpass_wsa_macro {
+	clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&lpass_va_macro>;
+	clock-names = "mclk",
+		      "npl",
+		      "macro",
+		      "dcodec",
+		      "fsgen";
+};
+
 &remoteproc_adsp_glink {
 	/delete-node/ apr;
 
-- 
2.34.1


