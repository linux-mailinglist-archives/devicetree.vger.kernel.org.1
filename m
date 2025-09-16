Return-Path: <devicetree+bounces-217803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A03D9B59420
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52C492A7624
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFD02D375C;
	Tue, 16 Sep 2025 10:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DFuahuPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820152D3233
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019648; cv=none; b=GhEJqjup1DtRsQ5agku2gKCg4JC/c7BG006GObGuJ6OlHTVJwJDKaJvccOC/F8lqOrYG49ObWquOJOrs4YYpwd0njXg2KA4NgqesAawBfI4wh2oTg+WR3InpEglmCBfxM5JKPIvtaxO+6GdjXSnXk/4XkF6SvOBzJ/lG6VV7y1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019648; c=relaxed/simple;
	bh=oJ1RvJCommkmu9uglugPl/o5TOg6XYqZSj96bt3gm08=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QzXUO1xmFQsPkFWokri7ZHGMaolgP/1xDF3xmrhDWdZE8g7QDnM+g0g5FvnRFazCtHYD8VYOIb3qpb1UJiku7TedzrBTK7YyL4x+fNEUjvuxY3X2xODBIIRfJ6DTvU37CDd+RTbtLqDCrzLSAEN4PjRhExcc+1a7MA+4FNloLEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DFuahuPZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAQTu8005222
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3y9/lW+dUggFVSzfvHXuYGDXV3KHAmr21I+oLDCe+i8=; b=DFuahuPZOlzqguLq
	rB1dTBnZTKYBJDgPnhrXlRXm847vSMhRqYuJ1Z0Zzg6InH3CBe9y8++C39jxixsm
	1qrxwrSJjLFaIGuRJkY4alYrfR03NPhnv79SsvTwD/CPbKx/sQZopD+3a9viyHUx
	CJKhPhWmvBpI2RIrOEchi1DUP2aj/BVO/Ob1PImSMgWDBLYJdKatsuEevh4tqqch
	SLF6+CoTYo8npElCo7BqUBuzrZ7AX4HrvvkCQPxyk7OaimRF1tyG1NEAc2a8q+yB
	ydYbWK8p2xsxP13pSrhjxdFPv+yzz5ynR0RmgSn5gv5tLTHWB294rt/4CHG7tAeB
	Woc9FA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u58gcf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2621fab9befso31373825ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019645; x=1758624445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3y9/lW+dUggFVSzfvHXuYGDXV3KHAmr21I+oLDCe+i8=;
        b=oyrlbcfYpeRht+sRnYO3NbWLI5VR4zoLHuLy1ZJvD4AQRHpQIwAi47uiw0QwmYjA7X
         76VDNl4nRY78uRWT4U7tv+zD001R7AjYt60m/2ixUp1qhNMxRc0iah4uDsm+wIoiRj1S
         3YrolWJbQMkyAYw6tnrFXoOQyL02mQApUNrpVUfheUsDxfxV7iI4XhCZimrBdgVaCbbB
         rt1o8EJTZ2fwhnVJEJeEtNwcsQE5gLxHZF44Hf0gUWlI0ntGHx2+pwSGzzz795XNKlAI
         BksqgW8OE55aaPeDa+6vejsiWZ5MdywbjAg1DqbJo3AuCc0FATZ0t/bY9cFj3XkFwjPI
         m22g==
X-Forwarded-Encrypted: i=1; AJvYcCUwgVZTyF2Y8UqLtgHfyROZ6ghkqJDUg14RA0ouivf/tM75fiS5PutPbNZiWN22O5QkMrOpzKiok3eS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw27dqBpIsq9u8UL6hRwHJ4Ml84DqPx3iUga05s9qn7Hh9IJDEo
	egpmTQQfSjkoeW1iBGEhYN2iHb6awQ91gyj3fofh1GHwkak5l+rMROE2D0JBDMtOZ0AADH7whbo
	X/jGFLsrduumWPETtEr3EXbapkoDYKrRvHMT+kzMyfxb2uuE5+MUyev/KcSubn+SM
