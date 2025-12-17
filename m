Return-Path: <devicetree+bounces-247272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A17CC68E5
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:26:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D2273107608
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967ED341649;
	Wed, 17 Dec 2025 08:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OnwZvAxH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C277E34105E
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765958942; cv=none; b=Vkq6pSy+NItUQwRv8FuNHcbTpnFN/y0kMjLuH6cTd4DWZRFeLJjW7Uh0BQ4iWP8hN2FjXlJNZaiQicPQD0E5Blj1+5haNZSNzEwqn4F6wJnYgpic0CBF+Eu9sH0z46wIQwQX+KYESOF8fzDjUTjYPesm4tk3Lg6/+4ZBA5hZMws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765958942; c=relaxed/simple;
	bh=WYGDwtO9eQNVNa8ZVym/Vt5s9Af72lv4Y1u8XOfzFPM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b71i3EKBeoOe9t8GWUYYzByoj64Szf4MmsXJPTXpPTEpcTUBHL6PaC6rkxxEQht3xXT1g+sliSPxqaVf1tHsnEgnnPa+/jflmR5amoHPFMYtEyK+0iXYq0zmmUVI0CmI0DB2Zyu8Um7xF4hLxxpC37FSqFs9QbHITu/EUXMo7MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OnwZvAxH; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a1c28778so59533575e9.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 00:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765958939; x=1766563739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNdbat0FCjuFkU/WW3WZpT0/Ox10m6+452sPx2EkmMU=;
        b=OnwZvAxHh53g7oaA2/aZE6FPlfIY0YYKx2wfwSo3lQza6vHpDCZ070Std54DpfK9xb
         /hSrFjvgPrHM96TzkBYgxjQTvjuzWkIYpTIbjxIZvfJLtvllO33zSlfv/YR6mSMwW3P9
         CuQgXGS/KVxwNr9Z7rsC4rXulpCMS5GR6hqYrhsAD68K1cf00N7GXeAGisR/m8+CkecY
         GCIYp9A2yN+tLq4JQBpEhA4ylx2Oo4o42kCG0JvwyOEES0KT/ZfRAkCW5mI1v4gd4ti2
         F2KSnNtPc9xgdOpmxrk16xD3t8ykkugKGnbMwlfIRporRpOle47MD564F/YX4qX3flxB
         vmNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765958939; x=1766563739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MNdbat0FCjuFkU/WW3WZpT0/Ox10m6+452sPx2EkmMU=;
        b=Pd4HGY8U+SQ1TthVcmNJC34sD04g/LJqiVzQzRkPWKoZetpoWY3BaE7LSCNw0eEdWO
         dpbXpD4I2Wnr0jBOjTj6ZR48jNrV93zmkikDUcIRECM4fUta/vV9aAN0Ee2d+XF/3Gro
         RtppoqZ4qGkTeLMBeuwF7+2goYUK168ZIHaW37ku2HkW9uxfsOey18xyKcJIty/6hxM3
         tgZ0ojhIc8L8BVjWQEa9rNbcPTvLTD86iTJnLJjQCLECQ0nL/7TWc+KMbr2kv3WtEZkH
         jDPlxyVVCn9AsiI5U6LGDfKAN3vLjRT3rMG0R3J2a1Vag/19bemCyYBLc3hBRJ1Arjc6
         WeDA==
X-Forwarded-Encrypted: i=1; AJvYcCWdvHeHxnS6S8dvUAUqZRtaTMCa58oua2N3xZ4oNjQMXbwmzAz/dFLUuA7wDhEJQ2SMQHZPaH5UT7tP@vger.kernel.org
X-Gm-Message-State: AOJu0YxyBbdOHpAIUzpK9qYWwOC9YHNq2DHxSlRagKEYSNo9CKw1Vk+Z
	zhJ3nAtLpE196ftg+Fc+jsHGA397p1J80hl3ElK4I9h2nvTe8DHRtHuT
X-Gm-Gg: AY/fxX4VGZBYDDCQMXLyBUn4aUtmLjV0g4j9Gc4cNKoHls8s9xJjvX5AROK27Ka0Ivo
	vEhjghsCEEaln5MboPzAIkaLiZ8K1aTf7KU08FYuTQOxjzfbA65yNLo747pf7tUlTM6gEiBjc4I
	8JsobkZTBuxx9ywSy1GiileAnwM8pTsE7pU+iMsgMAPih6nAyJ2S3cKRxcN0qxkUwC4lIAQyp3C
	z4sBVCZfeYxWQZWJa1E82lGKW8ojkPx7/OyREJ2ogMyXtU5ZN3IcRYlJ0JRu/VFuQJ8lLFdFOKV
	jDjXtVfK+jerbeuS53mVTq1C0TlRN4BBlA84pdqWKeNZqx0CUVODcR6ySnzhL/e7orbrPizrqOi
	MoGiEFfyUCM90jzwtCcgERbjBuTepO9SjahiDotJFrTr1LknzdOTr81gus7zgyoMccogsC8kuo2
	Ly+DkByHu+7M98IfynG5Iv8PG/goxXxkSqSBv6PNX9JShPD7OcpBMbFNz1JDedHCzZ
X-Google-Smtp-Source: AGHT+IGIniiX4z2xcB+HJw7rpdiF/WcO2McouN4KlikrTH48po4ehonwpvhBjzZMT7mg2YbyGVhW7A==
X-Received: by 2002:a05:600c:4ed0:b0:477:79c7:8994 with SMTP id 5b1f17b1804b1-47a8f90ea5fmr200713865e9.30.1765958938898;
        Wed, 17 Dec 2025 00:08:58 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1cb6a8sm25518315e9.2.2025.12.17.00.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 00:08:56 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: Add compatible string opencores,gpio to gpio-mmio
Date: Wed, 17 Dec 2025 08:08:27 +0000
Message-ID: <20251217080843.70621-2-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251217080843.70621-1-shorne@gmail.com>
References: <20251217080843.70621-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In FPGA Development boards with GPIOs we use the opencores gpio verilog
rtl.  This is compatible with the gpio-mmio.  Add the compatible string
to allow as below.

Example:

        gpio0: gpio@91000000 {
                compatible = "opencores,gpio", "brcm,bcm6345-gpio";
                reg = <0x91000000 0x1>, <0x91000001 0x1>;
                reg-names = "dat", "dirout";
                gpio-controller;
                #gpio-cells = <2>;
                status = "okay";
        };

Link: https://opencores.org/projects/gpio
Signed-off-by: Stafford Horne <shorne@gmail.com>
---
Since v1:
 - Fix schema to actually match the example.

 .../devicetree/bindings/gpio/gpio-mmio.yaml       | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index b4d55bf6a285..6fcf5fd2cb66 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -18,11 +18,16 @@ description:
 
 properties:
   compatible:
-    enum:
-      - brcm,bcm6345-gpio
-      - ni,169445-nand-gpio
-      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
-      - intel,ixp4xx-expansion-bus-mmio-gpio
+    oneOf:
+      - enum:
+          - brcm,bcm6345-gpio
+          - ni,169445-nand-gpio
+          - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
+          - intel,ixp4xx-expansion-bus-mmio-gpio
+      - items:
+          - enum:
+              - opencores,gpio
+          - const: brcm,bcm6345-gpio
 
   big-endian: true
 
-- 
2.51.0


