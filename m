Return-Path: <devicetree+bounces-204506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 238B8B25D7F
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48F5D88257D
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 07:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E083270559;
	Thu, 14 Aug 2025 07:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bUgQ4Ivr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1034E26FDBF
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755156482; cv=none; b=eoBUJnTUuVJg6JBgsAiQHvTdBCrWFiCrrgEqvk4K8aQA9ZjI9ItWz5g1fYoINX2rMfGq9GaoxqFYM6XmxOw6ObNIQkh+PgiuzAq9ZKqW1rWzfxZ4i+A+4CU/c+672V7fzXPUOEkor1kBFnleerjGLtz3ga7tPl24IETd6fgk1do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755156482; c=relaxed/simple;
	bh=JKE8XeEWQuVBdJspgbbvbXt9TNiZ5M05CMuElgrBmxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ExI7UM4K2MfU8oXF8WxiG5EL2iZpcP/a9AgLa2Mzor11KQt1ixP3mKZQUomN1Now4USzU3Bv8PucONmOMLYHTRy3Zt8I8fX//t/eKegYM9FnDVskS02WBaE6mKJVZQsIJMRghwldtdb3lWBcIZrc/VZmEaiRTBGp2igpDULRjqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bUgQ4Ivr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DNCura013690
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:28:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w+aXJU651HYPWpuqmg2nJipq77ZAjPoPawcKtHFM/+w=; b=bUgQ4IvrDXTjlciV
	43sq0fH7Sch5k8/kuq4zSsxxBmnb5TZethLFMDfDE0ahXaa1GkXLsoNGvIUnnEeU
	sAs7NFtbVwIKKA3vNDt4OoEnnzR1mgH0DpXFtxCb7F4Oawv5CqZmrXhXpraMeIvJ
	a/IpWA64bLCV+hknshH6NhxLccN4/691t2CcKDr7wUdjww/M3ZmIx3/wDbEIu0Pc
	HvFc8GX811UcFa1Opg/GJjdRlI13rkY6O9b/Nafa6Hc+XcKKZ2okQnC1i+IBEaFc
	entvm9yN8WpU41JscY+xax5W6nxrGRxMDALTqrlRXbp5cXWC4iTqHfLpgLcdxRto
	AqUr0g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9q9wu2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:28:00 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24457ef983fso12153595ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 00:28:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755156479; x=1755761279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w+aXJU651HYPWpuqmg2nJipq77ZAjPoPawcKtHFM/+w=;
        b=IULTp+1tpM9O/JrkisfjuvC9lsL/iG9JPmg65XZ+6gg6xq0eVe5GxQhWTRq5wK759O
         R4Y3OX3NaD+QVSOynVmFAUC0Nq4US86bao6DbhkGSoiAjz/ixFdOYErWQa7/7ScpkDga
         pRxChy5vmNW7aQxhZvrTsuqrrpMiUYAQUl7/DfJtx/BaTTKRNzTjBWlQEpT8OkuzpS7G
         izR/H/rCHioEG6dEnK0daBnS/ellPeDCeullUOHx/a5i4FSCDbrcKKJv7iQA2SSVnQpO
         M/DS1jL7hj91UP9Y9HPOdW+FRH1BHm8TeeouXcEVuWqOf0i3/RhVtJA2Wt2KFY73LdU9
         jdxg==
X-Forwarded-Encrypted: i=1; AJvYcCVlamL93X7kD5iM7Bwcqz+ecSUaxdtLn0CTArJR1MLxOWPMrks1+yNc2R9OI6Kczjax5sUt+tR8Pc2/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+0Ud/LFukQ9ZIuZRxWmq88qeB5FebYrVOrxwFYZBiqYN+Ioj/
	UdWXxA9nEb3QJf50c9tJ1bKwjisiGUTiThLorhSvP58/p8Dz4xbeNFPgIxHOsM9481ygdv289Tr
	dFmC3WC4uyrgltxIxmVh6a+wn7Yih/B2vFhg4F3oXjwGLKf5/Z5gc+xS0JGX0DkFg
