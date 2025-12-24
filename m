Return-Path: <devicetree+bounces-249532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A163CDCB87
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:37:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C82AA3019BFA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D70E02E8B9D;
	Wed, 24 Dec 2025 15:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="cnpKLPCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172242DAFD7
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590450; cv=none; b=m/xEk2ow0pC/ulLJAKaGuy+ter2Dxm41F1dEZ+PEHIoOphGNW1CSsdDv6MGCXOedZtKwMH08cruaiUb9buWJlst1NCU+R/mlSkzO8/xAuhp7jIxpPbgu20Vf2/R68ar7gouh2Wzp7V6YvC/Nepem2ZixCFD8+9h4yyRRk1X1swA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590450; c=relaxed/simple;
	bh=V8fJyoE3LNmPBgSO30v6KNG/sPF/vAGaGrWf60SkB60=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AMTLfTgaBnl8Rnp6YFdc5ya6HZPQ7ZClQxgQ/92S71SA4EHjVkzsnd0+4SNKqbCmSipsMkAn1K8cikt/3dt69yT8zmIsbO84bHBPKTzKkMNXVmie/SMLnirGaEmL9xK0h/nZ19bGQdLzDaCtoZp9ZVubFuMuDcNvHthgy7J46e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=cnpKLPCm; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47d3ffb0f44so2410615e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1766590442; x=1767195242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehfxbEVnQJDewCWJrGs2ak+KMNFyhQdtz7cgsTLXZDQ=;
        b=cnpKLPCmJEBctkoDlA32cfd6liJHX0rRnD0yKE0XpliO8bRJIie6baMn3GN6WZmOZJ
         aFcT6h5eauXsH+s6Mxx89iqUOQD7aqS7ys66pxX/TrUnN2smq2J+rjca17H9GZ2k3YHg
         /D5X1J84UuVnIIZ0tCHZTdZBj+pfSEwrociT3Rl5aOEBTHzdqsZU1OtkPxUEzJsWouq0
         FLosziu2/eXioFmA3Nfd0y0mjPdamJIhPsAJ8j8SBJCIYaxtic/xt5GPxhdqijKWEyGm
         bK9B7EKu1Wsd80sApNAOXyHRTw7DqI2anCa9kPag8gNOQoH1l95WyFdcSfZlJRhu6dUW
         PaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590442; x=1767195242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ehfxbEVnQJDewCWJrGs2ak+KMNFyhQdtz7cgsTLXZDQ=;
        b=Z2qQnGy9o+NWoTqdAxASeUfe9LB5u+lo/2yQucTeSCoB/b8KD7EV1HAt265ujRUSkE
         3ItZniwNwI1ufdyQqxN4StL/NL8CYITBRSwsVDDyR08BVzNFPNmbfIpCxwa5n1ZO8usA
         chuQlrawlk/q5G5M06c46vSViKzO4JHvhBTzurDz39tzhye4Od9lP+eOuF/0CQejpOob
         EK+E9l85Ss4BDgRx+PuOfS1Denvhn0tLz06akjbS2vt24JxwqBJiCbI7NDqI14dCL8F5
         zRK1gs0gJ0DUYnaGDOi2KQAx9juhkL7uzM5LnPLbpF2pJckb+kKQqbcam/MBzgj5vqAB
         AIxw==
X-Forwarded-Encrypted: i=1; AJvYcCXmua1eYQHgYsShZ/1Nou5bgxwI7+tZBrMIznMsSZTKTCpjvsacF16iT4EfPnsHnqJuqrGrgcii+UFU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5vH026xRNEFUmSCsGdDMbJHvn9vbCX+hiO/fTAzmcYD3MS96u
	H68NxggvjGPkUSgcQpNkxOvc6YsrYZr6UV7SlOMdxAjKy+PaaqgmEnpptA1r6Msco/ZJHSMt31o
	VqEphkPAO
X-Gm-Gg: AY/fxX5drZxbMTvuHaERwSqS2IgvMlK/IYSaf1+8a6xNWmmZ20XNocuaOac2UT4UWZn
	0mj50T0n2PoSfsWYqQEUT9AMEdRKYNvR2N2+J0OvWM39rg5swO59lvoFRsvy7V44mMQbDRi+jbg
	d292vVqU0VJSDnVnfYQg+vauy9VSYZdAc8VOS2X1xLmU/kU9ycEgMUgqVyHoew1Xht+lyue3LX0
	4Gv9aD0LCZgyuRh9WRBfgeYm3Z+24/syCxed19DPvrg2tFO1otkD3Vr4gDyB4deDcaIl4mCJeGZ
	7XXUxego4J8+h3K3N6ZZwArXuhhDiwl9troRQ9oLMBnHJXsTN7ds/xdFIgGA01YJC6G5wbbG1Kh
	YIaKT1HqzjAt6CdLC9tT1GMvWRfVumNiYhpVno2QT9DSJll+ZgzlQuYu0MQJmr6zDLWaP45SivC
	LGFsei0ys9jxTddILiag==
