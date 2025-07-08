Return-Path: <devicetree+bounces-194241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87900AFD613
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 20:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3754D1BC72AF
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 18:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765B02E9EAB;
	Tue,  8 Jul 2025 18:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nBSlKwxF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4787C2E92DB
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 18:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751997951; cv=none; b=pwOSpmzqzJpCtV3V3+7DoXi6TBak/GzprzvbmrD735kvGzAWxav/3PHlAsI7fQWsumUwcPB2+WjtbvcMK86JvijcB9uvNG6bqBgOQX4Wj2gV07BOOj5tAPeQJeQTipNgBTdiucFQ7Ot24G0WzeA/iHh95NRBi4Zp6nvGw9ExMnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751997951; c=relaxed/simple;
	bh=3a0MWleIyO3gL2IRZDHzo83tNGJ9l+qQFqUNeP2HJrk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=klAxFubj4qQL9RWRSgFUyUpLniNTzmJG0tMLtuB5EO1W6aficqfyGOGVdWM0sssmwnSuNqDIU90aGdLRwJa/e/ePOo56skjkFThTRhN73+sVcEmp71nHPrQJWt2TCzmclybfQnEQ2E2vE6cjBcMkfnJzCorIdYPCoOOgwvlIVjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nBSlKwxF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAOeB001172
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 18:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=v5EEqpTBsWK
	2r9AuHuvHgMamXxn21K03bgFNVlidZok=; b=nBSlKwxFq65reUnqR3XPaUODDaZ
	qkLr9zo66sQARJtTgLTARM37EQ84aGp3AaUq7ynXro+kdyERno2xffUVLfieVcwO
	H5aXwXy419XqvWmaFcPQYxAnfmg0GbQ+LOA+LCY/lQPy1AFwRQziFSj8CTzyQruj
	qFqGrabmJb5yeLQQqejREEsHkLu8ouvSxYiq+STCFD2aYUiHoVwAtjcrog9VKali
	/+EYoUjpMpCtcYDj119MQgXKcdjQdmnMUMHshlh4Gcva0gkWCnkwfWR6W32Jsoav
	k1KLSK851BBsqEnOIPgoC/u0ds/sKCdw2msK48sJ3caF0PurS/ksNBsvV3Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdr1ac6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 18:05:48 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a58cd9b142so99884541cf.0
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 11:05:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751997947; x=1752602747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v5EEqpTBsWK2r9AuHuvHgMamXxn21K03bgFNVlidZok=;
        b=XG8ymceItO+c+7AV47n7kP8ibwk4lwKP0CL0syz7zGnYpvMEKk45Jgive8JLLns8Gr
         cwPytLndI477TsxDSl2vQKOVfoXFOVlqC9HK/+pvUy/zosd3vW6ddZnoIIGaT1Qk7B79
         IJSt3utTgqWi7/LmJGFK6H2BVeNX1CrYi941ak1G0S0P7tf/X5R331ZH5j6GpZ7X1axd
         x2wgt334pMVBPp5646AmqPPTKnPEc5JPUJ7kKfBFdRIgj3uAWWUJv9YdmdOUi+jnyYJm
         AR+8pv5we8VXc8VYRBARiVRj9i9QzcpOlCiszUKSznusOF0DMBTsp6L5TF2UPYQG18Tz
         G/og==
X-Forwarded-Encrypted: i=1; AJvYcCVeU3x5DlO1/yc3+6IERRZY7hh+2U27XsxCniHFW4p9h/wGo/USpmXCZ97AVX9jdHAyVqy2zwbA+7Hp@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc5EXwag2ND2nuT9aAC1xoKSJ5KJDo2qDTp//DV90bkNhIjum+
	/egA7g1kSi08vMlG/7yVlm1Y2sH8IAgwHfbJMGXzeuqSprss6x6s8GKq6+SZJAqv7FH34t/JaXo
	DQMzo7KyJOXp0N6IC9qchxbaKMR8bF4Rj3DvoZG/fNpJpY9PQRxtA/gdGb/EKDxjF
X-Gm-Gg: ASbGnct88OBwQTi8dpe0gVOhgO9eYGyVcSQtQEnE3xxSihRdqEsF9siqlPfGoeOPUQs
	vCiWj3RKsZRB9fz+B2crIWGhIe/tC5cxdcFHdAPUOStCsZGFVpYSg96CYSvKKJFdzLUqygfKGCy
	RWlRwX4IoWZJ0Qpgvw97I3YT4UYY9yAvUuhFXbo5kUJoUoHR/0COW1cpgs8fCvd3psC50o2vBBu
	WYwK3AwD1P0eZpsMGJzDMYpLrMlRg/i9xBCuGo2bAER7GFjWlMcxKhndG0qKAheb8SvxfshgnRf
	v8OrQ6HvBXypibS9Fyn/LTncCEsRzJHloyNkeT0+FQ82jp/nzSy71cmQtm/7o5qYrlBcotxpZA=
	=
X-Received: by 2002:ac8:7f42:0:b0:4a6:f7a7:4d43 with SMTP id d75a77b69052e-4a9cd6c7133mr74847951cf.14.1751997947193;
        Tue, 08 Jul 2025 11:05:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhjWVmMm7n2+pNxplxU2Hy47+FGd6ZQWvQBUcOs7FaKkNrNRd0xCNwdMoqmPKRnemCM1vPcQ==
X-Received: by 2002:ac8:7f42:0:b0:4a6:f7a7:4d43 with SMTP id d75a77b69052e-4a9cd6c7133mr74847371cf.14.1751997946606;
        Tue, 08 Jul 2025 11:05:46 -0700 (PDT)
Received: from trex.. (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0a5csm13394906f8f.29.2025.07.08.11.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 11:05:46 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, bryan.odonoghue@linaro.org,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        robh@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 7/7] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Date: Tue,  8 Jul 2025 20:05:30 +0200
Message-Id: <20250708180530.1384330-8-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686d5dfc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Qms5JgQ9tnEuTiNUcoUA:9
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 0ynZWGVLplMYCY6-KoUt5CoZPuVIYO4s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE1MSBTYWx0ZWRfXwv0dyG7jnQvA
 rQKvDhFqS7R1WcmkIWAqpmaH9JJYLkurejhGaU8EyIgALR5O0Fa1jJyQ1qGCk1xAirNL6eQZprV
 4V3767QPhVhhoKrMTj+KpOCsOwiptDnK8D1Tw0/jLUx/MbXXRNG2qQqthFTX6stYitWdexjWJGE
 7ExRhWE9wIOZSgUUmUR0MCxqa/LT7u0tOOTCUaK1K3XggTCdChYYhcwQswAMl0m+4Yma3IH2CyC
 a2i+jFmrxStAslVdS7lFGsJqcg/Skd9t+SVSOzqjSGKMS5fPcuB0NRJXAtQCoUUBaUXwCuCfCL1
 gQD8EllcTGE9CCWhp88c3ezwVhxGtbASL3kY/GuKC/T9i7y4rarJf27d+0FtfFcAibR7H0mYrJR
 NGO/cjQg7FJHGxp0cDhDE9YP19tkj+Fivs53lFCbig4mDZ2puKA1b1qVPFwh39N4VQi8hgmc
X-Proofpoint-GUID: 0ynZWGVLplMYCY6-KoUt5CoZPuVIYO4s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_05,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=706 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080151

Enable Venus on the QRB2210 RB1 development board.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>

---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1..8ccc217d2a80 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -711,3 +711,7 @@ &wifi {
 &xo_board {
 	clock-frequency = <38400000>;
 };
+
+&venus {
+	status = "okay";
+};
-- 
2.34.1