X-Gm-Gg: ASbGnctZ1NHdVKfQAmKlLazu/t0YzYe2HVYrV7Z9X07RPSR1iPXfJupkPvSF7qYqaBx
	YsnerPVEeD0hOGBQ1XyHFrJDF+J7RY1i8ryJwtIRPrqAJwGvjeahidPsKfvQutUi4C3F2aa4IY1
	pfwJd+UD4sIBgBv8V7rmNT0h1uNjsdVJ2Rvgso2JTDZyPxsSKUr/7KZCCnIGtNeezThmMF1nl4d
	PfLZHNr7g/ryabqumTu5aTxiLDzA35VoiB9b9DK1R2/LxF8nHHqvGb3wkUaLqEiN5JNn9bxJr1m
	gsSidCbYKa3UZZi8/m/Dm1FRc7XnhmGmSEVsH01YZ3PoNCBluR1GIQHgv1NemPQpSMbt2INO+X/
	W7R/eH5ZR479JNh6gUojK4Ypkrv4UqsoDJg==
X-Received: by 2002:a17:902:f78c:b0:234:d679:72e9 with SMTP id d9443c01a7336-244584b44e9mr27812675ad.12.1755156479521;
        Thu, 14 Aug 2025 00:27:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6pRhGLFcPGP8aOyg99NqkjVLCBppmn4RqtM8WYm5//M26hmWOmdLYptNmAgIsnvx89M8FqQ==
X-Received: by 2002:a17:902:f78c:b0:234:d679:72e9 with SMTP id d9443c01a7336-244584b44e9mr27812275ad.12.1755156479023;
        Thu, 14 Aug 2025 00:27:59 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3232f8c8e4bsm535458a91.2.2025.08.14.00.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 00:27:58 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 15:27:28 +0800
Subject: [PATCH v5 1/3] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-hamoa_initial-v5-1-817a9c6e8d47@oss.qualcomm.com>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
In-Reply-To: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755156471; l=1233;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=JKE8XeEWQuVBdJspgbbvbXt9TNiZ5M05CMuElgrBmxc=;
 b=5WuxaS3gE8ZTN7Xc4Hi7Xh/J9zRwtSs5MpD6NKLboTRCJdnznNe/G4xBrpU5cD4pq1HTxjVJb
 rXrTK3k/6sKBiFQ2CetL4gZo4DwyEqoaT5IGjpu0YnaaxDYqLt+RhsD
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689d9000 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Bh1HEMNN3wmc11-eFpoA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: HE4inqfeVsBrEHhKZZ7TuvJMy4Nf2jGg
X-Proofpoint-ORIG-GUID: HE4inqfeVsBrEHhKZZ7TuvJMy4Nf2jGg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfXwjaC6cj1tuut
 ayTLS3vCz17FnPbq1qwfbWsc1fy6JiWCcTEyjZz9U/t7uRdstvAFxNyqPa2BqNHzG/aAdWhK7fC
 NO2dWLH4D150ih4HC4n+Rb3v7RvunqTIMacVos0+HtHhvWgEgIWH6KxRpK+h1Tozd2SBattGyLV
 pClp7sEGIjOnV3+QzFx7Yo/raDFMSGcNJ/D4Fgg0qPWafJ8c43qmQR2g9PBaOx7Ul1D81xRR6NS
 8a6Y+gODEwxnuqt2lxdHECCQjnSzbm3vpJvCoF3DttMz3DAqD5AzqOtdQzgBUtbwk1tRpRv2M2O
 Sc0Xr1rms+FOCGnS1j3dg2ByJIEu81bGdouk8Fd5QpWAQYmEjAiYtk328SoPw66ykqef4uf66zl
 feq4ccsH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164

Document the device tree binding for the HAMOA-IOT-EVK board, which uses
the Qualcomm X1E80100 SoC.

The EVK consists of a carrier board and a modular System-on-Module (SoM).
The SoM integrates the SoC, PMICs, and essential GPIOs, while the EVK
carrier board provides additional peripherals such as UART and USB
interfaces.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 55e5eb75af8905c93e6604d54d516585f70a8e29..6b6503181ad6f2e4932a52d86a54c77e7fbbac9e 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1069,6 +1069,12 @@ properties:
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,hamoa-iot-som
+          - const: qcom,x1e80100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa

-- 
2.34.1


