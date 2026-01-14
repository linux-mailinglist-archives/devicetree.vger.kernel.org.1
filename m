Return-Path: <devicetree+bounces-254920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7BED1DB48
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C7113029D37
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C5436CDFB;
	Wed, 14 Jan 2026 09:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UmkR8cgX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RFv7FqGX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917F62FFDCB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768384142; cv=none; b=QMrHSNcFfQoEHQ44cGk87PHFKVmsHlTwYgiOhFoddxIMXye74HzWv93PyDw8xturL68XrH4OH6VubRGIqMoBGteUauz1JXx3th58VwqD8sEzoegj48Nk04w/XX/Kcj/MeTUfH7lUKcPrJnatUdKffF9XvT8ONPFUX8KrxR9/jro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768384142; c=relaxed/simple;
	bh=Vcq9FnAh9K7hn41Ha3jBOE5GONHVn//e8Bc2QhDaSFk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NkY9JMmyNqv8rhBlWS5NF2EUn5Pu7TM8t1jan3dO6QoZZNykXGw62LyM8AdpIYip6URxXcdOEeT16KEetmGpFzB19oF62avIZp5vPTDTOMeuhbbI3ilqT83J6Pu6cBk3YKdqNowBqBERWJWwZZFhgcW3cpGfFJ4217/C09O7V60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UmkR8cgX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RFv7FqGX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7j3jY3270846
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:49:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KfqjC9EoK59
	1QloyQMxsU9S+rWY2Ha/8IPmBSa555rA=; b=UmkR8cgXzI2mlpCNy3cn8j/wngh
	ODux/RIctZ/7SJvC10RUkHO9wLjtSfJPl1rDFOY0UKRz6t/pXo/pfZGuGrtEyVlu
	ygAW18ScctkwVK0iKvGsbcIkGhSSZdKRW7hYY8B3rDCl2Se+nX5yNKgASqSsOTVQ
	56keMyiYAtZ6B1Su2WVXC/DVSjfaQP9+urKHinXviZP30QNzX+AQGB5iErTGDzcd
	FazwbLDwLlxBwW2PQQC6ajr9Junyw9tSHVHAUe2yYl6wD5DNYe1gzw4XUadqA3zF
	bax81Kj8Og+I1mg7REHQxK2UxQcfo0wGR+oDtoPf4o8nB7h9LljC44bQ5CQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bns8v38pp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:49:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0bae9acd4so63177125ad.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768384140; x=1768988940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KfqjC9EoK591QloyQMxsU9S+rWY2Ha/8IPmBSa555rA=;
        b=RFv7FqGXox/CiI3G+a3DggCKHhGzpK7IwKy/qbVsH+p9gu9esDjZIDpc+z+9vjVWcq
         jXHFkgTswyjNXI3eoUEFIRd/ig8L0QWvXnn04x2dfzunlAXAawLK6PEpPRNWZc9kYEM+
         9SyKswG4e92ed8IbHVHta2DHL23U9Qkb9u73GgH/edrfL4kIcmb8SRzLLW22PIpGKqDz
         D4D/m9Fl9N9KK6F2ZHa8kkUKtxWvaKQXC2Lrv/VFYpNhZq/YEXRbYPU/+lUaOIEw0SNi
         w7OuSJCSRstPBUaiyB86dKXHFImBB9JFWNdaU5gXtMYvRI6zEap1CkwHLbQvLvE0Sydi
         kemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768384140; x=1768988940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KfqjC9EoK591QloyQMxsU9S+rWY2Ha/8IPmBSa555rA=;
        b=jPeaCr9Ebi14a5BIbjf7gfICL6ETLjbe8PmFQcwbCyDzbi50knOxqN3ErpmwC3sZaw
         fKi0TaUdBcjN2moWBDxCftNyYUSRDYiAIA8mR5eM5W+yYbg8OaPB6l/Rrrk73ITzXksl
         3NBXUmLdiLVaC2yjnyoDhukdk9es4e4/WhudP0DwxRTpDFL9lc3T0welz5x2w2rRGskH
         Fnln7p3GcQj5Kf3kSSUuqXk9S8rkPm+xIg0wGQC+DDGxB5+WiZCZRO4WVZvpbpynr5Xj
         qtuxk2nj8OGLgFlcbcivUBl2rEJ9Ho6BRF5V7pWZYn/6h4wXpL3pK1WGqPv5+lHf6BAX
         DAbg==
