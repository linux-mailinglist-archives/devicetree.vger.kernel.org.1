Return-Path: <devicetree+bounces-245766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4DFCB5270
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 09:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C224F30141E9
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 08:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1412E88A7;
	Thu, 11 Dec 2025 08:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e9j1wCv2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="joovWI5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D102E8B62
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765442714; cv=none; b=uZprhWWg/7KEe1SOZF2/p9ClB48ZchH2T5CSkYvQ174FddHJntBuH++m8/EP3UWDN9J/i6YPYQwVO5Bi+UJP54Gx7MdBlOpuWtUKlML9UhDe/kAUhJCfC+nZOHx2/5ppkPdBdoEVvWqaVKrG9QLN2I/WKM4xZ1BEELD36Oma6zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765442714; c=relaxed/simple;
	bh=ncT4TM0BBAdDbGM9rh5XCCjb/AfVMYnF1YPbwGMv/zY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M29Salc19JitByR9v5d7uW8WXEVaBA+vQkBtX0aKBNKG1dTqUjyEMLPtoPaVshm3o+7BUAl5zu3CapQ2Ry/XGQGr67eI5m13RzowvS3k01sR/U/uZxuS9CLt0aTGxWK2RjfwJBFZ8ZNl0LoxK8rQQQvnwDeVJUAo1FJ1DZZrah8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e9j1wCv2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=joovWI5i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB8ge3r937051
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:45:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yAeP7YPvuxCEZemk/uSlfzJ3SDOLL6hhg2f/SgVkZ64=; b=e9j1wCv27dgiGXg1
	BC168U5Knp+FRubbNVlhhFFENCedCb/4xs0ng8KZgrmVlw1ksCtYW9D0Z3OS/OcI
	bfYnwr5E4dN19Su1rRd1ueN1BT0ore3Lf//OJTreAEh+vGxzcd7LegtbuNIqrebu
	s5791M7GuXe+b8RD/ypKVG6lHSWX5u8Y6drLOAIdJEIcHRl57BiVeimlAEeYivVN
	+S3N18SG4XpAeP+EXfVATUw2iEGICNWIrsSmOzY9S72BiwEFuIz0r37Sb37T0her
	WY7VwCjnWdF1seG+lyRdxfQ4oKQo/IATsnWJE4gNb4WWgJRzMQ88sUDppaheB9N3
	WvQ/nQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx1nya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:45:10 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-295915934bfso11572525ad.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 00:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765442710; x=1766047510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yAeP7YPvuxCEZemk/uSlfzJ3SDOLL6hhg2f/SgVkZ64=;
        b=joovWI5if8J+YbT5NmYYeqQbbpGgaSYfCKbjzG51YGheAlBZx9qcU/n/Dq/jLrdP5l
         qsH1cdN7Okxb/5NJZmrmdpq5hfTqMsTro7LfajoNSIu0/HSGNF0YkTpVW9+pXqg2CMIm
         aZToKNVJRToyUWDCGGbIlvSfzdMdVk94f8qhOnF4EoZ+R42Z0SefH5gmMpH/ApJhWyz7
         4ZnXFUmG8fwlrRf6nSWXi99volvsblaFWiPO4XnMbpRidS4TuCNQp1Ge8njpBgQ1ZLRV
         XZzmLWY249zItD2AKzmo4OkAPa5PyQbWUCRh77eee4CzbjBRmL74GjLWg7pOw9lNyt82
         OiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765442710; x=1766047510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yAeP7YPvuxCEZemk/uSlfzJ3SDOLL6hhg2f/SgVkZ64=;
        b=UUbtxibedbrb1WZ2G9gLv/kE6kM8UZsnQljBOiQKxG/FxWs54f7/je0Duwvx3mjmLC
         84dsTwKobMLKCvaFVHARjJryyilc+jpIKCDyYZ6jNBKakSOp48ZVfdhIfol/uvygXqJS
         53rrqiGD622O6qVyty07OXkcU9ehoLX7APsk5ay7shaZKw7Oy4tK8MY1Ht8R1iGrGMIr
         5Lif7cgTbjtaXrVTici4tcqBZNN3m8l521LgUvW9i+NRGmix2dK7yLzCJKHBmXRy5qq9
         doQnIQ9WRLEZ2E20K+fgxvi72boCebAnvA76RSXxtElO7zEabXaYkfmy+r2GyrXoFDEr
         AbJA==
