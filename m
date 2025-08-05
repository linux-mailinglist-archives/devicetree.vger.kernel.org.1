Return-Path: <devicetree+bounces-201815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8747B1AEA0
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 08:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 593FE1898AE7
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 06:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6CB52405E8;
	Tue,  5 Aug 2025 06:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cp4beBu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD4621C9E3
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 06:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754376290; cv=none; b=q/9LE8lKS+JsNYIA62T2bnTJhqgaBi4j7cjqfxS3sVq5Nd6jJHYHnEkpZOnRdTJi+UG/SkeJs2EoWlWLvA6V3QHOOTfjpopYbHaRB5q+PLV9LHm+aUvATdX3CmEvCV/j/3g+31VbfqLQ+gCGAUDFY7khMDT69Ssn1YDGWAsuyEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754376290; c=relaxed/simple;
	bh=QGTu9QxACBWwGBtZKQkCZpc1XZafgh+NUqcrEBKsWfY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iZlHDV2vz1RG6N9bgXUE4wva/0uiDXI7gJyP9nEK7KSbIyefHFMLgIrQKlGrfscIl0/EUtHnIn4J+/QwdPHAunx7+brgsW+XfG8JEKO3pJO74J0N3Z6vK+vjC3E9aiqlFDNV0D5lohjIekJbhX/gH300pHXGXBQfC8xaol/84C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cp4beBu9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574K37kg003138
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 06:44:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rzzUExB5oi0
	2Ea7zkpkwb/zIf32msjJwgM31Jx4lZb8=; b=cp4beBu9BPseW8mxCUvuttbsqZs
	uonNeKVqqQ5ZKCNrVMmidhnEK4fAMo7yIoYyIY9jknHJEjo/kMLeXNgQdSLvURtf
	DELe0Xwc3FABU3aZkvSeDS12XsbTf8xZ1QLNW/52m+Ru5SQ9WnozpFkZkqIfWt0b
	871em1YiDkZuvEGSqecpIvJKBVX4i6jsiuQH4VnsVMKSsnbdH0a1b/gWwjpfHTOe
	bsVE73jBt0pNyp2Fm7tUsUja2YOx9hKy8T1kXiNdU3SSG2zwxHCmG3VWBGJ9UcI1
	HX1FfgK149wYVyp/YfHjXh/klV+vKDl1mOTI/ZSWYBaCuHqDGtU1SziCSDg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48b3j3sbh0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 06:44:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70771c19c64so100298386d6.1
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 23:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754376287; x=1754981087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rzzUExB5oi02Ea7zkpkwb/zIf32msjJwgM31Jx4lZb8=;
        b=wTgss0a87nnd29SJ97EOhI7UU2YP5PZqmbBCfWiy4rCfVth7JOg2wlXOsOHaSWXNSr
         GDosFHfJ9GmfiVLpEpLkJn7WvoDRDD2fvShXKlbK9p0mk3KQGYjq5sHAurVj5qsCTll8
         pAR5jeISOy90JnyqOxTAnWVtrFztHqpLgOnGIbRdlGVg2Tor6Jx83Qa5sxwuXDAJzwHM
         zvPaCZqwHzCryBQkUlIFfYLIZSmg5fJv+IigeNh2EI7TfTdXgkcft566cMYP1KoQUrEx
         D3TFsrgG4aQnnYCIQRX21jwvxjyDypVEIBFsX+t8JxYhqKxa9O0qXJoJpPsgQ5M7SX9A
         +ovg==
X-Forwarded-Encrypted: i=1; AJvYcCU/tu6s4RPEbklb6hMYJKYc17X4hQbxDZfVu5glv9UTZQLCMUH0ybNWJn6t9WxpNGHVKZtSV4b6a17i@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1nfP6PirttRP+JYktz4uL8gG2SwtDK1e0ulDRnqG2FKfF1hMb
	QQaJ0q9m9ZtfOIv33QT4q29RpX14skfvP5K0j1v9aJmi1r8U+FhEFPYJYF1Hx0XWTrQfdeOlFbQ
	Naa5XoSHm0XxCdPMnAvFRJG/U/qmq0yI/nxwz3QrtrKHukHn/mBhbEzBRohvw+xlFDqNj6H/eb3
	k=
