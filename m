Return-Path: <devicetree+bounces-249200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EEECD9CF4
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E71D30CECF7
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256F82FC037;
	Tue, 23 Dec 2025 15:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QuO2ywDs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cdA1CZG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E28B327218
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503573; cv=none; b=HjSMbtKYzWIHHVdZfrJj/WlqlcyCsSACtRmiABjuUsjS49o865bx7y3e/rr/XxcUEoTVg6fOUc2OWir0IairR8CZ8iGTH16DbGivAz4I5ABlpy3Nxba3bUeE1QWPpgW800sOlwg+9NZucmxaIvrnACkTxgIVbOrkHnPujUGJFVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503573; c=relaxed/simple;
	bh=xo0vBYPysfUqzUBvWZ0pJL5mQaFLbuz2SApOGCnTdVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Esukfo3EWPaFj+Q1ODX1wiQ2PNdavx3xZZi9IX91HbhK0NNYeRItZOtBSyhouusa6u4+sHWQ5WweNhZPHKQG6BXXzW2Mgh3CA+wM87bjHEq3WKM8iNM3uEWWESTYOKLTpR+gSZV4n/la+QEct2CjhAjYT6yTTzGuwOkrJ7dN62Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QuO2ywDs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cdA1CZG9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN89Svd2747756
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=60+YVxasInu
	bCv92O19ctca3Y0nZLmCyqoF9EGpIEdM=; b=QuO2ywDsI9CySH/yTRDUyFM0Gn2
	ZXMs1iBssh98m0TRujHFhGpClcK9eN3ec8t6YnNCL+aUqvDpBKEPcYlg0TDTwnd8
	6c1Wv8/l/xpWzoVzuqDO2Nx4E6buwf5KMN69PrmK8AKeeaQ0R0N96HrLEhAqBe4g
	PwedSav6UsUGOAMbJ/aImpkHzD5XLWsH/NOfVBR04ZLS7kvp92GN46+2jBcpr0cC
	xfyqO62H31V864CBC5aDiPoIkHj1WIe8g0gsbS0vTc2t82FRnFfIm5U5D8ZXK+p4
	QBj6/EkQhfV4HSrN0pEpScQjiElNOhoW7eVMiJkbMcnW5LCDXSff67ileaA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5cthue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaf9e48ecso133809241cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503569; x=1767108369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60+YVxasInubCv92O19ctca3Y0nZLmCyqoF9EGpIEdM=;
        b=cdA1CZG9ayNsWsWDXE/NjXuHR+c3EqsLRL2sBtkPsneLg9n6K8O7Sm28zB5BulkM54
         oe91hNK5oC8TYewlNC2R2oTQEMWAYaDvu97rmDhkbBcAj7ZdmoAe7bV8+TYYsfbObDJ7
         TFWj2EKV6tebYCJnXYk/R0846yjSGhx9RKmY3O9U0YEKwJTwzibNyDwJvxXqgE+C/i3/
         WuIZv1enNb4O546K3HlXx1bHwKjF2KQUcZ7wGpiNlEOywZ3rBxrmQQYR8Z2GbW/UE3PI
         pRDmOxj2+A91mYb0QFzr/7VM+JYs7AytvR8TQZZssvXsjYvfgTpxBK68VnXNCgQZ35cv
         T8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503569; x=1767108369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=60+YVxasInubCv92O19ctca3Y0nZLmCyqoF9EGpIEdM=;
        b=BXbNiZy1IBY3T2nZzcEVy01UzVxkAykDA/nM25FSzFTJCCNv9YRkbwq9MnpV0tBvIF
         ck7ZzTD1FIg/OfnBvBHL4CGlNNb5Ewogoz0FRhlHy/3N9VjfWmUJFy/PGz3SUK1bzLHJ
         pGCumnqJ82pufUEXhrW5lx0Qa/YrzuKt2gNzBYtrjxp6bXT12Ul2qJzVKKZY4f2Zu1QH
         WPDY2cffWTu1zoxVDYYCb86D80AV4cIJMMwImJqUvZzRPhq9Bd90zKHymNW1vjuPNiKF
         S5i+zu3NK2AtfQPKcEiqZhzO35dYgJa+XlMhYTtwgsbW1gRt07ZTR/uPn9O6nP69wL9d
         7Mug==
X-Forwarded-Encrypted: i=1; AJvYcCV09ZIX+e8CGkRiX3TGlGFpFrmhNBvc77WdgzafTl6L5NmRpd35U8GYVFJ1FdvXpi2+l+ltJIkUSQPE@vger.kernel.org
X-Gm-Message-State: AOJu0YzA89BvEtUmY7fH9zI0hlrO5EfiTAt/hatSsBJdbKNFNOujzC02
	eN0Px/rhqVN46eeJyrdqilCMT66d01KlM+gyJR/N80j+HFVh8+A0qTH/CnnvIRxc3nVLs9L9FG2
	b9AT4/DPbfBjj1NjpUQreT8OOEgpEgXm7HU3ikVNu5UWacm6+Evo5RndpbgMY3n+T
X-Gm-Gg: AY/fxX6AvkWPVzhJL7XDmMnwiwvV96MTCVRRy7oLW3vwa1MDeyCMugbyCaurEkC5WBc
	6doB5AQtFRtejrvdQS+LZjh9dTiHSHqL+Vf805FKl3HYZXvl+DwkRnbom9dadXRhlHg05QdILKK
	tM9NFbzsezwd5lUpOw9Ct7F5RI+5HdDOAznZwDzMNCljdl9enEZLltYrkTdm1YX6RJdVgE/7Ktt
	55nWY6zsJFvab8SUV5HOYtQWJDp4FAoJ4VmanceA4TtMQDnV/zCpYSxYz4Eq+Ngs2xJmFxxWspt
	d5LY2O8V/uW7dhSSscI2Bm2ZQAmZCFdyjDsBte3CsHL+gfJjrmTzmpU4SubVM2FHlrWKW2KviS1
	0syesoQhZ9aITMkNrpfKLhG2lU8tkuZFTp6ZGSrN7qQPAB/n+swuTfTfit6zUtEKdebQ=
