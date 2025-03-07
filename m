Return-Path: <devicetree+bounces-155294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A9A5625E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C3183B038A
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B46571B042E;
	Fri,  7 Mar 2025 08:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cAV8f2Y2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7711B043E
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 08:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741335228; cv=none; b=XlKhz+YEkGmyHqY40Ym0w8yqybW6GLp9+TF03uUc8QBCTnON0A9vrBbhT5YKNkThtuAXATe8yVF0f6dGuHhpNf5g2riMkeZT7zkS9uKM3RkU3gPMI7PgzZwARTre6fQ9neysDKH+hQ4e4RIccQLHB6YtCqMdpDCNDB+66kFBRzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741335228; c=relaxed/simple;
	bh=/4pBJcV9vwScMlIQ+csYLrBtIODZkNz7iKtnSIY+mZ0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Hg2A3mFIXZYDdz58C1yeowZ07OVBXYIawoZyX9pwBmX8zMIv3T2GmxTlk7fTF8pnRGwPkPVWpBY8v/ZAKeCGjeLoNVw1MPho8oF+Fgnko0m10WtvKFm8MGQPVbHd9D/IZ+f9kLRVusdaTO2pouglEYKKXo5NBWVqbPGf3FtxCFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cAV8f2Y2; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43bc2f816daso1662465e9.0
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 00:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741335225; x=1741940025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aWHK9yli0arAp4uGJvEOq4N98UZnlQVuehVV6E0itOc=;
        b=cAV8f2Y2iuvujrQ47DZZBx0OZ/nQFhOmhwVO3RpEFcIqokUQNiy9GFxWeFOUmubrsj
         QpRKGDAo8PFR9RIou7TaM+I1bkGXo1yHFdv4ipHhJpDySsb+dH7ktsmOVshv7bG3CiFA
         ePfgOL0VaRCOZbpYBRuW+OhztWRqh3rAjTKCyrC99T2XmjtWPpybsMpbuUltPT/Vs2bF
         wSeXhkk5vCmk1LsfqNaZblUGqia5/Fw6oIGA2GTumZ3AvI8k58thqBEeGw6ddyZ7vuMW
         lSHAI643TNpeDYurYYhHWZiZBiiasne98Puaouw+LvKkRXfMfcxldNWIFRyj1BaAeIqv
         Bnmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741335225; x=1741940025;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aWHK9yli0arAp4uGJvEOq4N98UZnlQVuehVV6E0itOc=;
        b=bvXpTsxynpUEBkDADFWtZtivOR5zrrc1BO/5BYIVWCmKMh/MCRN79pQEKqGyU3bSen
         QEIL1be4gNfxDPdwGhRRk5th7MTPGNXmG9enZWE4l4zrEYXFcnHuijfQsW4TxTFqofwA
         gtMtzOf43kHABxlvOu5HRZAQFAF+h1G+GI2uR0j+HiIAe6Y6v1F2qGpF/avFsnrNT8lC
         tXk3QbeB2MBG7VD8duziSBFXw409u/0Rz7csDuMlvW3j4lBXY85xc/t+Z10rfUzTlUPp
         +HWlq6lCqkO6d+D9ZdCfaBvcne9/Hdm5lp7U5PY/nbci0jGda+rzOxbrNhfnmfRbIZjd
         tMyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZs1aniUJtsa9aP1pJfBQDEa+U5hUgcwpbekcoUdZ3CFhQakO6ZkXo9JVlV9w2ckKqMrSgW7O3b/Ui@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7dhOW1k4lyt0Aavb2I66SK8b9leeKsHBRP2J48a9LO9e0J6vz
	FbsFOlMt3FG+cPw77rzqigT5u0mrGhnWn/kl9qMBcccORmw4mcs6BGEeatLD0uw=
X-Gm-Gg: ASbGncsKImbm7rUOs90JZFeB15jYYyHMFLP1eB845YMrg73fD3ks32VSo6EvADWp8qR
	oNASKC3D02/Uu3T7mq5fk8FCul5eRfvzCJCvTUnLu4JvbHOzkvY+h5wEk3dSaHBH2sHOmjo+dVb
	bqeFDcSTkeS7o9VDOqW4ovGpJDWM4GNlIwk3nYab0kYB3uAxBTRYkWfrty3Mh7zOC5sjbxNmua9
	D0Wbo19yWfhcGwMLO4QV/vbNFPPkDhY48EC95jgScqily9hW2wc592wwkZoE69P1YyNhDM9+2Zm
	U+7oPKKVtJyKFI/k+wEEkgHgvPiPJg2KpK/e4U6n9Qv+bT73WQUQBnBHWzk=
X-Google-Smtp-Source: AGHT+IF4UvKX11yMkyXP1QJeL56hmM+u2mk3Z+n8AmkHahFOQAmYaNbSy5nTjDw60A7BEfx1RoKOQg==
X-Received: by 2002:a05:600c:1d9a:b0:43b:d547:6336 with SMTP id 5b1f17b1804b1-43c601da744mr6450845e9.8.1741335225207;
        Fri, 07 Mar 2025 00:13:45 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bd91338cesm62267155e9.7.2025.03.07.00.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 00:13:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: soc: samsung: exynos-usi: Drop unnecessary status from example
Date: Fri,  7 Mar 2025 09:13:41 +0100
Message-ID: <20250307081341.35197-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device nodes in the examples are supposed to be enabled, so the schema
will be validated against them.  Keeping them disabled hides potential
errors.  Only one child of Samsung Exynos USI device node should be
enabled.  The node in the example already selected 'USI_MODE_UART', so
enable the serial node while keeping second - I2C - disabled.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
index f711e23c0686..cb22637091e8 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
@@ -191,7 +191,6 @@ examples:
             interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
             clocks = <&cmu_peri 32>, <&cmu_peri 31>;
             clock-names = "uart", "clk_uart_baud0";
-            status = "disabled";
         };
 
         hsi2c_0: i2c@13820000 {
-- 
2.43.0