X-Gm-Gg: ASbGnctCJBmlLk2kMk23U/gvEKDa9T4mwmirXWFn/0wBRcW/HMgjWGsrVIRiV0FnfUb
	rtiRwuhCD7lGcJt8240TccXvXUBHwm59b2hoFHR8erUdhDgXOlpBEJqzqYHx+LwViU3JwTFUXAg
	lJRI+jQwp/+TTp7uOQyVmrevXVtQPtR9mSXEWS/TLA/QznZxzyou6+j0oecU9XrHiqPFW0ekLAm
	z78yKo7s7g3h8mLNMhhoMa5FxkGk+3HzV0/DPDo6TQgdWY8+Y6Y996Pv9lDC5eeyPiqnBzZxhzz
	t79X0TY1Oc1rR7BvQo1Aer3Z80tddD8TM3kMpAA5ZP8RtN+DdPZSy23/Dfq2AfP1HJRW
X-Received: by 2002:a17:902:e80c:b0:264:ee2:c3f5 with SMTP id d9443c01a7336-2640ee2d03bmr123766515ad.19.1758019644587;
        Tue, 16 Sep 2025 03:47:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+5F4/ks5izFz/8ODx4Z6ZKWI7DiUymBaWyZbEu0DAAKCuw77f/zPp2LE9+eLdaj0Pke9OtA==
X-Received: by 2002:a17:902:e80c:b0:264:ee2:c3f5 with SMTP id d9443c01a7336-2640ee2d03bmr123766035ad.19.1758019644063;
        Tue, 16 Sep 2025 03:47:24 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:23 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:52 +0530
Subject: [PATCH v5 04/10] arm64: dts: qcom: lemans-evk: Add EEPROM and
 nvmem layout
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-4-53d7d206669d@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=1222;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=hgxN5DeUETfnMsGGyj/LuHtMQXwKu4mfjF7UJJuk/14=;
 b=dQl/fiduzG8G/4yyKev6vXBvIOcR2ykJUvYmQQ0qmkB0fpgcHyAlEjDXY3/8Q8+qGCeY3Fwuu
 o1MbY6LFCHtCgVcECnIjtg0xmKRTHCrNvp2Iy6Sq7zgG4gPoJBhjgu6
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: eY7BmT1DKAfma7mt7Zivvt3r1kl_lpeo
X-Proofpoint-ORIG-GUID: eY7BmT1DKAfma7mt7Zivvt3r1kl_lpeo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfX5ip753O9EoFF
 SJYuqwE9NijGlvLx8uZBoEl08UeL0x8mo+vYlQmsCn9cp2c97Q+cdGtuN0jwOp0wT3VpwYLaZOh
 ZcUQ2ApuIkpyULvtjPBbonLMJodbdiPHVQgGTUOgudpHBWX7/P/gfArsLa5PCzYxnvZqonzCgHx
 1ah4PMrb85nuG+sOYwHU0y0H4Zsk6wch2tN1OuFMkQx00xlwztiBSyVh/AD5284T940iwLSYJ/I
 XXODm637Hu6RU/LJ1+g18Pfj7o5dl2CxZonRVblPhnhVw9z18jP6poOU47z4cfXLe+fnZGi8Mu5
 qTh5q9brZ3GMuNtHllYsDyuEzNmCYt2QUiDn3CvLyA584g3LHOnbjKEdKwTrQvts1UWypnf+2Yz
 6VmoOgBw
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c9403d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=cq19zQBcvAJi0RM8MkQA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

From: Monish Chunara <quic_mchunara@quicinc.com>

Integrate the GT24C256C EEPROM via I2C to enable access to
board-specific non-volatile data.

Also, define an nvmem-layout to expose structured regions within the
EEPROM, allowing consumers to retrieve configuration data such as
Ethernet MAC addresses via the nvmem subsystem.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index d1118818e2fd..97428d9e3e41 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -371,6 +371,18 @@ expander3: gpio@3b {
 		#gpio-cells = <2>;
 		gpio-controller;
 	};
+
+	eeprom@50 {
+		compatible = "giantec,gt24c256c", "atmel,24c256";
+		reg = <0x50>;
+		pagesize = <64>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+	};
 };
 
 &mdss0 {

-- 
2.51.0


