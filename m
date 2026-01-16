Return-Path: <devicetree+bounces-256012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C6BD2FBA6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E95A630C0A96
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583A436164B;
	Fri, 16 Jan 2026 10:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VNRB5hpR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b80qXuyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B0331D730
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560103; cv=none; b=Z1AlojAMZeELKZl8UQRhxoZyQ+K4XywMxJgdvPxT5caCZyIZLSIXi4rMG8lnQggttPcXbZkRrrMm3TrWdobLZsytW6JmgjUOojW5SSpvGdHgnqfccBWmdUex69o+HdaLtfL5x1360Q5r+pUxDhKsI9mSbqRrbhDcHgYqFShDrmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560103; c=relaxed/simple;
	bh=1HUUEjHgDcWjIk9i1IbMh0KQYREmSO/89fEdC+ob1DM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ykj0fqpSnEY1oc7xohK5MXUdx1Wdxjfi54nLS3DC93qQH51G8GdfrDrAUx7aX2n15UaWuLImFs56BrIfPUwrG2ZOd4iaTV9M3ms0lQF4ok0uMb2zluwvDFS4Sa448cEtGsuao7Hdq5HvoCSflDf3TeP2xKt1Ta/jELsrcYMvR+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VNRB5hpR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b80qXuyb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8DV8X2615346
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=So6nutfOYbF
	5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=; b=VNRB5hpRcHd4RFyUX5wJ8wY2JHf
	V3xNcI+NtrqNof4oMLyAqIdIt/0qjc1JD/pAuttNJV+qsNSQ2/yWwqse2bPtjfP9
	FM+foa5/kVFgtdYOOzlauHmM7GXdUMsZiTlHFQm0JSHt6rCmKgj3LdFbX/NwccEQ
	Lq4F5i8Q0hSi+nMqMpavnGyYsKdB+QMJX91aQJ+AH+zwniuWAf4QiQ8ZXzu/8qRO
	gmWYj3VmuNX/31S1fxnl1AdobvAdX4JZ8nwWcPGOs6IZKTeA+YyQfrT621MkTQrN
	WD7qOzngYB/KAaAXpjBH6tJ3jxDQO3sdUYER6ShWXZsUk/HD5VxgQmoCWSA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq977svx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f1f79d6afso21632865ad.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768560100; x=1769164900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=b80qXuybk7N3/ki2FVGuzRx6Sd9eWwLHS7Rpy4JhS2GN1tDLIduISkqjotW6b1Dl9n
         vgN7GqWTzXaJxS5IOS45Bc7ZKc6C0vQkQMbHZoLUXOgctovLSCL4wdG6O02+yYfxQv+F
         C1ZzHQBoaq7CLW6gF6aiglQ0fn1NML/nYwrRXuYRdLDmSEIaU+W4zwGR/rzXOYjHYiqF
         2uXPTFoXWtcbs3UxyD3gfgpcYUmYtCgfcl5RknOhY/mpdniexIv/QdMuSFx3qt1Y347x
         H8SOSnrwTv4ToLsQ3hAHaCcqJ9WrfX78JfsmClc8Y1uoM4qRoz49e9Di1bieqCXELpFS
         NnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768560100; x=1769164900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=rYDF0kDqMxjw0FJY9YuaWJ7021s4sA1WGx/o29j4sx60gEX6Lgxj4MpNBh0YLiAVLb
         0X4f0fXxzkhfogMa53JP7wGP+qWJNDjei2g837eKV1JTKVGzPSpDNWo/YRk3aWtjkbbk
         GuH9r+NFNCZF+kw0Oo5+bDlh7plq9Bv3CfIBpmKw1HpjRskmdHJDVf2hTh7AddHyeGbL
         spKbJhgRna7uM7629q/5bkZUzfvwsbGd1So8UcyBKIB5f4/rM1khdkQx/qNxX42icX2r
         laYKC7IUrYhbcytO5/piaqxbCWu+BCe7AcS/7qzUrq8myl44JQHtrxLgayauq6cmscXF
         Pe4w==
