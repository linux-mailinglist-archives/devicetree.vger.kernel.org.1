Return-Path: <devicetree+bounces-269770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sD5nO0vxpGlTwQUAu9opvQ
	(envelope-from <devicetree+bounces-269770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:09:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F45B1D266D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7D73301051C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F163238159;
	Mon,  2 Mar 2026 02:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IOkkCIdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C49427B327
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417329; cv=none; b=i9ZUBgZVWDXRtNwWbQBldmP2is1Mu47EDGcGXaIEqDVLsZAKOJ3/1MmgzN3psrdtSmdq/e1vY8g+d7HVBPcCDZAyd9XJFdH+0CmytT1h1Il6dh78sGW/FET2x28glpVD6wELM+8SlO8jL0Cd+JGQwR6ujLak13NPJraEfzx+YsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417329; c=relaxed/simple;
	bh=hLgMJPltUcNaEyZZ4ZTYi+0iQ8sDPrCOqrNiMe0EZe4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QP7M/nf24M0E/Y2y+hCAUcfexiyEO/+vNRFXzPL3oxYcU93BcreYYEfOIeJX8ZNtOqgDrfWFVVCRNicXJoKcuGpLillXWdAW6K0qa3/ggZ8SXe62Y69Xfyd9kv3Tu5n8sNGAIt5+O88VKpM+JWFJ5PmuR+BlYYlyifufBm91kqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IOkkCIdO; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c70b69ced09so1000560a12.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772417327; x=1773022127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F9X0pQB0h7RMWoFe0LdtBhzPyvjyQ0F+JKWx4b1TrX0=;
        b=IOkkCIdOaiq0mvTrK9TUQnG7tg9Yr3W/5jS3dMIihuddnCn2yxPj+w0Qs9bfuM6QtF
         MQIwI33BKc4PjclGEaVLFZEIzStlbOBrSeel6h7IhnVhWtoOnmGf0OaHAvTAWyKH0aYb
         yk/cKQ1nLgRbXe3c6QLP4SQ6Xb9XxP3wDGtsQwrSnnTDkWu6CnxS3+N8OFXrVxfVi/FZ
         oN9UkyG2exRPPq0IUqxRYCwb51HnQZM7dIeN6LFu+utEX6seBg6GC38JwnaKWO3n1OzX
         mg2j8ZDdpBoU3CjPWg0MNFV1NIOgSmC8Zu0/lc8vHnxdyxM/KsEGPwX9vN5TAwxZhJGd
         k8Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772417327; x=1773022127;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=F9X0pQB0h7RMWoFe0LdtBhzPyvjyQ0F+JKWx4b1TrX0=;
        b=qzALkxfRxh3g7CdE9cY6VsO2fMzjWY97SFDnEVAeCeqqKGkdOEOdZhdcRSxMUrdFya
         WMNox6eFN/ylFj+4th0nTNec5vvEZDBsfvRFSujEbsdrWZPkF5kT23pnKm4QjMwwogV9
         7K2p3GcOPNoDRwTXTskmXqBOLJOPqvcZ7QYDoO64EOhul2nJF/GWV0M1FWb9xLEa8IN4
         WWMWvio/s6U2GuJj2ixuig2Fe2tezTtwT7uh8lriaR+nLI2mW3iXclKutXbBFP7uael6
         i0DEzilzUczSctRJNJaEJkh6TPOdJR/MJtv35+0F3lc7eDbYaQP90CFNkgZeFau8BSs7
         mfrA==
X-Forwarded-Encrypted: i=1; AJvYcCVrYx/J4WZ+J+xolYrA11AdFo/0v+ceFZTeoroLElvzeC50xNbj7EpKcxdGXOHWbI2tztmeJDstfjnh@vger.kernel.org
X-Gm-Message-State: AOJu0YzKliTjDCgX2Jv5cUwGjBMtpi4Qnzh7gIRKQVZBBqC6l636ns9t
	q31BjRsHkgofEuh5UFKiolHU87RzA9XLL7TsPHZ1jib7xm+jMy6M1s8r
X-Gm-Gg: ATEYQzw5yX9MJT2r2w+8+LlMTU0zmZhrEKdFMSrO2eWK/4nvh93kMO6Zqq1s/b9ri5R
	RTIj0XsqbKMBC1DvSBRDbjHHXK0d8MUbh+llOBAXQ4jnowCv+r6zw4xPTsSiQBSGz27+WJsdvXr
	F/T9kiDAAtdBzuN6zVEAsrMuuVbT4kSZh119UtO99Q5oCgUFhLGRHHN+lTelKuTJLZz0CFbi/zb
	Es+UUnRW64m+/HoNsOao+QVe5tEnFl7WloeTUBLBiafM3dX5tFBUsoKUglTAsakCH/+vub9iq4h
	ogvbfKbUYi7DMJgdjwwRtXWuRyd6IjI7QLD3llI40k9NjMkD4Fhsu9o4WrqWD2rhP4iTYOJFWnB
	q3zIc/UekLrEqFftNz54/rF6hxN6k6LgKVcYf3wTQ0EHwb8gzG/kWDLKC4x+XeJFgxNuYakMQFV
	fdyUtU65VAU48N50yUT9kbZlYDlbIHP3sO7Uh5SgE1B7k0tEGOdwVYwXXh64WlmyRK5QpY645AX
	WwW+OSN7w==
X-Received: by 2002:a05:6a21:118e:b0:394:5d0d:9217 with SMTP id adf61e73a8af0-395c3ae7761mr9855958637.44.1772417327548;
        Sun, 01 Mar 2026 18:08:47 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35987523629sm2764697a91.7.2026.03.01.18.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:08:47 -0800 (PST)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: andi.shyti@kernel.org,
	ychuang3@nuvoton.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	zychennvt@gmail.com
Subject: [PATCH 1/3] dt-bindings: i2c: nuvoton,ma35d1-i2c: Add MA35D1 I2C controller
Date: Mon,  2 Mar 2026 02:08:20 +0000
Message-Id: <20260302020822.13936-2-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260302020822.13936-1-zychennvt@gmail.com>
References: <20260302020822.13936-1-zychennvt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269770-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.110.143.0:email]
X-Rspamd-Queue-Id: 5F45B1D266D
X-Rspamd-Action: no action

Add device tree binding documentation for the I2C controller
found in the Nuvoton MA35D1 SoC.

Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
---
 .../bindings/i2c/nuvoton,ma35d1-i2c.yaml      | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml b/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
new file mode 100644
index 000000000000..fa8b01e2c5b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/nuvoton,ma35d1-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 I2C Controller
+
+maintainers:
+  - Zi-Yu Chen <zychennvt@gmail.com>
+
+description: |
+  The Nuvoton MA35D1 I2C controller supports master mode and optional
+  slave mode operation. The controller is configured via Device Tree
+  and supports interrupt-driven I2C transfers.
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: nuvoton,ma35d1-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-frequency:
+    description:
+      Desired I2C bus clock frequency in Hz. The absence of this property
+      indicates the default frequency 100 kHz.
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+
+    i2c0: i2c@40800000 {
+      compatible = "nuvoton,ma35d1-i2c";
+      reg = <0x40800000 0x10000>;
+      interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&clk I2C0_GATE>;
+      clock-frequency = <100000>;
+      resets = <&sys MA35D1_RESET_I2C0>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+    };
-- 
2.34.1


