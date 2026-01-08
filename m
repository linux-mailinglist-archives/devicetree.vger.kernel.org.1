Return-Path: <devicetree+bounces-252803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5AED02DB2
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34A6030C5562
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA45421880;
	Thu,  8 Jan 2026 12:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="OxtuQzQj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE753F075E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875225; cv=none; b=V0IF9XWTTS2DmURmRryr8v1RdsBBLRykT4yy6XGQHYC42m4hem36kHY7xuQhQeMDvZhjjDzpGaFttqk8G3FtlP4berB3oxLx0KmuVN554DksLFqObpKHinMgy383UZaYMbLw+VBLeRG44lPJyP9yFTDyKLKg9yWKmHAfsiKsncA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875225; c=relaxed/simple;
	bh=WbzCxbOCk+GG650PaQ0zRwRhYDHUtQ70UFN2MKnozzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F2+z348imaZnyPyL7mU1QYDZQU90isHRKso8/PVED/UIk3AH8Gxok2CDM3bceZ0AFD1JOyPgys4Z5EsnW8OZK1pyZbp486ihlT8Q8AsvEV8Cm/WiLVZoIqDOaiTcr1zZqlTgQT34meWO3yG2Etxm+2gCMLQ0J94qHqYUC9AHVyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=OxtuQzQj; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7fc0c1d45a4so1887107b3a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875223; x=1768480023; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1d/sptKjw5iBNotRNV/yKVZGhFT0qCTjPkOa45oLlSI=;
        b=OxtuQzQjGVIB8sUwNM2x4rDmpmkmeRJogio0SZdAZd17CGJmgTQHBZPJlP8A2DYdSg
         kPwDl88DD5qhGB5eKZj2Dgk0brN1y53ZSAFHbgbT6Msraj5ppz9JCkE/LHErn1wy6OZq
         R6pi5xQreBU/jqDrR3D71w+EcPQVtS3MKHliHF2Gyx52Vn1EkItZQLUdyBfFmKdtqKAi
         0R+j7JnY+TtGFZ8PK2tZi9LspH7Vl1AGUyA6SwuUeW06GkPqiv03Xvr1e2WVxgXuZ9D+
         RtcZF7EmH2ssloFwVwzoIpFhCuFdr1JDMgIe4lAqVD6NUYpxoNIg4wQSjjTzSfTLSTzC
         rDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875223; x=1768480023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1d/sptKjw5iBNotRNV/yKVZGhFT0qCTjPkOa45oLlSI=;
        b=CviLkT096VJDpcs7KpbzsR9eiqbyHycuEODIv3ls1Y0AQPmOl1s087TXIXSfDKCmj8
         HHdyS2Ep48gbVMVwyTGAqZxHAr3QPKzw/BV+RyxqYZHrAvdpP9rA4sF6bc4yE4OTiyj1
         rTXaPJJUTeuY3wWNBVAXU6NJLlFV0zt8AOFMPRaN7pGgeIOWn7/cdfL1k8zBnd8ynqgT
         ayExW6MdcZ8Yp/kiykMR8GCJ0/n2a5qh3ILhcrH9sC1/5YplXylTM8W42TrgVguWbN43
         +srWtDddMy9p+weV+pOyi9mC8TvcnNA5BG6cP4gMay/lArIrUlcO5Cc0NoeysFT31+0v
         +GyA==
X-Forwarded-Encrypted: i=1; AJvYcCVcrLAcBQBTc05PjTxM41NmDKF/EAibz+m3ivZzGEqIceO8Xhe74HjSZ8aB958TEgU7YJJcX5pYqK/t@vger.kernel.org
X-Gm-Message-State: AOJu0YxrkDoDhkTHgF5p2HI+/N0LeeCa8G1hhFEy7sQoUjsos3Gsv8Ke
	zlefGllUUThyvY/41BMXroJqGFpQVbN61LQSW6rVan7htAs6gUYvPjJfqFEf4bFYBWs=
X-Gm-Gg: AY/fxX4o8VMUcKAZR43RJmgGWyGXrFo5NanOIweLDfIhws/VGZDQ07u6N3Q9nqdi5r7
	bJDkXmxDzEF3vLG08txvTu6HOLeW1nUbW/+M17Jha6YBcf2FjwV4wbnIFkYsxgbWYQygM+su+BX
	SnrEEdYPBsj0QvNdOJzq5AXeSpUpiGpxDr+QHQSoTV5hW5CwnONW342mXcPmGENi3A7TEQHt71N
	Eee777fEjT7FuChfbfHZEGfvTLXxKqczQUJXX2O9bx/vf7nkUzQ+BMpu6o4NYjqqcPPWN0HQb+3
	vxeJOhjOfnBmhM3NsYqeqN6XRSzLpkSVR4UmpT6O1nIlny8hQaJj9Lq2m5QbPAg/wd4AeNniL83
	U0J+9Gb5YQDBD8q0YgU0DlpxQFrf7LPmQ6S2+gswn0O3abO07qPhHSoGpyaDfuzi+pqzaUkbTyV
	NJm22q+lrkoYnbL5RV7nKBIB+pxaXcvqk=
X-Google-Smtp-Source: AGHT+IHgvc5T6HyTkZolN8WOySU77yaQYw6IDoxev+S9+8O7C9xiglUnwMN5spw0Ckcph82Zd/Xetw==
X-Received: by 2002:a05:6a00:4503:b0:77f:efd:829b with SMTP id d2e1a72fcca58-81b7ef0b9f2mr5864962b3a.22.1767875223466;
        Thu, 08 Jan 2026 04:27:03 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:27:03 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:56 +0800
Subject: [PATCH v3 05/11] dt-bindings: riscv: spacemit: add K3 and Pico-ITX
 board bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-5-ed99eb4c3ad3@riscstar.com>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
In-Reply-To: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add DT binding documentation for the SpacemiT K3 SoC and the board Pico-ITX
which is a 2.5-inch single-board computer.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change.
v2: Use one-blank-space between name and email address.
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 9c49482002f768cd0cc59be6db02659a43fa31ce..fe62971c9d1f4a7470eabc0e84e8a747f84baf0d 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -9,6 +9,7 @@ title: SpacemiT SoC-based boards
 maintainers:
   - Yangyu Chen <cyy@cyyself.name>
   - Yixun Lan <dlan@gentoo.org>
+  - Guodong Xu <guodong@riscstar.com>
 
 description:
   SpacemiT SoC-based boards
@@ -26,6 +27,9 @@ properties:
               - xunlong,orangepi-r2s
               - xunlong,orangepi-rv2
           - const: spacemit,k1
+      - items:
+          - const: spacemit,k3-pico-itx
+          - const: spacemit,k3
 
 additionalProperties: true
 

-- 
2.43.0