X-Gm-Gg: ASbGncuwii+ornmigp19d++p6TM8pSxNYLV/KI812E2/m81sQAPYo18FdJhHdCjedEd
	rRuBQcXgOrSfvguBy3+U1wD8csOHLXXxTM23oLxrQ1mfgnTzBPInx5vbOg6+0HvY2X498Y+klWS
	ZcY5d7Zl9kVLxbifATDL1oBxcfZ423ouseiMaVXTLfLbCu9lrtDbQp9dsRO5ZNBwsVjxGcCh7bJ
	1LwMEgfnwTHQx1bQruFc5KRwlWIVnJpbNODwi/QUx38En3IkHERrMmFb3lcaedQa4k0aWiaZmSn
	QZ8TYPPVPW3l1UHESc/fQ716c0EAlzxEUqm8kImqamaP6CM5yCjhXOhtn5J7tN4gnYGPZUkCKHM
	/1BhN86nG5FLj
X-Received: by 2002:a05:6214:248d:b0:707:6cf8:5963 with SMTP id 6a1803df08f44-7096697fb56mr30656736d6.9.1754376286815;
        Mon, 04 Aug 2025 23:44:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE65nbtLDD/3t/KLzicnVLGSD/iwnbyxdIJGzB2Ftm964kvRn4z2OK8EPLsDfgZP6N4VYmTpQ==
X-Received: by 2002:a05:6214:248d:b0:707:6cf8:5963 with SMTP id 6a1803df08f44-7096697fb56mr30656486d6.9.1754376286385;
        Mon, 04 Aug 2025 23:44:46 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57922sm194015815e9.22.2025.08.04.23.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 23:44:45 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, bryan.odonoghue@linaro.org,
        quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org
Cc: mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 7/7] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Date: Tue,  5 Aug 2025 08:44:30 +0200
Message-Id: <20250805064430.782201-8-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ydIrPB7bBhyLhUhrXEkrYGq8cfFh8c_o
X-Authority-Analysis: v=2.4 cv=TZ+WtQQh c=1 sm=1 tr=0 ts=6891a860 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Qms5JgQ9tnEuTiNUcoUA:9
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA0NiBTYWx0ZWRfX/grpg5tHELr+
 sCmpEGuyaDpYRxihLpyXKBdGSdWmfehb/ednkPhcjduu3h+ZlTjT8ZwPACdMwRhA56LaB4OojSN
 MKzUeakCKAM7THV8XmQBBf6EkBpC4rMOz7XcPD2TjKceotqydR45gcREf754YhGe+yUF0wbqGLJ
 X8wphVyIXf2HgjwlEAQSbhSRZfaYg/o/m/v89/7FRunGjLLxIPkNZWw0C4Zooe9DQdt8X2ggXkV
 Wo1Ej1M9A9zzIm9TH2imEIXL9wCeVLrCicYrma1f9tY/kwn02hqNISyEWDLCXngPTj9wUu2gH0p
 5cEb2O041TEDb8Vl8Pa7fcvyM/IWUIuDC1HI3xQMbuJry6lB9XPsu9cK85O80VvPrUlTZH6vwKU
 3AGLXHZ0LnKqVSKh6z/jub5U3U6qTPu9Mrd/TX3Gtq2Ds+sL1aZGoflderykrMM0nd1SC3Lw
X-Proofpoint-ORIG-GUID: ydIrPB7bBhyLhUhrXEkrYGq8cfFh8c_o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_01,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=612
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050046

Enable Venus on the QRB2210 RB1 development board.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1..e92d0d6ad1b8 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -698,6 +698,10 @@ &usb_qmpphy_out {
 	remote-endpoint = <&pm4125_ss_in>;
 };
 
+&venus {
+	status = "okay";
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
 	vdd-1.8-xo-supply = <&pm4125_l13>;
-- 
2.34.1


