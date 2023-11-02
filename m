Return-Path: <devicetree+bounces-13663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1137DFB02
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 20:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 568B0B211D2
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 19:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A48521376;
	Thu,  2 Nov 2023 19:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="o4wC70om"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D77219E1
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 19:38:03 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D5D5198
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:38:01 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5afabb23900so16131057b3.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 12:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698953881; x=1699558681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+YxDo5I+EX0yrxCfQAZ7+uuLIS/24nsDH11HDbkhlEo=;
        b=o4wC70omJK4OgIHih9ZrYz6Hb9xj+3W/8ETAl29XOTiA+YdWC4rl+RMgDyXJXHunxw
         54+JKCFP+xaPoEE0UB6eaHBs/X4vJ8ytUSKUphx0GEI9D+eo+txzYr8gvPZUTWKsNbtr
         UrIYDselLKNn5SVcEJE0Ixl//fx327PKvKmvcFYHsdJEnv/yOQiAjVegdAw4j6bt3Sia
         k8To7mGqh51Kb8YjAgD6gfAzCgtN8CCtEiEc2QcSAPt70JnEgFySdMx+9pgIiboE3Mp8
         t1EYJz/QPUdXEgIqhu4aW/A8XIYNnVV09fE8+y1KAJBDLav8H/4TFOXOi5UIfrtITwUY
         ibiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698953881; x=1699558681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YxDo5I+EX0yrxCfQAZ7+uuLIS/24nsDH11HDbkhlEo=;
        b=BHKACjqATtvl+WmMNa/xZr9+0234x4yU1yLXiGKPEfPhy0C4J/HIUhUCK0o+YvidI5
         RpJXGQpvkEWfJ0NT4zrTVhQ9kCMjjhVF1ZKrbVI/MTUaQ7b7RdVVpF1fGgLx5PLheywR
         naOPzU2Ri9udF7DOo/tEqGP1FOa1/06B9PwW5o8+WGsSY7ZDiQ7NCqj9lslw+Wutfwzb
         GmLTWLuIpZeIKKOFFsXAYeu/zta7yd7U7gXNZrKANYD8aY8S5ev2rEbZXVl6dC2CihlT
         3PD2BydGqioYwQzUdJB1PyazmGuxEllddxnxz39v/GgS6uYSgnyUWmVTSjybPk860VeH
         QXvg==
X-Gm-Message-State: AOJu0YxGGN/k8W/O/Hq2I3XpLGQMU8XYNbcUq3O3QWkJ3Mjums+LjUXF
	8qluje6KlXVD7pu6pMLniQKAGA==
X-Google-Smtp-Source: AGHT+IEZoJ1CRKlf8Tf6WDEq6K7gFBAfOJEJb5tFuGsIrr/px8RBoV3gByLjxFR9jKsU8noJVGElOw==
X-Received: by 2002:a05:690c:ed0:b0:5a7:b53f:c304 with SMTP id cs16-20020a05690c0ed000b005a7b53fc304mr883688ywb.37.1698953881190;
        Thu, 02 Nov 2023 12:38:01 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id a10-20020a0ce90a000000b0065b260eafd9sm30654qvo.87.2023.11.02.12.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 12:38:00 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH v2 3/5] dt-bindings: spi: add stm32f7-spi compatible
Date: Thu,  2 Nov 2023 15:37:20 -0400
Message-ID: <20231102193722.3042245-4-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
References: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The STM32F7 SPI peripheral is nearly identical to the STM32F4, with the
only significant differences being support for a wider range of word
sizes and the addition of 32-bit transmit and receive FIFOs.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 Documentation/devicetree/bindings/spi/st,stm32-spi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
index ae0f082bd377..5754d603f34f 100644
--- a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
@@ -23,6 +23,7 @@ properties:
   compatible:
     enum:
       - st,stm32f4-spi
+      - st,stm32f7-spi
       - st,stm32h7-spi
 
   reg:
-- 
2.42.0


