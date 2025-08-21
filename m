Return-Path: <devicetree+bounces-207150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C866BB2EBC7
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 05:15:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 925445C6DF1
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 03:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C752D948C;
	Thu, 21 Aug 2025 03:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="amfP20CX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A1028F50F
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755746129; cv=none; b=g3TBDad+jeLjbK5pgpFRxl3n1uDShjBRFcBp51LKRpa9qm+L64FnHeYBNIuEq9sWclq2d+nr8ewo0P3WEzpGZH16rneYCbGecHjG5i7VBqDk6G/blHkKtmcTI8t9BWUGKoEMZ3Iv5tv1c3tuRt+t051MCvmXKRxWs5rMZzNsK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755746129; c=relaxed/simple;
	bh=xK/uY5dPDT/WYt2ovB3Su03oSdypjzmDFfJL7Y6Aluo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ejyns+5M+JpOGOxOG4ByWA2nwNdxwtC9t1gXZEH5w3ep6p+1VO914541DOEFbla4tuVhZuSLYAHtNXeNp4Dk/AJ2gfi9Yglc9z0orDOacJOFXTQNHar1hCetmesPqCv3orSYEplDl/u/pOKCt8lFzHtAkYQLV5uGOAJK2IvzBmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=amfP20CX; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b47174c3b3fso276239a12.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1755746127; x=1756350927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CtqV3HNShNm2ULsU/XG89WUNwV7hWFWih/MmNNnjuJk=;
        b=amfP20CX9yzLrJsRK0B+oGG7RJOUgxJ4KbTwjq3i1U/V4Qh3CmHkE1E04hvCglp4lQ
         0kqM4aA2PFDz10bt+HBm+nTtc9zYhrCf/QWCK3DLHdqtP6CU38MDRvGEjdrYNDC3Md1s
         0cC282Y4lBPsuO5KaMvmfwGBWkw7vA8tJax7fYVpL1jK/RY03K5zfkDWBg4onXurSf7A
         GJ+Rpq7395O8fooXsYGf0S6Jp4VcamZDK33GZRbh51B8hSTWBxgUV8vJFO6Hm0O0udLn
         uSbwisP69hCNU8x1VQWfToV9qhHgfAwfbGwPQrHYxRs8GJh3Qg6EAnPtHISHLPaMzXfj
         OQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755746127; x=1756350927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CtqV3HNShNm2ULsU/XG89WUNwV7hWFWih/MmNNnjuJk=;
        b=mTI56E5IrIiD+0YwnxJmH+ktez9vxoWAs2R36k3JMDj+85bsIAKmW6xCeM9VBM+ivm
         M9WU8Fxv/0NfqEdQRWRmLwd/X7DImU7NEi7F1+QI/kiijykGZnNcW/Ysiw3SoNaMV+K3
         FGS2bEOSRUQmVHXFDamJzfMho7QMau2cdcof5w4E43u/dxApyPt2X/84OIUYRNU2qxT5
         h91751u9mVauf2OTG8LyZjqiM4eBtYVNt8GsM0L+udidhAkBgrnQTLVzbTLprEd0ZA0k
         HoT2qeiof06Snsp9yROF/oTtUPsKDlDH7EDS/qQsI4shQx+CQbrdRTinwR97Z+Fz3U/h
         3eWg==
X-Forwarded-Encrypted: i=1; AJvYcCW/5tE7JaZaU2E3vrdatl1mulrRtC3XGe2IOmCT+ZPwixlD0mDBCM4L0dElz2pldTpTtEiiudp1foTW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhu1fRKTye/NdNbiVXC5qhKF8OgxQIMFFl5DVNu+c8xodrKXOF
	ctzEGMUUywLdpCcpBdGHAnvZmGELwmbHyo90Hj8z5ju2nLaQjZal/e2rHdnfd1RJ4vg=
X-Gm-Gg: ASbGncuNZfU/41wg9TYIR0cEighAXjYq9XdjkybTgylpItMze4L8MAnIdysC5AzG+jG
	fTy1qqQUFzCe7hYjN4/C+2vOaLkDOfWnmHmtNrW4w8PTXB+bkHvT/7n4JdYkDPeyIeCJlEdaR+6
	x1v7SisBtgN9va6DwHDuf2nxwVyQCFZWFB8Pv3vuWDSLkq/tDOAfO2t3Vj3QFyxHN92e0ISKjXc
	Y6FgpW1bSDgxcUuCB3PHwCeioma8J4nj4IlO10G0YbReG+Fl6Anrk2BgLK9tVMog0E7Nb8VdSuh
	SgukkkeIoQy2wRYCWj4x5m0eBW5hjxS/8R2WPBE4DtTnVns35ORoC1BGLi9XyJ4+daAINau12D9
	e9/jmtZYMxWuZKoQC7dLvU4R/oc3Rblx8FblfgNxus8gbdPgdFBK7EgqAPMikkcIvOYrUvw==
X-Google-Smtp-Source: AGHT+IF+UOh47xwCxLPPcHRa7zc66TOfiikkAYATLHWVDpLtA6g22wxOpRgfhU+bncrwFyy4s4nCTQ==
X-Received: by 2002:a17:903:124c:b0:224:10a2:cae7 with SMTP id d9443c01a7336-245fedcad87mr13708355ad.40.1755746126670;
        Wed, 20 Aug 2025 20:15:26 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed51b3d3sm40285415ad.147.2025.08.20.20.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 20:15:26 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org
Cc: dianders@chromium.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: input: Add Parade TC3408 touchscreen controller
Date: Thu, 21 Aug 2025 11:15:13 +0800
Message-Id: <20250821031514.49497-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc3408 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

diff --git a/Documentation/devicetree/bindings/input/parade,tc3408.yaml b/Documentation/devicetree/bindings/input/parade,tc3408.yaml
new file mode 100644
index 000000000000..30ffefb96c68
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/parade,tc3408.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/parade,tc3408.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Parade TC3408 touchscreen controller
+
+maintainers:
+  - Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
+
+description: |
+  Parade TC3408 is a touchscreen controller supporting the I2C-HID protocol.
+  It requires a reset GPIO and two power supplies (3.3V and 1.8V).
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    const: parade,tc3408
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  vcc33-supply:
+    description: The 3.3V supply to the touchscreen.
+
+  vccio-supply:
+    description: The 1.8V supply to the touchscreen.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset-gpios
+  - vcc33-supply
+  - vccio-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen: touchscreen@24 {
+        compatible = "parade,tc3408";
+        reg = <0x24>;
+
+        interrupt-parent = <&pio>;
+        interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+        reset-gpios = <&pio 126 GPIO_ACTIVE_LOW>;
+        vcc33-supply = <&pp3300_tchscr_x>;
+        vccio-supply = <&pp1800_tchscr_report_disable>;
+      };
+    };
-- 
2.34.1


