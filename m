Return-Path: <devicetree+bounces-275953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOrYGEGlt2lTTwEAu9opvQ
	(envelope-from <devicetree+bounces-275953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:37:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 102BD29537C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:37:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD851300A8F5
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E6834C124;
	Mon, 16 Mar 2026 06:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kMw837E8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B7B34C130
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773643070; cv=none; b=jDLLz8RjaTiTqG3Q6Xl+e+unugbG8JX+RkMb1ua3CpVGvYv05/DjlJPD/hEZFpeihB2PofqESb3NObmVgbE9WNg1I5KuTBftkZsEJMRPlPCdnsGLRPGnfyIXGtrWCPG+HksCKhipC8r4/ROxV3iX2SrXkrcHLiDulid5nF1vY6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773643070; c=relaxed/simple;
	bh=W60ZB1+wZuP8PnU4iGf0U+uZbFRfPX6nSzCaDbJOyEY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Nizjiby7um29p3NwC3SnrvhrjCh/3H13XvIfT0DApcJWjH/cDVOKpV+rWCTvSThKB/dhadWxa786aUyXiJzitF2B3GCLdoTpfYZCMwSg2/7J2OKnkIFCpEpsvqXLJGASrXw0xgTcc2WFrhviLZl5arybhkUnXkAa93nem4avwvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kMw837E8; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35b95a7444bso618492a91.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773643067; x=1774247867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xf70jF6KOg/SiWMlOWjk6atZ2ryfC9YUcEG9Wm/SIo=;
        b=kMw837E8SWANCde1DbAHPrZdkKAC+3mJ4TzcGhg5ZQHT1hm3CijuTvgX8W7QcVz7+Q
         mZTQ+yBu6yYadvLestd310rKouiqDnPBrxxuXVdFK2XRGp5udHl12Y/uzaJLEgj4DHmq
         M3puXT80Z5zLixLt8pJFQFSHPKWQvEro3fUYTbwnnGeCtsFK4+6+4P0ZEnU/kyAprraL
         Uo9k/LZxs8Q70CFhftT5I5PwqGQIptlR6es7dqNsNURAUTr30y66xXPAsYti7GJxMv9f
         z35nOs5IH0g4awiUrxylrKEAEe90BqU5hk34JZZMIfYzkOnKNL9vsGqKLS0mdIvHy+GA
         fI1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773643067; x=1774247867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7xf70jF6KOg/SiWMlOWjk6atZ2ryfC9YUcEG9Wm/SIo=;
        b=mJzRY31lFuUWjiUXq4rNl1txhAPpRHg7c/ubQ3I+ItfEaSieKjHnGcQOgzm3mBuQ1q
         1teNEjfySqhnAcGfdxyeO11u3d2uNxW58EBjiujsKN6d0l+wtlREDn+9Z7Tq6kix8CHm
         D8VRedVfsNEku27WRK5CIV8v0OPxoI/9hnBW4uZ8GKfeQKny/ZfygNWYgflykqyJH4d9
         dXWrAG8b8XYpou22dNfBTKIBDIlxW2I+FAcEywH2hBWybcTLPAt8MTu395s+463nXi4I
         /o5Y9/vwEJ+unLgCv76mY/Sc0gtCet3X2SqvM8FfzNljD6l8KOhHpQWLLNCvYZOLuAIm
         m9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWmapWI8Skkqlvkr8+elEC/G3gZTDen/868LabUmjR8ihU/YQCZaBGSz0P90IQtVCYxxJk2slg0wl9@vger.kernel.org
X-Gm-Message-State: AOJu0YwoWv/dHoduVUTmX7HBAdk7s/a1IzHSFfb059fBvYfmTIkzsdmh
	qDHG0aI7Av2UA8y2Wpz0kfMhBlgqN7T8r4LxGVIrFjMDqrxVKATtV9DH
X-Gm-Gg: ATEYQzy1372IkgPe/29PFlwMo+m670KzfMf1Cslx45lVbFlxKg3i6VrllS5TYMIoZYg
	pnVeyUjoTWiB8x6eUHtViR3nvkDUz9AGypaoAuajGh7tjECBRW+Ba5oZ3X1VplpxYhSBnHa/zyt
	YYal5yYo14IKGC4lfwGQrj7r8giZ7/k86s1JUhyw1yHSN0eOD2s294hrfKECjzdP2KjJ17RQKrz
	E6cggA4V/jJL9v4ZA+daGk/rMqHIhwKUAmGxZ8xt5dRy0AF0Heha8G5k9X0xQAGkOKvaAR7vhDB
	RBKq3NHdnvcOXKSQZPkviqrABfvQQn55nkWjOjTJunBnQbBiKG5LgMoysW/r8bT0yN7BtI+Q8+e
	MkYlQ2tbH6mhvvtiR7NJ92dbyACqHu9Tt8BvlMvRqUgyV+bufLeQcERPBi1xBtlahxWLJFtbTuv
	MlDXpp7ok3ncWejeUD0LR6d+aw58sugz0vJT4BVCq4vQC7wdmbxiPl3GJBqQ+KRb090ijucKUbG
	0rUNNFy341ZOWuN3fXR
X-Received: by 2002:a17:902:d50e:b0:2ae:47c9:68aa with SMTP id d9443c01a7336-2aecac9da99mr123353785ad.52.1773643067321;
        Sun, 15 Mar 2026 23:37:47 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56cdf4sm122845295ad.8.2026.03.15.23.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:37:47 -0700 (PDT)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: andi.shyti@kernel.org,
	ychuang3@nuvoton.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	zychennvt@gmail.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/3] dt-bindings: i2c: nuvoton,ma35d1-i2c: Add MA35D1 I2C controller
Date: Mon, 16 Mar 2026 06:37:24 +0000
Message-Id: <20260316063726.41048-2-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316063726.41048-1-zychennvt@gmail.com>
References: <20260316063726.41048-1-zychennvt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275953-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,2.110.143.0:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 102BD29537C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the I2C controller
found in the Nuvoton MA35D1 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
---
 .../bindings/i2c/nuvoton,ma35d1-i2c.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml b/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
new file mode 100644
index 000000000000..f2c004049d86
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
@@ -0,0 +1,63 @@
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
+description:
+  The Nuvoton MA35D1 I2C controller supports controller and optional target mode.
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
+      reg = <0x40800000 0x1000>;
+      interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&clk I2C0_GATE>;
+      clock-frequency = <100000>;
+      resets = <&sys MA35D1_RESET_I2C0>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+    };
-- 
2.34.1


