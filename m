Return-Path: <devicetree+bounces-3588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 828747AF5C6
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 23:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8D6292828DD
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E444A557;
	Tue, 26 Sep 2023 21:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27834A527
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 21:48:20 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7240718563
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:48:18 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50305abe5f0so15502301e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695764896; x=1696369696; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kgLC0yegwN9YtWotfp/L618EWCW38wnqoTZssZI78wo=;
        b=hpdLunO6fT4qa5/0wHi90PLH70CTyjaZMgu2KDeHYt9goNOHmyTiL7N1eg2XQuwyi+
         x8kFeOKBSsYLeKaBEEBpwFgwt3p6i6t1xy7ogHv1GL39GThvb5IW+UeJxylD8NcQdiJr
         ZBwZ4cnqk34uPKDR43BzxC64SNufEGzlu5fO+UX9ZR4q1GtMZwYQutwxQWvxjeAbkmJ6
         LtDb28izmhHrooNTNnyYyGxfFY1JsPK+rizHKOT5pYXwxZqoCd4rk7BPWfxZn6K6M8Xs
         Qc19TFFfQDf6neLf/VAAKvozFpRtczgxyGeMhf8Z+kcbYrNs5tqaDQHyyXLdNasK5ZUO
         MfRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695764896; x=1696369696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kgLC0yegwN9YtWotfp/L618EWCW38wnqoTZssZI78wo=;
        b=BjL3of/u/xErZ3RwrmjMpWPTFcPP4MsM+jWfzK2XlsBkXsheKzcf1HsIJiwj9qOEuc
         nbIAnvo+KGcgDTnxyjfASRNUg8lqLksRL7IY0XYszLuE612qMHqmcUkbt0HVEgxukWgg
         6JOve4rRfZvljT42eH3HMM74Z4VURW3Hp+m9vuwmJATU8ouZKZSXveOrk+pW+BFOVitG
         eneeEsTLjsRjpm/Dnts3/W9zxkEKsxVnHr8d9xmuuJIxhHAUl4uIWp6HkeiTO91MopR/
         GKFhYpPlx/ZGowRcDJuVeZDNVJrodIWSFQqc+GeHkmEoXrph8gmcBHKqEuosDfDOgUkT
         MGIg==
X-Gm-Message-State: AOJu0YydfsCqZoMbKoyZQo8M8YoR9cs1a4Tgsew5ITnP8uzzxMrEsl9l
	4kh5/SRK+hWrv566FlgRcfKj+A==
X-Google-Smtp-Source: AGHT+IH5jMp1la/wAsctQFsK6FsN53AbjwItO8UhW5YsVBunUbQGovUk+oVdorH/Gl1+UnnAluZfoQ==
X-Received: by 2002:a05:6512:3e10:b0:503:446:b468 with SMTP id i16-20020a0565123e1000b005030446b468mr16652lfv.67.1695764896685;
        Tue, 26 Sep 2023 14:48:16 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id f10-20020a19ae0a000000b0050334e5f5a8sm2299982lfc.271.2023.09.26.14.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 14:48:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 Sep 2023 23:48:12 +0200
Subject: [PATCH v2 2/3] dt-bindings: leds: Mention GPIO triggers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-gpio-led-trigger-dt-v2-2-e06e458b788e@linaro.org>
References: <20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org>
In-Reply-To: <20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org>
To: =?utf-8?q?Jan_Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>, 
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: linux-leds@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

We reuse the trigger-sources phandle to just point to
GPIOs we may want to use as LED triggers.

Example:

gpio: gpio@0 {
    compatible "my-gpio";
    gpio-controller;
    #gpio-cells = <2>;
    interrupt-controller;
    #interrupt-cells = <2>;
    #trigger-source-cells = <2>;
};

leds {
    compatible = "gpio-leds";
    led-my-gpio {
        label = "device:blue:myled";
        gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
        default-state = "off";
        linux,default-trigger = "gpio";
        trigger-sources = <&gpio 1 GPIO_ACTIVE_HIGH>;
    };
};

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/leds/common.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 5fb7007f3618..b42950643b9d 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -191,6 +191,8 @@ properties:
       each of them having its own LED assigned (assuming they are not
       hardwired). In such cases this property should contain phandle(s) of
       related source device(s).
+      Another example is a GPIO line that will be monitored and mirror the
+      state of the line (with or without inversion flags) to the LED.
       In many cases LED can be related to more than one device (e.g. one USB LED
       vs. multiple USB ports). Each source should be represented by a node in
       the device tree and be referenced by a phandle and a set of phandle

-- 
2.34.1


