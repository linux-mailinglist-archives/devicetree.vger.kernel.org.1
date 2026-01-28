Return-Path: <devicetree+bounces-260309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ7fMxbmeWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CD49F87F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79D20300BE09
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4CB932AAD9;
	Wed, 28 Jan 2026 10:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KMX7uLwt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF3D23D7E6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596405; cv=none; b=Lbh2J5UXpixrD+RcQmnibZ/SGaH6utstJGCOhhkkjMLQJ/MUna8OQMPsLE9JlDoUCeLkLJvU3BGm5kD2v5CYZham5mKsZ1o84jiIuQMEnBS3bFAVMj/PIQ/Ae/S4XCJV2QAatXoASAqoOiC4KAMNQ/+dnLhTKB+igSB57q4e2fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596405; c=relaxed/simple;
	bh=NTt92laGBXWa0dXkz821jS+e4ktZkVNCs2eds0MYEEw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VFJMzcphrrhkuvaG6pjqEWQlTyXdynhpdlgbuuo0WxlVpDTj69c8lHGd6PgmZE2J05JDlN9iAy9Pm8LKe2FznL0ksBt7qXtCloUPzciPU5G/CYCuhpkDu3b+SSFL6ZaNWk28iGZSq7588+OYmcEM+wX6Cs67fQa60M0jOYroumM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KMX7uLwt; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4801bc32725so51257925e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769596402; x=1770201202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AZKhZYCrGgSV5qxzyJJ87NXFvhprZ3awbdJBkiwYbV0=;
        b=KMX7uLwtZsWYI2pLrnEJJgcDIeyw5blcDDBu20xQIEEKilresGm8u6520VPntGodk0
         VY+YnyRbBJmNUJ4V8I2EXLcxrhe69boFToTuRc+jL7a5dbSWVhr9ewe2QRgfGgxslqZf
         Npnvp0Xs9dbkIyn8HkILuzQG6pUdKUEU0q4z4/LDuIneJ+Do+sRQOLpqv5AlSF+YEBKt
         QNFnXM5y20abrYP2y6XPoHCpxKE3g0FN75GlIOqxsTD3rYVqyslLHEY/F0bnHUd+MPX7
         1AMZVk5JPt7pOil8yhHJf02Ujfmf79EZQ4eVXICS44P6j52l/avf5nwAUgGy1QGSV8wp
         V3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769596402; x=1770201202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AZKhZYCrGgSV5qxzyJJ87NXFvhprZ3awbdJBkiwYbV0=;
        b=dQ8Qlo3i2usL3lpmjxYfUMbGV+1AcCv7zPFWD+cX2QBPqCWk3DaEpKFrryhc/BWSdo
         D4XHPPaRUyGOnUk/7IaYBfsh2M6WPGkcmlyqxOVDEfD6O61J+7gP83L4lVcbGAUSZaiM
         H52J2jLYehX1s4KxO0Nka4L8BP+nxnge+6U1L0ilKZRQS5BMFU4Dm4OlyTQPhWRNRSWN
         dnulTicaU9cgdMcw8iN6R11REAQvKbfjk5WJoRG6n0jAeu7IR5ac3qIMac6BqWbR1GoV
         UIkmbTdR8P/HOUsCGFlloLNxgGgA8+C7a8JYY6mrDi0rfDru5Zu8hOg7glE2Jp5R/Uyx
         DHpA==
X-Forwarded-Encrypted: i=1; AJvYcCWD0tUjMdDuTLle/ivOROkC7BZS/NFCDHVBTe+w3LBfNP1dzY6D4VkGDyagVLlHWgLgsyLc4+LzG6He@vger.kernel.org
X-Gm-Message-State: AOJu0YzZqD+hEG96pImCQRnpbNZVrLhhB3AYPFMWfqbkR0CyvsK6I7/F
	BiEHE3MbrF1zL28d92T40cNdTC9sMf1f1EwXLPOyf0rT4uSEjAZEYU/iGWp9+cCZI65yYkaoMjD
	+usJH
X-Gm-Gg: AZuq6aIJFmxyoQsRTcFkxzAcePiKFwWKBezd374C3fAO3zwCOtDwJtqfOj1zkGoetE7
	BiMn6myeIm0lkhA1U0XbKqG0yttjbhkdPbuJ2fES/vrIc2py4esebgZQ3qWz41fCx4+2XyPXXkI
	TytCwsdekEiB2x2C5OwfcfpuTG+BBg28AzOsowjtgiiubk/0wZIlKhjc6RNd2KIbp2Bwr4hbw8p
	hs/oO8A/IGPhXZFZNmT99RVbNe8M482zQkSjDOtPZu644+RRfQd02u5FPQbavh2NB6QtLIPK14L
	FY3gIvTTnVTJxnX62VmL06GZST6LrqsEOLw+oBr0qxP4tFrUtZ/+KIUaBRKS1YB+OAJ8v1MNLMP
	BqeMpQ7zhg/1MuMDIXHjs11zsKtCnMoXUTLgoH5Z0ZuDyG5nuiUMlSYHOBP5XodU2SYQD/qkHU2
	iBbV9/my7XLOEeEZKcIqObYmls95cRcQc=
X-Received: by 2002:a05:600c:1d16:b0:47a:8088:439c with SMTP id 5b1f17b1804b1-48069c9ec08mr66603525e9.35.1769596402191;
        Wed, 28 Jan 2026 02:33:22 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132356dsm6241692f8f.33.2026.01.28.02.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 02:33:21 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Jan 2026 11:33:17 +0100