X-Forwarded-Encrypted: i=1; AJvYcCW06R/2202MZbRs/HiVaiTTs8UWC7bfMsYRTmYPsPl3SPRWAJ+SCSHkXfwo47/xr1L7J5FmzzH1tkIa@vger.kernel.org
X-Gm-Message-State: AOJu0YzVNVQpBCu6dX6df6ohrTiT8+HrjDOiUvpNfYzz/5XYg5gg5Kyr
	QAmpSMczJJsoHgU1J7be8/lOV94OTphPR0qaQSR1pHwQ74+53gf4MUNvU+Ya4F9Vovt3GioxO71
	a3pJlDo1vB+y+CO+1HXtqBsTmrudNmYpYQlhbrn3ONJfzXbzhs4BhEc1S+GtgbQcl
X-Gm-Gg: AY/fxX5i4DKet4nqEPKBeBW9KuxStV8GobZGtJVqcMYFv9P5x4Vv/xhEYPyJintVwMN
	H+ha+cwRehV2BsdaGzhCcdgORVI9hTWiWxodoGvWAeHQnvb90mRRbdaTLF5jslFA2r47tVqPMQg
	1EzaElZJKY97DWny/0dJ4z01bLVu+7P5lmdatMg93ulvlxYulT3Yzm171ZRbgHFI4JnHPbYJJ1B
	+qdfW5TeiqKcLphR8bdXyd7SBPj/20A2IxbFDrtkf9RX/NHadavp0ylEOpqJXY2ZneLgSGF0YZB
	Uj5vtnKxSbaQ1d9cN3cgxFMzZu5sBmAKmPZ498C4teUKjT7mP89tl5lXG7Fyu/DcEUh5ttZgE21
	OWq/6TUmZ9xUDfV5HCG1Ufu/9dGQ+lCuHxsvMZW90
X-Received: by 2002:a17:903:b0f:b0:2a0:d364:983b with SMTP id d9443c01a7336-2a599e5cb87mr17739505ad.60.1768384139516;
        Wed, 14 Jan 2026 01:48:59 -0800 (PST)
X-Received: by 2002:a17:903:b0f:b0:2a0:d364:983b with SMTP id d9443c01a7336-2a599e5cb87mr17739325ad.60.1768384138968;
        Wed, 14 Jan 2026 01:48:58 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d93sm225335075ad.63.2026.01.14.01.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 01:48:58 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v2 2/2] arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
Date: Wed, 14 Jan 2026 15:18:48 +0530
Message-Id: <20260114094848.3790487-3-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=aY5sXBot c=1 sm=1 tr=0 ts=6967668c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=w5lGHQi5D-TRKhmXJ3sA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 339DzINlZWjHMj-005uTDBqfxRXQIIuj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA3OSBTYWx0ZWRfX5OvRId8L72Vh
 5z2+0ceXcoQPE/e5vJX1N2m3RO+Wrngj4QD+wbXzfsMk/rZ4SoDJ8ntHMO91CTifmo0J/F3eT/1
 iyx69IBjEe8XKNzAcWYJqI06OlU6GABk15JBwsIiNZlqNvl/KhuqEJ/raBWBUZxR6drZkJQH2Yw
 U+fbS5edItPBS3qYj/ryu8gDe4q7EBR33CljeowURN890f/kU3bodVE2qUngB6dpp9XDeHdtoWv
 Gymvh+3V+nMMR36ii6OVTxnH6CGKd1hJjkHAHBSBD4b8eFfE3jzhqjV2woH2/RLAOtf3vpSBE81
 z0lv0IfnmivOw4qVTbjobD+OXe5YrN6bmxDNWisdVbQqTGr/jkDChFYNrEzzqyCFss3a+etRr4P
 iOe4L4gDQMaQESeZHQRWkQJgEJnAddhagx4WCMLQ8fJ4LWDePvUxLUTOP9wWLP8ucP1g8r4K6ji
 lGZySZQXsKi3fvptR7w==
X-Proofpoint-GUID: 339DzINlZWjHMj-005uTDBqfxRXQIIuj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140079

Add an ICE node to kodiak SoC description and enable it by adding a
phandle to the SDHC node.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index c2ccbb67f800..fb2a9c0ea0f5 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -1045,6 +1045,8 @@ sdhc_1: mmc@7c4000 {
 			qcom,dll-config = <0x0007642c>;
 			qcom,ddr-config = <0x80040868>;
 
+			qcom,ice = <&sdhc_ice>;
+
 			mmc-ddr-1_8v;
 			mmc-hs200-1_8v;
 			mmc-hs400-1_8v;
@@ -1071,6 +1073,13 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@7C8000 {
+			compatible = "qcom,sc7280-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x007C8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+		};
+
 		gpi_dma0: dma-controller@900000 {
 			#dma-cells = <3>;
 			compatible = "qcom,sc7280-gpi-dma", "qcom,sm6350-gpi-dma";
-- 
2.34.1


