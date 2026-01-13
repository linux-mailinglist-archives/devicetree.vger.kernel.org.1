Return-Path: <devicetree+bounces-254414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E9ED18091
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 64279304BB56
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F3938B7BA;
	Tue, 13 Jan 2026 10:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="niezM6tA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FTSDzXbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951FE38A9D2
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300110; cv=none; b=ck4nNoKP4RMtEItuozzztU36gEb+3/3Blu4PMlBXffjepuzmNXwzp90KWmcnmDf7J9NDQ6yOrcttJ5i4HXjQOKZ9z0ERZrZE3oWSDgRJX35/apv5qzT+z5EqjJIyJ1sdOyLKLHV0c+/zfRy8XcdgWZRxsvXG7EopoLE6XArMxhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300110; c=relaxed/simple;
	bh=1HUUEjHgDcWjIk9i1IbMh0KQYREmSO/89fEdC+ob1DM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ktx1BtlAvOYbMUHBNp661eMFdWuiJCDXYqJSshDARWz2xYnpdUdh6LS6bWn00rBsf77M9ULjuctYRfKlAyGHBPDtaYfl9vkVUvP6Jo3yroG2Uqx8hRjHR+9AccpknmNKWKAHtvSunD0rg2noTdr4nfBLg0acgD6X+M+6GZd0oH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=niezM6tA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FTSDzXbf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5Sq1r3868770
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=So6nutfOYbF
	5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=; b=niezM6tAWgboVXCoZhsZbO7SlM4
	80hsr3gBfGmoUgT0egNyddcCWeumobRoBhY43hk8kRlQs+KiaXeiPpofbts0yIJn
	wPP7aGrX52BFkUH8w+1IMNOLad2HHuLHt1M044AUjL9hMFM0svim9gc+SbR4T9W2
	5s3nQYF6MzJVaz2BczZCtqrBIHzTorrkkwIZ7Al1r+vIDESJCJwbAXkMsKleNyXu
	3LbGrfo/VyumraxpvXWR5CtAe4vr41BJZuBX6buZX1axycBY/FnI2lhrhUSRb8sz
	hHQrwpI9i0cYsLyKomDwMwvzEtghOI0Lr3aPISesN8RJUGtQuxIAFl4nBvw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk8w2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a089575ab3so78993405ad.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300106; x=1768904906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=FTSDzXbfUbI2/WrL3QXwPOkspdApFCS0GsgpeC5x2ThOZvXfryC24SVTkiPuljVZ4d
         dvv2V/frd0jtv+EyZE/T6sfD0A1L5nQ7/CanSAmzh/paNo4370CK70XVXvfR+SVfH6Nj
         PjY2w4PXc3auitdkL3CD8v/FMvmas2zjQgH8z8rv+0MU5TvO1Vu5UXpQbHUmAbwzlhHR
         QTZLEskd4zdw3+Bj9QNMmxPwYjvfWsmKmFdAH2kexfY490FbCNbB2c7d15ow8cmp7Wzz
         SfCz2QdS5gLmZwggUY8VkUVnFmmnZhP4QwicJFVu4D0CXiO+DQPQXyL/ARqwNU7P7pei
         v65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300106; x=1768904906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=ARU8kf3UBNfzgx8Y9estePI+dTdl5y8dADEndeWrhqSorseI4HSU7Kki4S4tqCfncN
         QBN2It0RRUjaoh7SHsGcyCBqE/uIz6LzgfFjDuukMCyO4hq+buzU4JLi7XtioqvGVYUm
         6K28ZJwuM16Jwk3LKQtFS0pSOPPewrqW7QSRkO8bRQWF3eQ1HopFJF+6cNwgMnVTGw3N
         DkGd+HMeI/2oixKFAkzgLrfLVEe+IPtkCoZSPcVbNrqzzPM2cKBs9jxeezhIwFNuMNaD
         Trlm2jh9tGOEMdrU8LfulpHnNu5pWdHdYN6YVFnCamz9nVxTzqOHNJBCDzb45Wdh8SnJ
         adRw==