X-Received: by 2002:a05:622a:1f88:b0:4f1:c753:7082 with SMTP id d75a77b69052e-4f4abcdbb45mr216692831cf.26.1766503568609;
        Tue, 23 Dec 2025 07:26:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEE0uLDKdZB2oCxVwEKPqqVrjgif/vqd9a8jwpZLLZzFkxFLveD1KZXzkz6Ug0Hs82Kfz4bLA==
X-Received: by 2002:a05:622a:1f88:b0:4f1:c753:7082 with SMTP id d75a77b69052e-4f4abcdbb45mr216692411cf.26.1766503568104;
        Tue, 23 Dec 2025 07:26:08 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9ef904bcsm13268409a12.22.2025.12.23.07.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:26:07 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/3] arm64: dts: qcom: Use hyphen in node names
Date: Tue, 23 Dec 2025 16:26:01 +0100
Message-ID: <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1325; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=xo0vBYPysfUqzUBvWZ0pJL5mQaFLbuz2SApOGCnTdVM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrSIbayp6pYBhtB9X64EKrLtyI75W0Wzh1To9
 RgCjeuByY2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0iAAKCRDBN2bmhouD
 14GFD/9PyZZkjPC06807Wa62CBIr9myNe/UfUtQlyyZHHtvWRpiXpr68IROG1COKnn5J1ST6dJB
 uXI0wFZ0GyuSIj/sYqDfCss8WraRIYy6s7EsvTYqsL2hCwgLCijs1gLKE1S5DCoMecp0v7jtHJV
 B0aC0pKj3JIdJTYoOjetQe5PtXJ/MGS5/fu03bOB6qpS3xEBpYTYpGNat8IBGR8gsjReqWupalF
 ETt3O0p2yYhbf9qE/1DweKBN01G6oSc5MejJCrSViBEVbokH1YlQppcci5cv2OiVBox2Jmy2KPc
 nFmS7Y+VyUaioiZsnkwTg7+moTImdooUS5icrJWIJz7aMdT8OjQXQ/26nSyl51zE1F9qF/mLuPG
 9BBEakeInqG2loe2omn45DNgxFvqIBC2x0n1Zzhk8k3FkO8gSItjjEa+GJ1vYAR3wn4I1wekgGs
 8tXmc2/Cgw87yBzaH93l4//XYZLQALtdunDwUaZxwTulXpqyiqNE8PyyOXfQRPHn203/fAtilb+
 Ln8u/Ti2TNyYd9wS1d8HiNLn00KuODLDroa+2AE0Q8ZvCathMAFhAw7M8V+P7woXGP194sxMW7f
 MWNOFZqyjrUfInmsRlwlZ49Ck8LUTOLvo7E8Ur3mWFi1cyWhnEsXn5U39h7yAWofmVD/K1wxtvM yH7kdLGzW5PoUqg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX5e9g+5IAsF/A
 UzsEI90IhRHNQrqG6xpkFDo9G25Ic1TOMJ6GTST2jCR/SKqw4VZDhoq2+1nyBHxSEb8ag9aJvOU
 nQdwCVzIJPfQhdQ1vURUkpJmYveYQaqOG/+HOY78S8jb5GIL7p7Omqkblkl2yyn20bj3Mn0F5ES
 07b8sOJT7tT7XweMa4JK61zyLViHUJIACdMjW2WsCu0GfebAL5za6iXxFVYhK8BF4dRWXBKuoFR
 xw3AuZFkuay+LeG0cOC/PyKklK8N58qXXzlbpGSzqcS+nLNqe5T1uLh/0wWw4/Jm/yQe99bHERi
 hSHiLTiKMZcwyxSJ1Ak7uTgsYEv/vmmXBWA1ibQWvRatbx3v6kahn6KeZuFubIDw7A5AcOgl2UA
 FFOOontcJBi9oIfREBfQ8Py9xGla12TnN3C6xr8KLJCRldg05GPOwOwlUpQtslZlOpz1Upm0wAp
 ILXsNRjFlO/PXayXv+w==
X-Proofpoint-ORIG-GUID: 5gbzaEslvIR3jO6k3onUb93aW7Da306Y
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694ab491 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZcZdOxe6BgGqELRYw9UA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 5gbzaEslvIR3jO6k3onUb93aW7Da306Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

DTS coding style prefers hyphens instead of underscores in the node
names.  Change should be safe, because node names are not considered an
ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed.
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..e1c8ccceb5ca 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -929,7 +929,7 @@ qfprom: efuse@784000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			gpu_speed_bin: gpu_speed_bin@240c {
+			gpu_speed_bin: gpu-speed-bin@240c {
 				reg = <0x240c 0x1>;
 				bits = <0 8>;
 			};
diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index b8a8dcbdfbe3..746e9deba526 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -634,7 +634,7 @@ qfprom: qfprom@784000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			gpu_speed_bin: gpu_speed_bin@1a2 {
+			gpu_speed_bin: gpu-speed-bin@1a2 {
 				reg = <0x1a2 0x2>;
 				bits = <5 8>;
 			};
-- 
2.51.0


