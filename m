Return-Path: <devicetree+bounces-93043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D309194F7D6
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 22:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 637D71F22C74
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 20:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BBF2192B9E;
	Mon, 12 Aug 2024 20:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="tezrkaet"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C2D192B67
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 20:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723493078; cv=none; b=M0v75hLUj/Vp+UANgif/2OXiocaB7sxKf5+/qaKHAPLmoXFUeAljG4fkSotyge2Ib4fir+dW5cy2dZL7MG6eke2HJnc5wxNJ3P6MJ3++c7iR5FxWzLprMTXZ/SY8k4Z2gfl0MHKjk89atg/qd0nknUnt1ljnH+t64dMALk1sBOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723493078; c=relaxed/simple;
	bh=L/xyGaFyhjAh5D328EnU5aZ8zcJibBVb7Tca0q7nNJQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DItuUWezUIv4oA3HHIJZBxV9pbdTSR5ZLu1S49/2BZ7vQpK7O++iL+N9J9G0XfWIIDjhxZO4VdJdZaFV3ibn2cQm6JwmTBbrzKz2nCRZSGtttII6eJ3Kbu67qXRTIUNquYcdWCSQ1u1eqRluQBksV7RY1V4cprcUYoNjjFn62b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=tezrkaet; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1723493053; x=1724097853; i=wahrenst@gmx.net;
	bh=1oRfQu9T2MITEuhucVL1NP6tSY/GRs7k2gT6QM5aKA4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=tezrkaetYEHClvMsw2ZxUqeb5cl8mlojVNZusQLy2xyI6H2P4asUuB/CWFBO33Q6
	 WVQoPCSz/ULcaX3ZeC77ZBt8r+qDF3iyYt0bO9+kooUqZhI60I6GpnXNZEbWm+wDA
	 FhYsgjsho2+ExTZhDR0nMfjyu4Tbv9KkscCz0KhaIRLf926I7aO0N4h6BscPrPLlh
	 K9v6GOUAkEUoC3sdl8EWohI1eSVsFTr2GKFBS/0wXMgksWpKOGoy/wOhAUJ5O6jvN
	 3zub8XrJ1GTrIYUO+e65BW3ZPjMxkjbVzdvnvSLvvImDudYfZM50K+mwjbjY/z8FN
	 OSrs8kZzSKP/JZH5Jw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MtfNl-1sKgoE0sWt-00tCVf; Mon, 12
 Aug 2024 22:04:13 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 RESEND 2/4] dt-bindings: interrupt-controller: convert bcm2836-l1-intc to yaml
Date: Mon, 12 Aug 2024 22:03:56 +0200
Message-Id: <20240812200358.4061-3-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-1-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:2O4e8Jnf1oCwiJzQ2qSBKvoSNjYHW2qKyaKf+KcTnlZ7oOt4xco
 R5ryOoJOhZmwDiOxfpdU7KWXm6ONbuatWQ++nM8m5ybvZFG6wG4Ror11uZao4+fqMB67UUk
 jemynsnxyTX+1nNo6Wdk6vCM1muFC7/isuGMrvo4NwppZPt8o17axPzzINTqA1JteSjF6Yt
 H98HZkCBwp8vDEmBXbWsQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dUJFkJkCZpc=;R5UQi3BRd6YAS0CQHSbG6FdSrnc
 M+0pVTznwY/dPpVIK6WpkPBlJmdg4ZWpUgnhXf1xhX+/GlysCkkGJZZaL6HPQLaDjGLUuZEZh
 K4hgWiWuifxKj4/aG2lQdh+JsFbANk0QK2Xi3HkCLfBUHuYzVsWWLPMmC5CKqtExVLxzJn1rR
 fRU1rxC94qFBlZNfMeQFjpntQxtf47O+a3oDqoU5+HzuXcjtW4bnePbRhUaCtzFixkbfDWPSi
 WbD77mqo3xsBr0Ef/Lq9SRRkr3FGjW32AC/P1qfIcr7XAkh/hbjEysFZq5of+i0iMc3oCbZ+V
 qK1hzv6Q2oPfQLgB8UzHmveV//9mx8idCZbAS69a44kcuVOBzVrVzBK7BSdvjnRElaGSP6rQU
 uIYyRXdr9kt9GlDUsrXkPdudDDwwDUVfjsW9+k1SG3D4oSlTol22gxzenGFrI4g4ciDVpyHdx
 zY7Exi21LfTJPZtugua+/A6y8UXZqz7sAAnPw3yDKnDtDu7vKk9/2z9S53wTX7Z4ykw+YBzmS
 u6+qH9pBrDU9Cpb0p3IuE4X6EuYsaA/egZBKuXyxnxS5nTnf/DKfoRod6cja9a4h9SX5/GU32
 fe4L5UF4CZ9ex5SJKw7MNuIaZYsv/Flg/7o6V+wm2dl3wfk1JvM8j35Wem1/Ts3g5tt7HWqJJ
 7kPHUpTdDDvD3FE+nbR9N3eJO+AhWyaNN9TDKF3pxnVCxYdZTkiHMQPZVRSovyNZAMkn3IyAX
 aNZTmN6U4rgdeZ5wPAgUZ3DU6ci2+LqbdEOFA4xbgKaMyhQpFv0SVDOCCz8y4yLBjsYmBelmD
 Fx+8P04aH28cQrmixHsS2BeAjKKU0ffNKgUuIQHsiUO/4=

