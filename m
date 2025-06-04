Return-Path: <devicetree+bounces-182666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E259ACD987
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7903218928BE
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A6728C5AD;
	Wed,  4 Jun 2025 08:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gx8HQNdP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B928C2B8
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025151; cv=none; b=cIeuGLT5q6SuOV7RGWXPTwf1m3NTzAtXqGcWeifIqbv0AuE/DMltRoaHcjZ2LxZTDUB961a2dCfRzqAXtfenlMvEQ60BwXDLAtPVgpRVhk6dwaSj3kIUPky2vBA0rnGEQycjnzw+xVCYNGIUAR+XwKbaebeKneQTbjdO14ANsaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025151; c=relaxed/simple;
	bh=UTeNsNR6bkd9E6kagWjp3E7mLctc/FLUKCEhhW/eFAA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MI4G+AClBtKW2x6YLqkx3iiSfvCL4F+D6NBBfRcAs6i5GgYBwfhoJ+B89+P/VBw1FlZRqdOTEvSbCbN9l9kuMUaosXvGCoOT1hy+ipONDCg1Sqn21Cx3yl806CD1LeBU0YKKYRgutFaIO8LC0f2fCHT7qll7AUvN6sRak2+Auc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gx8HQNdP; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a4f7865b22so721571f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749025148; x=1749629948; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=03dY5vQbZPme8BEDwalWCSn5Z4C2mE5vvXX1DN3LMjE=;
        b=Gx8HQNdPqUm1F9FMWLv5XRjZenCB8lQYU6TXXh/m2EAgwdY+yC2bh+6owZZR+T537l
         j6Huz8sVc7JH3bX/EJYwRMOCmSO4MpOeXykJy2N2cN2Haiy562rJYpZNFC/Lklhfs66P
         daWOQCckC0CTLxsWlvncdSyKSSVxskUGkmJ2yx9uRq5lvGsbMGz8J8eDSNVFsFuJinfQ
         vI/FSKH9PZuTpUExHRWUaJr/hSZcNIGvdKaA8qP7c/XudngN/A8P6tqIySJeIjmnhQ7C
         gKCIPu3dndE1IHVfPRDsd1iGVHUx66NcQuvUKgqhWnZPaqB0QE7b/Td3sp3EmPZHJLL3
         +bEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749025148; x=1749629948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=03dY5vQbZPme8BEDwalWCSn5Z4C2mE5vvXX1DN3LMjE=;
        b=uu9PnTchFVPm52vqsGwuHh9RBAP+Sy73f9H7twV27H2XZRhZpmVmRAIfmPKBMLcvnH
         bow1GUWooh9F7to02/+rLxghGN/4BPnK+zrfrJ1UhsI6/dJGKzXNvE/KH061a86lcwFZ
         Xr1QCapPenKarwtmlF8WAl1ftcaR6eAlOBofiazT+qvri2pEZYuVQjOHVMb8bCa45N1e
         jUa9y7LylyNPUKqmJ8W5Y/Zdk/jwvfJ6DtAcWkP4B8KEwHUg8EPscPd/Nftwhye4DCDz
         hhQxvX3mXJLYA7KfB3sm+7tHIknYLIUiEMlwTQzV8CHjGMeXRXU4niY0x8EEEug5jl4v
         g7xQ==
X-Forwarded-Encrypted: i=1; AJvYcCXp/vuz7xlCJHWEXBBc5o4xZ0hF5tQJ2wdq9eVjkPyGHVIo/+WGYwz7tyvpA16AStEXNRJJq11dmXU+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5jQLDx5zDu2DNLF1W7STHrt8vosxcUS+tICx/AymLghwj6qpE
	/LPTQ0nPhhg0atVSNwd7sjSlxVucZm5GQatWERVYMwtxaIY8RNg4dlKV1ssdwhZAvxw=
X-Gm-Gg: ASbGncukWyL5xYccBeSOGtKbXECbn2eyPR+A/GpRWHVMFs8p7Z1X78Qd0qEYUN7voQn
	ObMn5FtGnj9DXR2oh1jte1NWUolGpsJE/cg7MVbrie1VV4hPmcf4zYgXjs5Y+e6d7aSxaj2Wqdr
	RrFU2QNlgJ8j5Zv8khuKb9V/gIErGBOmwEMV9ABumt12awQ5L0gwb2t2vuyzZ/dfL3cMG+UYrby
	5BuOkwcQODutrv6ps60INgfWamzxx5PrT6BcZjMVF91A3owKzUsWVu1AaNjyLM4ty5lVNEwoZev
	wGaK/VI0ahvyJ82xujeW2XRcpzynA4+YX3NhPhHUOr81XsXfdZwI5miG2RF49GQH5AiTgN9u7oP
	I60DJG+bAg2NlP3bg/ZcUI4yLN6cFOuo6
