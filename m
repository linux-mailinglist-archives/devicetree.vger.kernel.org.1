Return-Path: <devicetree+bounces-249530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BA5CDCB5F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B581C30191A5
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE5A2E7BD3;
	Wed, 24 Dec 2025 15:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="VIj+5bEx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B877928313D
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590317; cv=none; b=Sio1jYx2pfquaYudoCe47JdjsKhPpJd3P6BYbI0FMT/KQmUGf1nsNwhiMy3LYS/L/elAWUptJdMShLGLmqO26Fq7YkQN9ui67zKxaoR2RCKcSki8mMn+c8cxKlfjyvMu6dHCey2gT33ttzJVu1TnD5vgSMrDGvnSzw+BZ9L60xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590317; c=relaxed/simple;
	bh=/XFBsT6bOPJdMrFhqM2OxGpyhSJ8PLQtianBu5UavFk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qh82txU/Qk1vXEffPX/NIXv08wokI4OOpl200rFSiN/d4D0+eJu2CA0VOv9MeYOTluy8BMNAytwYqNRnsCAm+85sj/VHi1+AxQLgrQsaq+n4CLDJgXYSCj3UIVfp6TCJBS+x9mHQ4Jf55o5yUOzvKDeanQ4nrdzi2MfDsdUUMz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=VIj+5bEx; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-64b8b5410a1so6792897a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1766590307; x=1767195107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPMvizX4aiSFiPWN4zq9M2mNvcGpcgi2Bqmh2GmQ0o0=;
        b=VIj+5bExOig92P6xrRdnG6CSEHGOxbRKflirQwfMDZtREMLxAS0CZllGEeexlc9WS2
         yXRgxnaPnjznjk8AKHGNyEnwGySkThODZAuM6N7hCwjnTnopA0fJq9FsH8zkNA+sPgvD
         byq2xkt4pJGnEjN4gRPPbHVQZCWY5StT9+i6Vu3nEuee7rJMs9hSA5uyXIT0fIUm1/xA
         P8YKICcQAdnanFMvygpUU/fu60wknzr+rViXYJzRfqR/o3mTxyWPuSSXukaUoQGFsU4L
         3Vn3lEucPNXhBw6cV5repRRXQCTdQMOfKfjIxBE2azmX/aL7a0Wi0XZ/cJFlbkLP6W79
         v1sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590307; x=1767195107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IPMvizX4aiSFiPWN4zq9M2mNvcGpcgi2Bqmh2GmQ0o0=;
        b=AZR4ywstsYgRCKoFPuJi7VKg2aM7nLHusKJ37yzs7PpCqks5LNA9ZBQ/p9H6I4Qmtg
         wUZJVutTvm1hdW7rVUywt+zcW0yInKTOg4aYnzkSNd8Sld1YvfkQdgmkNjs6N8Jdu2I5
         Wf1k+yu+0zQ9nyYbUJCg4pdkh1GMKwN74IZnvMKBQJK2ikGVDgcsuamtM/msGTxupj6e
         PFDtfCWwdDk/nnuN6+DW1e/yVAKIcPrvb5qJ98YW+jkCpJwjbXO95Pi5b+03XAstqj4R
         c1rZHhqdTqxjgyrIGTHdz0Icd9fVYoQmHfOgixzL16OIvASmDCCF7Ziy3uB+1uWIf5nl
         Lhcg==
X-Forwarded-Encrypted: i=1; AJvYcCXD+4u+KwpxygsiL3j53pjvF0+2YLiasAsqkst75xp3TuH14GP01tPo2mqXDsOgZMGjfs53oSlZBcbH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl2rhnEI/m+zvfA2jicKQAkJLf6+ksslxwKt+nSbOow3yyKK5i
	/4fodq9wx6bDXu8k0UlWCzITLFMeW3EVUn71CYZNk/7TQaHwH/BXhSdoGnnA+1hengZVWDiFdB0
	hxz3RCuOp
