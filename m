Return-Path: <devicetree+bounces-168802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 027EBA946E5
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CE0D189711A
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 07:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7DD1C3308;
	Sun, 20 Apr 2025 07:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ljkXWUDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D502AE86
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 07:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132681; cv=none; b=ivuZF8OoJsgD0TksiejY4TR4HMHoWki6Nw0KZW2PXqCPBS9ocIHhMbPP+TiIDsSGL9RpWGzvm4R52YhbuZRvk/ZngSy4KiCnkrBP1DVOjJ7UE4rpcAxlnZw0nIAN8IktAA0I6QVTol5Un+iCMCHZT+s+w8+mb1deBu8K8lBRvE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132681; c=relaxed/simple;
	bh=t4jNLYsfRo4vYlN02mWCuLhLvvlCbpD5ApBbAIbVkFU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PZu/BFCrrz8ygvmrbY91EGYUZ/JBoGxOzkGyZXP9ewV0A0nRtEinh7GuPOgdBhNc9WrBVznivI+2IftrMaCJUjGVb/N4OpL63+MIS181jER5WFKyjBjyOQsu0VSAKltu0qNPFuIRegjxZZlNqjKhLdW1LzvBsVY/cycvWK4A1XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ljkXWUDF; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b061a775ac3so2761597a12.0
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 00:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745132679; x=1745737479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rEr4zoqSDPSh3q/NPZGQ8bjJudfKjj9SBhXWOyMRmJg=;
        b=ljkXWUDFEOkdT4k8eBQ81mnVqk/Tch1l7gUvwprY7pDij4+6+oR/kPGkp1z6jgsRld
         hPEjKp9Cuh1tIEdaFKz4yESWc0Rsb5hh9Ip/22QJnBv4LjcTcUmWzcMMSR64Pt9ejK6d
         +DNd2BpY4kTB72/Q5i5juua3zMhyEpRitioYAdi0btQ89ti0h6U76yVAMZVvrxDpSqZw
         aZU9wOBs/60p/So6tlN+5Jlr88d2sa0/jZKiYinBDcflcGF6wBCygBWf94sRHv/5cd5G
         6f21e58bD/sTVuBqUf3D4Pivslff4QaOw+tRmcLaVm6Ag8Em3cR1LtuK8hEPBuiMaelq
         ctGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745132679; x=1745737479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rEr4zoqSDPSh3q/NPZGQ8bjJudfKjj9SBhXWOyMRmJg=;
        b=gMNYePklpdB7zb929FxDGK0z4i7jwqWal7bcF/D9PnoqOtb/Pa5zZd6gbQbWURXTxX
         pbKOfuaP3Hzgnm8X/IvB2OKJP3lEsRMD7kP5dP3dBn1zOEII9ROmX8vY4An4iaDwJRic
         7rNnNwZWVYSxRd9LSAdzyOaqnoO/r0GNI4kfrlFmnvjWoCmsJyMjWIEa5j2lLV6ebepG
         XVCA/KM3CytvqAyKtmrrtqK54OsPVHh8ihfqvgF3bMR7+AGqnpOrNZ/bHNTL6EXWBWG2
         wKyhrt+fB43L3Q5aF29w4Oc7biaUWm1ihpnZzO8prPInYlzghTnkwJEkkOjYXEblXykh
         05Xw==
X-Forwarded-Encrypted: i=1; AJvYcCVOIPAKM47L8Bx0MefU1UsReeTAkNoTdE4qismeAB9Lt+NytrzI13OLote9J1Q30bVe1+U77JeLqYlv@vger.kernel.org
X-Gm-Message-State: AOJu0Yww3aNS1QyqChsiji+9Z1reOX0UuYZwtp9hzZyOUdol6AdMCfPO
	50gDqvcVBmKhPFUdfu+L+xXzBAuQEcRZe4kn5WFv1TMSfTn0DzFh5bgS5xpNmUriv/x7p8FllSr
	oKhw=
X-Gm-Gg: ASbGnctxMrQdZ+oa67oFpt2fX3odTuSzepBrJ9k5XN1Z5QVvEJ6WAuJ1BZs/WsVuqMo
	05XO2AWMRu0HhisRzcBx87b8JxyFqE7wL3/H51CwZFSBYpabY9VHC6V7FJ2g08rIYRcSYpX1bPC
	nNjvKWoF9EX4ZIbDXoxEoJ7Kp06olPRGlvHZY4NhZU8hRnQPaQMSvzCwkYPWefd0gnmM7X10Hr7
	6fnLY/bj5G6O25friQ4xkEANWJjt5TvRTTL94lMt9Jpjc14+D2kSk+Wo0eSZ0nE19bmU5zFRAcp
	2uT7xvV9a+7xhqrQTd8q63WJPxjMDA==
X-Google-Smtp-Source: AGHT+IGtYXVmqBAFmbk7LXbpDxQMyWUw0KBDYgsDqkcEnZhWP8dgPJ0odqZrRswxh/DPQhqrHeH9wA==
X-Received: by 2002:a05:6a20:9f46:b0:1f5:9d5d:bcdd with SMTP id adf61e73a8af0-203cbc056f1mr13712467637.1.1745132679468;
        Sun, 20 Apr 2025 00:04:39 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::40b3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db12743afsm3742626a12.16.2025.04.20.00.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 00:04:39 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v2 1/6] dt-bindings: pwm: marvell,pxa-pwm: Add SpacemiT K1 PWM support
Date: Sun, 20 Apr 2025 15:02:46 +0800
Message-ID: <20250420070251.378950-2-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250420070251.378950-1-guodong@riscstar.com>
References: <20250420070251.378950-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT K1 SoC reuses the Marvell PXA910-compatible PWM controller
with one notable difference: the addition of a resets property. To make
the device tree pass schema validation (make dtbs_check W=3), this patch
updates the binding to accept spacemit,k1-pwm as a compatible string, when
used in conjunction with the fallback marvell,pxa910-pwm.

Support for the optional resets property is also added, as it is required
by the K1 integration but was not present in the original Marvell bindings.

Since the PWM reset line may be deasserted during the early bootloader
stage, making the resets property optional avoids potential
double-deassertion, which could otherwise cause flickering on displays
that use PWM for backlight control.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Accept spacemit,k1-pwm as a compatible string, when used in conjunction
    with the fallback marvell,pxa910-pwm

.../bindings/pwm/marvell,pxa-pwm.yaml           | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
index 9ee1946dc2e1..0d97333c7fee 100644
--- a/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/marvell,pxa-pwm.yaml
@@ -14,11 +14,15 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - marvell,pxa250-pwm
-      - marvell,pxa270-pwm
-      - marvell,pxa168-pwm
-      - marvell,pxa910-pwm
+    oneOf:
+      - enum:
+          - marvell,pxa250-pwm
+          - marvell,pxa270-pwm
+          - marvell,pxa168-pwm
+          - marvell,pxa910-pwm
+      - items:
+          - const: spacemit,k1-pwm
+          - const: marvell,pxa910-pwm
 
   reg:
     # Length should be 0x10
@@ -31,6 +35,9 @@ properties:
   clocks:
     maxItems: 1
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.43.0


