Return-Path: <devicetree+bounces-98935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 505829680F7
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 09:52:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFE991F21D88
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 07:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDEE17E8E2;
	Mon,  2 Sep 2024 07:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ULcAEcr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363E8176FD2
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 07:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725263549; cv=none; b=c6OcGiWLmC9OBrFoMutFT0QLyhsC4mr+ZyNj2h/1j18Y+awVvSn/qmTkR8oqlyB4Ls6wLDmkpZU5uXRgTKvqg20tVgaJ0/8ySGMJHikKVgE5AsAI67qqlBsLV9rYu6wr57bOP7AEUUg40xOPqjaWTAzFi135YWboJtz7EFmL+6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725263549; c=relaxed/simple;
	bh=VtLOYfIjN0uBhjbISwMXqd8736p/pJMKe+ytQyFy1dU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=reMA4gXSoD59W458GL+SijaeebCD7zEA/HHm8Uwi4qNST2qFr9DeRyiJt7NDwmTL/fWW27pnQlwgZLGjtSoTWsHPejVbXWm0TN89OArhXRlGNznMjCs+53Zi5T8lvff+shKuBKoh8aIzM2Hm/jySNPQcIhpF/u+YD3mx2TZHcSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ULcAEcr5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42baecbd4fbso5537955e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 00:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725263546; x=1725868346; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDHe7Orx+Th2PDmF7/6guu7StnLFN0wqEj3VbhImekM=;
        b=ULcAEcr58fCl1J0VkbvXyg5QrcISTKBpnOMijZzYRVuHnMGq4Zq2RVzoJK+TxbvK17
         23fKFHXCNhBCjWKQbh+fISg0kXBwegS8+cPxNm8IT1k6HfZEtuGFIubHsgFCRx5pLazZ
         ZZSPg1WBle17mCkQ7PnnHQaCbcXU+HIzphPjSPCPqMGXXfXx5kReoLiTVcElLYSxQxbR
         BwfdNvw4mmRRH+IVoe4X50GYeUbKBT47J1IZcL1KRvW+UZ1MfS9tZJsyHWBRWKCmnABr
         qi7G/zswJV00+1Wd55/icqqzrdv3J0XQ7XY9aqzSIIMZldXIJPRO0Wzzj+JJ5gQfZ2Yg
         VleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725263546; x=1725868346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDHe7Orx+Th2PDmF7/6guu7StnLFN0wqEj3VbhImekM=;
        b=EfxK/cvH93xXfk5F1InbezaIbWkngNe1BoIBYSvY3veRBu86IRyfJ7zd0b4tfxcBRC
         SWiNt66/NrBx8NN6h6WhvCFWDBal3T9ZKpEf8KJb++wJJ7NFfeaD0SVsWeXAm+4AoGl2
         j2ZtC3CNPiZ+f6BKTNZ8fAmaUC7W4Dn0WDAhMaYhnz2pU9DDY4YR7rnEGGDxFXiLE7Zy
         9wdxN1lLkQAXqQKdHDsTPt0xBKVm1Se/abd9B6EMwsOVppfG6DYvDOHdM4COl06d7Jzj
         /uDxn1aa9/m9GEsy5o1WHiAJ87P2xuipgecYSuItgg2YpbjSpLA9FBQewDr3qM+o0pff
         kG6w==
X-Forwarded-Encrypted: i=1; AJvYcCX5lOvn0a0Ipop+BTqFSUksfKtQNjagmVIFE27zvkAx9Fk7zC+JPzxos4bHT+Prir1OewuUslS8PhE2@vger.kernel.org
X-Gm-Message-State: AOJu0YwFCpcM7pjv20Z9RGQ8mAj74TMp4kO7jB7WcZaMxeWB9xLbVyM8
	S3k820kVLbRkJx9TAspIBBqEpekpXqg7IpZBSGnYsnr8SITMKaRQJ8wqiG6gKuY=
X-Google-Smtp-Source: AGHT+IFT8sUGSPYAj9NIAeo7nipApgLXpvIfSZw4LjQwp9teCQB3AmXKax7EgOm2S5MSgixPp9Akew==
X-Received: by 2002:a05:600c:46c9:b0:424:ac9f:5c61 with SMTP id 5b1f17b1804b1-42bbb43423dmr36953945e9.3.1725263546383;
        Mon, 02 Sep 2024 00:52:26 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba641db12sm164768265e9.35.2024.09.02.00.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 00:52:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: arm: fsl: drop usage of VAR-SOM-MX8MM SoM compatible alone
Date: Mon,  2 Sep 2024 09:52:20 +0200
Message-ID: <20240902075220.27971-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240902075220.27971-1-krzysztof.kozlowski@linaro.org>
References: <20240902075220.27971-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Variscite VAR-SOM-MX8MM System-on-Module cannot be used alone
without motherboard, so drop the usage of its compatible alone.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1abdeb804468..e5f982fa750b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -953,7 +953,6 @@ properties:
               - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
               - toradex,verdin-imx8mm-nonwifi  # Verdin iMX8M Mini Modules without Wi-Fi / BT
               - toradex,verdin-imx8mm-wifi  # Verdin iMX8M Mini Wi-Fi / BT Modules
-              - variscite,var-som-mx8mm   # i.MX8MM Variscite VAR-SOM-MX8MM module
               - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
           - const: fsl,imx8mm
 
-- 
2.43.0


