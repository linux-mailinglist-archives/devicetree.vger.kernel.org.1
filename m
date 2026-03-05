Return-Path: <devicetree+bounces-271702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PexEbbXqWl5GAEAu9opvQ
	(envelope-from <devicetree+bounces-271702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:21:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F48B217656
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9BB0E3012821
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B10A30ACFB;
	Thu,  5 Mar 2026 19:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="e+6cQc8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49EC214A9B;
	Thu,  5 Mar 2026 19:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738478; cv=none; b=atXAxsQrnDMNMzyxZ67TPKGcrm8XQJ8ooCIlvGHLqHhrE+RlBELiNPPvIbagFB24/ptfGiJYGNfQMZV1OpvKHb8ImVXotnaRWF1SrW9jPZmOHKHzigk2Zhtim8fp1KJKJ74DdF54xGWZ9tjic0cBB42L3xKgJzHCeBE9OFsx3Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738478; c=relaxed/simple;
	bh=eItvAHRMTLMgMtk6xUhp8kzWpfA+3ajBFsnxaQa6ivA=;
	h=From:To:Cc:Date:Message-ID:In-Reply-To:References:MIME-Version:
	 Subject; b=jJJLNqmrDYdMLuxH0YSJAmFmAtb2zgZXc9CYIyPsVrjolhxFRyR/SEWnDjeiwC1ZQQJt+rFG/AP2TpfO/YeNw1k/GVTmTpl51O5U+r1sfNmA7jd5x/C9l/YIlKn35X5f0mdNWye+uhiJ4ulJnyJ8mwABh2HOuULCog2RJIqwfKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=e+6cQc8j; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=d60uRffAte70/fYU7jt58Xh5W/mw3rBFP0BVxonuWsQ=; b=e+6cQc8jcDlrByXx3FY0ihrwfC
	CGW/DfxIYHvCWW+LMs8ahhu5n3a0yblzDeETIrMbE17bPB6OQ5/6/Kck4hQys0k3/TLdfmuFBRqxa
	QWoRGQ1NaSbTyMZqKw/XW/bEBi7qJQpTzQBd7rAq9AQx3MahPQtl5VeHi5y184NpMeDI=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:42592 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vyEFz-0002na-Tu; Thu, 05 Mar 2026 14:21:12 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: robin@protonic.nl,
	andy@kernel.org,
	geert@linux-m68k.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.torokhov@gmail.com,
	hvilleneuve@dimonoff.com,
	mkorpershoek@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	lee@kernel.org,
	alexander.sverdlin@gmail.com,
	marek.vasut@gmail.com,
	akurz@blala.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	hugo@hugovil.com
Date: Thu,  5 Mar 2026 14:20:49 -0500
Message-ID: <20260305192101.2125660-4-hugo@hugovil.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260305192101.2125660-1-hugo@hugovil.com>
References: <20260305192101.2125660-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Subject: [PATCH v4 3/4] dt-bindings: input: add GPIO charlieplex keypad
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)
X-Rspamd-Queue-Id: 8F48B217656
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=x];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271702-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[protonic.nl,kernel.org,linux-m68k.org,gmail.com,dimonoff.com,collabora.com,blala.de];
	DMARC_NA(0.00)[hugovil.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[hugovil.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,hugovil.com:dkim,hugovil.com:mid,devicetree.org:url]
X-Rspamd-Action: no action

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Add DT bindings for GPIO charlieplex keypad.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 .../input/gpio-charlieplex-keypad.yaml        | 108 ++++++++++++++++++
 1 file changed, 108 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml

diff --git a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
new file mode 100644
index 0000000000000..c085de6dab854
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/input/gpio-charlieplex-keypad.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO charlieplex keypad
+
+maintainers:
+  - Hugo Villeneuve <hvilleneuve@dimonoff.com>
+
+description: |
+  The charlieplex keypad supports N^2)-N different key combinations (where N is
+  the number of I/O lines). Key presses and releases are detected by configuring
+  only one line as output at a time, and reading other line states. This process
+  is repeated for each line. Diodes are required to ensure current flows in only
+  one direction between any pair of pins, as well as pull-up or pull-down
+  resistors on all I/O lines.
+  This mechanism doesn't allow to detect simultaneous key presses.
+
+  Wiring example for 3 lines keyboard with 6 switches and 3 diodes (pull-up/down
+  resistors not shown but needed on L0, L1 and L2):
+
+  L0  --+---------------------+----------------------+
+        |                     |                      |
+  L1  -------+-----------+---------------------+     |
+        |    |           |    |                |     |
+  L2  -------------+----------------+-----+    |     |
+        |    |     |     |    |     |     |    |     |
+        |    |     |     |    |     |     |    |     |
+        |  S1 \  S2 \    |  S3 \  S4 \    |  S5 \  S6 \
+        |    |     |     |    |     |     |    |     |
+        |    +--+--+     |    +--+--+     |    +--+--+
+        |       |        |       |        |       |
+        |    D1 v        |    D2 v        |    D3 v
+        |       - (k)    |       - (k)    |       - (k)
+        |       |        |       |        |       |
+        +-------+        +-------+        +-------+
+
+  L: GPIO line
+  S: switch
+  D: diode (k indicates cathode)
+
+allOf:
+  - $ref: input.yaml#
+  - $ref: /schemas/input/matrix-keymap.yaml#
+
+properties:
+  compatible:
+    const: gpio-charlieplex-keypad
+
+  autorepeat: true
+
+  debounce-delay-ms:
+    default: 5
+
+  line-gpios:
+    description:
+      List of GPIOs used as lines. The gpio specifier for this property
+      depends on the gpio controller to which these lines are connected.
+
+  linux,keymap: true
+
+  poll-interval: true
+
+  settling-time-us: true
+
+  wakeup-source: true
+
+required:
+  - compatible
+  - line-gpios
+  - linux,keymap
+  - poll-interval
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/input/input.h>
+
+    keyboard {
+        compatible = "gpio-charlieplex-keypad";
+        debounce-delay-ms = <20>;
+        poll-interval = <5>;
+        settling-time-us = <2>;
+
+        line-gpios = <&gpio2 25 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)
+                      &gpio2 26 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)
+                      &gpio2 27 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>;
+
+        /* MATRIX_KEY(output, input, key-code) */
+        linux,keymap = <
+            /*
+             * According to wiring diagram above, if L1 is configured as
+             * output and HIGH, and we detect a HIGH level on input L0,
+             * then it means S1 is pressed: MATRIX_KEY(L1, L0, KEY...)
+             */
+            MATRIX_KEY(1, 0, KEY_F1) /* S1 */
+            MATRIX_KEY(2, 0, KEY_F2) /* S2 */
+            MATRIX_KEY(0, 1, KEY_F3) /* S3 */
+            MATRIX_KEY(2, 1, KEY_F4) /* S4 */
+            MATRIX_KEY(1, 2, KEY_F5) /* S5 */
+            MATRIX_KEY(0, 2, KEY_F6) /* S6 */
+        >;
+    };
-- 
2.47.3


