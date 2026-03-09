Return-Path: <devicetree+bounces-272751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIooAaaDrmlwFgIAu9opvQ
	(envelope-from <devicetree+bounces-272751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:24:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 713EB23578B
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:24:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C2E76300B860
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 08:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1522436D50D;
	Mon,  9 Mar 2026 08:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d9WOR2OA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B733036CE14
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 08:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773044617; cv=none; b=BUri+hfktcG/0wuxCU3GexyGD9dBQzC/YKj4DCzq4RNsouhXOEu5VHEje7MwX2VDBg2VrOkj39Xg/kiD5qMvRrQS8/3mgidQzErCWjkxSEIko1Fl3bg7maSdB81iG8sVls86VKjl5Z50r3lxF3RcNpmLRtKL+mkxEm4Xh/L1ORg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773044617; c=relaxed/simple;
	bh=97GzRB0jXduRhHegNCSRNpHmwNXg1M8yUOuodzFGCYs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qa7gk5JpoA32693VXfyy9e96gcJneZ2TpyndvQPwnUrZrpcHpUFX9mzQib7aBsZ9agotHQn6D7HbcmToUXH4E3AGJAzJDY4txAr7872ILYJTPRxMkRbSvNFzwG6yrzuc76kTQ87H88Q0HbYREXcQ5h8UQrshUxWSepSHIZhkh60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d9WOR2OA; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-82984c077b2so1799158b3a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 01:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773044615; x=1773649415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wUXA77gyyGjfEb0uEClVpk8YIE6PesFqfd39D9DI5sw=;
        b=d9WOR2OAxFyIhsvCILgdqRe+/JC8SJkbFTDiCQNrRnWIikE1eHsdkmgQFVzJVKOoy+
         tkRhGCY38yHCdnSHbffFOq5v94+qA70X9+182fYnsHYbPU2W56e9YwJJVV9iNUcIKjiF
         zou4UUdNIXXBpQ1hJPcq2Y7aRirBFhpBMsiEK/sSBWi2rL34P++wpfsNtDbp0kqLeXff
         IN46s8doBc2te1eTA89FmG9B9YsOPMOLGodimyHfMqDsNVmdeydwcw4D487hOCczPz1+
         6aU7O51FrzZa2BbAVjM7IA/vo9/hbuFmSmzPO/Dhfb1hqKgTF6Rw1Z7dJmPCnOiqjLgM
         eNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773044615; x=1773649415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wUXA77gyyGjfEb0uEClVpk8YIE6PesFqfd39D9DI5sw=;
        b=OhJdlPczo2+mzUYQeYTncr0LftPTCyXuM/gvo2Jet92+gnLrOvRmuCcHB8XOLfacCx
         1Cp3TfnsuXWjy1F0qbu5VTjUqMK1hq/Pnz1Ds0Vs7k3o1Lp+j3jcarRuUb0R0838aJYA
         jiFPbbQep8BI1zSmCHR7xH8dWuH1yWKC7KmfZBa5OFl/xjgSsia+ORG6CFs3CeRHQ9l1
         ACYlXUlAniSw+1waI9Z/iR/1ukTcrBH4THNf72tMn+P4jY0BVosJbsWZzhkjIDIQOU0W
         Mqi8RRWijMj/se2X5frRg3A+Q/94DOErUzpBgYg9aBIzk1Rm/fAj3z5eeKLyIwwB9Kdj
         ZkjA==
X-Forwarded-Encrypted: i=1; AJvYcCVwYI8w1/mA886QZbV5aN+yDtAOd+uWrhrK/+Meow1JVBJ0W2tiiGRUz65+7b3jmWem/HEh1sI1RGqN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/R7y1l8CcPjATULL3v0IKrEWPuouM38y1dl0jlQ/EUElJaaM4
	LByyUnejcAoxhaMZMyssumhDni/AyQNGv4ttL8mH+vkJZ6ZU07sS9sgO
X-Gm-Gg: ATEYQzzPVtVPSXxMFjZSF8xSvF9ekpZ7YaKKik8Ouwp9Hxybq/SN56s91EdlUoIwPsq
	5wbidnhljRFtBCV1QIEPXngXSwHv1N+cAj8b4qe32pY6KuYBk+DxDqTr4xf3cqZyF4JsGUkdzqT
	WagBErVFncnedJ8LHmkH6RMk8djnKj5eKxqnt4VSoV6cuniBL6iPnayxFaQnTGFD4gCLt4brK/B
	Txf1k4sDPSfBjoY8m+VhxKDCm9Mhq5HULyuaJB1lfDPyYJTMfl1NUUEDRd30rN1wDTAMv8hvxWX
	i/EnL8RvnFD09k/PAQX0pPCJcrc/gytk5sdRxwACi+wEp636RY9hzwxjsXRIWVj1ln2s+Vur9OW
	/g2Iu/l7iPEU7PSDmtdQQOfaIwWUjHOP1YJeWvXX/FOk7bPVNT7T62nvy4/kF1rxDcZ9gS2gE25
	/UQvm+DhTf26WoVrzFAdrXBePa
X-Received: by 2002:a05:6a00:66c4:b0:829:a3ed:9749 with SMTP id d2e1a72fcca58-829a3ed9af8mr7947643b3a.57.1773044614992;
        Mon, 09 Mar 2026 01:23:34 -0700 (PDT)
Received: from fedora ([2401:4900:1f32:2ea1:a1a7:f2aa:545b:3c1e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4657445sm9804383b3a.17.2026.03.09.01.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 01:23:34 -0700 (PDT)
From: Shi Hao <i.shihao.999@gmail.com>
To: linusw@kernel.org
Cc: brgl@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	i.shihao.999@gmail.com
Subject: [PATCH] dt-bindings: gpio: convert Cavium ThunderX GPIO binding to YAML
Date: Mon,  9 Mar 2026 13:52:52 +0530
Message-ID: <20260309082252.34384-1-i.shihao.999@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 713EB23578B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[ishihao999@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-272751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.6:email,devicetree.org:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Convert Cavium ThunderX GPIO text based device tree
node to YAML schema format, ensuring validation and
consistency across Device Tree.

Signed-off-by: Shi Hao <i.shihao.999@gmail.com>
---
 .../gpio/cavium-thunder-8890-gpio.yaml        | 52 +++++++++++++++++++
 .../bindings/gpio/gpio-thunderx.txt           | 27 ----------
 2 files changed, 52 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/cavium-thunder-8890-gpio.yaml
 delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-thunderx.txt

diff --git a/Documentation/devicetree/bindings/gpio/cavium-thunder-8890-gpio.yaml b/Documentation/devicetree/bindings/gpio/cavium-thunder-8890-gpio.yaml
new file mode 100644
index 000000000000..16d7c347f913
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/cavium-thunder-8890-gpio.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/cavium-thunder-8890-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cavium ThunderX GPIO controller
+
+description: |
+  Device Tree binding for the GPIO controller found in
+  Cavium ThunderX and OCTEON-TX SoCs.
+
+maintainers:
+  - Linus Walleij <linusw@kernel.org>
+  - Rob Herring <robh@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - cavium,thunder-8890-gpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - '#gpio-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    gpio_6_0: gpio@6,0 {
+      compatible = "cavium,thunder-8890-gpio";
+      reg = <0x3000 0x100>; /*  DEVFN = 0x30 (6:0) */
+      gpio-controller;
+      #gpio-cells = <2>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+    };
diff --git a/Documentation/devicetree/bindings/gpio/gpio-thunderx.txt b/Documentation/devicetree/bindings/gpio/gpio-thunderx.txt
deleted file mode 100644
index 3f883ae29d11..000000000000
--- a/Documentation/devicetree/bindings/gpio/gpio-thunderx.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-Cavium ThunderX/OCTEON-TX GPIO controller bindings
-
-Required Properties:
-- reg: The controller bus address.
-- gpio-controller: Marks the device node as a GPIO controller.
-- #gpio-cells: Must be 2.
-  - First cell is the GPIO pin number relative to the controller.
-  - Second cell is a standard generic flag bitfield as described in gpio.txt.
-
-Optional Properties:
-- compatible: "cavium,thunder-8890-gpio", unused as PCI driver binding is used.
-- interrupt-controller: Marks the device node as an interrupt controller.
-- #interrupt-cells: Must be present and have value of 2 if
-                    "interrupt-controller" is present.
-  - First cell is the GPIO pin number relative to the controller.
-  - Second cell is triggering flags as defined in interrupts.txt.
-
-Example:
-
-gpio_6_0: gpio@6,0 {
-	compatible = "cavium,thunder-8890-gpio";
-	reg = <0x3000 0 0 0 0>; /*  DEVFN = 0x30 (6:0) */
-	gpio-controller;
-	#gpio-cells = <2>;
-	interrupt-controller;
-	#interrupt-cells = <2>;
-};
--
2.53.0

