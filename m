Return-Path: <devicetree+bounces-70772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D43C88D46F6
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 10:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C57E1F23145
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 08:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A47014A615;
	Thu, 30 May 2024 08:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="xSn/JqUX";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="gR/KjkA+"
X-Original-To: devicetree@vger.kernel.org
Received: from wfout8-smtp.messagingengine.com (wfout8-smtp.messagingengine.com [64.147.123.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0AA14387F
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=64.147.123.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717057449; cv=none; b=hhd9WJwFBB1YGLkD8rkGjy3kwcOHk8NLou1Nlk7uC27xepiksSbFXBIt0PQm3bylRiBHzUmH07h4fDNlWUfhrtA/SjbWWmqNxfOvLvD3Jo2Ut+JF8a3kfv+XSJcFT1WPyVrFT/12ag+7dwnf3QIcvC7YxiYz4mU9Qv8PX0jFS+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717057449; c=relaxed/simple;
	bh=jSCh1hpPzwDQxmsyVV874Pn27/+1Y2z+br+cIgJUGxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OwPR5ugM3yNX3qPpevF0MiJO+oRxmftbHeD7Dj+5hidQArKK69ZSA151WLcO4CImxRVJbhWoElubSEOrBWWogs5kjWeKF+uKY6UmRHDZpjzqRS34Uo+5xgKFPDWtUkIiFvc7DiQHSSNxNf8rdY/CJzQAS3yHC7Bz2AsWCkW5kWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=xSn/JqUX; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=gR/KjkA+; arc=none smtp.client-ip=64.147.123.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.west.internal (Postfix) with ESMTP id F23941C0014A;
	Thu, 30 May 2024 04:24:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 30 May 2024 04:24:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1717057445; x=
	1717143845; bh=bA8Fk7k/EZvCXjEHIVSIRBCRU8AGnqoDBE1wVK7sCcM=; b=x
	Sn/JqUXp8LLfLbwHR+iEVMY2e23vgJau5uU3XEPuOCFZkmARZMA/ipypY69CeCaJ
	szBlbBBMuIdBxUfEC24yZZcY4EdOatnverIbkyOJXL+HwF1m/6VKfVdOmshtuzKE
	9gG5p9EkpattH2P5cuWKYySrFSgEpbWr3ney+LlD/PoNF5DrK+pVL1mFhWBf0jBf
	CNY/0vBOFNtwB6kWCg8iD21Z9PO6OPwjSd0YDE0mb7RuiNc88AuW8PXX5rdzaFjB
	NybbGRo1RfXdQskgePpmMXqqvB+QwodizObq72SgHBNImdVC6Y8eFiiF+eQYr0ic
	TGJ9YS0cpEK23M6NptzUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717057445; x=
	1717143845; bh=bA8Fk7k/EZvCXjEHIVSIRBCRU8AGnqoDBE1wVK7sCcM=; b=g
	R/KjkA+tFLuQIvXhWW7XEbFFBe1d/S3hYVPSrC6TemjrurKlXOrfMpBSLDV+rhYx
	MxIRKzfAG3JkPNm3CFQ2/5LEY78hBldvyiSBH5A96P9kwttbjYBRphubD4Q83rXI
	lRJJcu5v7DCnqVHM72hJ7wNEo1fL/ra+C6xJUP0cIZoPGEAi+9k3+YKfUlpTeMg1
	CdmzHIDXaT/TU9uuXXfaIAz/1RP57/yRiitrjKc6u6BTtj8BdD1DUT79Ils+MsUh
	XxD3i8lCoDtq9Gp5Uz+yBifb5EMxJZrnDNcWd5FAP3eGPA3ZvXdkPzWLlOWpF23g
	GhY80NY9Yw6+dOuPJGTww==
X-ME-Sender: <xms:pTdYZh5wbM6jp8Al66ezujVikvKwktSjcIQaREMWkftjKf3ybD7zdw>
    <xme:pTdYZu7MhPgR1EKL5Svd8-A_M7atBtbW6_NOvnengVJbx6ssteG_nRYmtbn9Yd3RD
    I6GpRJShclS3YQ-HA>
X-ME-Received: <xmr:pTdYZodtcWfTgHK3a4h_9UxO_y4qWbFbEL7yppfhF8bLuO1i9ocK9dFyyAFul6URNmR9pNGjsbMtpPpdFFinGs3xkf-gEL5bktbgzvNGVy1kLiZz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdekgedgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfihrghn
    ucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrg
    htthgvrhhnpeeffffhudejkeefffffvefgffelleevgeeikedvtdehfeeigedvjeffjeeu
    keeggfenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgr
    shhtrdgtohhm
X-ME-Proxy: <xmx:pTdYZqJYCkPYKtcOi7XsejloFCTdJCzTj9VBuNYnbIpXN5k6r54qcw>
    <xmx:pTdYZlINpUQClgdFEY7xlwPxDUTTrRairXfbycl6gwqHlkePOrruXQ>
    <xmx:pTdYZjz0vGiHCH9GRDKi62gPNh_Pd0QUW6hs4I8mfgt8G4Kf4W_p6Q>
    <xmx:pTdYZhJ3z_1wWYaWtYdhMbOC_qcWJt5pCc8xxNVwfS4aa0GIVmYpuQ>
    <xmx:pTdYZqBtpe5fkfDos9Rb7wNpaxGDQbT7adSlHW8olyhu4AqjoJJV8EpB>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 May 2024 04:24:00 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	John Watts <contact@jookia.org>,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
Date: Thu, 30 May 2024 20:22:22 +1200
Message-ID: <20240530082318.40516-3-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240530082318.40516-1-ryan@testtoast.com>
References: <20240530082318.40516-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
number of handheld gaming devices made by Anbernic. By consensus a
vendor prefix is not provided as the panel OEM is unknown.

Add a device tree binding for the panel.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>

---

Changelog v1..v2:
- Correct compatible string and filename
- Note #dri-devel discussion regarding vendor prefix
- Remove unnecessary node names, spi-gpio compatible string and GPIOs from example
---
 .../bindings/display/panel/wl-355608-a8.yaml  | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
new file mode 100644
index 0000000000000..05039a6db4bc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/wl-355608-a8.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: WL-355608-A8 3.5" (640x480 pixels) 24-bit IPS LCD panel
+
+maintainers:
+  - Ryan Walklin <ryan@testtoast.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: wl-355608-a8
+
+  reg:
+    maxItems: 1
+
+  spi-3wire: true
+
+required:
+  - compatible
+  - reg
+  - port
+  - power-supply
+  - reset-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi_lcd: spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "wl-355608-a8";
+            reg = <0>;
+
+            spi-3wire;
+            spi-max-frequency = <3125000>;
+
+            reset-gpios = <&pio 8 14 GPIO_ACTIVE_LOW>; // PI14
+
+            backlight = <&backlight>;
+            power-supply = <&reg_lcd>;
+
+            port {
+            	endpoint {
+                    remote-endpoint = <&tcon_lcd0_out_lcd>;
+                };
+            };
+        };
+    };
-- 
2.45.1


