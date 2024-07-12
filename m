Return-Path: <devicetree+bounces-85313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 358C892FA01
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:12:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E15DA282CB6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 12:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D0416D327;
	Fri, 12 Jul 2024 12:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D2EECQjX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055D416B3A5
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720786317; cv=none; b=K3kfOWjluhBMVnmdvL9vDb0hJwkpHdS7j6DCp91F9yxSqfwGspthb4txkCrh27rpqDRLI2sISkNc18x9Wq3VJdn91rtxyRANLc4W1/ufNJdZ714Ca/X3JUJeiF9I4B64KkkXeokoTLnPSVaFDNBciHPRZjoB5zyX/dPAGuChEF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720786317; c=relaxed/simple;
	bh=peaNIRSDh7na+pItaZXKqhaI1DhMoj12CQLzovOWPhE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f1Fb7uz5Rr9v19Unz1QDdIKxiLDPjKmWHXejoBSdmHAOXM7nLqGQ3w0PAAsANZ2iDim/e9kPZx2pfkccZO4GONlIM9dHHOt1bWC8XDXd3px2QMztFmXu989GLO0NvgT2MZrrGgqJQDK5QoKYoPgGhSJw3lh46TTnaTqsoluTLiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D2EECQjX; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57d05e0017aso2604984a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 05:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720786312; x=1721391112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1h1g9uMI//zZkOsywKROm75LHzYSQkW5aZxXVlXrI/g=;
        b=D2EECQjXOUGR4wsWScsfeoYIAyPkEbXkRUZ+/iAbFSnJxw/I4R6fKk392Dub94UhPk
         tQUsl9G0g/qBsQSTgumzBgloFjLugrLGs676dQPkIQaUQ2F1TzGXCXVME6EWdItQ4Gbd
         Cna4GktojirDz9/LRr7n5/4dHLm58nfQXhljD0iAIcRjLhqfiZkm+4688s/GCb+9CuaD
         qhY47DUTH8/v3HtGIoG8wjg/bfvA7CFfMsGkinsakAGWqK73syv4o2hlH+XHNucVEb0D
         McB3vJtzYGpb9vgfhbZCi7HLnSmp+bdAU3BMU8SQ7NblAwTgWVsjcCeQZ4tPWme25nyw
         pPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720786312; x=1721391112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1h1g9uMI//zZkOsywKROm75LHzYSQkW5aZxXVlXrI/g=;
        b=A10MAgiEXzG1975y9uuUsFFZaT0A6v+qqsV4io2lsi9cCMrFn+JDi0/r6UbPU12hat
         SfLF3b9i49GB2751y4WyqhHsvgrksUB+eRCztk+eaR9gjj1xO3qXKhIjpJMe3Q9xj385
         rcr7kY/nBcsJqUoa16/K3pxwVYvV0j+RSwkwJ4z3brHa08vML6j2tfbEqPAWfaTpYNLk
         uYe42TyF0Dh7D+EUwb4rh+3HjFsU4co/vxB/xy4TSO+iOCgfY5UPYnIu33rdzdiVOku8
         QJLIOMP73AV2UrEGsXRfJ6KHNjPwodKs3rdQi1lphv7FnLWffuimR5A7M+W38f7Dsd+6
         7wDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUBTqfcMHRFTbxy5X+dJc7a9d78I0ufS6w6vPe/wtw2bNJjF8AlXWpjfSBA0/B1qMGFWvK0eCpCVi0dAtXm2TSP3gNZDbWDYRu/g==
X-Gm-Message-State: AOJu0YyqFurSciFhHA3Ne1i7J5IEMPCR8bXQcRGP0dYnHJpczePa+tVM
	1Md0BbZzrUIValgekr45NkbbkTohDIyyHAhICP3PV1n93ez+9nhcKwSGfKpu+JGokW46RbS0EH2
	X
X-Google-Smtp-Source: AGHT+IFlizhopdrciUI5vILUpYCou1a9/j8ia4PSXRPMY/ZkvR4wWaRFwWwG9z9Av85Qbo7akse2wA==
X-Received: by 2002:a17:906:7c4d:b0:a77:cdaa:88a3 with SMTP id a640c23a62f3a-a780b6b30f8mr691602766b.27.1720786312302;
        Fri, 12 Jul 2024 05:11:52 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a6e58e0sm339527266b.85.2024.07.12.05.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 05:11:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marek Vasut <marex@denx.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v3] dt-bindings: incomplete-devices: document devices without bindings
Date: Fri, 12 Jul 2024 14:11:46 +0200
Message-ID: <20240712121146.90942-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are devices in the wild with non-updatable firmware coming with
ACPI tables with rejected compatibles, e.g. "ltr,ltrf216a".  Linux
kernel still supports this device via ACPI PRP0001, however the
compatible was never accepted to bindings.

There are also several early PowerPC or SPARC platforms using
compatibles for their OpenFirmware, but without in-tree DTS.  Often the
legacy compatible is not correct in terms of current Devicetree
specification, e.g. missing vendor prefix.

Finally there are also Linux-specific tools and test code with
compatibles.

