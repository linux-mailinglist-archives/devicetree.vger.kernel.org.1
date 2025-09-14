Return-Path: <devicetree+bounces-217063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE8FB56C33
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 22:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90D5B17AC90
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 20:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65E52E7BA3;
	Sun, 14 Sep 2025 20:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="A6qhIEM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF99C2E6CA9
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 20:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757882311; cv=none; b=P4GWnqZgpT6l84PbSLIpovHSwgkMMws0a0ALSDNHHOXuzj4Ut5toEFM6WdrdjqwlG1hR6ZU67JPjuOvrphrXnGmbpv67S0lXdIJFrlmhSt4Y7FbGy0PLSjzkwxAotljdewogXpTjn79EIJ/MCVjM571E5C4eHncOKESTDxBkZ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757882311; c=relaxed/simple;
	bh=Z89xAdFSfLdnjxGqKH7V4bJm474RtbP2ANzuBWqmySc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b9LASSkGij3CIOIgzJR3qN0zvs+/DdmDJQYeEqannsgcpXAGrIp0RiNLtU/qYB5n4XkWhrU2tRsQMIuqfZ9dM1FkyMj4bjsq5xU9nWii2rXcY6J/Lmop6Y/T6xzsDcAlbWiYMVJyMFrr8KHL08FSv/Tueh7ayNFqhtJam42rGIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=A6qhIEM7; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-627b85e4c0fso5607585a12.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757882308; x=1758487108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zFrj3gEfIT3tk5nJrn5YbyG7ZS/WolhxcrzQL1fTi+0=;
        b=A6qhIEM7tsCQEpqjvht3hPJKm33o1yJiFurT5VrIwbiLEFX/M2+10O/2ojpUCPAeJ+
         DljYIQfsqNUzNTiwiyHM0a774d+oHvxFcLYhGtYcInGyypaCrAMlr+yGdlCSOJMHXu+C
         s9NpNAoaEt9o7U1KATu1f4jDRAxwoEVRsv8JI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757882308; x=1758487108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zFrj3gEfIT3tk5nJrn5YbyG7ZS/WolhxcrzQL1fTi+0=;
        b=uetOP+6vhEu5c0ghUEfZNERwgJrm6V6I5toWre9F2T+9AdAMPxyF5L+lS/LkAphkdO
         pc7jRVVSdb/3/tXI+ozlfteH6Ha5aYgQxva6IIhjrVzLsWFUcf/NoC0x3va4AJiegcr0
         oE58Tx7tALCVQ3JihZdmS7tsSlbTcZqpXkhQFwrAlJwSLCZ8US5SYhCD6p5Vl93hEMCW
         WF4mPrCsL4uaCIsfJAFC5F9VuENd76mAqWgdZiorKMJ8kazjOXMfKUSBio3l1rTMizh3
         qowZw3LNN/wRfjGiF+acxqQ+WoMdUmJ3K6cvbfLtkLx2BDiHBmLxL0IZTP3d5rsQENoo
         aCZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwkLRvJalx6/uJYhWduAm7Vr3VGDFQqegPpsH5vyqOH3ujmh7GhgpMJdDNM6g96v3IR1/ZPmRfQvvs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd+NzU5AoWCw7iK6dCSc6Kxbh60+GG1iahFUt5UckdGaRlgOjn
	dYpKo6SZwR63afHh+clc5x1me1ThvkMFSF21ieDvM2xhCoTuJE8XThbkQQ+jE1M+mPw=
X-Gm-Gg: ASbGncvx9oPkQGaurAcaTfnBvfNj/cmf/N6LMEvWcJoJCf5OUkEcRfY5F/M0pjRxOdY
	i6nHWVLPEjbhaY5g0QyTd+9K7HAlSAICvASavhCdNKSPnN5cSU0V+7P9SlonDkVmdxSCm8D03EI
	8WMdBqqkR3M0aMzP527BobHYoi4hOmdV+m/5DjSAhC37nTH8Q7vq6QrkeWLHItUw5pBLhNjlLVd
	4exGqgfmmmLNrd+D0edhKp7FxW7z8K518+l3O+f302XmdHvc6HWlgior1PnJJBKEW1H+xrW4h3+
	e9AZN4CQy2N48H0wxKOu7Rt5UhOcwT3MgSzRggk1oJ+K1gqqAJk4rFzpCZCQyzm2JbSgdIuGK95
	aIzc8V16MS7tEc1uAAmOyEFj1sHbtqKqJLQber07TcUNyIUWscDghfxAMszi8UY4E2tMunHYncu
	JMPiVJWMwz46thJBJWk9pMllrZnA/PXSubbUkjAr2Qzv3k19UYQPHM2wvqyWypP0AuZqGeFk5WG
	cA=
X-Google-Smtp-Source: AGHT+IHD40fLYi4O1kTcM1Rp7p7ZYRGGkgLnzuTVUkbYF/Dv84qViywJ6Kd34fqgy/JBzIXC++JDJw==
X-Received: by 2002:a50:d647:0:b0:62e:c5f7:cf92 with SMTP id 4fb4d7f45d1cf-62ec5f7cff2mr8580125a12.13.1757882308297;
        Sun, 14 Sep 2025 13:38:28 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33ad242sm7803739a12.17.2025.09.14.13.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 13:38:27 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org
Subject: [PATCH v3 3/5] dt-bindings: touchscreen: convert raspberrypi,firmware-ts bindings to json schema
Date: Sun, 14 Sep 2025 22:37:54 +0200
Message-ID: <20250914203812.1055696-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914203812.1055696-1-dario.binacchi@amarulasolutions.com>
References: <20250914203812.1055696-1-dario.binacchi@amarulasolutions.com>
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

Changes in v3:
- Drop firmware-rpi node and use only touchscreen node to fix warnings
  you can see in
  https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250913092707.1005616-3-dario.binacchi@amarulasolutions.com/

Changes in v2:
- Added in v2

 .../touchscreen/raspberrypi,firmware-ts.txt   | 26 ------------
 .../touchscreen/raspberrypi,firmware-ts.yaml  | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.txt
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.yaml

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
diff --git a/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.yaml b/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.yaml
new file mode 100644
index 000000000000..697c508326b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/raspberrypi,firmware-ts.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/raspberrypi,firmware-ts.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi firmware based 7" touchscreen
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - raspberrypi,firmware-ts
+
+  firmware:
+    description: Phandle to RPi's firmware device node.
+
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+
+examples:
+  - |
+    touchscreen {
+        compatible = "raspberrypi,firmware-ts";
+        touchscreen-size-x = <800>;
+        touchscreen-size-y = <480>;
+    };
-- 
2.43.0

base-commit: df86f912b45c20e236060321c85fe35437e9325d
branch: drop-touchscreen.txt

