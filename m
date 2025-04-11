Return-Path: <devicetree+bounces-166159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 423A9A86758
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 22:38:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31A1816AEB2
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 20:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BACA28CF6D;
	Fri, 11 Apr 2025 20:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="viIHxl+S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1B0280CFD
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744403917; cv=none; b=WFzvYXVdoUqKiKnIi9zhuHQB9Bzu9IMdzYYgA8o+a9T+LCq7NpWqIscjj0gGE1g57iznv9RUsZRIDyNmgVkzIsXYSENPoZdxkcxV8M7DPp3A9OJwkAsN4VoBqn99qZAYPYG5rZyLawO8EVso7YGQsJzxyvi4QR5ZNwG8cA5hgfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744403917; c=relaxed/simple;
	bh=kgcUq4gxhAS41S/CjHcT1RY9hEDolidwVa0J5wWVKTQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lO3SLX+VQtDN1IszSvxaeLMIsQhsz5f/u2OZP0LWvpuILxmuGuHruS4aqgXLwOFMbABHkzZO/oWO/BxETWd0wyXxLVvxvRYRFdxCGgG48xJfqBylVfrzx8YVFiYm8dZUhmVtpdsUBS2mjE5k5t3KtfvLcSlG5e2kA/+UdHtvWNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=viIHxl+S; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3d45503af24so20870335ab.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744403914; x=1745008714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qT3eKW0OgVfu/zUbqU6ev7ARx/bWRnIm3eKXRAL5nSo=;
        b=viIHxl+SZtwF02PI5YsOlOCPiJ24FIfJ+pCJ9eeG8IufUMlxpmaSxPJiQbgFxRPgEc
         SdLo6tTgugssKSzDZYngYwASkRh+AmP6hVMEyiZ1yuJa9behcZHMPgkIXjc6VV7XkxT8
         LACIvamGBwcRx+96p18EFkxPz89EZ74ME9by5wP/pqgEzt2Al1u6Np+etIEOfP8wvfqQ
         OhSlVfELR47ZCQyg3lwgGGsYI0TRpUxVrCvWp6VTzD2ZVieS+IZUEUJgVh7xH1rb3FXo
         b2JN/q7Glnazk4BfJus5CuHBo5etSWnbnHn+nYiaZNa+2qI3OPa2vCwGjuXRVwg+jTOk
         q4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744403914; x=1745008714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qT3eKW0OgVfu/zUbqU6ev7ARx/bWRnIm3eKXRAL5nSo=;
        b=pzEwC10Zq789fJ1wUDyKYFLeXNJN9frUMzdatTUC+Sea1vd4TkSQuMODCTenISVZ45
         SoY57HZrUgiJ9m+w23kpabt+K9+1c+Rd6wNwrh6ps6+zQZVHE0n5s69Om1+YCDaWH9z7
         cNgbATQw98XufU0qTEVJHI8wO/MSsNhJ+KMMGwO37olcC3lALwrCJLDmfg42IQSEbtYI
         WoWbfNbaiLcqXxj6opCiWFIJnL4ZcPBUiYlRxnosEUy6X6Xp5Rmp4vDRLgktAQJLmN+c
         AeUMTrh48WEtQwFidOlLcOOUx2UKTID5r9earL0Oj3j86N+dCW4Ko+bTNa4Rx1EEgW01
         /lmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhoeMhw8+qtGLxI7OgVTSd2anksYiyC0fGsXuDi+8Hsp3OIWvaeaPPETLGByLX9XPAJvgDTZ6bXyDm@vger.kernel.org
X-Gm-Message-State: AOJu0YwH8OPuNVOJ1KHsgWDElO92cyLa9ZyaNBMuoLciAU5FohZuF9Yb
	QbycF6O2FlAwNSW8wz9tQ43bo5aLj/vJHIHP9Sx/mCgslxpTxbOBGHtrZ2CRLRE=
X-Gm-Gg: ASbGnct2d4LOCOosJAIjNQtg4vKZSgIqBhk/DnCfWKebdgmSoWBt8ARN6WBx2LIWvee
	J6lf96sDGruIFvIF/Cg9lWqCghYiCpmQumfLerhhYJPbEAt6kxassYa3x+NbCGgEg2/EbXK7qNQ
	N6VMPRFb/Bq7BHpudsg2ikqlFkqzy9dv/zJ9h+ePKcq++/MGk9dawi7WpOPTAZiLSIBFyq0cUkf
	ml/FpXe4nNXNQ701XoDSYo0ugM7lG0isKzAUjJUXymYmusMldg64qoTNKPlFBKpMTcXemIg5KvX
	NRR5aXIx3D5+PV/yn9V8KDhlOVuj2gXVZjv6t/mS4K2xloywBNuCcm4OmgwCRH2vnfWBYezU6Mf
	H0wxWY8CwaU+mEA==
X-Google-Smtp-Source: AGHT+IHNU+YtLYKKg9Rbak8AqmRKKNb3APAoh0D667oTnKj2dbdwTHDE6V53boBISDwawaoWJ0qvsQ==
X-Received: by 2002:a05:6e02:23c9:b0:3d4:3556:741 with SMTP id e9e14a558f8ab-3d7ec26b630mr50230125ab.17.1744403914302;
        Fri, 11 Apr 2025 13:38:34 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e2ea1esm1420787173.123.2025.04.11.13.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 13:38:34 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org
Cc: andy.shevchenko@gmail.com,
	dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: serial: 8250: support an optional second clock
Date: Fri, 11 Apr 2025 15:38:25 -0500
Message-ID: <20250411203828.1491595-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250411203828.1491595-1-elder@riscstar.com>
References: <20250411203828.1491595-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART driver requires a bus clock to be enabled in addition
to the primary function clock.  Add the option to specify two clocks
for an 8250-compatible UART, named "core" and "bus".  If both are needed,
require them to be named.

Signed-off-by: Alex Elder <elder@riscstar.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/serial/8250.yaml      | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index dc0d52920575f..33d2016b65090 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -135,7 +135,16 @@ properties:
   clock-frequency: true
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: The core function clock
+      - description: An optional bus clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: bus
 
   resets:
     maxItems: 1
@@ -224,6 +233,25 @@ required:
   - reg
   - interrupts
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: spacemit,k1-uart
+then:
+  required: [clock-names]
+  properties:
+    clocks:
+      minItems: 2
+    clock-names:
+      minItems: 2
+else:
+  properties:
+    clocks:
+      maxItems: 1
+    clock-names:
+      maxItems: 1
+
 unevaluatedProperties: false
 
 examples:
-- 
2.45.2


