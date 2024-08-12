Return-Path: <devicetree+bounces-93044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC29A94F7D7
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 22:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1BD11C22306
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 20:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7200193069;
	Mon, 12 Aug 2024 20:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="HSoKYcCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94C7192B69
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 20:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723493079; cv=none; b=Fy6lG5rnMAJDkOqoCyiSnle7Oj6m0JBZaTpjKkkv4TqCPIVm69JXYD6lTrJJHI/Q44C9wgPcluplBcCWFSiNJMbnSHUpb2Or/4UI4jmgvg0Q3Jekn/zG9mK/C2n/F03gAaoMWR0kA45rBiFVuR5EKbnMJf/EebECusaWzO+tE5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723493079; c=relaxed/simple;
	bh=66sqLesZesaEEQZtSkcsOnK45h18BcAFoyUpazRJzRY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KjxoHfT9kCNL0Ysfb1jKPiMNlWf2RnhcwCLoYH/2X3/qmvVEdqdCw/jQHKjgAr+SW9EWsEmz/TeNzxvc3K+NDy7gCuNSv8Ews01Tqx84IOe95+OcZ4Swq/Z/kNAE4yj+UvnHyUmZTLInHOUppxlxpHunXuDV75R53x5lP9UKHpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=HSoKYcCK; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1723493052; x=1724097852; i=wahrenst@gmx.net;
	bh=IMh4FjVIipmJTy4+pD0doUDz2cuv0Dpwf6VJPrLqVFQ=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=HSoKYcCKaDwAuGVSafdjc9x5x3evNburRR72s+SKL7Er3Pp7+sT093g8OXCgUXES
	 MGqKmLr8erA53NfYB7zfByONGtuvtWNpDWA/f9G4BR4BO43zr+CceGQs1sf+HPrbq
	 c0zLsic/M7OgaOV+H3UFfxumqAE5yVAShp43rr4Qq5qLNeHnvfr69iOrI80uxW+wH
	 /fNMhR+C02VoIIeoQwz60SsBU2Cw8bQlLsmJ2y4CTW9qWsvgA2EAGVlouM4iOV3LP
	 1Hx4BSGb4yclezWO3N6Ok5ZcH0jw6bVuvOp0BaWy+DJ86pmLOKSPy/iT+D+hRYY4b
	 EklyQC0sXSNNpIbwdw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MfYLa-1rxwrE2pei-00hyFw; Mon, 12
 Aug 2024 22:04:12 +0200
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
Subject: [PATCH V3 RESEND 1/4] dt-bindings: timer: convert bcm2835-system-timer bindings to YAML
Date: Mon, 12 Aug 2024 22:03:55 +0200
Message-Id: <20240812200358.4061-2-wahrenst@gmx.net>
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
X-Provags-ID: V03:K1:mu/oF/4bYE6jGb2ALHipmOVn1kSsEdyts+r/EHG7NeN00PWmbAX
 z8U588CgZeVz7tf0BFJ8Lc6tz4OlGJBI5rIbh1LxUa1vQwoBBPscl1WTuXmyHfBJQ5jnEOR
 ScgBx7knnANaXGYL7VwkQ6mQoDejMEp51/ZIzniyDTeDZRf7ypPkcSe4t9zfrwtXqMeQ79T
 sUCETiRYKtTyUWssPVQpw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:AH5SQxKRtC8=;sfwqJTjbpLLyKATvWuGLGElxUR2
 DQmSYh67BFgAZHnEIP6tix2jYSzct1dPXBItPl+kJ5OUcn3zQx4Rvl2dia/DHLt98vQcT5vWS
 C8zm2W24A1xNwazH5Z9b729Rg2S4ZbMNavQOnpyjnOsqZP2TixNQWNl4qbvcezAHEGgwyH64W
 ww+Y5Th1FThSgV7T6JjWYml6QvL+EMdse1C242YaAYhgLKdNvDsw+dOoevtbdtYFOs6Q8u+tZ
 /SIYXGvL+prPq6UqdOxZsYan38XvHafKsTLnJnGBU+i2kKu1SVFYduAHeIhzQJGBKYlp6Ra9A
 zgSi7KP+wCjiKoabYqNcPLidDzsnOWOEYGCeYlf35HTSajFRCaxQC1hCVhLJQGjdT1rN8Kp65
 WbfCmQFua95sM8eqUuUOpkgQYmKp/K/Bkfc/+pa5VzFyBonis54sEB9MoW/UekbaVuWGKbGrB
 nCOF9M2nnIIe9Jo9RsoqnZJ7ewl/OonP4Xz88u/7uPyRlN/VJfxKL9yaZgZ4zdKNmdbNbp4E7
 7J3XIGnpZDyFFUvsUmRvIxpjRWUTMxngcjPbgTDtEN4KhPzaZZmzl5LXzuc+euJCPFY+tAooK
 SS/kk8ol8oBDIXN/H8PN3alsPRXCdby+3enZ/A8h3KGG1fLuTkMR3pph5Dp6BamYB+lWF7yHd
 9AOuEiMK+fnF2bDLeyu7bWaaNyXX7x2oYqq1stSEtLNfjiso4VL4ZJTtiFBxsxBzTltow7ecp
 pPpnmDljqtGBdfbC8Ugm18lcvgAsz/CpCTetVtTBa/cIHf+LE2DoOWQkLRIooM9qPeUF+T6Zj
 mENLxwpMHry0K6nabmU63zoWkFnCb59/LSdv/0XBvKmyA=

