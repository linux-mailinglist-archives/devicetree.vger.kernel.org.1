Return-Path: <devicetree+bounces-272122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFqbFpPZqmkZXwEAu9opvQ
	(envelope-from <devicetree+bounces-272122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:41:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1F7221EF7
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E07730BB278
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 13:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E95343101C2;
	Fri,  6 Mar 2026 13:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YFUDe1kd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1FF30E0E7
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804064; cv=none; b=tXZxhTdKpRyKDmE3EeI2mNGWubQT80iR+AsQ1VWhEwwCbOfqAcZop6rQV8IaDXj5+i1dxihEcgMnF159IbsK9iZgW4yYzrUzso3vtXrwV4uhtkolFyV8TmIQ+HNgdAyDEmM6+1Mo89qs7D2W+idqjkiVpraRlNcwywxoJXfE5Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804064; c=relaxed/simple;
	bh=sQMuxREvI14xCKQr+ivPy4kgzqxvGsoREnyqbhHL524=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ArCYAYaaGrKgSAHxKKAKJ+QgDgeTehII/kFLAs4t6BS5OrmfmtlKWbvyPh00g6dzHCrw0eEFUGcaF2NM2B228TYTQb8bLdX/8lH6h5/dtASSSvYuLXl6tbqxRPDvkx9kX6bM5uqEHleROSucFPTePDigNwJM5bjKH2LZ8+EASP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YFUDe1kd; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so108084565e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 05:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772804061; x=1773408861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CMYqmIcoIdZ/7uRWwTU4Z40LsDbT8y6/p6+mjdfeyBI=;
        b=YFUDe1kdAh5BUzJm95SlbvEjrWMA7kFTutlYeMjc8EHdrs75BLE2c3ZUIVrsF6kK2D
         BhNACTsYr7mAFRt/YQ4IpwxEdR1CGVmsPBxU5Vg+5FRm3ZeBMMrHrM66zrTnjZdk+lmw
         6zp3ybRxK5xJYyFOVcCmiaJT1PpVDjeiz3WkKf7BIY4AoNaBzEiCBn1MwCHHRjRoR9x4
         AuzJErommwOz/6tCdM0mc3bl7X0BuoHIwe1tofWcebeO30k9+dE0EjADEtTpeI8X8BlY
         wF/ZcbTF44HNdCqfhDzyPAcczaG80hMxkPLiIz9/TWjQPYzwjS/h3JRervtuY3bxYoDG
         9X9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772804061; x=1773408861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CMYqmIcoIdZ/7uRWwTU4Z40LsDbT8y6/p6+mjdfeyBI=;
        b=E3G+aN+ObqCgpq5cMy9exGqVNprBAH3gfposoWiwM1QhdV7+3NBQMEJhqtyzYDyqMD
         m1WzY1rt93TbVHjqFpNsB1cvrS9psdy9nuL9zgw6mpV1YlU3b8QyAIb/3f0fYO96pfib
         lZHrgCQj9rZasMt5bpuGa830TIIb2HXsla+gEsA23eprpns8mL4AaG84TDKt5vH1RkQx
         H3FK5l3xGMkxwN4CFo5jvrGZtzygVhJJVI7yDfc4Hps+Xj7einjHNfyL0cZy78Mjv9wh
         xcs/ivA2xh35FpmA0CSzHIPlLIOSyzBLEBfuyBks7VTpKxo4+11QH+RF9kNyq1AhPNvo
         5EqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVslmVCnuWPGuk8trVqP/Kb4kx3Hax7a1S3dFtXJi+S4tWftr2180oFG07c0NQMylyf7o0RrXl8Y+6J@vger.kernel.org
X-Gm-Message-State: AOJu0YxP4UFHERAakJ3ksVn695ZniCiz6Liog9yYoeUxOvqUKmxeXc+r
	ahA/CVeW/2wqPJ9Gt9SE/ILWRhpd+LYZ1zhuIeeSf2865QdiiZrqn+oO
X-Gm-Gg: ATEYQzxfwwEj3CuYJy+6GS83NIvUm28oCfxzm4iKJunozT3kepzTK1Rapg0vbL937N+
	pfgvwcRKcZh1Wac4zS/jcedKMXJVKkO1TkwFB3rGzqORW8nAez9Z+pEkiMWgk1aK8ZLAOBfx1Go
	q6M6Nvn5w5tQjBdFPC0bIn3IWJfYcMhS5Ic/gQHMEcUuJnzH7V+mwjygkeKVM4AN0FolOyWFpzd
	y7CA9n61juZqC9xH4DFe7uzkxQ/J6TEripIxftTL5QhqMThVg7sIqh5YQ8A8l3HwfrRWcdjch8n
	EoT6HRkBGvZfNu0S4eV0t+CN5UDDvbiz9PgUpdRsfiRZ1z91zArOcP5dDFDZoUx6w6evnHN2e19
	Io3FEKhXgIOJ08VWGlhf9+LSZpsb992PkcGXCixPIiRVt0gbrV7PmnegSUX9nmCHC9fdU4RBhd/
	npoCI2VlDsoJcg
X-Received: by 2002:a05:600c:1c1f:b0:47e:e20e:bbbe with SMTP id 5b1f17b1804b1-48526967ce8mr36182365e9.25.1772804061356;
        Fri, 06 Mar 2026 05:34:21 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm80856735e9.4.2026.03.06.05.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 05:34:21 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v3 5/6] dt-bindings: mfd: max77620: document optional RTC address for MAX77663
Date: Fri,  6 Mar 2026 15:33:50 +0200
Message-ID: <20260306133351.31589-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306133351.31589-1-clamor95@gmail.com>
References: <20260306133351.31589-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: EB1F7221EF7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272122-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Document an optional second I2C address for the MAX77663 PMIC's RTC
device, to be used if the MAX77663 RTC is located at a non-default I2C
address.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/mfd/maxim,max77620.yaml          | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml
index 42cbad56595f..246c7f9e572d 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml
@@ -17,7 +17,17 @@ properties:
       - maxim,max77663
 
   reg:
-    maxItems: 1
+    description:
+      Can contain an optional second I2C address pointing to the PMIC's
+      RTC device. If no RTC address is provided, a default address specific
+      to this PMIC will be used.
+    minItems: 1
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: pmic
+      - const: rtc
 
   interrupts:
     maxItems: 1
@@ -192,6 +202,16 @@ allOf:
                 maxim,suspend-fps-time-period-us:
                   enum: [40, 80, 160, 320, 640, 1280, 2560, 5120]
 
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              const: maxim,max77663
+    then:
+      properties:
+        reg-names: false
+
 required:
   - compatible
   - reg
-- 
2.51.0