X-Forwarded-Encrypted: i=1; AJvYcCUKVL7fFy/xLmQuTFRJJ2EQ/ie/0YInO2fSt9wnhRdTGy6N5vt2LPkwBYUzLUaUIZ7Ol9dBkyo3anlb@vger.kernel.org
X-Gm-Message-State: AOJu0YyzSNxor46yge2S7V6a4gtaIcqic32uzl2nwAh9GVBVllNh6sc1
	njUTJ0zmwcwIIqh4Z2Y3hPDnj13tNA3uJHnJvuzSv02gx/5VfDvxQ5qzwR2O8zrJew/37eG6AwY
	nItaxUZgHUoY/INXsAlyCQL8YfpzsHn5NUu0MOFw7iVVV0rYgTiF5Wuocu06YUsbK
X-Gm-Gg: AY/fxX4B/iyDdeWYOlYnhpPiX6+ROV8DAIzepuRTQxSApmz9PysatLktWof3aD6i9qD
	pJ7O0C+G2R19iGz/Le9S8AcVYJ8wA9eg5i3B8AewKjUbGAgm/S2287iS/YebIL6g20klLPnl+Og
	+75XEyxh5KhF0rla8tQkVCMc6ydbkoFzXVmSFZsT7CIpUtS5oekvMOdbJDoeWdS4hg3L5948hN0
	NjR7L71UWazpEq2e9ZazLYxGs/CLimlkCYc8Dm6t99UmlKiSpXtRnUmWwIMcU3lAZTCP96cf8F5
	pJhYFmQM7hiEl38PtC4pH1ZDabo26NXghfAI37VXdo+u/EwKUVFPfSHmduHX1VvFKy0zQsB3Q1A
	QHv61HYA/ERpTZfvfk/Qnj+SXMiSPfbzWoKyZYH2JJZ6QIp5O6XyLhmq25ql/Du4jOmRCUckaQ+
	M=
X-Received: by 2002:a17:902:e944:b0:2a0:bd93:4dbf with SMTP id d9443c01a7336-2a3ee4453d6mr210874775ad.13.1768300106522;
        Tue, 13 Jan 2026 02:28:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNnX6agp9DYHQGFRwHzCv7CpigQE4jm4UkAAixZBnK0qR7CEQdcs+7G1hcdvc1hZKaPjW0Yg==
X-Received: by 2002:a17:902:e944:b0:2a0:bd93:4dbf with SMTP id d9443c01a7336-2a3ee4453d6mr210874485ad.13.1768300106044;
        Tue, 13 Jan 2026 02:28:26 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8d76sm197125265ad.84.2026.01.13.02.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:25 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/4] dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
Date: Tue, 13 Jan 2026 18:28:13 +0800
Message-Id: <20260113102822.590677-1-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ZQt3X62l-zlLIRxv5WEM4ZAxnv8vOsd9
X-Proofpoint-GUID: ZQt3X62l-zlLIRxv5WEM4ZAxnv8vOsd9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfX1sivCF5NDG/j
 mhLZteemJKuboLpogcH0v9CeIWgBqeCUXhf3ctIDdsluFiKZXoBvzVF9/SDXshBxIproY+dez9T
 hg9vQlo2zW519y0ARfc9wGAmkRYvJDN6QjfsC8GTiRwEzl4wmbnyJQLCqIWnBA434eX/DXQ/M/Q
 KPa4/m3hB2I9cV1ORbHMiKjzADQHsxAqI3W74LzFCQQVF+kGgFkC5xuwdtUkThbAJ+1pCKnXRdP
 gI4YA0bGZ4+5EA+Fo2rT2V4EoLUtYhWlj99SBBYLeO65/hmB7YisaCais4swps3SB+wwTlw6rDE
 fQJe3OcNNOiHAieHMISblMDea2dzinhwAeBCdtDZaOGyLaHAeEhhsY80r4NjzEtJFyYrkc57E+N
 0285XMMT1g7jvBl9WdugBDMz0dAm2jK/iL0in0v+K5gr3qNZ1ZCSuQxgVjz2HbJnod+18DBFNUP
 /P2ctEcwcVxwcNMtPpA==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69661e4b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NXHrG6A95BBPE0CoaowA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130088

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Document the device tree bindings for the PURWA-IOT-EVK board, which
uses the Qualcomm X1P42100 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..59b8a4267c14 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1122,6 +1122,12 @@ properties:
           - const: microsoft,denali
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,purwa-iot-evk
+          - const: qcom,purwa-iot-som
+          - const: qcom,x1p42100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa-lcd
-- 
2.34.1