Convert the DT binding document for bcm2835-system-timer from .txt
to YAML.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 .../timer/brcm,bcm2835-system-timer.txt       | 22 --------
 .../timer/brcm,bcm2835-system-timer.yaml      | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/brcm,bcm2835-s=
ystem-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/brcm,bcm2835-s=
ystem-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/brcm,bcm2835-system-t=
imer.txt b/Documentation/devicetree/bindings/timer/brcm,bcm2835-system-tim=
er.txt
deleted file mode 100644
index 844bd5fbd04c..000000000000
=2D-- a/Documentation/devicetree/bindings/timer/brcm,bcm2835-system-timer.=
txt
+++ /dev/null
@@ -1,22 +0,0 @@
-BCM2835 System Timer
-
-The System Timer peripheral provides four 32-bit timer channels and a
-single 64-bit free running counter. Each channel has an output compare
-register, which is compared against the 32 least significant bits of the
-free running counter values, and generates an interrupt.
-
-Required properties:
-
=2D- compatible : should be "brcm,bcm2835-system-timer"
=2D- reg : Specifies base physical address and size of the registers.
=2D- interrupts : A list of 4 interrupt sinks; one per timer channel.
=2D- clock-frequency : The frequency of the clock that drives the counter,=
 in Hz.
-
-Example:
-
-timer {
-	compatible =3D "brcm,bcm2835-system-timer";
-	reg =3D <0x7e003000 0x1000>;
-	interrupts =3D <1 0>, <1 1>, <1 2>, <1 3>;
-	clock-frequency =3D <1000000>;
-};
diff --git a/Documentation/devicetree/bindings/timer/brcm,bcm2835-system-t=
imer.yaml b/Documentation/devicetree/bindings/timer/brcm,bcm2835-system-ti=
mer.yaml
new file mode 100644
index 000000000000..f5804b5b0e63
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/timer/brcm,bcm2835-system-timer.ya=
ml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/brcm,bcm2835-system-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BCM2835 System Timer
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
+
+description:
+  The System Timer peripheral provides four 32-bit timer channels and a
+  single 64-bit free running counter. Each channel has an output compare
+  register, which is compared against the 32 least significant bits of th=
e
+  free running counter values, and generates an interrupt.
+
+properties:
+  compatible:
+    const: brcm,bcm2835-system-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: System Timer Compare 0 match (used by VideoCore GPU)
+      - description: System Timer Compare 1 match (usable for ARM core)
+      - description: System Timer Compare 2 match (used by VideoCore GPU)
+      - description: System Timer Compare 3 match (usable for ARM core)
+
+  clock-frequency: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    timer@7e003000 {
+      compatible =3D "brcm,bcm2835-system-timer";
+      reg =3D <0x7e003000 0x1000>;
+      interrupts =3D <1 0>, <1 1>, <1 2>, <1 3>;
+      clock-frequency =3D <1000000>;
+    };
+...
=2D-
2.34.1


