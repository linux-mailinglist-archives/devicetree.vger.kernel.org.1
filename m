Return-Path: <devicetree+bounces-231509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5971C0DBBA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F240B1884AA1
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20CA4265281;
	Mon, 27 Oct 2025 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="exODC324"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6FC25F998
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761569714; cv=none; b=RHhqtq15LNLSvl0U61Lfh90Ntc2p81cfs0Y5FOCjjo08Y6XKDiqGgW6zosyRALsIN1evjFp8DlnG6gBlJWU6uoXoPqJExq10XrVUHZeIYq76uOi2iqD9Jj1o3j4dQJPUt8vENUN63WohfDu0jy4F1MmCqfpyMgtT0h64+NpepcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761569714; c=relaxed/simple;
	bh=Kb8uM3f8qILwL0GDllY38o85KB9kJ69KatRC0T8EZTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Rh4/gavD5iF8CNtQ/aHqcEJHzLb66ppMtS0+hHvZt4WkpLakTRQJRgszl1/bcVD/SMXYtxRBwovxu3QMKQ+R8+kSYMZUAeYvDUTW83uuK0ts6NEBarrLv3TUjBvsUAzf2bIN3g16VvYLE6W/FdnQmbO/W3pKFH0/FGhDP13gVz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=exODC324; arc=none smtp.client-ip=209.85.166.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f67.google.com with SMTP id ca18e2360f4ac-945a5731dd3so51657039f.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761569711; x=1762174511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhpKl/nn+BHTlTr14XOcXWGwJsMuOmqiPlR2ItDHNmo=;
        b=exODC3241u8WAzsD21msZI35CFcZKgWnLu50wEWERIdbCFC7h74xHfmx+uKH9ocuWF
         BTn1om1WijRmWF3diGHOp2TLBrKk0iaGE5L2swD9V9XAItH2JwRdAOg4bhx2cDkuvYYp
         +yluNoDEFYhuY3mHtt79nvrW5sFviBwFKvr9sX5C8dryAcpiR/VZ9PY76twPiHBtpoI9
         QGLSeRwmTjaUDGgIdmvNXxW8klmDry8DjdyhmWJ0UyqTQ8B3hZKG4+M5oCkDbBnhOfh6
         Gce/qZV1KBuhj5tICzRbP4cUHPOg4u8m3Usk1IULkgiUUnzJfqKg0Phkd24ID9729LiP
         fR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761569711; x=1762174511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhpKl/nn+BHTlTr14XOcXWGwJsMuOmqiPlR2ItDHNmo=;
        b=DS/oyFqqdMCaUgsNYLKXl0H9n8Zl5WDGtP/fpC2vxuo7X4uyHAo2t0648YEp8ANyfW
         PeOQpS7ej/fei+oi2P7W4LmzaZEy508ySn0b8bVC9TWIcYJ8F3uKDTogGwFTqF0dHU1n
         QJMNPWX2F3Uod7XfPx5MEj56z/blYu9GyQKQpasxT6opfRCQjw/kgDoJiN+wFV+qWYLf
         eKx/vt9dv/NCEeLoKF3+bZrQTgiKjn2FzR87uzdsa0+jFGUFGRdHsQxDBMXXWoMGPsto
         GAsAHipL9qTNo/xC7gPmIRgrKqE7r1G/vN9Y/2onlFJ6MzpW96sO3MnjRTHil53Q17Hl
         oYNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgtM5Ahb6IRQS7WOMAhIElGHlZXHknMc3yjnRM4iPaUtv32Ry0CO8ZdOe9QM3XffEcHAmvSXAV/WD1@vger.kernel.org
X-Gm-Message-State: AOJu0YxqQUmokzyhJpBWt72aJTa+mIvr1CUC2am2wPS/di1Rb1EhEw4D
	vYo+Ss1F213wLiAHT97T+ZDcAoZ1dJ1p2xnQabhRMRrK6khTu2l2vSreQy+NKGdTQ1U=
X-Gm-Gg: ASbGnctji2Fq+IVpPmcOkvMJA0ULNtydmOiAdfZHFHNPBH+2VJAqMgPYTA74npC3i9x
	J3JRIFBGBNKEL5d/f/q85FJ4GF0uejIbmMnC+PXjSRmDj6rn2J7hNQwGR97T4JfhFhuo1ijIN7h
	pCqRtQAkrwhSDDc3y3tIWdxQzbDwY/DwgvGFfYXN/a/GxVdtUAKAm3HEf9RTzcKKx/G15zF9F4j
	QcDR1cnoHRsa8pOvCNSglifo4L+WCeT6lIfnk1ThYr/K08Uw1GTDzJ5yMQptFSVDgwmA5kntr8Z
	/qmIDc4BaWKf5bGFWJmaRRlRs6Rufu1R6hYjp9el2szQR1fNvAducjw/4MDgDTyukx1Mz88hUij
	itFTO9Lks2T+UtAdOjAv4V0KYOw2D2TfVY+G40/Zp227OWqgP8aN8fs0WJp4FsH69yUEJ9H1FtS
	61Vr/xboj038kPoyuLXJWDF0Xy4GuK+rvgwU2i9C1CjpUdHBTX2wXfNg==
X-Google-Smtp-Source: AGHT+IEZEkJbHyJsLtQ9RwbUNNRM89do/GpofJnj3gjkHzKLnBs02AOz2LkYBC9YjYewuyvy3xtdnw==
X-Received: by 2002:a05:6602:c85:b0:945:a198:7726 with SMTP id ca18e2360f4ac-945a1988c63mr751875839f.5.1761569710940;
        Mon, 27 Oct 2025 05:55:10 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359e742efsm249121639f.7.2025.10.27.05.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 05:55:10 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/3] dt-bindings: spi: add SpacemiT K1 SPI support
Date: Mon, 27 Oct 2025 07:55:01 -0500
Message-ID: <20251027125504.297033-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027125504.297033-1-elder@riscstar.com>
References: <20251027125504.297033-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the SPI controller implemented by the SpacemiT K1 SoC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/spi/spacemit,k1-spi.yaml         | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
new file mode 100644
index 0000000000000..e82c7f8d0b981
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spacemit,k1-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 SoC Serial Peripheral Interface (SPI)
+
+maintainers:
+  - Alex Elder <elder@kernel.org>
+
+description:
+  The SpacemiT K1 SoC implements a SPI controller that has two 32-entry
+  FIFOs, for transmit and receive.  Details are currently available in
+  section 18.2.1 of the K1 User Manual, found in the SpacemiT Keystone
+  K1 Documentation[1].  The controller transfers words using PIO.  DMA
+  transfers are supported as well, if both TX and RX DMA channels are
+  specified,
+
+  [1] https://developer.spacemit.com/documentation
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-spi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core clock
+      - description: Bus clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: bus
+
+  resets:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    items:
+      - description: RX DMA channel
+      - description: TX DMA channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    spi@d401c000 {
+        compatible = "spacemit,k1-spi";
+        reg = <0xd401c000 0x30>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        clocks = <&syscon_apbc CLK_SSP3>,
+                 <&syscon_apbc CLK_SSP3_BUS>;
+        clock-names = "core", "bus";
+        resets = <&syscon_apbc RESET_SSP3>;
+        interrupts = <55>;
+        dmas = <&pdma 20>, <&pdma 19>;
+        dma-names = "rx", "tx";
+    };
-- 
2.48.1


