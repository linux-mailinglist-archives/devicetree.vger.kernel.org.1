Return-Path: <devicetree+bounces-6049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A59A7B9C34
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 11:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 60F9E1C208C5
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 09:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2715A107B5;
	Thu,  5 Oct 2023 09:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hHpq1jnN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692F25690
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 09:32:55 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11723A5EB
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:32:53 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9b95622c620so145940066b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 02:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696498371; x=1697103171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YdLOn08HJMrX2Ou2DkH0AnNqsbvAINSqQuseGJAmCt0=;
        b=hHpq1jnNTJvqDyADj+w00PSih1ks2bzAQ2JLnQumUe5tM8tnwyzVR2+Cia5H8agxTD
         MnBzxiSrUf+q6DcwSSFBf7fVUIjAI7MQN9MB5ggTzn8le6ze6kW6HmCZgRbxxh2ImOgv
         IBV23glvYDtO+a7qul8BnaSuNgMLGK+fNQAacNBN6mcVdZLHQtZhveKpkrnM2XPY7tCP
         CKxwWsE5vwzj2CooSXTDRoTAGMbpeNKELEucG0XeK2QPjsNwu9uvgQBW6GL1nK2TyWfw
         2ZMxyPc4cej04yGjMeRy/TZSo1cfgn3KOIvOqfx4d921R85yGdVAV0e20AEo8aXncBIK
         R4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696498371; x=1697103171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YdLOn08HJMrX2Ou2DkH0AnNqsbvAINSqQuseGJAmCt0=;
        b=IHyH3j0hrPsRHtyXBPovJ7TwBQTeutgFv+3u7BdDaXh8LRTsl0jZEHAzkOD3arBf7J
         JoZ5BiwfTdggBNfGxUfuS6ECe0+tT7nVik4QWzRyLZKXmr7tiFWe/6k4eVyoEF4xa2gH
         qfSK+2wYcrAp355Yh/zbHbAyWJR69d9wpXs79yvWO3VaIZofWyQeCcRpeQ9TQ9bPhw9u
         FJgwDbDQb2HB6qbrZV7Ugd1NQYduTYhUbR4ohPi8Pe2wgb/eBg2MKXN7pymPOndu4MMN
         5gLvz0sdZb51lbko+jmftzkkA2fL5e9jhLVPIyKz9LLWoSN2zaBmgo25qt60rhcswht1
         LZRw==
X-Gm-Message-State: AOJu0YxLJVa886i5WTK3p3WzJ61PxHjnU1Q+yxTjPyhjs37btwWhZm2j
	Z8qp9C1FuZL+XyeH6Od+VFnXiA==
X-Google-Smtp-Source: AGHT+IEGiwd6GZAfK3FbFUd2UMYw/vGyBuvevBUIP7Ff7gNZtLv+jk3/3mwwnVIKtSHWpnmRH8BORw==
X-Received: by 2002:a17:906:74cc:b0:9a1:d0bb:d215 with SMTP id z12-20020a17090674cc00b009a1d0bbd215mr4501972ejl.5.1696498371530;
        Thu, 05 Oct 2023 02:32:51 -0700 (PDT)
Received: from krzk-bin.. (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id rn4-20020a170906d92400b0099bc038eb2bsm863893ejb.58.2023.10.05.02.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 02:32:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH 2/2] dt-bindings: serial: allow naming of Bluetooth with GPS children
Date: Thu,  5 Oct 2023 11:32:47 +0200
Message-Id: <20231005093247.128166-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005093247.128166-1-krzysztof.kozlowski@linaro.org>
References: <20231005093247.128166-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some devices attached over UART combine Bluetooth and GNSS/GPS receiver,
so allow "bluetooth-gnss" naming of children nodes.

Link: https://lore.kernel.org/all/20231004070309.2408745-1-andreas@kemnade.info/
Suggested-by: Andreas Kemnade <andreas@kemnade.info>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/serial/serial.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/serial.yaml b/Documentation/devicetree/bindings/serial/serial.yaml
index 5727bd549dec..468af429c3e6 100644
--- a/Documentation/devicetree/bindings/serial/serial.yaml
+++ b/Documentation/devicetree/bindings/serial/serial.yaml
@@ -96,7 +96,7 @@ then:
     rts-gpios: false
 
 patternProperties:
-  "^(bluetooth|gnss|gps|mcu)$":
+  "^(bluetooth|bluetooth-gnss|gnss|gps|mcu)$":
     if:
       type: object
     then:
-- 
2.34.1


