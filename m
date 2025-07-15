Return-Path: <devicetree+bounces-196634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F283B06808
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 22:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D1E9188827F
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670AB2D6639;
	Tue, 15 Jul 2025 20:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FCrVWsn7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C5E2D0C97
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612492; cv=none; b=RXENKWzNWocONGfC8wz31IMHAhqbSPDC7FU8/bjLW6HAuusN/7ozcdPZ6vxonn8TirwsavOyKSKArplXFzAwzG7OeBDlHazjg1xQzm5QbqiKeYFWOlp/ASaspMkRHV44ze99a2EHFxtqam5siWWU5Pz49HmnnhDzk0I7oyUJv9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612492; c=relaxed/simple;
	bh=BnlN8BH0y5miKc7waS4rKUqhxFa14KCTqJylMT6SIe4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ju2dRzWXh+CnGuqgEFpJGRuGQqbgxpFC4ax8+rAe1pqdp6H3zarETy9mJlRN95aaMkgR6+qSo3xH6Pz2mbyXnLeVe4wVwhbM23ud4eQmqZabj3om7ZZjzhcduwAaQNmlJzlL5vQ2PPN0WP/822Nv42Q+UgLm1vEECqimnJ3bOM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FCrVWsn7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDGJu003402
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Ulnnyakmdjr
	TKRRwRremdAmueSN3wLLHqGlctDxytVc=; b=FCrVWsn7DwpAiRU03Bf7J3G10cA
	8p25K05EY7CBZRIGQM6AyjVxlOR2oIwb+DQI997+Iu4vcB6XSrTzDCFrC0dQb/xI
	Lxt8a+/oP4Seb8DmW8DUObqPyyACQYchIeaNbicANBF/pIQLlHKDz7giOsKzw3FA
	dHayKBpV9m8wbC0seZUTD1UHxcVO3dntGfzcPnBx8ve0fKr3K4VThehhsntDZPWW
	YNqnT0TTq5IMisspE5kfQ1GDHWA8D5KAOCPAG/IEZ/tF8TdgA1TLP3bXMPtgyYMA
	hdbTLK4pV73iw8411U5bEvioVR/tSq3CapeCa0KH8HWC+tbV4ZmXkk0HjcQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drmfd8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e1b84c9a3dso435116885a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 13:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752612488; x=1753217288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UlnnyakmdjrTKRRwRremdAmueSN3wLLHqGlctDxytVc=;
        b=WLGA4PBTgFxBasQaXNngw72PTAsVCJ3UVWm7WICOLTaWpyv84ibHJnQLA35QoVZk/h
         VzCIiyPD4CQCxFZLR9uk/44k6uoF8o+ASZkvtBbm3SE7oD6v3Nq4ocdyUOA4TZSQU8ht
         50/TyijlinYphKNdSiptS7MojLiajK4nXwDch1QwVIx+xR6mSvrS0ZbQo5mH8Avt9Y3M
         4eQLa73Br0yQeemUcyJUj5KgUK+QLA2Udl1tX5n5A6JzLYj5H6MGsLvXAHbPPT3rewVN
         K49rW0tExRBuFxUzzcaHMHr3X2GiSrCbgGCLR6JlFz9IjAI6lgW1DIZDooJAW7w4oXee
         9bsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNSwu9kj7Lq4sKowY4/9K3KGiEgR/9cZTwBcG972nm0g7KnoFeV8lpWohY9kCx17CFY4SqbCQhshOf@vger.kernel.org
X-Gm-Message-State: AOJu0YyI0f8NmZ+VrJopTxeCS/APBc0ufZEEYXUiXHWoLtI70HjX7AXE
	XTuWJ3y6pTUv1OclibBO0uCVhgTL+Sdk2j4h+3273We+nqj5X2R5gRphtVgSjqRAU922lQlwpHL
	59bFazfwGHTe4JN2hd5KrH9sxps50qnLF92PH2+/cW5NjsFaY/UCTGE5rI3Y8yOBE6XzLv+kW
X-Gm-Gg: ASbGncvttlR9Nauh5SRHfAe3tiC3uQWowuC6RODf1vS4zr8moTZdlDMkypIXqMp60Ia
	A6PgoT+D9v9o5ivtJ+Jkp3DgV0c291NDTsqwCoM19VmfXVW05ynVyBznC1bYpomF4C8PDylNyKD
	O+8JsRV39r+hkBjQG30wUxedGFCJRExUQ5Hi9qncXgIjRALtGaARztCtlJW6hIh4+t0SvYRsbqD
	o5WBllGaqYiQUBIb2K1ng70bpmmmyBVVzlMn9rUn0tv47B8LqO0z1ykZEzLYUtcRRPPkiST1jWr
	Ym/qWgvlb5GHLru+tMA+fWFg58GKO+BbnISj4nWUf3TDTh2e4vB9DL9r/dUA/r70ZJm+UdDRplO
	YFJPaZnRq4qLRL+3wAA==
X-Received: by 2002:a05:620a:468e:b0:7e3:3065:a6b9 with SMTP id af79cd13be357-7e3433486d1mr52337085a.7.1752612488352;
        Tue, 15 Jul 2025 13:48:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlw27oAr+iNWanGODjwWubXZcxp8SV4xbSVfakE6bozSVtRFetzaqd9UG4J7kX9ItIp+YXDQ==
X-Received: by 2002:a05:620a:468e:b0:7e3:3065:a6b9 with SMTP id af79cd13be357-7e3433486d1mr52333885a.7.1752612487970;
        Tue, 15 Jul 2025 13:48:07 -0700 (PDT)
Received: from trex.. (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc2464sm16331877f8f.38.2025.07.15.13.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 13:48:07 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 7/7] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Date: Tue, 15 Jul 2025 22:47:49 +0200
Message-Id: <20250715204749.2189875-8-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: TM9vtMHoO5iMgZAcvroBy7Dk0NEXyLj4
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6876be89 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Qms5JgQ9tnEuTiNUcoUA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: TM9vtMHoO5iMgZAcvroBy7Dk0NEXyLj4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5MSBTYWx0ZWRfX5OIKJPWpEBxV
 TusyMUF4K9oCGkT3+c4Y8vignnfhOn2NrX2y1Zk7WGwNVqIQizzI5pZiXb9I/2UM9CjVT+4m/ft
 tpQdjZ7EK+/46ybUoP/L8CPu7gsfGPiSFinX/QvA+skQtP0hzA5h6wRiPWOtQhskeTZXx7loWSj
 SKax260x9WxegSRDCxXyt+q733Y3mjcqNkQSz+MZlE2aHW8hQ/AmaMHtAcYJkGpY1ClVO0D/qPZ
 4T8JYysGmohcTmNcCLyExCI34CUbt6LAeD+z3Mpzm26EuFN/7dujCmULLwUKvV7KnRbbFiItAD1
 oUZfFavrkQMLOMscPPqOCCjmDoDAtAxRDytcbz4+tN4eTn+OYIHI5sHa3cUv/NjACsvLbp6TpeR
 D6+nOgU2KdL0e9Qci3TmXUpA5IMpO1OCZ5DXJZFwSpTpkLUnHgmUyCCWJDsaMZgQ9tAAvq6W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=706 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150191

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


