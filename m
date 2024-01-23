Return-Path: <devicetree+bounces-34063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4618F838913
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE88228E315
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20DC857338;
	Tue, 23 Jan 2024 08:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T9PZtjFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E0256B65
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705998799; cv=none; b=iwr7ZD979np227viYwIVgD6bCvhYbr7ZIcTAQFAFX7frX36A7dGOEdbShSD5Pj1zCl0rFzYm6uvkn/EE8vhkhBd+MJE+/fdZOMxQcBMwNh0QvExUaXL8RoO4XPSnDi4pwEl6hElfnKtC/9Sj1xaRC+zykpZN4V0BIWaELcV+CD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705998799; c=relaxed/simple;
	bh=kDMmadRxintZS6t1DV61FQhbbc+OzjzbJOZGeGQUUKU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=A9CSwxy5JXqq9W3oBt5Kdf4lKL9li0rW/+zvmQ/qLp2mjevYNp05dNBVFTMMIUVjlcNgG+Ho8wI2PGUqspYBR8gQVKxVS2Wz0XCVqZwvWcQKDOT/6RaajlybvAHQd+kB8IoJPpeoWhXHoKIjlmn0bub1GBgg3W+DLPjaqAG9Enc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T9PZtjFQ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e5afc18f5so44287705e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705998796; x=1706603596; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uTdIy9kw7huiAlKreeQHxmogKUaEv8cQHVxD7B7SDgk=;
        b=T9PZtjFQdsneOUi4t6ShhJ5DSC2ep2wnVAdQdcoIW5RifFRVVCF2IcGu51+jwSKBIu
         ZbPvAdgoIDupyf2Jnc4MtiWFNxlr0b15I9rj8JdVkosN1Q0Y/TugpqJCr+VsCx9/doPj
         nPYqr0a2t3AVL+V2N18aF0AS6QSTGGSNNgrAL7iF1nvVuGE1CjUcVcGdUzmu6NzYjyvW
         lV25dcepqD7oQOvHFd+9otxCh5VHT4uqpb65JJcv8ABhIc3CrcYAIaG3zLnbIhV5hKe2
         hZBc5UqJIF0tcYSigQRzM3wgFlJjIZTuwPcyl5pSExe5kl/Ft89ZHy2MQb5EH1iSmC1f
         4JJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705998796; x=1706603596;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uTdIy9kw7huiAlKreeQHxmogKUaEv8cQHVxD7B7SDgk=;
        b=vhD2CfiRoexBOenfmxDqHujZB9IROJdcSg3FdxINP7wvTabsb6/XR8g7o9pxO+W9m8
         Kk804NVtZzscomf7XIgC1lpWAGYDosvwaD0EyeVDnbkdaP1B9yqTDSvmBtOhnSHsia2d
         Suag3LKrXe9pPaAr7ogXY6v0An4g2kVZmLki4LARDzunjpKQloVItiM4yxovPKk2jFu9
         DTlT1ZoLjsap2Y1YfAa9gEksHNooyiHTZ6Ctw0BQYpBIEJZX8h0sGgSFVXUR43dHLgmg
         6AvD0DtldZoxAeSQmmHBP1QTIEL/JMnHjhXz4xSZ2CaOMUtXwfLh5Y0NO/lpbSGVz7FP
         0ZqQ==
X-Gm-Message-State: AOJu0YyDVD0woOAIWeqFgc9f9kDJl6fXxWnnVaPH6jLaCCgOyFgw/IGb
	b9MA9SBJkUQd8w9qgsAT9yoULuNEnJnZsqVFUZBx4pJAqkKCpBJ3qsEWqkvax0kKj8Z6pFQOf3Q
	0
X-Google-Smtp-Source: AGHT+IHm2dY1rdXAOZFlkmyEhHsd1l1Cn1MSfAttt7I3mRoU9XT/iQGyXYrfMmLXOVHNCmbUjmfqAw==
X-Received: by 2002:a05:600c:4e86:b0:40e:af40:b4da with SMTP id f6-20020a05600c4e8600b0040eaf40b4damr324145wmq.26.1705998795679;
        Tue, 23 Jan 2024 00:33:15 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id w18-20020a05600c475200b0040d2d33312csm42145654wmo.2.2024.01.23.00.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 00:33:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: timer: narrow regex for unit address to hex numbers
Date: Tue, 23 Jan 2024 09:33:12 +0100
Message-Id: <20240123083312.20808-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Regular expression used to match the unit address part should not allow
non-hex numbers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/timer/arm,arch_timer_mmio.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
index 7a4a6ab85970..5b9fda2a81e0 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
@@ -60,7 +60,7 @@ properties:
       be implemented in an always-on power domain."
 
 patternProperties:
-  '^frame@[0-9a-z]*$':
+  '^frame@[0-9a-f]*$':
     type: object
     additionalProperties: false
     description: A timer node has up to 8 frame sub-nodes, each with the following properties.
-- 
2.34.1


