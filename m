Return-Path: <devicetree+bounces-231545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD06C0E0C8
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38F141895C97
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 395402417F2;
	Mon, 27 Oct 2025 13:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EFcmz/0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059892101AE
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571821; cv=none; b=Q1LlezKSo0CUmIyEmeBahzh97V1w3DOscKKhV4JDSEV+AxN8tbT5bW/q03BY0x5XRt4o3vL5cZC8vOGdEkifj8E36vZi6pCrImhEFAYJEAELwFr1JFUrDqnc2O6PnzBkwNmrl26cq6A6yn1f6hC861mKIZvt9vfO9NdjYl9MSzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571821; c=relaxed/simple;
	bh=dosS9pDdgnVcYrxQ6KebJvE9ghDY6SThkSzJfM3JnQU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eb/r047jy1qAFvPn61r+rHmn+zgcyovelKh450plg8yz6vl5QqraBz7HfJVk2yuuCdVg0702u7yPUqfi7kilIwB1hWIqY3ZdO/MFFAR4PzK5AFBwpxw1GludSIsbWi2k5mEVysYW/YfYa0J3MaH+9y6WzCV3g3bCOmhc87Tc5X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EFcmz/0q; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-430d7638d27so48691125ab.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761571817; x=1762176617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8ni6EXakGblNMElr9yGEmr1BYrUDmPrrWLSAOgcMRI=;
        b=EFcmz/0qlDEOl5AyhfQ00T+cm0NRZ6HCB7u0iHA7sUz9RZiddJUjdd7m8OU1BsKILK
         UvIT3eKCaG3VwyQV0ALm90Pxn3rk0l2dlBz64bWkN+0nQakaNbhxNmknufhm28Z0wrEB
         xnXeKc4LM/Bid1AC1IBLRBT8sw905Qbcc1XM+abXTe1LLH7dyXeGB1pU3LM5TAE7nzTd
         cj7k1KwXYf8lUXK9uUlfJpNmwAg/qcQV+fBxnD/VCtsMN9IqxK7Lb5JRBnaS5tRAf3VL
         StmBwWwKWZxzlvsYkPjmSj74GYxYyjn+XSfrFiUUwkCt6wx9uqC1ocvwDFnMkTOLkQlO
         zQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571817; x=1762176617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8ni6EXakGblNMElr9yGEmr1BYrUDmPrrWLSAOgcMRI=;
        b=sJjMQGC+l/fKlz87hi2BKbmAevL8SPMpkZEhGjfZV9AA9+G8+nsP98ygEjg+VDuHBB
         5vG2AdHA8igtqCapw/1oTEYnB0g7iYbGuCOSc78MUTfnUetTAMMyh+vMHSMDUc9huqdr
         x2YeF6DRN0tEQmvYTh11F2u5/e7Yrs48nggE8icc5CuAO/waUp0dLGAhJjxWJoVWQr/W
         6Z+Hot9ixouaeTEDbse/LFH0227yDQzUm4z//pPxRTxc45itbEC7BcHAK9qNFgNhCMjK
         mZVvBKSa3mkKv/kPsAqmlBsVr18dfz1G1FFH6kxSQjLgSkeLSjeh9/jWbnwBZXvzntGD
         cK7g==
X-Forwarded-Encrypted: i=1; AJvYcCUbExX89t6Vdbyfk8BKBV9VJ+EQ2E2MD088QSTbKJgQ76PBqxroSBlBL0XhdjnGGl00Pio7Wb7INVPr@vger.kernel.org
X-Gm-Message-State: AOJu0YxiVeLW+pCY5JblP6txnOaV8Akbpdeo0BT+l5nf2Ua4i81tOqKB
	oEBPjvvjB6r57lClL7et87OEW6gyGWINHchD4B1eqIbRB16WSQ4qiTUb25T96JhjV3Q=
X-Gm-Gg: ASbGnctnL0XbKbi1R8GZJi+rjGbLH77XnnHWzPhvbX4kR7x1STkZJmmpAH5TCmLg8Fw
	ijIktBFoGRvqfsUXF1mymxB0teT+Hmv1PI6GdTO9ZhOJ9NHPlmGfPp3es5kD0llpUwQa/VVcmjm
	wqAIpo9+tJi7kgvL32RP53EsbUk96zgQkKdRyNzvh2cl4PsHxouUuzMNInI+S+DjiOtRV0kjZQm
	IH7eE+AynZtsNqwOQ7HA/y+zyVyKUqfb9bjseTemSVnvEZv5SSZ6FMZOMDkuxIodGAcWp1nJtjQ
	YzHr23S3tHszWv9Rtb32xYM15CdqpIdipFQpw2DPmlYbdjR7ZtOlL7rhvdxorCOEwJEV+scPYjq
	fvv8TLShWTR/f8NqNQrXn84MiIN4AJx5as67xSXs2dd8lihwdqGjLD62jZ6fozQ/6CWfl1ALBPb
	EyoG4XmAqNze2iaCH/njUYoYIXACICaVH+fgbiS2k15m8=
X-Google-Smtp-Source: AGHT+IF2HAyYtoY7tqjtENmVwo8nugPI2UtLxqpWE0EI0lLCgNJiG2I5oXemQ3pGAy09KPpQQnNXJw==
X-Received: by 2002:a05:6e02:12e1:b0:430:ca90:d0b with SMTP id e9e14a558f8ab-4320f7a8964mr1116135ab.26.1761571817075;
        Mon, 27 Oct 2025 06:30:17 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5aea78e2fd4sm3093057173.26.2025.10.27.06.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:30:16 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org
Cc: dlan@gentoo.org,
	Frank.li@nxp.com,
	guodong@riscstar.com,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/9] dt-bindings: spi: fsl-qspi: add optional resets
Date: Mon, 27 Oct 2025 08:30:00 -0500
Message-ID: <20251027133008.360237-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027133008.360237-1-elder@riscstar.com>
References: <20251027133008.360237-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow two resets to be defined to support the SpacemiT K1 SoC QSPI IP.
Move the allOf block down, below the required section.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
v4: - Moved the allOf block below the required section
    - Added Frank Li's Reviewed-by

 .../bindings/spi/fsl,spi-fsl-qspi.yaml        | 20 ++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index 5e6aff1bc2ed3..1d10cfbad86c7 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -9,9 +9,6 @@ title: Freescale Quad Serial Peripheral Interface (QuadSPI)
 maintainers:
   - Han Xu <han.xu@nxp.com>
 
-allOf:
-  - $ref: spi-controller.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -55,6 +52,11 @@ properties:
       - const: qspi_en
       - const: qspi
 
+  resets:
+    items:
+      - description: SoC QSPI reset
+      - description: SoC QSPI bus reset
+
 required:
   - compatible
   - reg
@@ -63,6 +65,18 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - $ref: spi-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              const: spacemit,k1-qspi
+    then:
+      properties:
+        resets: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.48.1


