Return-Path: <devicetree+bounces-75439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DB79073F1
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 15:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E01F01C2180A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 13:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DD2144D0B;
	Thu, 13 Jun 2024 13:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cU8DrxXR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C72714430E
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 13:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718285929; cv=none; b=PEsE+ugjtnnN74/TgDp7Hso5S6Noq6NLdcYW/821Kl9Y3u2ga9+1QJlRntcw1p8cYMRKqCqACPQTAOdJOzKfvOvYJ8tcmMhHhYCu1fvzJH16RT+G4OqWneIbjmxR14lqlcPJoRGDN7XKUhz6CKRGCJ1CqnLn2sWZn6vvGll5lqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718285929; c=relaxed/simple;
	bh=/fq0TZJn7YnJzUyVEjTbb5vPCeq8nCTFnjPoXw1SaQg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=h+0Qg3rx81Nk2hu6LlRz6wQk+Kbz8uavkxUUQvLlcBfyXbOBXalOtw8M7Kk8TIkXbyghxPzG7yMSkEhZbsXXnHzMH449v29zARHprh9PtT7TPJ0HvQ2Dagvyzl745gSOBXBb3G3yicvDDWK0PmgX+n/tFcscnfJ9Lws/lpMZsOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cU8DrxXR; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42138eadf64so9210315e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 06:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718285924; x=1718890724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wd6mMNX2S1BvaXmQq6C+uLeNiInNteHl0yr+fj9gdKI=;
        b=cU8DrxXRkHwAOpX7MedAxaQvrfprJesu3b/7pGE6i/Lz+wdxmfD7Gvg+2aSl7fUPUg
         t3CBWltzX+crJMufGJJQSq9zjrzlFnp9lb3YH4UMzLoTG3gaRPPGKyJwx4Q9XkYDOgEt
         gW4JpD6MU/Aaru4cg2e5BBbJb1cYHOtDEEEPkbDLxvqSUxRlvYyckG6Qj4u5nCoyQaxu
         qMYNzDjdzx6ylhrW76lhNdR9YatUgVfoIhKKelc4OUy7ucw+vi5fH1Hy2Vfu1JXeLv3S
         2ijClMtsRetz2i8DwjkyP8izffH6eONFi1TUzkL3L/U4hi+gWEGpL8AXSToTBa15Cu54
         vVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718285924; x=1718890724;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wd6mMNX2S1BvaXmQq6C+uLeNiInNteHl0yr+fj9gdKI=;
        b=I2WkSKzFbwikYYIPZa/MgdSbC9COMUa286hcQ3m5I8pgg6LURH5ngEpZ1gWRWlxKoq
         i57MpRJ5awSk1hEMxLGNDL0qMcRVGQ4omZ9FkDT2j59f7LOCzbLPFusdPMNi4NK3wgcO
         iM67WOM3YeEErRDLj5xjZMxjiVE0ZmdTLpLPEUFm0XAI8dGaMrFfm7dVhj38SGmAZzG9
         HfCpqK16c4IqDGneBEU/ikcZEMYJzgKsbaaZSQG0TYBQJh5UvWMo+HXjoIDfi06A0onP
         rQsiGlQ+tNi1x3tcEc9ORPfBjqH6WLT3xayhFu8F5zoezm9mNy/1n3eWEyEuQ54DgyYO
         V2EQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRe982eqA4hloO62qxu3N3Tcm5YPW3F7kbzj6TGaWxkLsJqJ+ugNJO063KLHRa1ZmCCCNQyXDLz5t7wLEBr9x4UGiSx7pb3M7X1w==
X-Gm-Message-State: AOJu0YyvjoC1sdZFj1qVojIvjPy0V1lQpg2DWy8qaIW6VhV+HBmtYacb
	DJFSTSrVznilkMyruQeSsiXw/16TkRPr7noweh7Kwgj/XAFVyDn1ki+QfiZwdn0=
X-Google-Smtp-Source: AGHT+IFUqr5sGQRcNAQ13+nGKzOjcicanr5LrzrR9lynEZ7s4rDVAOtSSSoEI8XHdMfKIq2OgA/eDA==
X-Received: by 2002:a05:600c:190a:b0:422:fa63:33f0 with SMTP id 5b1f17b1804b1-422fa63360amr11707035e9.38.1718285924382;
        Thu, 13 Jun 2024 06:38:44 -0700 (PDT)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9eesm63435725e9.9.2024.06.13.06.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 06:38:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] MAINTAINERS: ARM: airoha: add entry to cover Airoha SoC
Date: Thu, 13 Jun 2024 15:38:23 +0200
Message-ID: <20240613133840.6949-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Airoha SoC is not covered by any maintainer entry so relevant patches
can be missed.  It seems Mediatek SoC maintainers were covering some
parts of Airoha and Airoha itself is subsidiary of Mediatek, so assign
the Airoha maintenance to Matthias and AngeloGioacchino.

Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fb32a2fe3a79..e7fd595b8f5e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1924,6 +1924,15 @@ F:	include/dt-bindings/reset/actions,*
 F:	include/linux/soc/actions/
 N:	owl
 
+ARM/AIROHA SOC SUPPORT
+M:	Matthias Brugger <matthias.bgg@gmail.com>
+M:	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
+S:	Odd Fixes
+F:	arch/arm/boot/dts/airoha/
+F:	arch/arm64/boot/dts/airoha/
+
 ARM/Allwinner SoC Clock Support
 M:	Emilio López <emilio@elopez.com.ar>
 S:	Maintained
-- 
2.43.0


