Return-Path: <devicetree+bounces-255526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 341FDD23E12
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26AD530A39B7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89E2361666;
	Thu, 15 Jan 2026 10:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OaN9SmJ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jOrJpyMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1614536167E
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472003; cv=none; b=k9WHBGJ32K+zoAuaUlKMFv+IjVSQpa2fSw8iMTmokYgyPbcQdvNkWsaa2XyPJBRwf0tumgOggSdDE4cvII524kVj1vB+FYstslQiQErsnGHwt8rB2Ej2D4TinOpVeqx1OD7+hm0PtS9e0xVK0yAMxK1CoOPYCWbUwW/I0qQ9Uww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472003; c=relaxed/simple;
	bh=M5+8O8yCjRisazGnwCs6jTZ5OFgWEq0sYZmbzH3kaMA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lNM3Hem0WV3RNcTCHB1FnqHXsh3OyphcqWneTinmHNdrP9p/hHSEsrRC0xe4oCbKBqWJpE9MnuT2GTEnIe36HB60w/Y52vhH4y16rJ00LyEDB6ff/Z+bdulXETYdGQ9NJbSeLlkIsbY6AhbmKVDxvODIi43clMTfEL+z7ZE+i7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OaN9SmJ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jOrJpyMy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g4vv1172441
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CwFjJp0lmv+laEGzitcJx/xcZfSaGwmjovEDoGkonx4=; b=OaN9SmJ/H3lNT0zQ
	yhAHmML/R7Yq/CEZIqgCDd6z9zQU69N7vXY4n0mPIz4gmCKrmFRIYlDS0okxda0h
	A1i3HKy1N94em79UsG5l0/jye9qOWs4fTun2HmFdk2HzL3FwrbMVvFTxQpSx5YbR
	hpY/fIMQHGH1hktqqzkR+zENDMFa319bxJiSEPMiR+lFRysxbKznYPKnkfRRMow0
	bbDDHtlTlIPD+i+AwdA7yXBOhr4r38laM+b2M4Qch9m2BJsJV3UpceAyHavcjBgG
	KOi3kD8iHnSSzIOTu0Yiptr9DBCN7TMV0BIRgXoLDLdaR9gsJ6v7aNp6BuW+2xOa
	9nAISA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpg84ah3w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5029b0c3786so8048451cf.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768472000; x=1769076800; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CwFjJp0lmv+laEGzitcJx/xcZfSaGwmjovEDoGkonx4=;
        b=jOrJpyMyLGehTnEUv6iXGxag2+dh3kGRGTliZjEpS/vcfasctGAKIkrObxF/6aQX64
         iK/vyOITC6VqLbIyUYyzb0yiYm3n4mlHHw1W77t67i9cbglFnV5GPko3ZHg4PuEk9e4f
         RFvTRKINBhapCJ1ZwvXasszsrFKoH0mHMq2iLXI/xvzJVcQUYDbkI/y/E/ze0X98J+3p
         4Yg7QQiXYtNpr3S7z3y0ngVIs+phaErUzJzBBVbaIMttYhiQW0sQVTdcqEyj3XDc7Boq
         /ZBBtn8Z0Sb+UzH7iOAZHiy5jKfsdNAzqcgFajuO4RetYSBczF5BPmVkmTn2aQjo/vui
         c04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472000; x=1769076800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CwFjJp0lmv+laEGzitcJx/xcZfSaGwmjovEDoGkonx4=;
        b=YshZzrc/qiCBJsk4obaI2BTyLgUtVfvF6uwR7jwwCaGEf2gr/DbqHAglBCfjWBFGiD
         G+yPTELwdEiJz+oe2v/hg9+gB++hopn4ClOW1nuYIBnTqSRRVJFmjhdLH6Id0zQwnB+6
         g8FG/65Bi1blEMTS+WOqJtHFnxUKhVxg0tbI6U24vTcN/ynzvVShjSMzNi6eDo6ikH+Q
         F1WKxVWPD0pAXIv3+VxB8o02B63TieKmqGRlT8PLH1g2epVb19T1YBqpfT4JSkqrtMUD
         n1uQ5Gmg07YXc6lQO6VXEfMiUW/zF6OYVKg1gzRAz2RhHmYliPjtm3qJOE4QVIcdQXbW
         HNLA==
X-Forwarded-Encrypted: i=1; AJvYcCVEgYjIvysEC0X+nUXM/SV8d0+Ay1Doab1ENqtZrPfoPTPtNmUy0nEX/st5Uc71UgtuWa8zoqiW2jqw@vger.kernel.org
X-Gm-Message-State: AOJu0YyL6BNq/sawwAk9epGnpF8jrg8zzUcGVfcXfRIgajrIi42rCOeB
	vIc3vKZhrv/NzCYTrklmfsYS/Y6GtWRuloPHEAeUO7c5DWjRqAOAVa+n9gLc39wkoNyUbo5jFJ6
	l+PEaC5MHY0KceiBg3X0Hr4YGHVqctHlPllT1SuaRc/ToE1Jj8eyvNjL81qkHj3JB
