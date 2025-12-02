Return-Path: <devicetree+bounces-243612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DB2C9A9F2
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 085724E457B
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B1E3081C1;
	Tue,  2 Dec 2025 08:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gqqogHVA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Die6nPE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480F33074A2
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764663046; cv=none; b=FSPJeBmMNSKwNwmCCaY4x2FTcKKR6GtSTxkIhIwX0f2fdXXGGwQ+WcGfqyfb3+QaudAa0BjCJk2ijZ/OtJbsC3qL+BMqfDmnka0iP0b662Ssl/pXDq12AMp+kx8zFlDWpMPaJbZAw77zOFlLKo/odiBSl6tBQ//oX+U/lSKx53Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764663046; c=relaxed/simple;
	bh=LWQNhfUZEI1GGX5ZyBZUvauKVVJJ0GQn6n0JEnmnEWg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DSzN4d9/du0Td2bZa2RtoUs1RdytzKzXfDaMIFTID8HlBOy8/XZ10qzpIBdVRGi9HaRwyxvVSILmMr2QKb9mFkqlbcSARqMomuuMDAc1+gm2T1iXO3C1YsFQzgSyOmvsZshw+9/+J6Lpg9bRE0bNFuulVlNYH6xgfUqHslZrWQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gqqogHVA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Die6nPE+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1Mmc1R1926785
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 08:10:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VM2yQhQ/Z4/
	6ywoq1dTH1jc/6cO6oXXpiNaFFANTIj4=; b=gqqogHVArcMRQ+7YTc5Q+JPusqE
	tINbJ8QIqbZErYDoNyZ32WnRICMZjgjbnOqwJLnvlGan5MLDtB4leiQXLG02z59J
	794pDcA0c5y2AYmY5dhP21ASn2Kg4IkyvU/c2JIoWPivLmUwWJpjFAkz3yiCLDwV
	hR/zf4tC634EIhBIU+w8j4Lv0MR4ExDKcKvYOEYHkwU4zsrcRLAPP2RodU9ONhUh
	/AJDNOpVRIdjY52QicqAmKWg5EzJklp9OgCif9YP/uh5lynjnICcQjc/u9E7dsS6
	5ak3IrLGeAi9c/hF5/pbmDQXXDvRRVrruLtnxLwxASiW+fcCdgheNpKGaBg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asm4xse22-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 08:10:44 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34361263b93so1273936a91.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 00:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764663043; x=1765267843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VM2yQhQ/Z4/6ywoq1dTH1jc/6cO6oXXpiNaFFANTIj4=;
        b=Die6nPE+FMi6cFYwlBHvjs3KAL4sqjTRfFwU7IFn8JiD/E3cmtDqKRad8SQjTYQKOA
         7Tc4gpYM1H7qUW7vFgAnt4A5F3qTgh6jmUGARAaNTLfS8uUI3dn1cL25YZMQ9lbHK//S
         s42SLM6JZ/oMKL55gPnYiJqY58QbZyKBsIBomMaFXBcIF3iQHsWWZMkfaVlq2GvBS+yU
         0AseenYlYwsk9uzE7jEnRexRyyepNdKOXRkVGoUPJr4IhkKbmgos9dPQrQ5J2G8JTUeT
         E8Tyopo4jamHeECLOWNvrxd2DLG3mBQN3RLdym4IQNsthWJgfegA8B927+tBjYpEgsuR
         LRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764663043; x=1765267843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VM2yQhQ/Z4/6ywoq1dTH1jc/6cO6oXXpiNaFFANTIj4=;
        b=Ju7mvppuN9oeMvsT7xkW0FC/FJAWMk8GZfTAhFjXXojR5so6C6VAM4cgLHDTPVWWwb
         XEV4JRs5x/cZbYtJfUp0j1p8vYB7e/GXnLWKB/mpsjqehj5+Ec/rB/59m3MANOrptgWW
         6vSqmt/B+DGkoV6yjZ9ktb+G3vNl0k77qeN0uxPq1xqhwr9+T8FPadSdiFVNP2C0pVWX
         p9vL82f7DJHnfZ0jhCw9sktOxomglsBL502gt07gVkYTJCFmiMG2I/NJEuy42wLZnqpQ
         4WbFctX8IAEiW9eFfrTWN4DzQlLgM4aCXuaOgKdas24gYB+LWR0kiNLT/2YsFJTApS0D
         xm0g==
