Return-Path: <devicetree+bounces-223606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D201CBB87FC
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 03:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CBB94EAEDB
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 01:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C992A218AAB;
	Sat,  4 Oct 2025 01:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bpId+tUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A498218ACC
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 01:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759543006; cv=none; b=HaEKalEvo/w7FmXjc8r25b84ZqIye9MdIwssSM1SBHM3FL2U9vUSek5yI+BREtPHRO3A6U1VZUWUggvC1JAqFkYvyDIFjgKulmh5T4ru0SftguEWHlrvhmogR5uFBENJFZfLnenRosA0UKo0U9lPsR/2L9EyOelbIyfEDbijhQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759543006; c=relaxed/simple;
	bh=9CQjQxJsutgII4B2do5o6K9A2olhaHHOafQzFjMKQdA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=twOU2wXar92ggTB/Zgrgwj1s08Ay8bV4lhKkHg9kEiZNJ1Ng2J938ZhuliMUcYgbZWF2sz4VPlRuHpH6z8qyzygHrZ4/IhiWpmhTFYojIwWKW2NCJzKwzhi/ZnmKWXwn2Hkz2qOzT4cFGdI1/oBeaeomM8YbPZnXe7mOd1xPbhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bpId+tUX; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-781db5068b8so2477194b3a.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 18:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759543004; x=1760147804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rK2RcAWNzYWhY12ieZZB4A3XwiOU33LzfFmZAdexkYc=;
        b=bpId+tUXTl8vYzIuKZF1w6YRzWBenvh+eBEOoxgv8eZSAKXelAiYBya3G29UMr+Z3i
         /iY457/zQerzA33mBRloILpLeBnCE7c8BkC24twMFupEz23aztG3bNavwfKL7VwIEALt
         QOfa3SLpe00jOollc88LW2j8EFrfqYT0mCEwCGUaS1dQFWA6iGtgcXdog6BfeX7EHNI/
         1A+vQV26SYt0b9wmrtnEMewT1VLyyFmsokyxD4OQ18Lla/xSU0BJQ5c71LfaVH78UjKk
         4PlQ6scdas70tUhDcWB9BzzCVQWgLo7ERYQCzjPwnKjWaQ9AxXz/7ftM4SCTxQTiUi/c
         HdNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759543004; x=1760147804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rK2RcAWNzYWhY12ieZZB4A3XwiOU33LzfFmZAdexkYc=;
        b=SJB8aJweX5NWC8Z2ySqsXKOuOwcjrobjZxU/BS5dYeStqB3k/znqW55KLlabtra28U
         oyben9GTDs98qgQ6dwTlYmHst1O4XS+mAEaew8NBDYeFUwOiY7Hu7t+9d5Dh/3ZSMmwF
         wiUY7VrtQLm/O1VKhSD6qhIXJjBHUPjp11JbuGMq2yQDc+gSDOZISViCUjIWdzSAy6BG
         QlyaoFYEM2fbKiiFHzvXZqeCVpguWcH8DhO10HOjcK9nkof4Z79e4cMi9w9rp+8glRkb
         GS9t/zeLd68rjWY26P6/rtR0SY3YM0c07tBIEg99UzXfV7xkGBNYfzxoFMPcvZMqLKae
         LiBg==
X-Forwarded-Encrypted: i=1; AJvYcCXt+/WQ6LC0Ke9KUgT0Vl+VJ0+vI/N5uBC9qj0rMWESfrWhdHx8Ar55iiU50m5tMQJMO2pF2EaL9lY7@vger.kernel.org
X-Gm-Message-State: AOJu0YxWoXUOL9p8uf81V6LDNUgn2ocYybhVrqKWHJMQhhfBQac28z65
	MyiABN7vF44dVAKZDbJx9/4leIX7GNCHpWOB8J6yBDzA1mgGj+BX5XsT
X-Gm-Gg: ASbGncvGzcFE1VkRYjWyCKMzonxIEvmjJTu80IzXvUvTyVaQOlMd9j0lLcHt9PY+D7R
	e08RE7tmz83js9bmWkjF0OAS3pWKQEW6Vz+wgrY/HScPLVqJGxFS51TWwqaMbLvPJ/fTd9N4AJ4
	ejTLX1pQWLhHyzSpEQpbLsbC5iKRSDgzSdcQ3Gmf0rVVxsbrxpTrL0xTHsEwicS5XT33yK2pnKT
	HuXDJmqjaEdCPEv32AW28Z+cMtG9VVOKOF1PuC64IOoHRbd1uZX0C+fIg2xrheNciiexXk276MP
	WqvU6ZiwyXsctmfd9onhk9G2h0Q6Y9hVqdK9PPFfZ/HdtRkudwSdKg+x64KpAWRPD2jbZgdw3KG
	rQiY6mP7F0PwPx+o6UjgIvOMBVB1d85UPrUbGjOy0l8b0gBN1J7SEKqTTjZ02mkTjSA==
X-Google-Smtp-Source: AGHT+IGLZrZ8Iq9T39sC4XilbTFNhZxJLoEviq80CK6g39OUwc/4C5+482Wqw0HUfzPUahIppnFM0A==
X-Received: by 2002:a17:903:ac3:b0:267:9931:dbfb with SMTP id d9443c01a7336-28e9a664f4dmr62292785ad.54.1759543004557;
        Fri, 03 Oct 2025 18:56:44 -0700 (PDT)
Received: from Ubuntu24.. ([157.33.197.131])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d134859sm63197485ad.57.2025.10.03.18.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 18:56:44 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH 1/2] dt-bindings: iio: max30100: Add pulse-width property
Date: Sat,  4 Oct 2025 07:26:22 +0530
Message-ID: <20251004015623.7019-2-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251004015623.7019-1-raskar.shree97@gmail.com>
References: <20251004015623.7019-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MAX30100 sensor supports multiple LED pulse widths (200us, 400us,
800us, 1600us). These settings affect measurement resolution and power
consumption. Until now, the driver always defaulted to 1600us.

Introduce a new device tree property `maxim,pulse-width` that allows
users to select the desired pulse width in microseconds from device
tree.

Valid values are: 200, 400, 800, 1600.

This prepares for driver changes that read this property and configure
the SPO2 register accordingly.

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
---
 .../devicetree/bindings/iio/health/maxim,max30100.yaml      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
index 967778fb0ce8..55aaf2ff919b 100644
--- a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
+++ b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
@@ -27,6 +27,11 @@ properties:
       LED current whilst the engine is running. First indexed value is
       the configuration for the RED LED, and second value is for the IR LED.
 
+  maxim,pulse-width:
+    maxItems: 1
+    description: Pulse width in microseconds
+    enum: [200, 400, 800, 1600]
+
 additionalProperties: false
 
 required:
@@ -44,6 +49,7 @@ examples:
             compatible = "maxim,max30100";
             reg = <0x57>;
             maxim,led-current-microamp = <24000 50000>;
+            maxim,pulse-width = <1600>;
             interrupt-parent = <&gpio1>;
             interrupts = <16 2>;
         };
-- 
2.43.0


