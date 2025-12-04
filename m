Return-Path: <devicetree+bounces-244196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D07D4CA258F
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DCC930657BD
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED01288C2C;
	Thu,  4 Dec 2025 04:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VtaY8Nzq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MwvqcqB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5331FBC92
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823638; cv=none; b=AJnaSTJk/QEW5OSGqFNIHVJh9eJQfmYtTWSs58d8Gy52Kz2CTxadxAUwHCytmINfd/I7+qBDeasZEIcrqGb2yNzbDPrCPG9Ctn/wVaPMEWaAyXFJNzEHCDOAQdSCKz/xf0nrQwZLdmWQOVaNG5MrEW77EQxlQIay7H5a71evrto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823638; c=relaxed/simple;
	bh=aPsejmtIUw3vCzEFX1f3SMBf8e4TQ4PLWL1r6BY0DYw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VDtK/OcDt4UtgE5X1yLJOJT5+afyb8r7lMOtJ3+HYtNIxiblCieYX8cKsLS2wjI9D2VQTm1fzbmmQfgqw2hqLWRYesRIKl5WSbQq7YSIOcl3rxJUP0L+zrXnYhOuicQtGkYIuKE7POYCc0gBksbkrsCs2gaYo/GjfDzLk0mFWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VtaY8Nzq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MwvqcqB7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3NqqYu2436338
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 04:47:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=s1I+JK7Ehts
	Vkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=; b=VtaY8Nzq9OYRj4kgRigFIjR8SOy
	D61yCXJGPQ62xxJbq6ij5iU3UrIvvO4khJN1f8id4ILOnK5SEHTY7CutnRwRpiRb
	hnHzOsGpnW99cx32qReu8t2fbubdVGRXDj3zi/w793BG+oQ6A1jdCLj+dj4DJn5b
	0Lf3g6RVSrqnAk9Afxu8Un3jsIfW2rayPHk5eaONdUav8okuKyi297KmUL97UkWR
	Pz9tZ2yx51wZ9YY28SorFEryOno9x46fnx+opD8YAZytWZ8b2ZDznfbSc455NL0K
	mZ+U5txuwyw694Otc2a8TNfdVll9m43vVeo0rxHswqotvh/E1gJ9EBPbZ8g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdan0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:47:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29806c42760so15600355ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823635; x=1765428435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=MwvqcqB7Ha+zglDEMh/VmYx/E9RhemGsPjJ5obrifux3heFRe45WZT9ey+t+xCxohF
         p9FnghTIDPjU1m3s9FqR2FQXJfWRoXesqYOkZJI0/00fSbN88vImzQI8XhrdCbPSZ8Vt
         +ti0uYUACOo+mrdQuJ9r2qNqqpNDO2+fCKNu7rv0ZFXAyKTr414b4ha7xKSo30y18Ezr
         h+MuMutrM1Psy4ocjm9ugp7ug6NkiAtkL7cjBpVuFqyP0gqB0ghToncILTEpz8Aw0XaT
         Dv2NRLRkjIFyWThpmpSdfsP2FKg1NImhWJdkKdkLaNgQeLqkPnDi+83jFG1tD4fAconP
         9O8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823635; x=1765428435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=Jzvrq5BUA4G0CPHTccskYl2xe2Vtw/EdciAgQFvWbL7apLcMyEoTpYAh6ZiM1hRDGp
         PaGNxYOv+BMWqeAyJfr4QEkXkYmMu5Qwq9BVryXXYct8v23gM+CnWQafELcd6w73Kn6j
         nZiJDJjhNojeub3dMSdLUw2SSG8LZh2Gz8VOSWQ3S3yL67PakxMxDMg7iC1rg/2uah5O
         RRBvFzMmQfdMtQoQRqnUInqcBrREBD6KXu1Vv4Q6UYQVygLHBppgp4LRBylPeLdDpUny
         Gy5icSwXv79V62f9loGx4NxgqRRSeWBsxoEveb+G7WG9/brznFM/9OMjrAK2a1a9oDvv
         r5Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVQgBnhNMQmxIuGOsY4xKx/sz0SEYsvEhyQbBqG+AnE6vH/SPqWuHYhQ8J/ST+v1KJYfSXN1h0Rpqt4@vger.kernel.org
