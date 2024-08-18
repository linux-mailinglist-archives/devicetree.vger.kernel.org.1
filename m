Return-Path: <devicetree+bounces-94565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E63A955E44
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C4662810DD
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F4A15689A;
	Sun, 18 Aug 2024 17:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eazQ+PWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45100146000
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002243; cv=none; b=IAg0aaAtgE04dkpywmRhpOOxV+Xe6b7lbMFsIk9bspRpSfXCE0mHO4EuXGJgZJ5Cj0VHsBnVxWqZaIyLoHKk5U8B8a5++8C61PAa+y3papq2sc3cD1xo/wB28AXriUFkoCdb+Ctsh3L9dhmbG8lxYwf0xSJ/BJi2CalmzOFCKA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002243; c=relaxed/simple;
	bh=eZxyfFWiOMWgxzgfMrHHDe1GsJVaWTRUphozkk0Nczs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mHn0dIc31vP7rjehIay2YvVJaGx/5IxIuFmTYFW4M9doD3DPqzgh/TLxX24FryJeCuLtyT1JxD1XLps2rBuuupRj7uR6GKNDYMrFDI57QEPQ9jgtFDLFpfiYviaEBoBPFJ5ory8n6KgCxIhLuqDj1n/rSE1pqwqkxIxoQjDbuF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eazQ+PWI; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42816ca782dso29524255e9.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002240; x=1724607040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hze/nH6p6tvHNE8D/sjNOf2elLJDjNOnQCuybaofysA=;
        b=eazQ+PWIYMnmwBlJrfEcOpfLDe5cNo+ULi8K5PlMLs6dh8bU/XEgSatDeCsih1oExg
         fdD9ThiPlr+Y/x2Z61dAyRAz/pR6UxOv6DC0oygW1Tcunp/F28YH/bqOBCFICde0Cla+
         N5dE1u/L3CeKQv73AaahpNueMcpJ+YQKoySIxOrgvFDXaFkPoYrVLR8zaRYUKE6iMOrG
         IdqAO7tfdE3RQA3W/CFwBCR/poE9jeJeUlT0wCNAeR/bLv0O6bcnmHIBm3h6iGH+l/wm
         t8rfUhE/2sqXxDfLMFVmjfoBMu0MFwuG7X4LdI59oBxXcqfbln/z99Tojf7C3lPwiAWy
         lAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002240; x=1724607040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hze/nH6p6tvHNE8D/sjNOf2elLJDjNOnQCuybaofysA=;
        b=nQkk6wlNNIpDlct3l3a9Cmk/ufBMFCrIODBETf9odexxxvG7zYjAXNjRnA3WqnQwJZ
         OAOb7NsgzVCWAzpEGcomy3SLNc1ClO4Br9ox7eGak9E/sMtmjAwFpDDnEi5h7wlTVHYB
         ah06WrLqS0oG/BInzZsnLlszErffZNo8Us4xfXkDiSLvI3tw0yXDdzDfz2rGMmkV90Wi
         RIu6pccU8sFHa28QngttFJ0E2gSF1GB1wHEmf8VCslFff50zOvvfyMoYVGQvC/2vcGNq
         8EW4V9DlRtOsHEEA/j8GkC57rRP/vEbjva+qQ/sXmrP7fUjLWpBGPxic6CqH3g2XmJjv
         XaAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3lnWica3eZ1ehn4DCBBsV+Esjjzg+Hqbcz/D8QaFaZ6pQaPggo6aQodbvY1aAGW02qkTx4JppEOZqXrj/reEXDdhlSE6v5bHIcQ==
X-Gm-Message-State: AOJu0YwMAdTIqGzgLSdQ+Y2vSqVUP3svPnZm5YtmgjkbUJfv9JZJX+0L
	BKYjWOt8vB7HyAWHEjkdrdBm0pD4ZroMAA3LKCIIhp3JoJSXiCfe3yc4ME3Q39leITy92K3odq3
	F
X-Google-Smtp-Source: AGHT+IEHHk1AWmAyr7jcxzOjPyrSWQ9wN+5ntefeNwrp3Cysr3LtJPZ7XWcf0YS+yO+S+WhnHLleiA==
X-Received: by 2002:a05:600c:4683:b0:428:1694:bd8c with SMTP id 5b1f17b1804b1-42aa8276727mr29780845e9.37.1724002240500;
        Sun, 18 Aug 2024 10:30:40 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded1813dsm139020545e9.7.2024.08.18.10.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: samsung,odroid: drop stale clocks
Date: Sun, 18 Aug 2024 19:30:37 +0200
Message-ID: <20240818173037.122152-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clocks property was present only to allow usage of assigned-clocks in
the sound card node, however in upstream DTS the assigned-clocks were
moved in commit 4afb06afd768 ("ARM: dts: exynos: move assigned-clock*
properties to i2s0 node in Odroid XU4") to respective I2S nodes.  Linux
drivers never parsed "clocks" so it can be safely dropped.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/samsung,odroid.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/samsung,odroid.yaml b/Documentation/devicetree/bindings/sound/samsung,odroid.yaml
index b77284e3e26a..c3dea852cc8d 100644
--- a/Documentation/devicetree/bindings/sound/samsung,odroid.yaml
+++ b/Documentation/devicetree/bindings/sound/samsung,odroid.yaml
@@ -27,11 +27,6 @@ properties:
       - const: samsung,odroid-xu4-audio
         deprecated: true
 
-  assigned-clock-parents: true
-  assigned-clock-rates: true
-  assigned-clocks: true
-  clocks: true
-
   cpu:
     type: object
     additionalProperties: false
-- 
2.43.0


