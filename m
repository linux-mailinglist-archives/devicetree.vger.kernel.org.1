Return-Path: <devicetree+bounces-252446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C1DCFEF3A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:51:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDF0830DB485
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A141D38757F;
	Wed,  7 Jan 2026 16:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="iLvx/tSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25B437516F
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803393; cv=none; b=WV902umvMVvMx9N8JvyJTvwzchnEBC22Jt60uVkUFlNukKPPL/OS0BiwwfPw3jJVSm3jTKHzRCRcm4QtefPLPJWTocjLV1Bx51KDPlS/qUPy72Wm0kktFjGHpEctmCeuMJbuJ/ibOELcqmO/mGUrvDsfibBgM+GiXpY8Q2riXmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803393; c=relaxed/simple;
	bh=rLPl1zE7Upmz6OuVCre9yIxlCuXxDlH9iwpLAwe5XqA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C1ulGM85avdoqL01enZbyqfXx1SYszAKV1wFqm/X5Og0uLV6cMZuVny2gz8F9N47srUrv59ohvRBKTCvZbtEfTUyopVfUZgAKYId4vZixKCVWW728NCturC45W7VguiioP0/jcr5vw5UlK9mvuBDVT3q7f/GusxBkkU3XYY/Z4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=iLvx/tSg; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-4327790c4e9so1108280f8f.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1767803377; x=1768408177; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NUMimnmdXF+2lmQCSaKYy80Xx8SLq3LRSYV8Quqc2EA=;
        b=iLvx/tSgpPTvGL+P9DpQHrzJo6RPGDMNLhBbwyw+AMJwYO9hhcH5yyM+w1SY7/27fP
         W9gNXX/WNbQvGhECwUai6NdO3bLN8RJl/dT9NWbcJdZ3zEDMvkRKwRfNCj2IkkHmx/Gj
         /2ncCfJEpeUL4EaxYfLAwZ8Q9gH41bx6xYlCkltYg6ZXij3ShPGZaEtRxa9K4GHVayVi
         JYnEjcdcD6Xpz1fw122nbrth0gMIkWTayG7rZpHhfO+l5+GrEfsJ3YHyUMo+FCEumUBy
         4hnB2Zm7Xzs/yzVowYBVu5REU6zsPwjJFbmc0znU5eGUkJG0aJUnwuqGEsTqEToOGz20
         zxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803377; x=1768408177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NUMimnmdXF+2lmQCSaKYy80Xx8SLq3LRSYV8Quqc2EA=;
        b=N2WZ5FA8e32AzhGAqD/5mdUDCtdZZv85RTd+ITNaO+6EJYVqYvYlNfUJT2fRixnk/U
         ZhwSLkq3gedmWBPP4CCmlDl8k5z7gQCYxtk9lwNYmf4WdUtqQRXg9ANimaQKIxphgmo7
         WgqKrrLEHbJj42YUOxo+ZZlavw7CxineDJP6eZ9BqvGDuvp7cqq3T4sJSo+/h9uUnp9x
         vVTh5dyZB8Nrq/yC6r1xRW9VMOuD4nIZaYCOY89dRu2Zm2jDDAFQ6YZNDPP5EuzSOBcU
         0JIwVEJSrmOjDMBBBgikl3XaLUU2oifQj5hn4pQKxBvCq4/7e3I/NleRV3p8+FYDlTlu
         xncQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwaYalgzshcgqTF3KjW6NvUpVQqU31/07mhKGjyNd/Xp87B6TH+DfvLimT38mdRdJ8A3Olpx1MPBz6@vger.kernel.org
X-Gm-Message-State: AOJu0YywlP6B8yBrCaotWNxLChge4veqS+Ow8Wsx5K+iQbE8Ohw/kTON
	anzM7mPW41b9T0y/JZK9clyQlOAZPI7DR7lE/qkdIcl3rJQPDylFwkfho1O86z3iVWGO
