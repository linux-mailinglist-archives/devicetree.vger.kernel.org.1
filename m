Return-Path: <devicetree+bounces-219774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A87B8E22D
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 19:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1B0317DD36
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 17:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB857272801;
	Sun, 21 Sep 2025 17:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cnmsxUxD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A18255F28
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 17:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758476041; cv=none; b=OnM82Ck/wNTkf2ypXx0vTJ7nj/hxtUO+Yw0a9zebUk8k7rG55mp7QZHKaYbmgaHO8Vn8QWQznYZT2BWHSpHCoVvBRdj8AWwfd4pEnzDhH+LrCVO5LR/vDYQt/VlqWutibP/w/9oiehd/3tw0A39NaH3qDibJ0DyPZCuNJynj3zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758476041; c=relaxed/simple;
	bh=oOjZOItw2FyDSVtCNH8Oh9Mq0hYT66Z9X5gdpRuEPYU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WCkexpkrb/eK/4Ab53ArODRdHSCpDXpi/r3oZMmmMlzHr3pA/V3/w2yT+r5T4ROv+KMow4MVKGDiOModoisccpCYpP2oRttuq2J8SMhsZFSIrn6TnNvV2byGUaLo2uiqC1kJywTnLX8t8neIXYReQSFWM65I273bhPICaiK1yUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cnmsxUxD; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b0418f6fc27so629541266b.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 10:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758476038; x=1759080838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zj9dH/IE/77bdbBlwkTPAdjFGDmZXl6gQJLki2rgrNA=;
        b=cnmsxUxDKOc6gdcBmK/L5w9QtaHgCxWNzhLoMAjTUhpjgQSG0weOSJqXMKdw6TVu8z
         DzKXieU9Ob378Dy/mMm14TN0+ex8KT0cm6qyC6rBozMlqeE2yO0t4zuNMPaf7mSnqn0T
         tXhovrVsCI9FMKaPmpl55vGZk8R6jv8C3eO9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758476038; x=1759080838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zj9dH/IE/77bdbBlwkTPAdjFGDmZXl6gQJLki2rgrNA=;
        b=j0MI5PbN9l9Chi4hOh6a/wGPn0wJsijnf5fyGGfhRSoXmkeddZbnLrWcFcwazf9Aa4
         ycniEth5RHPcPHZy+9D4rLaWDiMlG93m/dpsAk3WtRVtmDEKeX+jKiNPRrZ6gcy8FSrF
         T8Y/fDCas+Jkf6/AhiHVwuAUUld+gE9d4a7KnIZ+F17qcrmSFA+Ircma25hxSPKy46b/
         dQAR2b+oQ/vl4fMnN3A5hCGIHsoDPwcEa3zGSoTRdW5KVDzSJiPIbJAF/5S3x1f42756
         bPQJGgZ7qj94eWSJC7IJes18icxrXOMFJStZ4uhOX08QMSoRC5s/chTPfzBpSvKSj0ij
         YJAg==
X-Forwarded-Encrypted: i=1; AJvYcCUHpBTcExOI5LeJsgn1LMwF4sbZiLdpK5byBdMboYwFjSGoKGEGKwBTQHZWpLswkDUNlBU5O5sL0VA2@vger.kernel.org
X-Gm-Message-State: AOJu0YwKLeAbiYmiVtZZVXzmQJ1UoEr2zZqIYtWJGzDzWfh8CbL/lMW4
	yKuwC+2EaLKmyJ+kseoGRJ7BKbT8vQ4VHCzN+2OxrIC76P+TNhPhW4WuAFRhygzDtTc=
