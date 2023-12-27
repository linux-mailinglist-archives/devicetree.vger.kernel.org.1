Return-Path: <devicetree+bounces-28597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C3181ED6F
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 09:50:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98A4E282AB0
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 08:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596326ADC;
	Wed, 27 Dec 2023 08:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="OhgjR7ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0968463D3
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 08:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6d9b13fe9e9so1884876b3a.2
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 00:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1703667029; x=1704271829; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wx44H8htv1iVw8TJk4zePfs2PqDhMfaawR5YlGnQT90=;
        b=OhgjR7psv7LjjneU0HClIkwgnQ/5x7Y5Z5KKQ7U8J6D43DOdH2+JRE2sZropdD32ou
         d6APaZ8FwWWHYhU9QO1mKZGYGO0pTbesXZB6jsdjMNpNrKgSoaTvGr+/L2cyrpggxTzS
         DUp80/vgoNxjJPcWzZFz0ULsL4QzwBfH2AZ8ebZ5H2lPElGOpxQxoy9Sn1bMegnlMjIe
         t7uDmoUFElu/r5J4Ga3+oUVOSiw6VDiJAT26RFJqonACYKd3s4PqC/EZZ+yq7s5/U2Mb
         1dPuXS2smb8QzH3LFqP8xYu5Fp0D4kWBk5bp/w3wWMPlEO7Hwx9NHoyM0JQ+WyUsJNh+
         g13w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703667029; x=1704271829;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wx44H8htv1iVw8TJk4zePfs2PqDhMfaawR5YlGnQT90=;
        b=ojPBbkhhXdLBs6oX9PIQvTI5mOJnx5m5km6o864FJHXI7NTGRRvMaWaPEYnJluorxD
         UiL8CPv/HgfZp4z2lVLyYys5cCTo56JWz8Ld5JiHD0dePbluZv/h2jhBOLJbfel0JOHg
         RN7i/k01c54nQTxv90vCNqU8q7w3ilMvwOks3M51hpWlpN8AjSfNyDqLWddqI3sM+604
         a0oxUeInGaAituk8iGLEhVEJU98pU46SgZTu72dBJvb1h3hVrQazOVh1gza7rRt0DOXs
         jndJktqazPV17sXuAoqSGsFUgoos91CkL4ZKZ2/aDej4VlyAv9wMZa7ne+SRMqDFZunc
         XuYw==
X-Gm-Message-State: AOJu0YyoXJqzfQjpWPWEviLhgaIpdPNB5ha4Zahy+hmOfk9qUf7a07/e
	YeoWA8wtgYwnBK7p9BtFMpeScyuTA1ujqneVUR0MIJWTVKc=
X-Google-Smtp-Source: AGHT+IHtbbeJJtoI+3WmeA/10kg1Xl33Sh0Jf3TPX9mNM3AMgg/fyFTeMOO/9rVr/4oKVbxlm8WHTg==
X-Received: by 2002:a05:6a20:921e:b0:194:f912:ae77 with SMTP id i30-20020a056a20921e00b00194f912ae77mr8420152pzf.9.1703667029097;
        Wed, 27 Dec 2023 00:50:29 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id c26-20020aa781da000000b006d9d39354bcsm3157505pfn.74.2023.12.27.00.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 00:50:28 -0800 (PST)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.com,
	linus.walleij@linaro.org,
	dianders@chromium.org,
	xiazhengqiao@huaqin.corp-partner.google.com
Subject: [PATCH v3 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Ilitek ili2901
Date: Wed, 27 Dec 2023 16:50:12 +0800
Message-Id: <20231227085013.1317-2-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231227085013.1317-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20231227085013.1317-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Ilitek ili2901 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms and post_gpio_reset_on_delay_ms.
Ilitek ili2901 also uses 3.3V power supply.

Signed-off-by: Zhengqiao Xia  <xiazhengqiao@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/input/elan,ekth6915.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
index 3e2d216c6432..dc4ac41f2441 100644
--- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
+++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
@@ -18,8 +18,9 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: elan,ekth6915
+    enum:
+      - elan,ekth6915
+      - ilitek,ili2901
 
   reg:
     const: 0x10
-- 
2.17.1


