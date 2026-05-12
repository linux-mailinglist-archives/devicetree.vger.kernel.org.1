Return-Path: <devicetree+bounces-296075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sID+IMfaAmqbyAEAu9opvQ
	(envelope-from <devicetree+bounces-296075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 09:46:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 310DF51C1AE
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 09:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD733303FAC5
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB119480321;
	Tue, 12 May 2026 07:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bQ7apMU1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3512F379C36
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 07:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778571612; cv=none; b=Gl0muGZ0IP8SdiTf77pWnE6b7b8kDfZov7A/AF9M0pYXezuxKZiz5dZBdKc4X3aPZOCcehWWXNgHqs0vdfMOAgjV3dlueB38uys7T28wkOBRNgTqQMy/Vc4fNM4I25tiVZaYleoCE22gsBMv3QjR/r3pkIeEp9UKRtH5vG28efA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778571612; c=relaxed/simple;
	bh=W60ZB1+wZuP8PnU4iGf0U+uZbFRfPX6nSzCaDbJOyEY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AjHP4oeObTlMVBkgWP79zsEy1vSm2+4+vN8tvL1tuXR+9oRJlTSWhAxy/FiOS/wI7eFp+IhP4tVzuCE1/FpBgyTjDui7Mtn5p7OHlrvIvACi3dqBQEgNPIZrODZQ3X/STx5JdXjU8vOcJTGROOQT8E6dCME/MZ2zIbXb/g5wD3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bQ7apMU1; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-36627a0ea23so2034717a91.0
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 00:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778571605; x=1779176405; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xf70jF6KOg/SiWMlOWjk6atZ2ryfC9YUcEG9Wm/SIo=;
        b=bQ7apMU1/u10H1dBFoP00bZoiUBM3gzG4Ei9OBVP3SV4dTn80szP19qeL6TWnR5wjj
         E43RP38ZnsMVyNywNfMJoceuzUpN68sT0JZH19eJt2KXXIQ3cnAp5VX6Q26R4o3rkSpr
         z/Ar9/g3gjrSEN8yhIE1qOgwF/5hrIe5g0q5TmztD0yOWuzznx4PbS8hGYkGGj6zQiAU
         9zLFvT5dnRRuI/mN+zvQtE3RC8uqUMFxGpRIVPcK4FgbAf68RYZeINyDhtBkWB4FPSEA
         0MXfvOsjkV+mq5h3a1gqeUOJNVcuIccbouxGC7KzaPS3gsKNuoDs3acMsKtqm/WOM1Rn
         JwAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778571605; x=1779176405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7xf70jF6KOg/SiWMlOWjk6atZ2ryfC9YUcEG9Wm/SIo=;
        b=gU0bQ4GpvLoSheqdYoduE4YH3ZszlCz3c9t8pNTwW0TRhbOBq18dQ6hiTUYvKlVCCz
         9s6jBJ2KMCrOLJlEaS8ER1SzGMGlKFsW45qmTwsyBLa+qgoHIvDZFZwWwnFirHUIqZrN
         tTHVEg+FL0+JyuV8g2Oj/LbstgpCr0yU51+N6cZLugbGarW8W/1/lLgdzpMq125B/hN+
         Pcc5Tr8TflGhOFSHY1GYuyg9l4V4fOLIBB9FTfVKEgav3QNeZUAd4oMsBgBXJeJz3t53
         K8V6zDzNWDovy5+ocjoSrGNbLSPoHpNrmyIh7qIk8t5ggozF5FSZ7atnBCY25nEkSyAz
         wH9Q==
X-Forwarded-Encrypted: i=1; AFNElJ/AQ8q7T/Qpseyomxo5XBQupxk6BTdEb0xTC6MJtPbvxgADG7ONvieQLGXFP0Hh77TkD8STiuf2p5C/@vger.kernel.org
X-Gm-Message-State: AOJu0YwB3sG+mFRGXC6hKB4dAKavYoWCVG3bDIQGrzSWYdIVQHanEuZv
	kfvV+gnxfIp8a3EB5UNYy6BAF+1rIsckjK0XnJ453H/KofaGY6Hem1L/b1zwlg==
X-Gm-Gg: Acq92OG+YdrgapDz/tw1JUn17VplNUHECv8fQ32epimUqkgQL5LNenulrkw9TD6L/fa
	QT3+6BrlchI7c1U3mK80RA0uXvxHLqnwOTitML6HwJFdVaZBoF6HOKfSZZcxRHVxr2wXSZa3ss5
	YG0VB27lhH1D6ro+VXg1hIxQPoR+WEhwrjim5nL8Y+0WbcmPdKdLTvkxBqh3Rn4olORKVL0ur6n
	8ITjq+XNVgJGh2rgMlrESgpmKE2oIyGSDJgTDkWs/sx3Gj37ZRsiVnz5wYQBWjDYiF224LwwI00
	UmDndmT75+6sdYeUY6u3DRLO1dd36Az5+l4cJm08P2B4JIk/Bhk3vtG+tzy4O9QCBPR8aSdYVMD
	D5K3n53xZtkLK2GwAG5j6pYSU4ZPmePrOMsNtCkz2TsRPD0Ow4/j8wzW3CG9UPSTjvzZSn73S+I
	Mr/RDezLHr+ZlLCqVe4WR7aJC5RhrIvoSJVIr5UZKNf8PkmpSO//fOe4otcV1ngsQvZZfqZGAY2
	KUw/EEirg==
X-Received: by 2002:a17:90b:2808:b0:366:2668:b5b6 with SMTP id 98e67ed59e1d1-3664cd22759mr16575930a91.22.1778571604619;
        Tue, 12 May 2026 00:40:04 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-367d65ed459sm13264489a91.14.2026.05.12.00.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 00:40:04 -0700 (PDT)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: Jacky Huang <ychuang3@nuvoton.com>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zi-Yu Chen <zychennvt@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: i2c: nuvoton,ma35d1-i2c: Add MA35D1 I2C controller
Date: Tue, 12 May 2026 15:39:51 +0800
Message-Id: <20260512073953.564323-2-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260512073953.564323-1-zychennvt@gmail.com>
References: <20260512073953.564323-1-zychennvt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 310DF51C1AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,gmail.com,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296075-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,2.110.143.0:email,devicetree.org:url]
X-Rspamd-Action: no action

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