Add a schema covering above cases purely to satisfy the DT schema and
scripts/checkpatch.pl checks for undocumented compatibles.  For
ltr,ltrf216a this also documents the consensus: compatible is allowed
only via ACPI PRP0001, but not bindings.

Link: https://lore.kernel.org/all/20240705095047.90558-1-marex@denx.de/
Link: https://lore.kernel.org/lkml/20220731173446.7400bfa8@jic23-huawei/T/#me55be502302d70424a85368c2645c89f860b7b40
Cc: Marek Vasut <marex@denx.de>
Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
1. Incorrect->Legacy
2. Drop ohci-littledian
3. Drop unittest

Changes in v2:
1. Rename to incomplete-devices.yaml
2. Add many compatibles based on Rob's feedback, rewrite descriptions in
   the schema.
---
 .../bindings/incomplete-devices.yaml          | 137 ++++++++++++++++++
 1 file changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/incomplete-devices.yaml

diff --git a/Documentation/devicetree/bindings/incomplete-devices.yaml b/Documentation/devicetree/bindings/incomplete-devices.yaml
new file mode 100644
index 000000000000..cfc1d39441b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/incomplete-devices.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/incomplete-devices.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rejected, Legacy or Incomplete Devices
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+description:
+  Some devices will not or should not get a proper Devicetree bindings, but
+  their compatibles are present in Linux drivers for various reasons.
+
+  Examples are devices using ACPI PRP0001 with non-updatable firmware/ACPI
+  tables or old PowerPC platforms without in-tree DTS.
+
+  Following list of devices is an incomplete schema with a goal to pass DT schema
+  checks on undocumented compatibles but also reject any DTS file using such
+  un-approved compatible.
+
+  Usage of any of following compatibles is not allowed in Devicetree sources,
+  even if they come from immutable firmware.
+
+properties:
+  compatible:
+    oneOf:
+      - description:
+          Rejected compatibles in Devicetree, but used in ACPI-based devices
+          with non-updatable firmware/ACPI tables (via ACPI PRP0001)
+        enum:
+          - broadcom,bcm5241
+          - ltr,ltrf216a
+
+      - description: Legacy compatibles used on Macintosh devices
+        enum:
+          - adm1030
+          - bmac+
+          - heathrow-media-bay
+          - keylargo-media-bay
+          - lm87cimt
+          - MAC,adm1030
+          - MAC,ds1775
+          - max6690
+          - ohare-media-bay
+          - ohare-swim3
+          - smu-sat
+          - swim3
+
+      - description: Legacy compatibles used on other PowerPC devices
+        enum:
+          - 1682m-rng
+          - IBM,lhca
+          - IBM,lhea
+          - IBM,lhea-ethernet
+          - mpc5200b-fec-phy
+          - mpc5200-serial
+          - mpc5200-sram
+          - ohci-be
+          - ohci-bigendian
+          - ohci-le
+
+      - description: Legacy compatibles used on SPARC devices
+        enum:
+          - bq4802
+          - ds1287
+          - isa-m5819p
+          - isa-m5823p
+          - m5819
+          - sab82532
+          - SUNW,bbc-beep
+          - SUNW,bbc-i2c
+          - SUNW,CS4231
+          - SUNW,ebus-pic16f747-env
+          - SUNW,kt-cwq
+          - SUNW,kt-mau
+          - SUNW,n2-cwq
+          - SUNW,n2-mau
+          - SUNW,niusl
+          - SUNW,smbus-beep
+          - SUNW,sun4v-console
+          - SUNW,sun4v-pci
+          - SUNW,vf-cwq
+          - SUNW,vf-mau
+
+      - description: Incomplete and/or legacy compatibles for unknown devices
+        enum:
+          - electra-cf
+          - i2cpcf,8584
+          - virtio,uml
+
+      - description: Linux kernel unit tests and sample code
+        enum:
+          - audio-graph-card2-custom-sample
+          - compat1
+          - compat2
+          - compat3
+          - linux,spi-loopback-test
+          - mailbox-test
+          - regulator-virtual-consumer
+
+      - description:
+          Devices on MIPS platform, without any DTS users.  These are
+          unlikely to get converted to DT schema.
+        enum:
+          - mti,ranchu
+
+      - description:
+          Devices on PowerPC platform, without any DTS users.  These are
+          unlikely to get converted to DT schema.
+        enum:
+          - fujitsu,coral
+          - fujitsu,lime
+          - fujitsu,MB86276
+          - fujitsu,MB86277
+          - fujitsu,MB86293
+          - fujitsu,MB86294
+          - fujitsu,mint
+          - ibm,axon-msic
+          - ibm,pmemory
+          - ibm,pmemory-v2
+          - ibm,power-rng
+          - ibm,ppc4xx-spi
+          - ibm,sdram-4xx-ddr2
+          - ibm,secureboot
+          - ibm,secureboot-v1
+          - ibm,secureboot-v2
+          - ibm,secvar-backend
+          - sgy,gpio-halt
+          - wrs,epld-localbus
+
+required:
+  - compatible
+  - broken-usage-of-incorrect-compatible
+
+additionalProperties: false
-- 
2.43.0


