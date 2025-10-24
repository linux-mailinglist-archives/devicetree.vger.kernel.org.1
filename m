Return-Path: <devicetree+bounces-230935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A112C07962
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6EA7035960E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 17:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B175346794;
	Fri, 24 Oct 2025 17:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mlTrcbAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41893446B6
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761328270; cv=none; b=ZJpKo0VNZiJd5/POtin5+bpWiY6XwfCNya5pmUxZVqywf/IjZMbj/y82EMPwK57FsdSNdyNQvheKK7/1D3zA4MYJomXrXOzWfPufXmijiQk2zoDcfKfwzc02tvWe45H+KLwlCTPr5xuotGfgHJpT0C8Z+H7iSSIyzYMxEKBWDdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761328270; c=relaxed/simple;
	bh=raBiU2TNdnYW5GXBQGKlY34qsI95KKrr7UkG+dolrPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gpkhcT13PNpMu4ARHG65ap37sHJmN6XuYWehKYk51ncuVmAhyz0gjcVQFFCoWrmMGYkDcV6eDM+L4oaS3/YzCcKe2GVqGdxOml8qSckl0t0hE3HqMHZRfZ9GlDdZkd04LQFj/7ou359OKGN9GvF+4lfsp3bsE2yS1OmQMRIGE+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mlTrcbAg; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so1531427f8f.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761328266; x=1761933066; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1HvYCNLV5CI0boyLI+MOBTwgyqBxpYEqfcX5SoAEoA=;
        b=mlTrcbAg88rvFSUlVUqQxfJFqv2xGpB0p23PZOYywlF52PN5KBGz9aHB5ezK8TveCD
         G6HMV900q9myUo5JPKG+UeophXjrvB0zJiBp08QeULmgMWh7+YKCoA1MTy/SR0OIMZ9P
         zQTIWmjUbWKz7Y3OqZTZwvEJcPSqA5LSk9q+A2ahbL9EGHoKoSmzCfA3oHfDg+oFwP7b
         hI1wrufI7qpQEMqRxNo47BB7eT3s0q1Xrl15rdyzeIu761hUJ0ldxfJfc7nP5qGeqBSZ
         qXE4qnuHNkm4WA+bq557JFq13idy7e2+nS/SXMCwZuQ+PipBONgfR84mvom7Exdm/68H
         uKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761328266; x=1761933066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S1HvYCNLV5CI0boyLI+MOBTwgyqBxpYEqfcX5SoAEoA=;
        b=roiq057BIAc0SW8lpn01jc88ODBrBOaj2kse2w6Yft5J9YYWeglcDVC5nhXjSDCK8p
         4Qaguvq41x1Lzpf+kxakQyYqKcfvgdb/bc3DypVmTAsIGjGaXSTBoMK3DNFy/vODQGKB
         6f7HxqpTg+zZSajESHZ0+7TI3PHoaKiXAjqbs1dkoH3BJblmVpoqoWYDJ2vnbImfGA45
         ifI+Ju+aMAbp/eOnZOsxMSaQC9q3i7ocZbN9SayWXSceaIutGFtgQtCwZ7AtD/rmgA3/
         UrwV6lLwDv/bZQGRF5EP6Q7qcBWV+0zJW7CkQ5rAfYmUvcvI+Ckwf+T5Z0TnX+Ki9r3E
         ctGw==
X-Forwarded-Encrypted: i=1; AJvYcCW3qQUfd/D7rvjM6Q69atF5yc/s+V5mpTBBu6RhD41PprZhMBXitVZfkciRdrskQ3k97hH/CsPKVgIt@vger.kernel.org
X-Gm-Message-State: AOJu0YwSEGqLVoLpFN+4WhPDwX0y32Wb8cS5Q0gSZmzySTnG+C7GGIKn
	wUs0CZVdENjBCCABAJcnD4fhu+2iTtHNg1EJwrDpCoxrE+hpC4YvbPu9iPgU+l0TFdsk8KsGQtf
	gNwxH
X-Gm-Gg: ASbGncv5nEq1pJA/+QHrBgNZPawd0ATEod2e8bUY+yCqHASsl7p+p9fw7z0VGjz3j5W
	c22M09aC3IZP3AgZLRaEYtlLtO4hCGviotG7eyZf9cF+7DaPXBX2iBzEoI8qc+Cdl68ZMY7OSMj
	VPtBRe4+uwbM47VhA+glyS7v/tnNvUmHzgdvLvFiD6rssQJjOfJz7MAwRbGjoX/H0sRbEuoRxzh
	j/SqUcdVc86Pgm3eiDSHQIO8EOH7XnpyPg8iIwDlULrySy0xL3vU2oAKhjLFf95caecZJsRpZP/
	dGRe0lGVvhWo2duNiCG0TKraneHybBhy59m6b3mBZ8Tfkdoypoi3kl3VE2qNPjGXQUQwYH86+t3
	PIc8YzLhtXipdsTjlsw5GEFl0H130AN20grTgFE4FjkYE7CS1r9G2I7mrjZ6bAYAPJIepVOmUGF
	YDtPeXNl8165wBi3aOFKcrhlsmbzA5Qp/j4hGdL182T0vOO8lcBViG8P8D/vDaKSk=
X-Google-Smtp-Source: AGHT+IG+eLRf8YPCXCIvX1Icim3foq9BCM0qVymaKl3/VkViHXuuqGJB+jB3dPU4X7R8xwku0ueZeA==
X-Received: by 2002:a05:6000:2f85:b0:428:3bf5:b3b8 with SMTP id ffacd0b85a97d-429907467e1mr3127739f8f.44.1761328265663;
        Fri, 24 Oct 2025 10:51:05 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e7622sm10321900f8f.8.2025.10.24.10.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 10:51:05 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 24 Oct 2025 17:51:01 +0000
Subject: [PATCH v2 2/2] arm64: dts: exynos: gs101: add TRNG node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-gs101-trng-v2-2-c2bb81322da4@linaro.org>
References: <20251024-gs101-trng-v2-0-c2bb81322da4@linaro.org>
In-Reply-To: <20251024-gs101-trng-v2-0-c2bb81322da4@linaro.org>
To: =?utf-8?q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
 Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 linux-samsung-soc@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761328263; l=1126;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=raBiU2TNdnYW5GXBQGKlY34qsI95KKrr7UkG+dolrPs=;
 b=e1UEZMWe5ikZ+mjOHJ6zxj4LdozzJBMXJBQkXRXZTR6davdh/DgSzg4n+2rpnv8ebPSQH3L5u
 GH+sVbHAu/sBN1oTyQY44OWkPjPvlcgeWGZUXH/mWGz27nhPuprVPia
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Define the TRNG node. GS101 TRNG works well with the current
Exynos850 TRNG support. Specify the Google specific compatible
in front of the Exynos one.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..380f7e70910ab8bcc28690782532fff87ca7e30b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -630,6 +630,15 @@ watchdog_cl1: watchdog@10070000 {
 			status = "disabled";
 		};
 
+		trng: rng@10141400 {
+			compatible = "google,gs101-trng",
+				     "samsung,exynos850-trng";
+			reg = <0x10141400 0x100>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_SSS_I_ACLK>,
+				 <&cmu_misc CLK_GOUT_MISC_SSS_I_PCLK>;
+			clock-names = "secss", "pclk";
+		};
+
 		gic: interrupt-controller@10400000 {
 			compatible = "arm,gic-v3";
 			#address-cells = <0>;

-- 
2.51.1.851.g4ebd6896fd-goog