X-Forwarded-Encrypted: i=1; AJvYcCUzB5Tnf0fzvhlpCGpAGxSnjPkkvaWxu0tLEKYBbTDXz+B473d0PMkEFSKXK2ykZ7eqA/ocZ0q4gzfT@vger.kernel.org
X-Gm-Message-State: AOJu0YyfFm/vWEvCwlarLh7aaJTLLHWcsEtcF8w8yt2swYuDpVaI1Twv
	9eVMHHKsp24P/ExX6vdi5r09OZg60st8SmhKOQw8/ruDH9tJ/gPRoATWWt7hxGXjrEPX72yO0Xv
	B0x784QoWDLKI6GwzemFzWBlqX2jJPTkoWJ70CVPgxHUY9kAuh2gbjZhozUfOdGeS
X-Gm-Gg: AY/fxX4RHhjHDctsyGqmen/8MfyiJVJNdXNK5BDBWynBUa5GrM6+7MYsAv8HPu3uBiS
	fMYKWJ99PmJ2PLBQOlSwNVTSBpQXbZIlhgxlXIngg8uOxY03B9G6RjgiWkzr6xrUMvd8nQu4Ee+
	t8lCoDZ4xfqMTxcKDdCe/QjgBk3DWoRM/vtUt9El8IhIMn5ZaanDRGPDZ3eTtrd8TYtHm2b96xx
	GmdZ67Ij/hwBXNGJ/p3tKRPoeSUQDPrnz9wMGpVnueoyBFoG+NPw8OA4EFzebXQZD4EkqQq6tyW
	YCbz6fKT/92NhhoEqmqywYEopYsO9OmrSusmp7rHvsm6DsrLmEMFKc6j9fEbekMSsjqmVFCAyN8
	RHgBZBEwFD5Nt6ZByDHeTi5Lg/szO1u4cvm2lPYKyP8scN8PFu58l1cPD0M3IIxyXgjFPJ8AtYT
	A=
X-Received: by 2002:a17:902:ec87:b0:2a0:f0e2:94b7 with SMTP id d9443c01a7336-2a7188fd7f2mr28644015ad.30.1768560099987;
        Fri, 16 Jan 2026 02:41:39 -0800 (PST)
X-Received: by 2002:a17:902:ec87:b0:2a0:f0e2:94b7 with SMTP id d9443c01a7336-2a7188fd7f2mr28643775ad.30.1768560099536;
        Fri, 16 Jan 2026 02:41:39 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190aa340sm18009215ad.3.2026.01.16.02.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 02:41:39 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/4] dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
Date: Fri, 16 Jan 2026 18:41:27 +0800
Message-Id: <20260116104136.2922032-1-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: urp3LzbKFOtAySqXMaP4g806EO7Jtbq7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3OSBTYWx0ZWRfX6TRtS3HfAdC7
 B9f9ZHXKxw5OOl9nXJaKPulS0iz3WwzTjeF72cjOZBUEsytVG5Byg1a4nqC8sZkPn1Zh06MwmEK
 nSaygzVEjZDFuX7kQg+b5MU52v9BDnwiWp6uKmw/cRefm/IOB9iVr1LOfJrtfxbH8LckI6GTS/V
 +76Wr5rslGdlyK8Nm0SGC6aaE7pAeTiZZi8lzfAuEeGacpGNBIe2QvTgV4p5eDoDEgDapcXp9Sr
 99NXoBV20eWJR0bFoOXRpi3uuNGotKcOWZLCbuXbAPpLIEG3HXrya9UQ4Z6hL++hMZ5b6YYk0a8
 svnMXqMMyLNOGa6VGrPaFqZYXPlsvXA8xU9/oiZTr2288qRaPqvhmxQbnHZ9tuxZZkV8itP8Z2s
 0dfd6DKbg0ngz1sn/XhMkr5qwB/2FITjZcptIXgjKgA8zuFD0jBYYXSsHIIZb3DXt08glV88xhE
 WWKk70OKBGknbFXjxXw==
X-Proofpoint-GUID: urp3LzbKFOtAySqXMaP4g806EO7Jtbq7
X-Authority-Analysis: v=2.4 cv=dbiNHHXe c=1 sm=1 tr=0 ts=696a15e4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NXHrG6A95BBPE0CoaowA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160079

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