X-Gm-Gg: ASbGncuCYSEE2LJ10WS2cQbknRo6UCbxGNJxlagCIK+uLSVvydLBL+IQmUeBLjaoD9Q
	KOr+HO2owFHZc6KVDg4NqztgXI9M0se2XLMSqDAArTZi+/y3si4oK0JZqfkLqE8BjDUm8xe1GdN
	fcs8vw1g6pOEqGjiia0/LpPZUHIeUdt0224ccUsAcZD85z0YGMM0am6W0MfrorOeXewN1CpaTVh
	guFjSkJZA1aAYh9wUWskg569AprKMA2rL0jr5wjF6qVdLTCa9PPavJ1Zi0kwb8FX2YEbpSA1kqA
	ARaVL/S5Z8CLzeGuzuIdNGigyC3gWOAxFqm5Qd41BNyWrsKIYe7XJwpS9L6WAOyLK/x2n8RSKwI
	GjevF8VgTcD85GgkWJceMWQ951zNbqo4cPIr/Fu3kBbQ+Xcgse/ZgJcQ0MxvziiYb+QwC6QX216
	gG029yFIy8/c6VD9mljZA4RGcQ1rdiCBMyLH8Rb9CEdbBNWKdN9+4gV9I9Ft1L7S4y
X-Google-Smtp-Source: AGHT+IELR3aAJwhh1aLPtkTHY1OkF1rr/ic7Ckv+/xLZy9AvN4maY3EHd3KWHVVOccM88c8SJc/H9g==
X-Received: by 2002:a17:907:1c1a:b0:b07:c290:6ce7 with SMTP id a640c23a62f3a-b24edd549f9mr962373366b.7.1758476037865;
        Sun, 21 Sep 2025 10:33:57 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2928cd31a6sm324347266b.102.2025.09.21.10.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 10:33:57 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org
Subject: [PATCH v6 2/3] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add touchscreen child node
Date: Sun, 21 Sep 2025 19:33:43 +0200
Message-ID: <20250921173353.2641438-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>
References: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert Raspberry Pi firmware 7" touchscreen controller device tree
binding to json-schema.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v5)

Changes in v5:
- Move bindings into raspberrypi,bcm2835-firmware.yaml
- Remove raspberrypi,firmware-ts.yaml
- Update the commit message

Changes in v3:
- Drop firmware-rpi node and use only touchscreen node to fix warnings
  you can see in
  https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250913092707.1005616-3-dario.binacchi@amarulasolutions.com/

Changes in v2:
- Added in v2

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 27 +++++++++++++++++++
 .../touchscreen/raspberrypi,firmware-ts.txt   | 26 ------------------
 2 files changed, 27 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 1f84407a73e4..044544c17e8e 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -103,6 +103,27 @@ properties:
       - compatible
       - "#pwm-cells"
 
+  touchscreen:
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-ts
+
+      firmware:
+        deprecated: true
+        description: Phandle to RPi's firmware device node.
+
+      touchscreen-size-x: true
+      touchscreen-size-y: true
+      touchscreen-inverted-x: true
+      touchscreen-inverted-y: true
+      touchscreen-swapped-x-y: true
+
+    required:
+      - compatible
+
 required:
   - compatible
   - mboxes
@@ -135,5 +156,11 @@ examples:
             compatible = "raspberrypi,firmware-poe-pwm";
             #pwm-cells = <2>;
         };
+
+        ts: touchscreen {
+            compatible = "raspberrypi,firmware-ts";
+            touchscreen-size-x = <800>;
+            touchscreen-size-y = <480>;
+        };
     };
 ...
diff --git a/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt b/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt
deleted file mode 100644
index 2a1af240ccc3..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Raspberry Pi firmware based 7" touchscreen
-=====================================
-
-Required properties:
- - compatible: "raspberrypi,firmware-ts"
-
-Optional properties:
- - firmware: Reference to RPi's firmware device node
- - touchscreen-size-x: See touchscreen.txt
- - touchscreen-size-y: See touchscreen.txt
- - touchscreen-inverted-x: See touchscreen.txt
- - touchscreen-inverted-y: See touchscreen.txt
- - touchscreen-swapped-x-y: See touchscreen.txt
-
-Example:
-
-firmware: firmware-rpi {
-	compatible = "raspberrypi,bcm2835-firmware";
-	mboxes = <&mailbox>;
-
-	ts: touchscreen {
-		compatible = "raspberrypi,firmware-ts";
-		touchscreen-size-x = <800>;
-		touchscreen-size-y = <480>;
-	};
-};
-- 
2.43.0

base-commit: f975f08c2e899ae2484407d7bba6bb7f8b6d9d40
branch: drop-touchscreen.txt

