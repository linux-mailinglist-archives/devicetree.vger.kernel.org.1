Return-Path: <devicetree+bounces-124555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D639D9419
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:21:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29D3C165E41
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7B41BC07A;
	Tue, 26 Nov 2024 09:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ecJ7nixf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13A919258B
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612872; cv=none; b=p32q5pOXIXC9f1/udry0k3VPZM+2J4iQ7wUfItL6I8+TioWiKp2QUQ9TPMsZWsMGDrkFgxENt4Cgn88G+xNfM0odJuGWtDW66fpsoW5k/RsIk9TlzfDLIGtYhhHsSBI0KdYYVsDP5c53yReSdbvS0xVRm3+Exk9A/9XEO/tCczA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612872; c=relaxed/simple;
	bh=V/DGxPq334std3OZDw1Q13cvXzTcQ8HKIYrcq1YIJz8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=d8o0462UuPLUQZUe/SWQzRwJPreYd5ztxrpT4mEHi7wPmkkvGgE2TcosYzqtAb9Ghp/N7v3oj2EZ9aI4gh0fTcdj689ZwPXO4AcelrHb1kwTFu6IbZrV4WfCiyaMTAknSv5IMl3HgvCptui2Ug6/mH4h3qFl/iK/EFsnQ9/o/hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ecJ7nixf; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-382442b7d9aso4071247f8f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612867; x=1733217667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQlGMIlStcYoMIShuvfUaEr5YyWxZQ2PUL1/5BTbV6c=;
        b=ecJ7nixfA9OMlsZb5dKVxfMvfwF7PKkDh5DkWFugpB4EsQvjgWSgc3jhd1U+x21D87
         QwdsGbBIMykVGFzXhVasqjUgxA3ZosL+0hTJjJcN58OA/T8vPzjfqlnAmk53/VzAwv/5
         Pf3tR29uewY1nGXArtHy2jql+0OdIqRm0G3GtViX/9uBqUvHXnBBPxQ+XCgeZgAkSGoz
         R47QCkotM647N1hHa4kbpDKmOIxWIS1PuzOx1jio5T5scBDHvo0r905IYD0ITSD6kNo9
         gMDWbPA7TePcSu4I1jCra3+zkzq2J/8ugnuQJAOxY1Nc69ZpwQkNcMIosU4NjstiMYlK
         tc0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612867; x=1733217667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQlGMIlStcYoMIShuvfUaEr5YyWxZQ2PUL1/5BTbV6c=;
        b=pauT2gEZPgINRQH5nFF8b/cpyUN7/aNkwa9/Ydu3GVQYnnDAQP4KCgi+D1v1LGX7zB
         557Vg4kHjJ3YcKx+5XMOs/nCj+OKAcxGu89veYWOWarM8dx3IIOn2HxroW6Y/6PDBwZ1
         ZkXmjcynUO+IDlgsGZGZjpSy8CWS37HWRQdm/4VUA00uZbdeNiiKIN4vJPirmpLhUzTC
         PY21GrYOtEv/UP16i6rGbJKxiP8c/WbH5T+xtI4oM4fwzgE87cb2uCGCU14T5R1Mfx8L
         jcqsv1RX3WcNDHJuXozIVHCrvCoJixfrtwLvQjwA9ZEKiSpBp7iea2c/pP3n4JVgXz4o
         HmCA==
X-Forwarded-Encrypted: i=1; AJvYcCW1ZeQq9MxeNUs95SpzfXjm6ujd94Y/CxV4qtYMmE0elsA9dGkAT8qKgsNvCGecVEyj4FGFf5i75Nqq@vger.kernel.org
X-Gm-Message-State: AOJu0YxusEgc2xLNsXTvPQQLq7IGJNPZj64/zvy8O9y3W0eC1KIVhp2x
	RaanvfkXsDc4RWh9NWKC1Y5h46GzklxFN0UEgtqLSrNY3RMzAcj0hnUI7koVFas=