Subject: [PATCH 2/3] arm64: dts: qcom: sm8650: add CPU cache size
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-topic-sm8650-upstream-cpu-props-v1-2-9fbb5efe7f07@linaro.org>
References: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
In-Reply-To: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4680;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=NTt92laGBXWa0dXkz821jS+e4ktZkVNCs2eds0MYEEw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpeeXund8wUunw3MVwyirTyS3bly+wNI7jZ3rG3N/z
 oz2zRz6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXnl7gAKCRB33NvayMhJ0bJfD/
 wL96X2/VTV/Cx7MTWUbHACD6rX4oqVHql99OTq6Fxh8oU/aiPBfWx1GwpQ48hH/RCEdJcdJw4f8k7i
 d9GESHE6MXgZXaQw3KkYC8rvfYmV/jl19Npag6YSpI9/WS1oE5QktpaSIhA6qlPwPYm5TT0Ext3TOn
 3P2waGtgJ+5F5QwmUlutunVtMW59vWp+hnUL57U9atQFLe6pRbVSoZFWFOBwJVZ3h1UZs7w9isIERn
 6hbo04+VSmXAU0p6mkTloSZZP/SFCx+XJHYsCw9KFlfJDwfrJLOVQU1mRUFBFu1TgClaJBNuffYsCI
 fMb4Iq2tHFNBVz7FhtTBOAGectzWEr7B5b0JacB55o9BSuZIIKxaF6kgDQJy/1pZTvrb3dd+kYz4ws
 6z9KCZww43b9tO2lpEOl5Hcd8wJ8v/tlTyATzLLI4UUd3dCRiOLtPwnLPXm3nx0cBwieWKpa9344LP
 PgqhmkZggFT/DSXcdXVRZIE1Kaoyek74Neak9ubD7jXQY/9LH8OyFM/WhGjbMsxaXQ6//x0s1TNmh3
 KrJygiwy6FRhO/xRUzB6v+KHE1ibEvFOp1oDIHiTyPTNxsCKWWOoqMj5SmLC5bSTWNtkW8FapDzN5a
 o0ZOZn2tqxmPOfX/oCgV/B6Uzv1fzH5lDHWZus2N3tOOBAKwtFNJzp5BTLtw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260309-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F1CD49F87F
X-Rspamd-Action: no action

Add the L1 cache size and its line size (cache-size and
cache-line-size) with the corresponding L1-I cache and L1-D cache.

L1 cache is unified, but clidr_el1 register (get_cache_type) tells that
L1 cache is separated (CACHE_TYPE_SEPARATE), add i-cache-line-size and
d-cache-line-size and cache-line-size of L3 cache is specified.

All cache line sizes were confirmed by checking ccsidr_el1.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 56 ++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 8671c25dd68f..f8563ec79dc6 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -75,6 +75,11 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a520";
 			reg = <0 0>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 0>;
 
 			power-domains = <&cpu_pd0>;
@@ -103,11 +108,15 @@ l2_0: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <262144>;
+				cache-line-size = <64>;
 
 				l3_0: l3-cache {
 					compatible = "cache";
 					cache-level = <3>;
 					cache-unified;
+					cache-size = <12582912>;
+					cache-line-size = <64>;
 				};
 			};
 		};
@@ -117,6 +126,11 @@ cpu1: cpu@100 {
 			compatible = "arm,cortex-a520";
 			reg = <0 0x100>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 0>;
 
 			power-domains = <&cpu_pd1>;
@@ -146,6 +160,11 @@ cpu2: cpu@200 {
 			compatible = "arm,cortex-a720";
 			reg = <0 0x200>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 3>;
 
 			power-domains = <&cpu_pd2>;
@@ -174,6 +193,8 @@ l2_200: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <524288>;
+				cache-line-size = <64>;
 			};
 		};
 
@@ -182,6 +203,11 @@ cpu3: cpu@300 {
 			compatible = "arm,cortex-a720";
 			reg = <0 0x300>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 3>;
 
 			power-domains = <&cpu_pd3>;
@@ -210,6 +236,8 @@ l2_300: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <524288>;
+				cache-line-size = <64>;
 			};
 		};
 
@@ -218,6 +246,11 @@ cpu4: cpu@400 {
 			compatible = "arm,cortex-a720";
 			reg = <0 0x400>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 3>;
 
 			power-domains = <&cpu_pd4>;
@@ -246,6 +279,8 @@ l2_400: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <524288>;
+				cache-line-size = <64>;
 			};
 		};
 
@@ -254,6 +289,11 @@ cpu5: cpu@500 {
 			compatible = "arm,cortex-a720";
 			reg = <0 0x500>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 1>;
 
 			power-domains = <&cpu_pd5>;
@@ -282,6 +322,8 @@ l2_500: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <524288>;
+				cache-line-size = <64>;
 			};
 		};
 
@@ -290,6 +332,11 @@ cpu6: cpu@600 {
 			compatible = "arm,cortex-a720";
 			reg = <0 0x600>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 1>;
 
 			power-domains = <&cpu_pd6>;
@@ -318,6 +365,8 @@ l2_600: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <524288>;
+				cache-line-size = <64>;
 			};
 		};
 
@@ -326,6 +375,11 @@ cpu7: cpu@700 {
 			compatible = "arm,cortex-x4";
 			reg = <0 0x700>;
 
+			i-cache-size = <65536>;
+			i-cache-line-size = <64>;
+			d-cache-size = <65536>;
+			d-cache-line-size = <64>;
+
 			clocks = <&cpufreq_hw 2>;
 
 			power-domains = <&cpu_pd7>;
@@ -354,6 +408,8 @@ l2_700: l2-cache {
 				cache-level = <2>;
 				cache-unified;
 				next-level-cache = <&l3_0>;
+				cache-size = <2097152>;
+				cache-line-size = <64>;
 			};
 		};
 

-- 
2.34.1