Convert the DT binding document for BCM2836 per-CPU interrupt
controller from .txt to YAML.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 .../brcm,bcm2836-l1-intc.txt                  | 37 --------------
 .../brcm,bcm2836-l1-intc.yaml                 | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller=
/brcm,bcm2836-l1-intc.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller=
/brcm,bcm2836-l1-intc.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,b=
cm2836-l1-intc.txt b/Documentation/devicetree/bindings/interrupt-controlle=
r/brcm,bcm2836-l1-intc.txt
deleted file mode 100644
index 8ced1696c325..000000000000
=2D-- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm283=
6-l1-intc.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-BCM2836 per-CPU interrupt controller
-
-The BCM2836 has a per-cpu interrupt controller for the timer, PMU
-events, and SMP IPIs.  One of the CPUs may receive interrupts for the
-peripheral (GPU) events, which chain to the BCM2835-style interrupt
-controller.
-
-Required properties:
-
=2D- compatible:	 	Should be "brcm,bcm2836-l1-intc"
=2D- reg:			Specifies base physical address and size of the
-			  registers
=2D- interrupt-controller:	Identifies the node as an interrupt controller
=2D- #interrupt-cells:	Specifies the number of cells needed to encode an
-			  interrupt source. The value shall be 2
-
-Please refer to interrupts.txt in this directory for details of the commo=
n
-Interrupt Controllers bindings used by client devices.
-
-The interrupt sources are as follows:
-
-0: CNTPSIRQ
-1: CNTPNSIRQ
-2: CNTHPIRQ
-3: CNTVIRQ
-8: GPU_FAST
-9: PMU_FAST
-
-Example:
-
-local_intc: local_intc {
-	compatible =3D "brcm,bcm2836-l1-intc";
-	reg =3D <0x40000000 0x100>;
-	interrupt-controller;
-	#interrupt-cells =3D <2>;
-	interrupt-parent =3D <&local_intc>;
-};
diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,b=
cm2836-l1-intc.yaml b/Documentation/devicetree/bindings/interrupt-controll=
er/brcm,bcm2836-l1-intc.yaml
new file mode 100644
index 000000000000..5fda626c80ce
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-=
l1-intc.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/brcm,bcm2836-l1-i=
ntc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BCM2836 per-CPU interrupt controller
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
+
+description:
+  The BCM2836 has a per-cpu interrupt controller for the timer, PMU
+  events, and SMP IPIs. One of the CPUs may receive interrupts for the
+  peripheral (GPU) events, which chain to the BCM2835-style interrupt
+  controller.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    const: brcm,bcm2836-l1-intc
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#interrupt-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    local_intc: interrupt-controller@40000000 {
+        compatible =3D "brcm,bcm2836-l1-intc";
+        reg =3D <0x40000000 0x100>;
+        interrupt-controller;
+        #interrupt-cells =3D <2>;
+        interrupt-parent =3D <&local_intc>;
+    };
+...
=2D-
2.34.1