X-Gm-Gg: ASbGncteW+BBo6enCfNXjKTQEOs1xMZBmSgPzoRMWqegOLx/JQDlqN6yUA0NJ37EGkz
	MURFHEk3IoK6DOso/EfK2hqKNaFqeTOz43uFSgK5FdLnsIGULrCc12DMU6xXEogqH6cyTSI71qZ
	zOfA7sWyfPWuRPNMFkuE+9JwFE4ewsYLD8dZhpORHPrFi5qIs9jw8zcFylXAdi9FGPz51RgrpoM
	NuYYcAJOUIS0cnAXJ+GKztbSzzz95GYMKDi0wwUr/oxiMj2iifnS/VGX/BNT13k8vOjT6auhPXo
	OSE=
X-Google-Smtp-Source: AGHT+IGG2IQ+U6IJTaeTyTNQI6LGmc4AjJAHShu01o6855LNNPFEdIbHv35w4G1l6XXNHmNrrqLTjw==
X-Received: by 2002:a5d:5984:0:b0:382:415e:a144 with SMTP id ffacd0b85a97d-382608a4b7bmr12377286f8f.0.1732612867211;
        Tue, 26 Nov 2024 01:21:07 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:06 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add #renesas,sysc-signal-cells
Date: Tue, 26 Nov 2024 11:20:36 +0200
Message-Id: <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G3S system controller (SYSC) has registers to control signals that
are routed to various IPs. These signals must be controlled during
configuration of the respective IPs. One such signal is the USB PWRRDY,
which connects the SYSC and the USB PHY. This signal must to be controlled
before and after the power to the USB PHY is turned off/on.

Other similar signals include the following (according to the RZ/G3S
hardware manual):

* PCIe:
- ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
- PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
  register
- MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register

* SPI:
- SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
  register

* I2C/I3C:
- af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
  (x=0..3)
- af_bypass I3C signal controlled through SYS_I3C_CFG register

* Ethernet:
- FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
  registers (x=0..1)

Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
consumers to manage these signals.

The goal is to enable consumers to specify the required access data for
these signals (through device tree) and let their respective drivers
control these signals via the syscon regmap provided by the system
controller driver. For example, the USB PHY will describe this relation
using the following DT property:

usb2_phy1: usb-phy@11e30200 {
	// ...
	renesas,sysc-signal = <&sysc 0xd70 0x1>;
	// ...
};

Along with it, add the syscon to the compatible list as it will be
requested by the consumer drivers. The syscon was added to the rest of
system controller variants as these are similar with RZ/G3S and can
benefit from the implementation proposed in this series.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 .../soc/renesas/renesas,rzg2l-sysc.yaml       | 23 ++++++++++++++-----
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
index 4386b2c3fa4d..90f827e8de3e 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
@@ -19,11 +19,13 @@ description:
 
 properties:
   compatible:
-    enum:
-      - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
-      - renesas,r9a07g044-sysc # RZ/G2{L,LC}
-      - renesas,r9a07g054-sysc # RZ/V2L
-      - renesas,r9a08g045-sysc # RZ/G3S
+    items:
+      - enum:
+          - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
+          - renesas,r9a07g044-sysc # RZ/G2{L,LC}
+          - renesas,r9a07g054-sysc # RZ/V2L
+          - renesas,r9a08g045-sysc # RZ/G3S
+      - const: syscon
 
   reg:
     maxItems: 1
@@ -42,9 +44,17 @@ properties:
       - const: cm33stbyr_int
       - const: ca55_deny
 
+  "#renesas,sysc-signal-cells":
+    description:
+      The number of cells needed to configure a SYSC controlled signal. First
+      cell specifies the SYSC offset of the configuration register, second cell
+      specifies the bitmask in register.
+    const: 2
+
 required:
   - compatible
   - reg
+  - "#renesas,sysc-signal-cells"
 
 additionalProperties: false
 
@@ -53,7 +63,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     sysc: system-controller@11020000 {
-            compatible = "renesas,r9a07g044-sysc";
+            compatible = "renesas,r9a07g044-sysc", "syscon";
             reg = <0x11020000 0x10000>;
             interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
@@ -61,4 +71,5 @@ examples:
                          <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-names = "lpm_int", "ca55stbydone_int", "cm33stbyr_int",
                               "ca55_deny";
+            #renesas,sysc-signal-cells = <2>;
     };
-- 
2.39.2


