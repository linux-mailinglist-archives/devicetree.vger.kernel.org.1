Return-Path: <devicetree+bounces-262318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEKaI5IdgmmhPQMAu9opvQ
	(envelope-from <devicetree+bounces-262318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:08:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEDADBAEA
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4450B301AF6D
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8913C1961;
	Tue,  3 Feb 2026 16:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="OF78wZqX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469B8190462;
	Tue,  3 Feb 2026 16:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770134766; cv=none; b=TZMWXzAxL/So3FpScoEDuN6jbltRZKa/vfUq7ZJu+jQ0zDJMrGdNwRoQefA5Lc4lxfFagsEHiYz+342+QMnOCDLHFExiuK00NwRitjKdpgcnzVFlhZoRG31dr89IOTJw0R1bZ1YwkWFA8MxGWUR0mqmUtTnf3W4Ua87lNhOtsg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770134766; c=relaxed/simple;
	bh=jCJiyRHuuKJBPzYahAXx7huO18KrkcOqRN3zYjFMfq0=;
	h=From:To:Cc:Date:Message-ID:In-Reply-To:References:MIME-Version:
	 Subject; b=AFIk3dABVEWwdynZyCLnkHcOTNoh0ihjMGKUfMt/2Q6R/QQHBGed8i1KVbQNuI+Ue20vdjnXmOWf0D3NN9j9j4ZpG1iJNeq2rl5Hk2a8RqVSD8vvSUCBRj2g2vZNo4trmsV/z5iLZ04By34/7kE9TBZX/irxw9Y4TdzRBU1dSPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=OF78wZqX; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=eTJbAHAyZW9VsvHuKNy01JGBVwJyYv46g0ikfNP6MV0=; b=OF78wZqXHJFb/SnY3uC3f2CteR
	s1L6l9XfAMErL+uqJ/RQBQ56aCw+em6U2HF8FquTmT0T4Ku/fgCY6rWH7qaO6UwHmk0Z0+O9eI8h0
	5dHAnf3WAZBeqOKTVaKSHNklIZu+XBlzHRjNpfu7bPk6WmjzHIZvDhFRbPaALizYp48A=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:53840 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vnIfc-0000uz-Pp; Tue, 03 Feb 2026 10:50:29 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: hvilleneuve@dimonoff.com,
	dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	hugo@hugovil.com
Date: Tue,  3 Feb 2026 10:49:47 -0500
Message-ID: <20260203155023.536103-2-hugo@hugovil.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260203155023.536103-1-hugo@hugovil.com>
References: <20260203155023.536103-1-hugo@hugovil.com>
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
Subject: [PATCH 1/2] dt-bindings: input: add GPIO charlieplex keypad
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=x];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-262318-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[hugovil.com];
	FREEMAIL_TO(0.00)[dimonoff.com,gmail.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[hugovil.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dimonoff.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hugovil.com:mid,hugovil.com:dkim,devicetree.org:url]
X-Rspamd-Queue-Id: ECEDADBAEA
X-Rspamd-Action: no action

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Add DT bindings for GPIO charlieplex keypad.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 .../input/gpio-charlieplex-keypad.yaml        | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml

diff --git a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
new file mode 100644
index 0000000000000..b382c8caa096d
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
@@ -0,0 +1,88 @@
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
+description:
+  The charlieplex keypad supports N^2)-N different key combinations (where N is
+  the number of lines). Key presses and releases are detected by configuring
+  only one line as output at a time, and reading other line states. This process
+  is repeated for each line.
+  This mechanism doesn't allow to detect simultaneous key presses.
+
+allOf:
+  - $ref: input.yaml#
+  - $ref: /schemas/input/matrix-keymap.yaml#
+
+properties:
+  compatible:
+    const: gpio-charlieplex-keypad
+
+  line-scan-delay-us:
+    description:
+      Delay, measured in microseconds, that is needed
+      before we can scan keypad after activating one line.
+    default: 0
+
+  line-gpios:
+    description:
+      List of GPIOs used as lines. The gpio specifier for this property
+      depends on the gpio controller to which these lines are connected.
+
+  linux,keymap: true
+
+  linux,no-autorepeat:
+    type: boolean
+    description: Do not enable autorepeat feature.
+
+  gpio-activelow:
+    type: boolean
+    description:
+      Force GPIO polarity to active low.
+      In the absence of this property GPIOs are treated as active high.
+
+  debounce-delay-ms:
+    description: Debounce interval in milliseconds.
+    default: 5
+
+  poll-interval: true
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
+    charlieplex-keypad {
+        compatible = "gpio-charlieplex-keypad";
+        debounce-delay-ms = <20>;
+        poll-interval = <5>;
+        line-scan-delay-us = <2>;
+
+        line-gpios = <&gpio2 25 0
+                      &gpio2 26 0
+                      &gpio2 27 0>;
+
+        /* MATRIX_KEY(output, input, key-code) */
+        linux,keymap = <
+            MATRIX_KEY(0, 1, KEY_F1)
+            MATRIX_KEY(0, 2, KEY_F2)
+            MATRIX_KEY(1, 0, KEY_F3)
+            MATRIX_KEY(1, 2, KEY_F4)
+            MATRIX_KEY(2, 0, KEY_F5)
+            MATRIX_KEY(2, 1, KEY_F6)
+        >;
+    };
-- 
2.47.3


