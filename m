Return-Path: <devicetree+bounces-17167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 232627F16CC
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDF5C282603
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D191CF90;
	Mon, 20 Nov 2023 15:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="WFjR3VcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D868AC5
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:11:02 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5079f9ec8d9so4663754e87.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1700493061; x=1701097861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qGaqt17Gnv+JzAAAylZ0QVte6wEO0Ns2QmRGqJ3NeHY=;
        b=WFjR3VcQeOuEjE4XZ4jdKWymEZjI4ELRQxKV8yZ8FlQVpajtLz1F+cvo3pDutWDXPv
         EMvcwGg9e5k0qDuaMSg15OHGmLoZ/jtoDilzIQLCf19EBZxqOjg9mtYZdllmCjlpsoU3
         gZbkFKQwavejwM9eOlkqHE/kbIBgJWmQ6H5No=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700493061; x=1701097861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qGaqt17Gnv+JzAAAylZ0QVte6wEO0Ns2QmRGqJ3NeHY=;
        b=UFdQnqculNXrHgLbC7vI5uVFjnxXvrtwhS4BBfaYXzkhQJHU4tBmJ6dECuZel7vTxg
         A1AS8tQ7bYLT8fyfeF1IdFBPbF7qzuxC/LdGMi80yYZp5Z6GrGTOCeeaiOz1HZXx25Jg
         xW0Y/5aehTYr8Rq1nsLdlcbs7VaXTTxZir9h3XU6VcXNcp6WGaWCi4ueLDNGznTs5bCI
         IvOzAe/rlGNGLkvHG/FGRmg3vtdQljOegY3bsLgSHbSH6atU24PFdsHoM6Z0bgRDEWnC
         EkrIB2MPnDKiXPnQvAN8K2HA+eKy3g0y35Q+/3xT3sChPGU+GBmEuHUOWL+qNig8RNyE
         UIjg==
X-Gm-Message-State: AOJu0YwLEab/m6Otxq8OmvjA4kRBcC6L7ddUr1BmtlhFrRTahZEbhEgE
	XhlRD3X0ORuln74PtEjRcOZyEQ==
X-Google-Smtp-Source: AGHT+IEEXshhA8STNvN4Eu/EGpdVxChmNz76LrdzefD9n03HKHJTFUi3hysWY3m/wS+1UdsfsGWhPw==
X-Received: by 2002:a05:6512:3d06:b0:509:4730:9103 with SMTP id d6-20020a0565123d0600b0050947309103mr3354120lfv.6.1700493061064;
        Mon, 20 Nov 2023 07:11:01 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id g29-20020a0565123b9d00b00502e2ab7118sm1207444lfv.50.2023.11.20.07.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 07:11:00 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Lukas Wunner <lukas@wunner.de>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: serial: rs485: add rs485-mux-gpios binding
Date: Mon, 20 Nov 2023 16:10:54 +0100
Message-Id: <20231120151056.148450-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.40.1.1.g1c60b9335d
In-Reply-To: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
References: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some boards are capable of both rs232 and rs485, and control which
external terminals are active via a gpio-controlled mux. Allow
describing that gpio in DT so that the kernel can transparently handle
the proper setting when the uart is switched between rs232 and rs485
modes.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/serial/rs485.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/rs485.yaml b/Documentation/devicetree/bindings/serial/rs485.yaml
index 9418fd66a8e9..e8136c7d22ed 100644
--- a/Documentation/devicetree/bindings/serial/rs485.yaml
+++ b/Documentation/devicetree/bindings/serial/rs485.yaml
@@ -61,6 +61,11 @@ properties:
       the active state enables RX during TX.
     maxItems: 1
 
+  rs485-mux-gpios:
+    description: GPIO pin to control muxing of the SOC signals to the RS485
+      transceiver.
+    maxItems: 1
+
 additionalProperties: true
 
 ...
-- 
2.40.1.1.g1c60b9335d