X-Gm-Gg: AY/fxX6AKSv8i1AKqq/a4Qk1HIBlXw3/7TQWq53bt/gVomgiKy7iCQa1lAPB1yGY2fW
	67MHTQyrScTzrFgFccWk1Z1hkh8tnNkLD8DOT+sfn1rs7GucYwoVdUXtyp3FZIypjHy0HRgU8m4
	8AuEtu72lko/FHooA2kbxVM5/ocRtYD0OabhHuciI7rueghPaDAdT936XUZ/LoVuClKOkOSsFM6
	boDPy0dlJgLbrCMCdbzi+nbky1zBOe8hqBVR7DsG7ecU4H8ygtCTmQxPajGQOh8xYg/GM0KVMyO
	ivgSiZRNZDzndRlqSRJlkvwcSIiFKGcHhDuPTpXzVE17FpD0P8k2oxpJaQao0rrLKO5QhlMJDNh
	Pgqg8Mau1Lg3Gh0Acbp+PJzoutACkt1b3ivQv/YqbyN19b6iFJar/vhpfITz3PcAZz4Nx8WNCPZ
	WBHmSW30TtkUJhbEEG1sHhL0DOneZm
X-Google-Smtp-Source: AGHT+IHwTgoJWLEso+A946j2blMKEWqz6uE5I08Gnk6feDE3r7jM3E2NW/e7qsJaXZv87W/jfEeMvg==
X-Received: by 2002:a5d:4e46:0:b0:430:fe22:5f1c with SMTP id ffacd0b85a97d-4324e703af5mr14626447f8f.59.1766584386173;
        Wed, 24 Dec 2025 05:53:06 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:39e4:e84d:192a:5c5c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm34494677f8f.35.2025.12.24.05.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 05:53:05 -0800 (PST)
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
Subject: [PATCH 3/5] dt-bindings: Add Bao I/O dispatcher driver binding
Date: Wed, 24 Dec 2025 13:52:15 +0000
Message-ID: <20251224135217.25350-4-joaopeixoto@osyx.tech>
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

This patch adds a Device Tree binding for the Bao I/O Dispatcher kernel
module, which can be loaded into backend VMs. The I/O Dispatcher
provides the bridge between the Bao hypervisor Remote I/O system and the
frontend device model in userspace, offering a unified API to support
various VirtIO backends.

The dispatcher handles hypercalls to the Bao hypervisor, IRQ/eventfd
forwarding, and provides a character device interface for frontend
devices, enabling efficient communication between the hypervisor and
userspace device models.

The binding documents the following properties:
  - compatible: "bao,io-dispatcher"
  - reg: Memory regions for the dispatcher (multiple VirtIO devices)
  - interrupts: Interrupts used by the devices
  - interrupt-parent: Parent interrupt controller

This enables kernel drivers to correctly instantiate and configure Bao
I/O Dispatcher modules based on the DT description.

Signed-off-by: João Peixoto <joaopeixoto@osyx.tech>
---
 .../bindings/bao/io-dispatcher.yaml           | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bao/io-dispatcher.yaml

diff --git a/Documentation/devicetree/bindings/bao/io-dispatcher.yaml b/Documentation/devicetree/bindings/bao/io-dispatcher.yaml
new file mode 100644
index 000000000000..7795f55d3ff9
--- /dev/null
+++ b/Documentation/devicetree/bindings/bao/io-dispatcher.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/bao/io-dispatcher.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Bao I/O Dispatcher Device
+
+maintainers:
+  - João Peixoto <joaopeixoto@osyx.tech>
+  - José Martins <jose@osyx.tech>
+  - David Cerdeira <davidmcerdeira@osyx.tech>
+
+description: |
+  I/O Dispatcher device for Bao hypervisor guests. Handles multiple VirtIO
+  backend devices and their interrupts.
+
+properties:
+  compatible:
+    const: "bao,io-dispatcher"
+    description: Device compatible string.
+
+  reg:
+    description: |
+      Memory regions for each VirtIO backend device.
+    maxItems: 20
+    type: array
+    items:
+      type: integer
+
+  interrupts:
+    description: |
+      Interrupt numbers for each VirtIO backend device.
+    type: array
+    items:
+      type: integer
+    minItems: 3
+    maxItems: 3
+
+  interrupt-parent:
+    description: Parent interrupt controller node
+    type: string
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-parent
+
+additionalProperties: false
+
+examples:
+  - |
+    bao_io_dispatcher: bao-io-dispatcher {
+        compatible = "bao,io-dispatcher";
+        reg = <0x0 0x50000000 0x0 0x01000000
+               0x0 0x51000000 0x0 0x01000000
+               0x0 0x52000000 0x0 0x01000000
+               0x0 0x53000000 0x0 0x01000000
+               0x0 0x54000000 0x0 0x01000000>;
+        interrupts = <0x0 0x08 0x1
+                      0x0 0x09 0x1
+                      0x0 0x0a 0x1
+                      0x0 0x0b 0x1
+                      0x0 0x0c 0x1>;
+        interrupt-parent = <&gic>;
+    };
-- 
2.43.0