X-Google-Smtp-Source: AGHT+IHHygMD2m1sGCc1XUvuJeS4axXYh1I97rA7ITp9lqsk7sbKuQvWklULTIQpEov0harJwMy9HQ==
X-Received: by 2002:a05:600c:45d0:b0:43b:c825:6cde with SMTP id 5b1f17b1804b1-451f0a8beabmr5403075e9.3.1749025148356;
        Wed, 04 Jun 2025 01:19:08 -0700 (PDT)
Received: from [172.16.23.13] (adsl-84-227-104-5.adslplus.ch. [84.227.104.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d80065e0sm198301215e9.29.2025.06.04.01.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 01:19:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 04 Jun 2025 10:18:24 +0200
Subject: [PATCH 4/6] dt-bindings: power: supply: richtek,rt5033: Add
 missing power-supply ref
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-dt-bindings-psy-monitored-battery-v1-4-7f755ff75218@linaro.org>
References: <20250604-dt-bindings-psy-monitored-battery-v1-0-7f755ff75218@linaro.org>
In-Reply-To: <20250604-dt-bindings-psy-monitored-battery-v1-0-7f755ff75218@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Jakob Hauser <jahau@rocketmail.com>, David Heidelberg <david@ixit.cz>, 
 Dmitry Osipenko <digetx@gmail.com>, Tobias Schrammm <t.schramm@manjaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Chen-Yu Tsai <wens@csie.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1200;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=UTeNsNR6bkd9E6kagWjp3E7mLctc/FLUKCEhhW/eFAA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoQAFvbC2+7Zykw5D57QD64d4BWG2frpLt2XOZZ
 blm4g59vq+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEABbwAKCRDBN2bmhouD
 10Q9EACHf/JkDhi62QNqQhaRNVguZ+FPSdOvhfj2MLfnoceXwj3LEvWxfUYe7XoBIErDzOVDspL
 GnA4vRtBT7s9mpYRTXSYEY1tX5LmD0Hy+4WDlXP0MUdAovLW1nOzLQL5eg+VY1V6dRH37QZmshX
 53UcNp/8qWKmbqd+qjOxqd+EWz3nN48ySUfiakdSLK6m9FzaLaPX9qRw6iU88TVn4zb2QX0bm5N
 z/CXdgG2tmmTkCp3koRF//qAxIFCR69/66IMJMTW/ETnDrqRIOUZ7oIyqI8gkItZg/4nPUkmDTL
 cdCYudMlt96LIjgaytWfbqo7ywsaWfOzsODJC3g3iO+fMz9rgjke60ygNa/iHKbuSP0koYDPIOy
 KIq6EiCX2M5FDhGpd9v+Gl7tLhsEifMXWwq4U/C1mcz2Vd1yHOwdbpVbIeQ/pVp0f03qecXVcxZ
 SHIBOGHl5v2g/MphoWuuBQZkCBR+Nu0hdNnoc3s+QZpfmLUwpfBIAwsop/PfN0Lf10Dp977CtLl
 MyO1jRWjh9F+YiWQyNB9aiI5hrQrJv5LAbB9tW8AlE4Bk2PIZcBAhIbCMbzoJhMsfK1wlaIFINB
 g+s8uzr67ky0b6PqT+L/FqjX18pxy4TJoO3OaLA7uFyh4XA2PybW4/cmRd0UG2zLZQZk+R+IPL4
 NHmKlTcFiNzSvJA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference the common power supply schema to bring the definition of
monitored-battery property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/power/supply/richtek,rt5033-charger.yaml      | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/supply/richtek,rt5033-charger.yaml b/Documentation/devicetree/bindings/power/supply/richtek,rt5033-charger.yaml
index 5b3edd79a523ff7f8f04cadc425c208a63cd8f85..d91eced9f5fb0b330c91aa61e0be9aa6bee52ae4 100644
--- a/Documentation/devicetree/bindings/power/supply/richtek,rt5033-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/richtek,rt5033-charger.yaml
@@ -18,7 +18,6 @@ properties:
     const: richtek,rt5033-charger
 
   monitored-battery:
-    $ref: /schemas/types.yaml#/definitions/phandle
     description: |
       Phandle to the monitored battery according to battery.yaml. The battery
       node needs to contain five parameters.
@@ -54,6 +53,9 @@ properties:
 required:
   - monitored-battery
 
+allOf:
+  - $ref: power-supply.yaml#
+
 additionalProperties: false
 
 examples:

-- 
2.45.2


