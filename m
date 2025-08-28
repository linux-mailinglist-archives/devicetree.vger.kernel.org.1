Return-Path: <devicetree+bounces-209803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06600B392B6
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 06:50:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D04FA367265
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 04:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F712690C4;
	Thu, 28 Aug 2025 04:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OMb/CLOe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A749266584
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756356623; cv=none; b=QNoYw+afXFuB37ycqeF4U5pjA4GLzBtx5+mEhcPIg4W2L8GSgvYgBqUJDGXhdbgVlzxzivCR6pJ0iFB/rEytNEXYWUsvrj/AasOJUJGz42FfiI0Urloh4ZtXkgrY6vRnNUGW8Dy5Ovj4wBsYe3ShEwHE3ARDcG4xZg8bZrJEWI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756356623; c=relaxed/simple;
	bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AjlLeAkoZy5k6soQdcy7zbzvSPnubjaN8+ifHR+PAXsXaHQuO4FhrZLHLpEDHTvSTL7zOp84M+v8YEGnj0kwYbD6uPyi/2TPlHEPa41O28BU606nCd0SnzohQhYsNgzGmYuydggnL3oD56YLfgKVKR7fjoGcaZKdsgg4Pz56l6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OMb/CLOe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RNQPsb004959
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:50:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=; b=OMb/CLOeXxsCkRQ5
	21C7NeYcs4c4kEs6zDOsBXUZOq8+7HSCHi9Klva7mjSzhGnOLNhX4mwPRk2aRLxh
	8Sj7O/Yba4aHnTdUG/lxISLhflktpexHBJlE2hKJMtFUMUS5QeTe+bA0jS7XyaYv
	2Euw/VV8CzG7eEGscDfrhhqhhdrHnH8weUUYinIvE5DcGhp4C1BLDEf5bvcsWPoM
	QCLeH9rpicPMiYKYkTzaft49cCTtIqW+Pz2W+ezNQ5K5NnK1wAtZPFKzfZaLe+uO
	FNbJBqUJUavcGKE6LDbTljD4qnUi9E0kZpjfk7QeyhCCISnY/ubQvkZb5di/f9Wb
	xcb6xw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpggp6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:50:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-771e43782aaso526452b3a.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 21:50:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756356619; x=1756961419;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=;
        b=UcHaTE39kQxAJWCqS89uEb5T6grVMFkxxWNgpa22ScT+dR4W7AFHJASxBc242Egp26
         K/MuMB6I0FN671hDIqLr4I+8NvaHyA6r6aenfMmOrz/yRqa71jQ06htTBMRwD64rFxDs
         Qco6Rlg738s9H+Lhz/6rP6HGpB0YAb5xUoTo7jZ5XF+7Xdw9WrP17nNsgzOD8UAGW3Wl
         9lX/EdzpOmD7LGagmwx0teRh0bELRL+a/NjMFNreKVVRWam39sv4pVnELWci9/cCceo9
         QbUyPBjUfd3akua50S+K9Bt2mpyuWql4fXPsYJo+esp5rqx2i+pIGZUjcfswgNA1g4Aw
         9YEw==
X-Forwarded-Encrypted: i=1; AJvYcCUEWl85QpK4JSa0HijgGMENulovRKrk1sSqGZObAi3snG1Fa07fI0F3gW2NVzJgii6wJaSYl4qFAoRe@vger.kernel.org
X-Gm-Message-State: AOJu0YwhrPMZALrUt8K5k/cEJO5w3ddOtFIKNCVxBCGiNIJUVJsPThwV
	6K9qvrUJ5o+Y8BDmcuEfSIDgfLEF7Sf2nawe5VMKl+/GOk6fXzDrmFvM1QC1JliCzIIpxSgIbz6
	0ax2zxG5A/H/3GvoLV6xejgtQbKs9mGVOttEVoLLZzRk9dWXBju6FntBZed9lrs1F
X-Gm-Gg: ASbGncsH1s5jw+tXXFqcBj8bRoW/FOEWpa+ULizBmcxHiWpiRwNsuR9gEcuR4WucuqC
	6x7874OmYs6qk6U6XxU6h9iVipbsEEeCU6/HV6GLO/CPdjKVdFbSLhn07ee+QDKgOzWkuaf+Ikl
	ubwnjHR/8L99N0D/W3zLMe5agtm92NXOWIeyNkJxu9WvuqoKLDXyI0WIMlXwkBmH8a6REAOjTHl
	snrTNb7eYYCx8y1Ic8iuO2RCYqgliqo1EjtQwQ5E/NnOzUcf0Qv8b51wqAr7TTInZTH8gl7GH1Y
	h4qCX6xCtOvSikwIckx18Hg+ZMUQEJKg1C2wAe19rRSyrHq+1zD7NErCeE8zXsmmiPYiWKJgHFf
	vm4QBod1XXZJMYKj0TBJPkDNm1hQb9hrEFQ==
X-Received: by 2002:a05:6a20:2450:b0:243:b38b:eb8e with SMTP id adf61e73a8af0-243b38beeaemr153791637.49.1756356619089;
        Wed, 27 Aug 2025 21:50:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIsIeKy5fSUIi8sXFWz5JGR8nHUoOGJKLNVbVoy+Jb7LDobgGaONdb20TwG/V/hYVHruIpRA==
X-Received: by 2002:a05:6a20:2450:b0:243:b38b:eb8e with SMTP id adf61e73a8af0-243b38beeaemr153756637.49.1756356618599;
        Wed, 27 Aug 2025 21:50:18 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327ab094f00sm986699a91.6.2025.08.27.21.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 21:50:18 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 12:48:45 +0800
Subject: [PATCH v8 1/3] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-hamoa_initial-v8-1-c9d173072a5c@oss.qualcomm.com>
References: <20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com>
In-Reply-To: <20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756356611; l=1177;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
 b=N7c+oevrGdfKj/Zk4E4BbRJHiVXqzyQUlC6CYshevs2QpIjo7sqqV0S75SR3Ts9ysuzC3LExQ
 tdQMrpAcG54BpG1WMgAcZRxhgzWir2GZBurYXOR05McWnD1atz5wrdB
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-GUID: pMU-6wta0Qg_2aK3W-MZ6LVhMq3OOo6Y
X-Proofpoint-ORIG-GUID: pMU-6wta0Qg_2aK3W-MZ6LVhMq3OOo6Y
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68afe00c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Bh1HEMNN3wmc11-eFpoA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX8C9sM05IWj9m
 P+VYshnfxOm3WN354VyZ7enCEeY6b4t36XpwwtfMgXaFEbh9LJL99Z6fG4knGTWhTyuuqqqMfPQ
 EiiK3/WVE8RHNT3sl5CRiSFJwVVOJ6rcbxT+T+EwNB43zNC9vVlJOJ89XAQGBxypvVWoLY8iDnA
 t1O9sxocgsyau5UEleIKw2/OkHtIv1JNmcx9rknbnWqvgC6o+N/gmpZr0ZLIIANKhROAP7f+iLc
 X6Vyye3R7f0o4DtlGC0FNTUfHMQBaVTy/2jjUcpc7JRZUpS+aI8GWIJMKN0BGURENB2tWisVChg
 pO9Q31K6q9WugBArHQ5C8bAjB46II/NGbMlOtcvJeJTF3uEplgBEfyT4V1fOmESnL2d28H2SncN
 UiBoZ6tD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199

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
index 55e5eb75af89..6b6503181ad6 100644
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


