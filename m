Return-Path: <devicetree+bounces-255649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E2045D252EB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5483B300533B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67B2B3AE708;
	Thu, 15 Jan 2026 15:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JWvtb05M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354663ACA5D
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489843; cv=none; b=Dsb+mdaB9pJxaCpkHvmCzfkZTOpON2QDXQDu5CldJ6WbjAKijNBCv+MwZEUpGjCQGtgcAo9YOk0Ay6eipi30vrldKoEMwOlCdFhVQe2st9JRrKWj6Cg+8d+SOmxE8kjYDTgIu8kMpcfeRlhPgDmXHytQFduBp73b6xAEVAxZ76k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489843; c=relaxed/simple;
	bh=QL67zO2OXNn7d293fXZUWqsB5I5Tjghhi53EjdI7gqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aKWco6A+KHLc0hdx3ep4zQhAKNkBGcL31AhpSF5i6iiWFOIwLtNjzr8wJ8w5xrC9sVX8aOGosF4+lz+JzbdjtLWeoHPaeAJcaLF+otJ1jQFoeI/bW5ehvdUdIwQ1oGTJ7SxzNkmpirzTLd9FTryCO2O1g+wOPVzn3JxEpqED1eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JWvtb05M; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4308d81fdf6so610474f8f.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768489825; x=1769094625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KyUY1CKl3fCa1LRr33ngkD0vxuK8KXOZ0/VtJmlEFc=;
        b=JWvtb05MBamycS/ROxb2C9GOaRTqsNyEzgj8yvxERVPpYjBxqHtssz43oGNrrHppK1
         x+Hgz0A20Do5YsPM5ZKoPhBLNtMQSvfeBBu0MfGFrAxS6Iv4LSwve4YK1ytWVzDkijdp
         m6kf6YxlgET7199gdWZgbryU4luh8QzQX7WIdtBWS7orgETvmkOmZjA/WuTnt7MCatTG
         oUxiI6av+xCKhr/RYE7Xehk6pIr9sANw4u2/CBg3fKU9Xv4IXuIyNHnzRC2Ht5C4Yprz
         fTNTyT8bw0DMXeyG55ZulzAn1XAWyxgv+WIXdX1LmLkQ8raLJwqms0QgMYURTau3BVdW
         j0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768489825; x=1769094625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7KyUY1CKl3fCa1LRr33ngkD0vxuK8KXOZ0/VtJmlEFc=;
        b=qlydkzvhdyBP3QZo8rCvwea4v8r4jsqpWIzvRA1rlVW0WZcX3TrLF6LPycOiQ5+eby
         ypyTjbeJmtyI5K22rbsOaIBPL3hl8fD8+6rxCfS1rpWJIG6zgU8JsO2/OiHBvTlv2BMI
         X3cRsrqgEuKjOALHiSSY8YSOnnPzXMO7aVoh8+qER4FiQ20GRARMPdWoYQIqSIoO8D36
         GAe6PpugsGmF6j9v3zy/LILGp9wZFXQlnG8s9/aMQTqM8Zd3aAhpjHoii4GWoz7TuJJx
         aJc5N3DafbyzsUUevKNMGenHfHkYk2os0qSpK3g8+JZ+m97pCFof0MB9Vt44isZf3SUR
         Qy1A==
X-Forwarded-Encrypted: i=1; AJvYcCXpoPTCiaBP2cySfXeHLsp0Q3I9eVyfm5rJklyKVc9ghB/wksAQ1nmM8in8umDwzrb88SGs5Jdg/sIj@vger.kernel.org
X-Gm-Message-State: AOJu0YxcDJ7gLJ0b94n6/8YXSjxfZA+FjK9SEh1a1U8o8BS3/OXhLAed
	H+rQjt48TQ9GzFsnG3eYnZ9P/7IU7e3bMmtzWu7nCZnGwTqCGaAyHtYi
X-Gm-Gg: AY/fxX47NiirT+9X2szYMm/zEUMEtRs8jsF/2dgG57VRpDsVE1qCIElFolaSMrq6dFX
	dOUnpEnxvegRd8ODFKf4u8nxAKdrzkZQOniQThofVt44JEFxv7cfCjA/Vge2tmFxBB8ocPOll0N
	G89CbZE7pQ8kP/sH1F4204fto3vof9fBk3DV/3BVpFYXYDaAjntYMKhxvcahSexZQFavnBMgb1E
	XSWCiujfwxgvpXJ7x/KKfdnl1y8v9ZlgNfwhOmLpgV9h1xRTd2lRo7FIK+4xAqv5BVdKpn4U3qB
	O7FSL6h4unhxTi9eByggl6pI9NKuL5RBEa9UcT6qUAFsX6col8sGA8DUghUONUVUZt+BDhVg2Dh
	BPzWxGY3Z/J61Dqui+Fp3Vyr/50xbTUcU1Yl2Nj4W31ZzMdIhuW62dGIk9ub+T5HpkbRizyG3hs
	tP5+lBDsGqMAiz+kALkEa4oTVbTWwFSBTO9SrfsyIKlgLDpyvrJsQNao+GoGtTnwJR
X-Received: by 2002:a05:6000:22ca:b0:432:8651:4071 with SMTP id ffacd0b85a97d-4342c4ff4e4mr7932953f8f.18.1768489825150;
        Thu, 15 Jan 2026 07:10:25 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a6c0sm6528481f8f.5.2026.01.15.07.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:10:24 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v6 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
Date: Thu, 15 Jan 2026 15:09:57 +0000
Message-ID: <20260115151014.3956805-2-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115151014.3956805-1-shorne@gmail.com>
References: <20260115151014.3956805-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In commit f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string
for opencores,gpio") we marked opencores,gpio to be allowed with
brcm,bcm6345-gpio. This was wrong, opencores,gpio is not compatible with
brcm,bcm6345-gpio. It has a different register map and is 8-bit vs
Broadcom which is 32-bit. Change opencores,gpio to be a separate
compatible string for MMIO GPIO.

Also, as this change rewrote the entire enum, I took this opportunity to
alphabetically sort the list.

Fixes: f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
Signed-off-by: Stafford Horne <shorne@gmail.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Since v5:
 - Updated comment based on comments from Krzysztof and Geert.
 - Added reviewed-by's.
 - Sorted the enum list and added not to commit message based on comment
   from Krzysztof.
Since v4:
 - New patch.
 - Rebased old patch and rewrote commit message.

 .../devicetree/bindings/gpio/gpio-mmio.yaml      | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index 7ee40b9bc562..1b2d253b19c1 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -18,16 +18,12 @@ description:
 
 properties:
   compatible:
-    oneOf:
-      - enum:
-          - brcm,bcm6345-gpio
-          - ni,169445-nand-gpio
-          - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
-          - intel,ixp4xx-expansion-bus-mmio-gpio
-      - items:
-          - enum:
-              - opencores,gpio
-          - const: brcm,bcm6345-gpio
+    enum:
+      - brcm,bcm6345-gpio
+      - intel,ixp4xx-expansion-bus-mmio-gpio
+      - ni,169445-nand-gpio
+      - opencores,gpio
+      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
 
   big-endian: true
 
-- 
2.51.0


