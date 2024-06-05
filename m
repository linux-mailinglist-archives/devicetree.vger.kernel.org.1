Return-Path: <devicetree+bounces-72821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 216598FD1A8
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 17:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E06F28235E
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 15:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19424AEC3;
	Wed,  5 Jun 2024 15:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tIAgY132"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33A139AC3
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 15:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717601428; cv=none; b=Lk2M0FuWN3r8mRozd7qUnzUPcnWLi3I8fB+NNrRWQR8Myq38GoQ9klTin4MDDx3mT9A+TJwaZVzujzw/RMrLwaOxu6QdltAYNx5S056J33DzsqfQeXI3t48TwLjotIAQj8mDQyv+nqyMGNijfBS0QC/iHeEnYVk5sX2xgvIPJ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717601428; c=relaxed/simple;
	bh=iIKb8ImpcFM7FLCF2b3wsKc32YMxOrtwphavIe6/i/8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SCpMGnUMpHZHZc12lU9Tsh9SXAnB1xRcEUJm3MgBcrT5JwqrfSXTXRA4LiduR/tvEA7Myj+lIW4GbkT+IGiJEFR15h+6khc8F0NXRCs2OxMdx5fGn35pMJinGKOFbWCm9jUP6N8gRw5bijINYgsiwGiT4KdBUqit0ydhsd70D/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tIAgY132; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-35e5604abdcso688966f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 08:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717601425; x=1718206225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hap7oZQjiXolWb0TG4x/8PIYUXhCowcxT4O2Z37q7bE=;
        b=tIAgY132Mefpv4Iv4gVulmXrkYiXRuwUjIKX5gSBnx4NrZego8KgJJK2tuRLE8kNvY
         a/AoWCeyK+XBnnFoepLmMYXFKskPwkYpK+BH/SQYCKYXdgosSvx2VQU7arNXehPRxTFv
         lGtUpVr1XO9h7EfB5pWltZLdnYkCCjO/mnCjIaonWOranAHixUGAqYuWHgq9FV6Pm0qX
         l7d8/mIIew90thE2WflK9beXkhesMuBcpq7QimDHw5pzY7v+MTjwrqyuLIyHQudeWiXJ
         94P0p96MxbNa6cF4UeMF5mjFx4xXcpO40UYyaL2GUHvo5UxsgsfzDYlOoF2jsgY45fCV
         FUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717601425; x=1718206225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hap7oZQjiXolWb0TG4x/8PIYUXhCowcxT4O2Z37q7bE=;
        b=UeV3WP4NLCRqNZjh/sxgDhg9IcUYCuYOy3WP1BaDtw4zfSfJkCtjpASmAX6vtM1NNp
         QlByNlFAKWTb7e00wCob1MLtyAp+oKrGLByQPA8FW8JxCfIayfvN8YoOtP0IRkY4xyYx
         zavWlNK5p9bu2RD1hmtguznlimlgT1QADvPcmZcxCTcrBpY2BchwNij9hg61eg2vbpBx
         f4IS3mGzjh9lQprO3MTjHx7JQjBpGaoOdM9OB7H7PNyuT2rbJvRQ+Uoy/Gvq03V65+sz
         UF/SfaH7cB5jHCIu9If+uMiKoeyi5y8Ye4Ph2xR1Rk2ZrpwLBIRKrD4UjjynrOJsh4kp
         vFiw==
X-Forwarded-Encrypted: i=1; AJvYcCUotVyfeNEyPdbOXT0lkodKsDJ3W8ROOA2TYOoHSgFaiRF0Fo2MfpoqWuGzWLoOU0ccmARQ1kVt8f8KoL5qFSQ0ewRRO1q0UKG+SQ==
X-Gm-Message-State: AOJu0Yz49JsNd085h8MNp1NKCpCO44+WLo7Gal1uHqps/K/DkZ6k15gj
	lPk51lbRdQcl9vauY0rSOw1tcUxOsqjvKisGXiqgSrclYQjWFUASW70xPNtiCy4=
X-Google-Smtp-Source: AGHT+IHsc8jn6cblWRS8ZJs0k550/fR3mhgoGD0nh+Eg1QnzR+/NhFWfH0bnt6e5vLPUxqVfuXLe3A==
X-Received: by 2002:adf:e512:0:b0:35e:60e6:c8a6 with SMTP id ffacd0b85a97d-35ef0c73ffemr10926f8f.6.1717601425363;
        Wed, 05 Jun 2024 08:30:25 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215814e7cbsm26222295e9.39.2024.06.05.08.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 08:30:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] arm64: dts: ls208xa: use defines for timer interrupts
Date: Wed,  5 Jun 2024 17:30:19 +0200
Message-ID: <20240605153020.104717-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605153020.104717-1-krzysztof.kozlowski@linaro.org>
References: <20240605153020.104717-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace hard-coded interrupt parts (GIC, flags) with standard defines
for readability.  No changes in resulting DTBs.  The comment was saying
interrupt was active low, but the actual used value was active high, so
assume that the code, not the comment, is correct.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index cc305e629bdc..040a48c88fab 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -241,10 +241,10 @@ map0 {
 
 	timer: timer {
 		compatible = "arm,armv8-timer";
-		interrupts = <1 13 4>, /* Physical Secure PPI, active-low */
-			     <1 14 4>, /* Physical Non-Secure PPI, active-low */
-			     <1 11 4>, /* Virtual PPI, active-low */
-			     <1 10 4>; /* Hypervisor PPI, active-low */
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH>, /* Physical Secure PPI */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_HIGH>, /* Physical Non-Secure PPI */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>, /* Virtual PPI */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_HIGH>; /* Hypervisor PPI */
 	};
 
 	psci {
-- 
2.43.0


