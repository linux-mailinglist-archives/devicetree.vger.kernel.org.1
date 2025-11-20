Return-Path: <devicetree+bounces-240648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F11BC73BBA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:30:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sto.lore.kernel.org (Postfix) with ESMTPS id E1F6628996
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DBC332EA2;
	Thu, 20 Nov 2025 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c+Pg5BX3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8740731BCB8
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763638191; cv=none; b=KuwUq+cjwHPe7w8LQbJByw1a0MnwjBIlT40fh8adtMlIKurfRBkrmeVp9269ycVs7OpWZIEWTnWzcEe/5ez5qPgxxrzzIvylKMsy9iP7bPnqQvokkaDI4QKJzx7pmy1C+ft21BHaovZX9hpGwaG2VLS7ijh5TjNzz7Fi5svGzBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763638191; c=relaxed/simple;
	bh=bpikWqcBMsiIMl/jbWq2QmBbah7xAa4FAfmzSq15MIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a8PMowl1Xh/53Z8blX11nVYpolh1xOex/HpeSZAqemLxfQARm/h5kiX4Q8nZpMZUkHS0PIWoGZdphxYArcUdhPrKdvJ+31ZqoIF0A8ru2OiNnwDSMuymQMxHuV7No9zAUp6GJHzHF9HObfQZfvbm8UsqPHw2uGuy1XgOva41JFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c+Pg5BX3; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-429c48e05aeso475083f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 03:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763638188; x=1764242988; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A/NH+ihGTI+pHubvmXFI57IU6F78/DwM75gJfoYXgOw=;
        b=c+Pg5BX3PuLiYyuKuEtQVmZ+lO2kTrZQyqJ28q5rJPKlot5QynzX2g6FK/+jX6efmr
         s+Jyg/3R7VRpO3yGmheBmFvaOAyrI3NVGsQX4ea8zjVkn/nCndPsb1mxVUNEAj4omGys
         l3mpJufsx2exAZRgEWCg6IlIk/KlZZu0aSSXbJyl//RDu5sKHQQxqOC0ORj8W/iJcZuQ
         dFp+4mKrli6MZVz7OKYyQUlbA5wOTJt8K4EEiFCoi5a6ZD6lZK4ALODo0oSB1W2nsOZP
         ITPNOijIkFOm31howfBpeRtxKhjwKAQzzLntHrykPnvzclaH7TkBDnUfexIJ1BXtXXzq
         N9Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763638188; x=1764242988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A/NH+ihGTI+pHubvmXFI57IU6F78/DwM75gJfoYXgOw=;
        b=sbcTfHghUD4Its8H7c2Fqv/GdpDWlnd6bSFn+OISVtQI+k29G5K7kLDQFctrWpkF9u
         Z3+iKEtPQ5HiJUdED3qrF1FAedwgWAw8zCmBWI16+Iig1AT6mOGcsGfK7sUNl7PPKU+u
         dK9KA0eqaUvqd8ro5VQCGXkwdnaB4noxw7r1fiyCfe99BM2Lo3kAwfOi+K+Ywbd7Do5R
         t5j+h0GF5LHGw7M+J528IB4P3Rc6OsY42c7yU/kaazfoq4uEbDkFiakrKA55Tx4vYCW/
         FjQ7KCQaO5xv3KzVpQF6EMfYlkNOdH6nOqgoX017yN39cZaMS0Xqdo4bqv/pXkXejKAt
         JcCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbZ4ZtQIUN/h2L6JdNGb3c/s9XdHkKlpuMvmcYaPdiwVi9y8P5OszbKPWUt1aoRiIY8+ba5C52b5bE@vger.kernel.org
X-Gm-Message-State: AOJu0YyUOYyg2ERnRbYsfe6C6OkAE9AqXOxA6SFyvcCXj+Udggu2Se02
	5RSRYYPDs7OyQ5escNUm3Ap+nwGuFXjGWOAizxZo5U7CB2bC+mbQ2/5KhUfIO1KVaifuogslKST
	goLcedjI=
X-Gm-Gg: ASbGncsH0Rh/77NneA653N5/ZFz+g4hdTek+RmORet41/pnwzMUY5gWxExQpRbwsIIM
	n07of/8f7OeRSAvzEfizUawGH9A7Jen1ZdvmsFv9ZA7UtbUlOM6v+PX/CxdfqOEQct2pEBa/azd
	+cIW50pG0TSBhNQBl6wiF8c1tTjZyXROl6NdyqV1J3eLC8SQjTxtRCrUkVgxzjVsRI0BY8h4FqI
	lBozl0ocdnD8epCuAdISUiHNbosrUzPEI86YslClJ1LGdXoW7vNaMBsqIn9mHFR5EYIjUXzdugW
	BGySLqIpfovMMEiCGN8Y+9mthz6aNGbkQo5zkGFeE/NGTO/OcZTMEW0LmcZBSudOv1otc6tOkm0
	lFtNBysdIzCYoaSqz5TTNOXwEfE+DQvLQqm7yOHLe02AR0sEq2dtJ8egiIPsEZ8aEGR9WZkb/gu
	j/J7pMchD7QqoqZz4e2opISeVdk9Qt+O5PoKnci3O5TirhHBMF91HoQDuRsXYGoblBQsA=
X-Google-Smtp-Source: AGHT+IH8k/MswTwGLqwMNfZfEAxN7h+lqxYRkrxtUElx9mhpAEHdT/2K3XzbTjmmMw+BEdrQo+kzoQ==
X-Received: by 2002:a5d:45cd:0:b0:429:c8f6:5875 with SMTP id ffacd0b85a97d-42cba767c05mr2038488f8f.20.1763638185369;
        Thu, 20 Nov 2025 03:29:45 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f34fd1sm4961040f8f.11.2025.11.20.03.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 03:29:44 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 20 Nov 2025 11:29:40 +0000
Subject: [PATCH v3 6/6] arm64: dts: exynos: gs101: add OTP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-gs101-chipid-v3-6-1aeaa8b7fe35@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
In-Reply-To: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763638176; l=968;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=bpikWqcBMsiIMl/jbWq2QmBbah7xAa4FAfmzSq15MIU=;
 b=oujFnjxZs2wibNVC2xxzFlbBl/q8pivW+chJMAutHAp5GASDYX9ux7hOfoiFw5KOgRgKW8M/n
 DHqqDaSpRwBBr9VAPGAejPUE/N7kvAgZxqQMLNxJPWpBv35J5h4lmpA
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the OTP controller node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..4be983d4e291b3afe3530fbea0163f70c1a74671 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -571,6 +571,13 @@ soc: soc@0 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x0 0x40000000>;
 
+		efuse@10000000 {
+			compatible = "google,gs101-otp";
+			reg = <0x10000000 0xf084>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
+		};
+
 		cmu_misc: clock-controller@10010000 {
 			compatible = "google,gs101-cmu-misc";
 			reg = <0x10010000 0x10000>;

-- 
2.52.0.rc1.455.g30608eb744-goog


