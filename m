Return-Path: <devicetree+bounces-45493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87581862374
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 09:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EAFF1F23B25
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 08:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74701175BF;
	Sat, 24 Feb 2024 08:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eLhWWwk1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97DE8F66
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 08:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708764038; cv=none; b=YNcahd7tcIji+J+Uyutd30O9lW9rCjwMdXCbD3HNNZtbAMEOj+JYPF6gO7CMRjIFlifIZvdPEOCUBm4ha2QKCurrVEFFnSsqa4O1BoScuWFNJHcxdWnEqqFQXKjEHwDtiBZS2dX9oFllpRqQNhgc+QVzUBB8lF6G9c5hIfjqToc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708764038; c=relaxed/simple;
	bh=uX3vEx6MRrc9d64luCegnAYitKVAyJ5fR1QXwdhRkNo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=b+oplRACp1JQZSR1FJqKtfIvpFedfc6D+CEsvs4IF5+BqkqeVXFQfT1jMAYJnkMEXtUWy2zMVXwuozQQ9wg/Rwzprq//4VMvcrG1x3rSWFv0XlaAWQcqGeuszSCpEqyrrflUfK6yFvklbt4SP5AUgVTu5GapMFcZZZc86d0yS7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eLhWWwk1; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a3e891b5e4eso174673266b.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 00:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708764034; x=1709368834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IvJH37YjGS48Ib/CmPNjZ447xJqMURoFa7cg6zI1jYA=;
        b=eLhWWwk15LnmWBHSFC2hXMjkOSlRq07qzcKQ/Y8hMrNjMOcwo8DSbEfr7VF5CGZdaf
         t1BpzYE2WPgVc+tEGuXvrmHlHzX5RAaJoshhcZGgQpzRab4dnRRSQbviQ/7FZ53pNEVk
         SUv6OlFOHgg8N9rwudJaYqZ0euizzcqtd5vbly+Xdi9h9YsJkE8QhfyJQ/VnAHQVJY5c
         DZM2vEv6ndROO5NFMWWJEUiVomLR30JwDRV5DDb9Hahux5o8ifdUbAf4AibBe4p0u4q0
         5LcftCMU0CyXv8TVMo/Ut0tHSQqxWgWglNuFJInSLsQWt8WiN8J8C1he/PZKxJIZV/eJ
         kzrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708764034; x=1709368834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IvJH37YjGS48Ib/CmPNjZ447xJqMURoFa7cg6zI1jYA=;
        b=t8EL/MgSBIIAPmd0iaK1tS0t8l2IfN5GlwJHOdJd8FHwCZFcg4L/3yShAB3h3+3M3T
         8wKMj9a+onKRMUiMmA6XQpXh+VhI0Q3iJhbhbcgGnSlPWa9HOG/HK7gUwZrJLP1CZD5r
         4Uz1x7vlQlGYoUzgegMC1ySmirNr1KHHcWXga+gOgQSGvRUgGhU1HzmmMi2xWoXPYxO/
         YiGMHjXRtIiZba391QZg6EHgjMP8/oGmg/hcjtjMaVkbH89DwM0/2NzF5iIJmb9/Zr0g
         A/eiTBGnPie0mWoIILGLAb2PpenU7v5EsCHNkThNE0WWUHmFjQFKp7XS5bgkXWziX08U
         PExA==
X-Forwarded-Encrypted: i=1; AJvYcCURYCTEDnaKVtA+1aqp/4M4l87rTCPREDPyWI9Lg7dg6u1Uz8gTTXBTzQ891+5FdWhuspEXf4QZxWNoIReBe0YveCOGvCYlWaB13Q==
X-Gm-Message-State: AOJu0Yzo0P7HKsTgXJbLUvdXwLhw9afHhFh1EAlRnzQDmWgi4BDusEKf
	VSHKlKJPzi4E9oC/NGNs14ZuEg6xx/C/rrdXptHe69lOG6H4EDivYH+cC3YQ5H0=
X-Google-Smtp-Source: AGHT+IFIU7s+LjT6/xTV8xWct55epk/sIPhbKkNF5wKGi/vPldzFYrr5+qQKxMuA/dqrHswAQzx5iQ==
X-Received: by 2002:a17:906:3b86:b0:a3f:7c3f:7681 with SMTP id u6-20020a1709063b8600b00a3f7c3f7681mr1270333ejf.36.1708764033910;
        Sat, 24 Feb 2024 00:40:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id c17-20020a170906695100b00a3dab486a19sm383309ejs.118.2024.02.24.00.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 00:40:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: remove unstable remark
Date: Sat, 24 Feb 2024 09:40:29 +0100
Message-Id: <20240224084030.5867-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Amlogic bindings were marked as work-in-progress / unstable in 2017 in
commit 7e8634e821e1 ("dt-bindings: amlogic: add unstable statement").
Almost seven years is enough, so drop the "unstable" remark and expect
usual ABI rules.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index ce0ea36de0c0..edbc21159588 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -9,17 +9,6 @@ title: Amlogic SoC based Platforms
 maintainers:
   - Kevin Hilman <khilman@baylibre.com>
 
-description: |+
-  Work in progress statement:
-
-  Device tree files and bindings applying to Amlogic SoCs and boards are
-  considered "unstable". Any Amlogic device tree binding may change at
-  any time. Be sure to use a device tree binary and a kernel image
-  generated from the same source tree.
-
-  Please refer to Documentation/devicetree/bindings/ABI.rst for a definition of a
-  stable binding/ABI.
-
 properties:
   $nodename:
     const: '/'
-- 
2.34.1