X-Gm-Gg: AY/fxX7kBXb8wVd5gcmCmcVZYHMDxNwLze9U+eT7qiNeCYpoOLsJG9Id3bIo5ceUu50
	ntwRwK/lUQ33w24XCJDjWrelfe2gZZRMCdT/VKfutIakju6YA7nyw6Emzvrgs/YHkhM2LR+r/fK
	pn+9ag9azsBHKe+lNnApvK1usoml+JJLGBhKQ6W2tR7Ot29qEViCcaoLaZJLjsQFk2QOOHjySG/
	ULvngdM9CUraZ4khcvrxOjb2jAw13u8JTLr9yuf47k6I0pTnk+L5kNVVrvyVoksMplQNI8VsTCr
	Ht1KFMyesZRTcyErXuXlRs1ftmp3LfcSnyD9SVGHCwpdIV6auoZnnSZnD2U96LcaQJGNKDTsfKt
	zTU5tGmG+FTQxEoRLAHk8rVnVvAICzWK25uCYYEL1rQeOT1HHncstSe8g7CtzFcCNp0cO2oeM6s
	oZbHM+4CR+nqvsAEMyoQ==
X-Google-Smtp-Source: AGHT+IHbte2Z9gfsJb68imADTi55zsYUmZZE1DMqWC4ozVwMek+FiE+B/1QJjWhTUxGd71ZKE6jVRA==
X-Received: by 2002:a05:6000:310b:b0:432:5bac:3914 with SMTP id ffacd0b85a97d-432c374f46cmr3857592f8f.40.1767803376686;
        Wed, 07 Jan 2026 08:29:36 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:4a3c:13be:a1c0:7b9f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm11117030f8f.42.2026.01.07.08.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:29:36 -0800 (PST)
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
Subject: [PATCH 3/6] dt-bindings: Add Bao I/O dispatcher driver binding
Date: Wed,  7 Jan 2026 16:28:26 +0000
Message-ID: <20260107162829.416885-4-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107162829.416885-1-joaopeixoto@osyx.tech>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
 <20260107162829.416885-1-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

This patch introduces a device tree binding for the Bao I/O Dispatcher,
a device used in backend VMs running virtualized devices (e.g., VirtIO).

Signed-off-by: João Peixoto <joaopeixoto@osyx.tech>
---
 .../bindings/bao/bao,io-dispatcher.yaml       | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bao/bao,io-dispatcher.yaml

diff --git a/Documentation/devicetree/bindings/bao/bao,io-dispatcher.yaml b/Documentation/devicetree/bindings/bao/bao,io-dispatcher.yaml
new file mode 100644
index 000000000000..8ca450e4b9d5
--- /dev/null
+++ b/Documentation/devicetree/bindings/bao/bao,io-dispatcher.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bao/bao,io-dispatcher.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bao I/O Dispatcher Device
+
+maintainers:
+  - João Peixoto <joaopeixoto@osyx.tech>
+  - José Martins <jose@osyx.tech>
+  - David Cerdeira <davidmcerdeira@osyx.tech>
+
+description: |
+  I/O Dispatcher device for Bao hypervisor guests that run virtualized
+  devices (e.g., VirtIO).
+
+  This device is only required in backend VMs, which are responsible for
+  performing the actual I/O operations on physical hardware. Frontend
+  VMs, which only consume I/O services, do not require this device.
+
+  The I/O Dispatcher provides access to one or more backend devices.
+  Each backend device is associated with a contiguous shared-memory
+  region used to exchange I/O buffers with the respective frontend
+  driver, and an interrupt used by the Bao hypervisor to notify the
+  backend VM of pending I/O requests.
+
+properties:
+  compatible:
+    const: bao,io-dispatcher
+
+  reg:
+    description: |
+      Contiguous memory-mapped regions for each VirtIO backend device
+      managed by the I/O Dispatcher.
+
+      Each region is used to exchange I/O buffers between the backend
+      and frontend devices. A single region corresponds to one
+      backend device.
+    minItems: 1
+    maxItems: 64
+
+  interrupts:
+    description: |
+      Interrupts associated with the VirtIO backend devices.
+
+      Each interrupt corresponds to a backend device and is used
+      by the Bao hypervisor to notify the backend VM of pending
+      I/O requests from the associated frontend driver.
+    minItems: 1
+    maxItems: 64
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
+    bao-io-dispatcher@50000000 {
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