X-Forwarded-Encrypted: i=1; AJvYcCXfqX4pHGSWunIb4Cfu4n2NzifrdwW/WocPAuVFwE/V1kJ9rt4e4BW7RY0xkL/gJw0xVnI5i3fWXCOh@vger.kernel.org
X-Gm-Message-State: AOJu0YzunZ8ZPIeRJYzOXGlCMfqOT0KLOxSKxp2gxwnHszAu03nVS/NG
	MLJekFV3c/NbiO1MgUhdHWhjQDqKWsSf38nhaKJEFdz4yTFbBlJr5OZZxMeY7SzYMZGPFxZUA/O
	m3cJwMvJJ62sUgOiOIeopcM+jzd7sV20a9m/aqbiczyHJ4j/93tr/IldmorDpw+8=
X-Gm-Gg: ASbGncuVAhsXINNehwqmt//eOUeCTzC3hAerfM3wtSQv0WOzduHiM1xC+hSbS1loEv0
	Hog3KA9RL/MoLlu0ApRMzcMshwP60ZzMHGmjfgX8GF5Ad1Qx1q9tTrq/Qqq1FrGqm6VKchlpREw
	aa9wtO7DNg729SELoS3r5nDKA9kKNOXOFTk/q5nwoCQE7YMCPmvg8ruLHNtfs/tjpm4dWmmGABQ
	0IUdwh4oZwdynr3lxfHRgZzqbqi6Ur6Gbr4DfH24Gdu+u6BBQGp6o8vFnkjR/fgnIjRutZ+lE3k
	xCnr7M5+PiMs0p6bfYPfgVXj5HNXfimaT01DQXNDImSkicm4k2qWU4KqKquGFTUOITyq+EZZgNx
	4H+TKkNlfMgB/ER2LPVjNXbIYYHd3obN5TczplKFh
X-Received: by 2002:a17:90b:3ec8:b0:341:124f:4745 with SMTP id 98e67ed59e1d1-34733f58931mr24371970a91.6.1764663042998;
        Tue, 02 Dec 2025 00:10:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPMcPHuIhKioEHokY/bVjAH6xp7LlaSLimowdCQojXPmek63qfW1QGPGu+Fy0Reo+OhyL+Jg==
X-Received: by 2002:a17:90b:3ec8:b0:341:124f:4745 with SMTP id 98e67ed59e1d1-34733f58931mr24371946a91.6.1764663042597;
        Tue, 02 Dec 2025 00:10:42 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3477b1cbdc0sm15419794a91.2.2025.12.02.00.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 00:10:42 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V6 3/3] arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board
Date: Tue,  2 Dec 2025 13:40:17 +0530
Message-Id: <20251202081017.2234677-4-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251202081017.2234677-1-sarthak.garg@oss.qualcomm.com>
References: <20251202081017.2234677-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: z31yi5kTP_scicKRHCY83Ii_lEmfi8Ji
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA2NCBTYWx0ZWRfX0EQL2dlX9fWD
 +8CZ7mvqFhix8Yv5/SqrXaubSRc8uo+FzgGZPn7HVxxETq4BrBI6r9ewFEBju7OfErTH66+507H
 5v4TQon7GYh+3RSnHTnZWTTlL3GPXmwLdKZArp6f2HbjYbUVTWCGeuisAEJ7VSb/HkitMQY8LXT
 vXoPKKhvToXO1iAb6I4VMArprXnWE9sKqfOTvclF8oYjflQnwzTS2CHI09bc5hYnfjMH+4xDHVG
 g3ld+wzmf7Y3kgmTzMtXXSMrO3WUP0WGbe/zCUrisnYQOcCOLljjASG9JNCAZ4OOrX92PP/Lwuu
 nW8OUg8pN5XkAs/SC0DpjtsVw6dufnt0SvXrRSpZ7lPDfSviRQeGAUe+eCLZUjE64ffXTOXMqs4
 1tSwmvCHPwyKbxXb1pXRx5RDEzt15Q==
X-Authority-Analysis: v=2.4 cv=cPTtc1eN c=1 sm=1 tr=0 ts=692e9f04 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=CuSXmbl0-BlP8Dydlo4A:9
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: z31yi5kTP_scicKRHCY83Ii_lEmfi8Ji
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020064

Enable SD Card host controller for sm8750 qrd board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index b0cb61c5a603..439ffb202599 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -961,6 +961,22 @@ &remoteproc_mpss {
 	status = "okay";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
@@ -1053,6 +1069,13 @@ &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;
 
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio55";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	spkr_0_sd_n_active: spkr-0-sd-n-active-state {
 		pins = "gpio76";
 		function = "gpio";
-- 
2.34.1


