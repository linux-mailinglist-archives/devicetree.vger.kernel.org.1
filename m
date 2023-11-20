Return-Path: <devicetree+bounces-17290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E74DF7F1EE0
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72CB21F26349
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C718038DF0;
	Mon, 20 Nov 2023 21:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NvVOVKMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 272A2ED
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:21 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4083f613275so21329315e9.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700515279; x=1701120079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HGbaQ0HPCBmwnLgBXIo+1TiPclTwFAe7Vfce3B7czes=;
        b=NvVOVKMwdqnuggrWZyqrxgYoKOm65YfA4b6qfGaAnMRw1FBIo9aUBnVoKc/veiWivv
         rhCBLZN1EBZcNV8JrNj2SrUkQu8Fv0y2zfhy8G/hgTfZ3/dOegYKy6GIvJbVExkOcRi0
         ihCButLFWzy6p8Ykh0itPPDMs/p7zfCGOXdq+3B1Rqy4QnCOLQVJq/gueUr0CtYFmTL8
         1S1LAv0Dbm+pOR2jQwMcRkgN6Vmr1uAHTAxHF1SAbYpQkFGl6a8WPcUANiW9qfF4h8cL
         /4BcmP2AtFqSCmIqTsCkFXHoSOlQ+ITxxjyVSiooqdsfZqBdEqei0C859nSSSshVE6uf
         QTEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700515279; x=1701120079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HGbaQ0HPCBmwnLgBXIo+1TiPclTwFAe7Vfce3B7czes=;
        b=nTL2JYstkjOyGRrtrC6bIEkmfcrwaRXiczHbKXP3bUawRH5U4ImkY/kBBDnvtnmjb3
         2scee8I7sFgDMlO35R5L0luZV/P7rSpbQp81Bze+QstsoiG2V0Z/K0ArDa51Sj4HCovC
         bdAnwRdgo4zU1pq79eUOnq6+yaaYjKIoA6jJVoTkTnnqtUEOA490vsDyHCqyujJUBC9H
         TKg/kesp0lLOtGEjecLb/zhC556npsnrK9ipTLSowdBwSi5TnfZxm7RAkNNLQ39fkrTw
         mjl9Du4FSXs0V8mpv4bJIaN9TsF3cAbJYVQp6r8Z05SpHu9Senfv1oQad1E3L87thBva
         mqsQ==
X-Gm-Message-State: AOJu0YzLveHki4qwMbQ1P6F2jTaw02m2dTmZO6uLzmXBu/Pl4bnM+A7A
	V3CfvBCzZ8a6e0JOzsYI4iyiOA==
X-Google-Smtp-Source: AGHT+IH602lqzhrrd5ihv9nkycuna2+sAG626bnATZiwyxXwpH3DfNnEo9fr+SzZKcNrL/DjF/2qUw==
X-Received: by 2002:a05:600c:4f04:b0:409:101e:235a with SMTP id l4-20020a05600c4f0400b00409101e235amr6149430wmq.28.1700515279671;
        Mon, 20 Nov 2023 13:21:19 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040596352951sm19518451wmb.5.2023.11.20.13.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:21:19 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 09/19] dt-bindings: serial: samsung: Make samsung,uart-fifosize required property
Date: Mon, 20 Nov 2023 21:20:27 +0000
Message-ID: <20231120212037.911774-10-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
In-Reply-To: <20231120212037.911774-1-peter.griffin@linaro.org>
References: <20231120212037.911774-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Specifying samsung,uart-fifosize in both DT and driver static data is error
prone and relies on driver probe order and dt aliases to be correct.

Additionally on many Exynos platforms these are (USI) universal serial
interfaces which can be uart, spi or i2c, so it can change per board.

For google,gs101-uart and exynosautov9-uart make samsung,uart-fifosize a
required property. For these platforms fifosize now *only* comes from DT.

It is hoped other Exynos platforms will also switch over time.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/serial/samsung_uart.yaml           | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index ccc3626779d9..22a1edadc4fe 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -133,6 +133,23 @@ allOf:
             - const: uart
             - const: clk_uart_baud0
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,gs101-uart
+              - samsung,exynosautov9-uart
+    then:
+      properties:
+        samsung,uart-fifosize:
+          description: The fifo size supported by the UART channel.
+          $ref: /schemas/types.yaml#/definitions/uint32
+          enum: [16, 64, 256]
+
+      required:
+       - samsung,uart-fifosize
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0.rc1.413.gea7ed67945-goog


