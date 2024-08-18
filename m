Return-Path: <devicetree+bounces-94561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B1F955E33
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91B56280F64
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7472415AADA;
	Sun, 18 Aug 2024 17:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mtPKZwPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D7815625A
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002225; cv=none; b=qP0U3WYNMCjyynQQVTbb/zfzI7ixIL8G8L9uUC2mZfZgPP3jV9yZrbNqSvoUDp+MskMsQJtaf4n6/jcSUj1p3TXmaeWgkUYeR0Vdz3q20/Zpi8qUK1uYWeCzEFDUHZfPmEw7V5wy6/Fxpmf3lGEzifc+NGwHiBuo5wlM4npVzsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002225; c=relaxed/simple;
	bh=RYClEsujtW4S94dyvDLYYanO3sNFLNhXP2WVnH+jFRQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aVsptp0GUccQ8Uzr1JiV0masytPHzySJJDb+pzXki4UZTU/gCR8n8vg4pdaq46rmrrsprh6J+mZxMcx/2poTd0T3bbZa8hZGSp6CdRdRz6+IoqJsoJ+Yjv58CabmomeVgRN8uJ0J2lHvuEBWbbkkf9Wsy/Cvja/CMEDIcHi0tws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mtPKZwPz; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428141be2ddso26906885e9.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002221; x=1724607021; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiRlsM6vBlOVTpadv+7qxVZ/+NvHjXgHFTSiZbF3Lk0=;
        b=mtPKZwPzZeVt5FwqSoxw54qKVefPFMi1Zr9JAvTNIXyR3VaTbXQGzi7oAUPdhsnibu
         TGWZbpEafNdhYqmDmPVegXUJYez9KTbLlUaaXRaGlOqIUptYa67Vijtt8wWMZ+n5x/QV
         rcSV3db2gl/XAlP4D0JOaFgAoWvUdp6YC6E8ecBLDWjvPj4lhFnhUqsOCwDujqmmi7b+
         GOO03dha7sgF7VW4VMWl+r2uSPKVj7V1nWymYdr1XOXH5lkGxYh9A/qjfzSuAp2HGwE0
         qZTshDNPvjt8Dorn7WnvZCN8yt4D2EB2TwYDILephmEXGWKdPyf4Jwm2zqOtMDOtO2ku
         jQHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002221; x=1724607021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aiRlsM6vBlOVTpadv+7qxVZ/+NvHjXgHFTSiZbF3Lk0=;
        b=BYISXMKA32GhzC1rlOLR3HPGdbz8a4CoUs9mZYKx5YnD3MsvNQ6voi8SotypN/pBFL
         SRcv9OX+Wx9cfvY2XVlR1oQpp/RtuTWWCzMjj8jUGNfAfftCUd49IGI/FCGs/+DjgcDz
         CCmeuz/XUPKmNLd7QDlLdU9gCmr+VLe79Wku62wirBUAn7CtBH4+RAdE+Sk+/jzsUzuR
         NFCZJotX8k5ae/OV1t81xwVWBZnjOlby6/SHd5IQew9Ppo5bnQuGcnT86Oe4p9tzFr5m
         WSGEAkOQPul3sjA/DNbJV7bIPjCr0YTfegApr8xXWzVwZy+SPYlS9T6KFKkmNNfFQvXC
         /vXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwmx5aBlSeknyRUJr2pWZqR9cKS+c/7VSxDAET4imkInrg3QY2CnyPDnWDAA0IsBmgN4HK17a7QjFE+YnWQl+ZUTa3CQSxiQ5qNA==
X-Gm-Message-State: AOJu0Yzk0pWVyr7JRGtZ06hNdIwJPpPbr4VkSns/ndbxSJojZPu4+1cA
	ld8uGqcGQtkLbOEtAPNfLusyh/vgmD29PWmelYJxAYLsR0RAmIE8ubc3esjerEc=
X-Google-Smtp-Source: AGHT+IHlDcGvSSlmSoCOZtAKT2zYd9WHqBA3yrLaM9pCakhIJQ/7iIvhr20DdpvwtiU7bWUoZXaPcA==
X-Received: by 2002:a05:600c:1910:b0:426:6876:83bb with SMTP id 5b1f17b1804b1-429ed7b8ab6mr53592135e9.17.1724002220484;
        Sun, 18 Aug 2024 10:30:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] dt-bindings: clock: cirrus,lochnagar: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:11 +0200
Message-ID: <20240818173014.122073-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks.  Drop also redundant assigned-clocks properties, because
core dtschema allows them if clocks are provided.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/cirrus,lochnagar.yaml         | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml b/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
index 59de125647ec..ccff74eda9fb 100644
--- a/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
+++ b/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
@@ -67,9 +67,9 @@ properties:
     minItems: 1
     maxItems: 19
 
-  clocks: true
-  assigned-clocks: true
-  assigned-clock-parents: true
+  clocks:
+    minItems: 1
+    maxItems: 19
 
 additionalProperties: false
 
-- 
2.43.0