X-Gm-Gg: AY/fxX585f2KDRyMoa6/G8kBb7H7DScto/oGqFDdWvzeBprLyggYZv8J2gV+p549NDP
	7DYTz7FuhKMYwQpsFRNfa9w7VOMO2dsy4x648C3viFtyWQvPDXLXcOIQAlzW9yvQIpAcVG9KUV9
	nbWKizBjB1I8TS9q7XKyNlbl823yYYg7kHkCQKsVcfkeLPP+cMO22ELKINQr4T0WmiGSNdzef6L
	L3eQ/6JASzZpw1wc4xkmEa6Ap5deIaYu1sRQAlAQaJyZY/IEkyu6iXNQ/CkBVEKHayKIr/TWTqC
	LX9navkQyGk+BPi3GnnLnipP2Lg/xoCMB8yGLbuwKxL2LLoICn4jSfghD01VjrBElJJoqjpjjY8
	kxZ6KJQXVH39gptwOLHUqYAVGvQSk6ITomdcisZVaVRqcgobXRg7CaCTD4KalI8El49gxqzJgVM
	Uk
X-Received: by 2002:a05:622a:53c4:b0:4ff:c0da:5a06 with SMTP id d75a77b69052e-5014a91902fmr72422781cf.20.1768472000264;
        Thu, 15 Jan 2026 02:13:20 -0800 (PST)
X-Received: by 2002:a05:622a:53c4:b0:4ff:c0da:5a06 with SMTP id d75a77b69052e-5014a91902fmr72422511cf.20.1768471999685;
        Thu, 15 Jan 2026 02:13:19 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890772340b9sm199959576d6.26.2026.01.15.02.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 02:13:19 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 18:12:38 +0800
Subject: [PATCH v3 2/5] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-sm6150_evk-v3-2-81526dd15543@oss.qualcomm.com>
References: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
In-Reply-To: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768471975; l=1602;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=M5+8O8yCjRisazGnwCs6jTZ5OFgWEq0sYZmbzH3kaMA=;
 b=mcgnYzGzT8fjH70t6p9m5FammsN5vwFrN1bKnlE1VUTzkmRGRIeI71ZRJ0Wmbd6DwFqy10lqm
 byH7WP7ANBsDw1LBOx5pl0N8vq8ioDboHxN1RFC+BWUikx2yvoJRpdj
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA3MyBTYWx0ZWRfXyVx8p2GrwcjF
 vuCruvGgVjKb1oFHfZMKJUbypEODIVwDX1V++Hhgd/HYL7cF5duQzFoNKkc+sM05b2R4tP2t1Ud
 2Dvvdk6cCekoT8J2GwyqAQKgOYFI9nM3di1rK5DoCjYTfnhhkgOLfwCiRnADASVY+dZJitmVtdC
 zcBHbaIA063VXqZ9oFqng5crSmdLsEl6rMenIhbKniwIfa8dJZgqEv6eaNuFQ5RQm3UqOQ9GaKq
 +S7Kjgv7yP0Ggpl7QQvwYTcT4ss1N9o9pfHW1Bqz+gixX2Nz7vo863deY/IdV/kh0GboX/UFx4S
 h4+1zxFzWTHrQZ1Ctvt23QBzDUgoOZuFXpp4Wdm9i1PV6Z08QbhGjYTtuXNpq4sHfgyetNPqJ8G
 8vFOCvCTMYxXi6rPRYKvnw8g2ee0W2aIlvZ8R0AVUe5xs1Sne8wWMI9HC0pTai0nYJNAVMKb70+
 /Gnrl/DxakS8Gz+xv7A==
X-Authority-Analysis: v=2.4 cv=IO8PywvG c=1 sm=1 tr=0 ts=6968bdc1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=E-b4n2RehmlEprTZI_0A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: tsjZKVB69KJP6BslyHq_VEL9sKG7rKlN
X-Proofpoint-ORIG-GUID: tsjZKVB69KJP6BslyHq_VEL9sKG7rKlN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150073

Add the sm6150 CCI device string compatible.

SM6150 include three clock:
bus: Bus clock responsible for data transfer.
iface: Interface clock responsible for register read and write.
cci: Clock for CCI core operations.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..3472670fdc908ef8f3b3afc68ff437c0435b69a7 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -33,6 +33,7 @@ properties:
               - qcom,sc8280xp-cci
               - qcom,sdm670-cci
               - qcom,sdm845-cci
+              - qcom,sm6150-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
@@ -263,6 +264,23 @@ allOf:
             - const: cpas_ahb
             - const: cci
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6150-cci
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: bus
+            - const: iface
+            - const: cci
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