X-Gm-Message-State: AOJu0YwPav7IN1runMYfl2uC8TF5+ivBsRwBSHZgbqeBw4QDAipe9HCk
	BEXE2PUniqGpVX6hVUw6Q2LdxqTFeQUqf3ihOEfIRbcvQqrtgEyJu0gC4MkFDjvZq92B2y8OQHw
	G4J89JhUG0xsSYcd/yHaAPisjde0fLrIrMVkxhehkwDFITzZMxExEJaNLYNqTjt98
X-Gm-Gg: ASbGncteS0YvK/dZCayTYT6sf73Q8Z6hra/aNHggira/u/S1p/jcISDUV0f2N1nJkDW
	ElS8mLPN4U2UnxUjSOtgAeC5DQ2LpId6LeE2tP2yw9OkoiXLVoVbN0T38/ZANC++wivCBCW40Bq
	RPkgzg/JWD+IwW8yHK/y+0JuDE4FN8+peMScs5AE3c6hv1W3CeG6JTkJbxj9qR0eN5Vm2ckyD7k
	2tRcWJKrgZE8gl1ADahbxBbcOQPuLeELV/bJ/X4oGCvZ2OhV4noBIV4AoKRxslosHt+oJGLQTAA
	jpmgYuUpxwidwzLczQsXxzMTTJxTBBn4lyXCnMhgDgAZsZEa7P1hsNgpL5Ja+GqvqmTq4c3POYP
	TO7IGmbqpQnbESxCzY/BiyZZhzePlMpuXoJvIpuvASZn+yLc=
X-Received: by 2002:a17:903:4b30:b0:290:c516:8c53 with SMTP id d9443c01a7336-29da1f00d6dmr19154595ad.40.1764823635400;
        Wed, 03 Dec 2025 20:47:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGw3ZdgtoJH4ANV1bupEfZRpd/4l3HWwRVXuv7CHEVxKkSApbYU3PjEOPJkGr5TTjVipcPVrg==
X-Received: by 2002:a17:903:4b30:b0:290:c516:8c53 with SMTP id d9443c01a7336-29da1f00d6dmr19154315ad.40.1764823634928;
        Wed, 03 Dec 2025 20:47:14 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:47:14 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
Date: Thu,  4 Dec 2025 10:16:44 +0530
Message-Id: <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: N7yk2V7KsM5ddU38ZGxngV37qMlULrrT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfX0IRnWcl5mlsM
 ukfhqMXywpHbzsbX8q0ZBHbFIeVMAuMmMBwsxY8bdOK26VFKOShN/jMc2HyweKxyxXS7eaLKm4a
 Ehlpb8d1uCCQC3c3w2oAJOrtaWr8HPtDcpXShGm4Jx1zf4IZlyyrIdm0QS7mp8vE/q15BuMLusy
 Yjqa8NMa+LpuOqpi+X+DYYREtF1+tzou6gZK5dbS4gWX3l6zTRJkl12o/tR9f9WcvhFsiG9Ibnm
 lgz/qE/GRXfgWErDDl40MOXPbCkoyFltWvgnRGFeeSspnV7ryZgEJzE+0Tn9dPMKmaPfjJ5Osj1
 yUAdTOP8weO1ClSv77PQzJr4nrVnxIB0YHbMQpUBdp0vTxgrtgdj7HjoKIQwiYtL/ifV7Ja/V8h
 7vuI6RI/YVREaQmalluxixWveXmg6w==
X-Proofpoint-ORIG-GUID: N7yk2V7KsM5ddU38ZGxngV37qMlULrrT
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=69311254 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-Z-y7UPfJgGHtBsD8n4A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040036

Add eusb2 repeater tuning parameters for MTP platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..b9a4d1c99816 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1041,6 +1041,10 @@ wifi@0 {
 &pmih0108_eusb2_repeater {
 	status = "okay";
 
+	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
+	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
+	qcom,squelch-detector-bp = <(-2000)>;
+
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
-- 
2.34.1