X-Forwarded-Encrypted: i=1; AJvYcCWHWJRRi3R0swr5EVAe0GiJZGpqQp7s+c3IjLJ1HMGjttVbPR5jTJTTx53CeTUMkKk/5Zs+dgP8OS7M@vger.kernel.org
X-Gm-Message-State: AOJu0YzBtRDD8e6fjgVYAa5Qn9Ex/NJmDiVvaYbbeIMw+hQzXbXiFqT/
	1cvFOqMxM5KRnVbMPLVa+7vtTHcn+4OmPh8A/w3GmfTov5o4jSFbQW1agNb1wNiD/3+fLf1aCvr
	oS2sH9lCt+XvB2AvE85poLFkK8ZwWZMJU4HpcDOfPzvXZIVfWqnou8oxMJvWR7tfQ5Vd7otex
X-Gm-Gg: AY/fxX7Yen0d9toYTz7ersaF/ETaKowSEmg5j4tR94I1edOhe3bDMy616wcnj15vxIH
	WOwm/lsduY58YFVOE/0rUNguyVl9/faGSNpIjUqBAdmM3KCZ6AKUg70OtV7PoD3Y0z7YJJSs9sa
	GK5THvrK/CGx94AyHVas2FFh68Bby7ffxnwQ5hBgdCL0NwMEBI9vYXeDubs4WpySa7GwwRAWoAI
	zAw8Z7Vrbp0YDIr0PGOkaXhCuxv4YnNrJM/kZgWTGNUghbu70U5nVUHpdgrpZs5zBc6KTRfr1Pi
	MqBALRZ16Uvy8uVsguAR9JdQrioCTSDiPGJ0sUc6xXIk0mhYQdXqU9NEcTYUPfLtZrpnNmr9g3O
	KkqjchGenepjhNWMIGtZzP/RYEWKujpQlwxs=
X-Received: by 2002:a17:902:da8a:b0:298:3892:3279 with SMTP id d9443c01a7336-29ec22dba39mr63865495ad.17.1765442709786;
        Thu, 11 Dec 2025 00:45:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECW+SZtciVJJlEW1vxKBUE3GmjNq67nRoMlXxJgDyCGyr4xAKUvTbfQNGpwWnMp4xeNjMdbg==
X-Received: by 2002:a17:902:da8a:b0:298:3892:3279 with SMTP id d9443c01a7336-29ec22dba39mr63865255ad.17.1765442709341;
        Thu, 11 Dec 2025 00:45:09 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea03fcd8sm17322105ad.74.2025.12.11.00.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 00:45:09 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:14:59 +0530
Subject: [PATCH v3 1/2] dt-bindings: crypto: qcom,prng: document x1e80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-trng_dt_binding_x1e80100-v3-1-397fb3872ff1@oss.qualcomm.com>
References: <20251211-trng_dt_binding_x1e80100-v3-0-397fb3872ff1@oss.qualcomm.com>
In-Reply-To: <20251211-trng_dt_binding_x1e80100-v3-0-397fb3872ff1@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765442701; l=832;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=ncT4TM0BBAdDbGM9rh5XCCjb/AfVMYnF1YPbwGMv/zY=;
 b=2xAoFbKOyo1bwOs+4X2yyjMcnP6nKFnvmRLAoKWNWHCf77xz5DEcHlonm/42r1+5t3WVEnfKm
 UwkZwE5zv3VBJAxah361OzxtBwD66GQyttOmM90TpprCsUwuRTZ8CNf
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-GUID: qUZazWXAaXdTx2WiV1ZHFKJF0mhFMGZr
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693a8496 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-yDIlTExAMyGpBI_tPkA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA2NCBTYWx0ZWRfX6VsWs0a3qvpg
 Lv6ISdpOVXbLuvCsiNNi+R+ZRUEVGIPlSFLjp/o71OSU2wwoYJXyOoqj7TVMdQzKWC0b5vMLXau
 9islQhiBB/A/5M0P553lN+UKQYQCQsNC3jOxNd8y4wTTESBZ/i1kBhu6+mhL76HqgmH+FCRkwrO
 dxAqNrAUoM6onxaQJ1F2XRCKANDqPsNt6eKIJ/dqmY9RXsNnWodZfp0dXvVk3F6IC1tsH910u6f
 Wxy+v56c3yvTVgwVIQotWVmJd3lIVP5B+KKfUga9CtoTutWcvwu0RK2RhRLeRbp9QlZlC/xguvP
 V50+HeLSxpXBUIkGcOgbwgsS2KUVrKvlIhEkmdxQpWek8UOdqqnO6xcMh3FE0S/vzffT8WSD9yF
 hnBWptuBFm6OqJpcB0ta+/IVDpOoYg==
X-Proofpoint-ORIG-GUID: qUZazWXAaXdTx2WiV1ZHFKJF0mhFMGZr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110064

Document x1e80100 compatible for the True Random Number Generator.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index ed7e16bd11d3..aa3c097a6acd 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,sm8550-trng
               - qcom,sm8650-trng
               - qcom,sm8750-trng
+              - qcom,x1e80100-trng
           - const: qcom,trng
 
   reg:

-- 
2.25.1


