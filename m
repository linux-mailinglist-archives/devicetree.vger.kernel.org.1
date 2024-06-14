Return-Path: <devicetree+bounces-75892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90034909079
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 18:36:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A65E41C24256
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ACFF1974EA;
	Fri, 14 Jun 2024 16:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="WSqCHJAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DAB195FE6
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 16:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718382942; cv=none; b=V0C9/hw0KUZJ2IZYuD9ohlPnTdSiNTIYrLnqcskORDpraarxpQIu9srVGSHo7mI/3WWK+gxiILaGmQWbPDIbJI68OnHYEBA6p7mabau4q/rJBMJN85bOq1r65TrwtPV55z+TegoQMS/ulzy6eHgdBtklD6bz7i7DXFQjNifmf/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718382942; c=relaxed/simple;
	bh=FCvdQ9Mqq/5f6omtz21uDArlMjNyLNbyl+OdqwEiar8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wu5TK0ITckjcVMdRPsvfCPapF8A6QhbVN/WbaSgr0d0VfFqRrfDNVnnP9J07hY2KaVLCq/5Djg+kLnFV9NoynfM+ucTu1d01HNJxmHFTsNYzLN0BfgTUuv5tJeSasu3ntJ4QVYOjlqLM5lLZXdnOFiQVIc7TVsPTQS8I1EZHiRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=WSqCHJAW; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57a30dbdb7fso3717694a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718382938; x=1718987738; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9oBeI9t2GnUOwDqqWhnLz6JoWWhocuIEEtazuodx7Q=;
        b=WSqCHJAWO8AIw/hLPWbSYzkpURWwtw6STvyWS55Jm0enNz1hSShRZohiR5joBac7aM
         AMsndD0nl+tCjrtKsnG1KswOmuzvzXqKBOKFLR/Fkv9L2E9e//u0P2iz7fr8G3QmYoow
         J8SqU/x89Rr9y9nOQH3uMF4wcAHoMHB3G5kGVaXFFH5Yf3tPmXuQFPAIfTkaW/KDgF+Q
         iHpcVJH3tDfTJnaLIc8sHTsh2UaH61tJ0rlYGnF+ykFd0croDI+2A1jogcQohUVCqDnD
         P4DXMvt1nh/9cpBNYHp3ZapnrXU80yTrvnasy3hTYdJ6j3fjueUFhxl9YNirFTZkdZbV
         faFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718382938; x=1718987738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N9oBeI9t2GnUOwDqqWhnLz6JoWWhocuIEEtazuodx7Q=;
        b=D5RCofQjVw1WaxcYLcwu1tRHF34KjAArEYHi+qlKmySTwXDKqlehk1B1WIWqtfWE7f
         JqPs98H2y4VfUpuUk2akMZQw23dzxHpelMI8zP2yjN3CS/8z66YAR8sd5akIEs5/dYA8
         cJ/FxqrD4uQJn95rKOrOhf07q8MkO9h2n1tJWiEda/pxkCHizFEYK29PHx7Tcu97c3XH
         3b33EBbf0rhdI4tIb7wcKYJWhmWRnfoHM5Qgm6v0hXbtfQZ210s18wvE3xFrDggIfFMN
         gRTZ+PFW0d0BWBHX2bCDFGZPoQ/54QKTBmQMWdbNfRTlQKhU2/z1piSrE9NVV88wqnd1
         PeWw==
X-Forwarded-Encrypted: i=1; AJvYcCXkYsgOQkJFrfCVlQQSB9VeZiU6nftD9HKV6jUs2ant+F4Mn/n6FVlf6H0B66VkzKFR3NCdA6+VUYnpMX2TLSs8jh39jlFWamNhSg==
X-Gm-Message-State: AOJu0YwisE/Ej7ksK1U8q7WQFjP472MtAf5FDdzwFLma9eTjisbd6g6U
	/ycOlXrGl4eX1GGKG2CkpvqPlLOom70zAikxrvV9sdp029Ld/96AR3gOmgBibT0=
X-Google-Smtp-Source: AGHT+IHnLwjsD9g/DM137764Vs7MfVOMBOwOsSoO0JMf1vY4fTQen0QFGoBNKv8y01TlfePSSWUDFw==
X-Received: by 2002:a50:c19a:0:b0:57c:7eb6:440a with SMTP id 4fb4d7f45d1cf-57cbd6497ccmr2425469a12.3.1718382938387;
        Fri, 14 Jun 2024 09:35:38 -0700 (PDT)
Received: from localhost.localdomain ([91.216.213.152])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72da156sm2462893a12.22.2024.06.14.09.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 09:35:38 -0700 (PDT)
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
To: 
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Russell King <linux@armlinux.org.uk>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	"J.M.B. Downing" <jonathan.downing@nautel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Chancel Liu <chancel.liu@nxp.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v3 1/4] ASoC: dt-bindings: lpc32xx: Add lpc32xx i2s DT binding
Date: Fri, 14 Jun 2024 18:34:49 +0200
Message-Id: <20240614163500.386747-2-piotr.wojtaszczyk@timesys.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240614163500.386747-1-piotr.wojtaszczyk@timesys.com>
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
 <20240614163500.386747-1-piotr.wojtaszczyk@timesys.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add nxp,lpc3220-i2s DT binding documentation.

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
---
Changes for v3:
- Added '$ref: dai-common.yaml#' and '#sound-dai-cells'
- Dropped all clock-names, references
- Dropped status property from the example
- Added interrupts property
- 'make dt_binding_check' pass

Changes for v2:
- Added maintainers field
- Dropped clock-names
- Dropped unused unneded interrupts field

 .../bindings/sound/nxp,lpc3220-i2s.yaml       | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml b/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
new file mode 100644
index 000000000000..04a1090f70cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nxp,lpc3220-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC32XX I2S Controller
+
+description:
+  The I2S controller in LPC32XX SoCs, ASoC DAI.
+
+maintainers:
+  - J.M.B. Downing <jonathan.downing@nautel.com>
+  - Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - nxp,lpc3220-i2s
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: input clock of the peripheral.
+
+  dma-vc-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description: |
+      names of virtual pl08x dma channels for tx and rx
+      directions in this order.
+    minItems: 2
+    maxItems: 2
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - dma-vc-names
+  - '#sound-dai-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/lpc32xx-clock.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2s@20094000 {
+      compatible = "nxp,lpc3220-i2s";
+      reg = <0x20094000 0x1000>;
+      interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&clk LPC32XX_CLK_I2S0>;
+      dma-vc-names = "i2s0-tx", "i2s0-rx";
+      #sound-dai-cells = <0>;
+    };
+
+...
-- 
2.25.1