X-Google-Smtp-Source: AGHT+IFqP19dt2VG1hPpM2WYJhNqheRS/5whksM3UdvdL2gWh2MKdA11saX7GOb3KMgk63dxD3aa3A==
X-Received: by 2002:a05:6000:2909:b0:42b:2dfd:5350 with SMTP id ffacd0b85a97d-4324e7077c8mr21170738f8f.56.1766584379482;
        Wed, 24 Dec 2025 05:52:59 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:39e4:e84d:192a:5c5c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm34494677f8f.35.2025.12.24.05.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 05:52:59 -0800 (PST)
From: joaopeixoto@osyx.tech
To: linux-kernel@vger.kernel.org
Cc: ajd@linux.ibm.com,
	alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	bagasdotme@gmail.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	corbet@lwn.net,
	dan.j.williams@intel.com,
	davidmcerdeira@osyx.tech,
	devicetree@vger.kernel.org,
	dev@kael-k.io,
	gregkh@linuxfoundation.org,
	haren@linux.ibm.com,
	heiko@sntech.de,
	joaopeixoto@osyx.tech,
	jose@osyx.tech,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@armlinux.org.uk,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	maddy@linux.ibm.com,
	mani@kernel.org,
	nathan@kernel.org,
	neil.armstrong@linaro.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	robh@kernel.org,
	will@kernel.org
Subject: [PATCH 1/5] dt-bindings: Add Bao IPC shared memory driver binding
Date: Wed, 24 Dec 2025 13:52:13 +0000
Message-ID: <20251224135217.25350-2-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251224135217.25350-1-joaopeixoto@osyx.tech>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

This patch adds a Device Tree binding for the Bao IPC shared memory
device, which provides a standardized description of the hardware
interface used for inter-VM communication in Bao-based systems.

The binding documents the following properties:

  - compatible: "bao,ipcshmem"
  - reg: Memory region for the shared memory device
  - id: Unique device identifier
  - read-channel: [offset, size] for reading from the shared memory
  - write-channel: [offset, size] for writing to the shared memory
  - interrupts: Interrupts used by the device

This enables kernel drivers and userspace tools to correctly
instantiate and configure Bao IPC shared memory devices based
on the DT description, facilitating efficient communication
between VMs.

Signed-off-by: João Peixoto <joaopeixoto@osyx.tech>
---
 .../devicetree/bindings/bao/ipcshmem.yaml     | 99 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 2 files changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bao/ipcshmem.yaml

diff --git a/Documentation/devicetree/bindings/bao/ipcshmem.yaml b/Documentation/devicetree/bindings/bao/ipcshmem.yaml
new file mode 100644
index 000000000000..398ac610c29f
--- /dev/null
+++ b/Documentation/devicetree/bindings/bao/ipcshmem.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/bao/ipcshmem.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Bao IPC Shared Memory Device
+
+maintainers:
+  - José Martins <jose@osyx.tech>
+  - David Cerdeira <davidmcerdeira@osyx.tech>
+  - João Peixoto <joaopeixoto@osyx.tech>
+
+description: |
+  Shared memory based communication device for Bao hypervisor guests.
+  It allows the kernel to interface with guests running under
+	the Bao hypervisor, providing a character device interface
+	for exchanging data through dedicated shared-memory regions.
+
+properties:
+  compatible:
+    const: "bao,ipcshmem"
+
+  reg:
+    description: |
+      Memory resource for the shared memory device.
+    maxItems: 4
+    type: array
+    items:
+      type: integer
+
+  id:
+    description: Driver instance ID
+    type: integer
+    minimum: 0
+
+  read-channel:
+    description: |
+      Defines the shared-memory region used by the guest → host data path.
+
+      The value is a 2-cell array describing a sub-region inside the main
+      `reg` area:
+        - The first cell is the byte offset from the beginning of the
+          shared-memory region specified in `reg`.
+        - The second cell is the size of the readable region in bytes.
+
+      The driver will only read data from this sub-region.
+    type: array
+    items:
+      type: integer
+    minItems: 2
+    maxItems: 2
+
+  write-channel:
+    description: |
+      Defines the shared-memory region used by the host → guest data path.
+
+      The value is a 2-cell array describing a sub-region inside the main
+      `reg` area:
+        - The first cell is the byte offset from the beginning of the
+          shared-memory region specified in `reg`.
+        - The second cell is the size of the writable region in bytes.
+
+      The driver will only write data into this sub-region.
+    type: array
+    items:
+      type: integer
+    minItems: 2
+    maxItems: 2
+
+  interrupts:
+    description: |
+      Interrupt specification for the device.
+    type: array
+    items:
+      type: integer
+    minItems: 3
+    maxItems: 3
+
+required:
+  - compatible
+  - reg
+  - id
+  - read-channel
+  - write-channel
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    bao-ipc@f0000000 {
+        compatible = "bao,ipcshmem";
+        reg = <0x0 0xf0000000 0x0 0x00010000>;
+        read-channel = <0x0 0x2000>;
+        write-channel = <0x2000 0x2000>;
+        interrupts = <0 52 1>;
+        id = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..c047fbd6b91a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -223,6 +223,8 @@ patternProperties:
     description: Shenzhen AZW Technology Co., Ltd.
   "^baikal,.*":
     description: BAIKAL ELECTRONICS, JSC
+  "^bao,.*":
+    description: Bao Hypervisor
   "^bananapi,.*":
     description: BIPAI KEJI LIMITED
   "^beacon,.*":
-- 
2.43.0


