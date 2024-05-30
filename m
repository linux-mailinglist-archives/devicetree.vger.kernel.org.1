Return-Path: <devicetree+bounces-70990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5708D5473
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:15:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 317C0285B71
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 21:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9B2180A92;
	Thu, 30 May 2024 21:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="cnmc6B9R";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OXMwk6sh"
X-Original-To: devicetree@vger.kernel.org
Received: from fout3-smtp.messagingengine.com (fout3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3209135A7E
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 21:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717103702; cv=none; b=Oai7jlIzMBWliL4kWYGPDWfTOq4V9LtC+I8Xx+lpsquFPzW/zyDUHUeu1fA9SZEYhgI1l0ny00iC2SBS8cuAq0pKq9j1NSRq1cMeI8NSZvRx+VU0vdLWToXhFCvqRMVWojUZEaQroIsyqzCS3gDHbYa1lt5qsl644pZmixRdE7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717103702; c=relaxed/simple;
	bh=0FK5JRFTWl7Vr464zypBhYYGT5YdiLupnWOYsTD0G5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a4t28JkZvFRQ6ALYZQNAbHgc4FOTx3J1HkOyO79jxYrFlB9geAv+tjPwPAuJDN3wenidlV4EtCGIHnuSi+jqIX1AkYbSexrgJAWWvursPY2J4XOr87bnLLXHUEiWTTfCvSc/2+Iyb2aRJ+M/nkKfjOZzJ5xm4vsAz9UVUqsBupg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=cnmc6B9R; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=OXMwk6sh; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id BF4201380111;
	Thu, 30 May 2024 17:14:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 30 May 2024 17:14:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1717103699; x=
	1717190099; bh=ZfgnIAh5AvrIMFvx5c8ki4N4EwMlLE2PP8D01eWdmBg=; b=c
	nmc6B9R2SSXYJwevNejF1vV3dq1HMcXZEsAORYo3FO8mB6GcndFuDqJSSkYFQmwh
	3/szBfFen/IAyidNnXltCp/yFfEr1w9RZ/q7c52y5WjmD5EGxfl/yUyLCsUjyeu0
	AzRUOZRjHDlqN+An4s32HDSIuGD9iuoZCFIw+6d3uVo8Pp9wW+Fsgx26MHmjDIdz
	mbowalF+CDPR6f3oEQOv8QstnfrTMJNmFIvxDDFaQyk0uoDPUOUv2N7zDy9Jygzp
	ES+CmVkh3cpcOVYnxMgU0HSncL83Xd/6WctTLrj9bqShDWAMT/TBfybWWmxwq7u+
	WOOyuaSnGSxRsNNz0j2LQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717103699; x=
	1717190099; bh=ZfgnIAh5AvrIMFvx5c8ki4N4EwMlLE2PP8D01eWdmBg=; b=O
	XMwk6sh2MUMVZZFK4DlFNaXitF2IzYkKn4o5pIL/E0Hs/k4otTL/kE5PLuOebzlO
	EkdwPF/nxX+CVbrKpMLWnQLwcHt/cA80TX1fiAnA3yp0kmLSJuwLquZocUiSwm+d
	mMLeFSjtAfZIMB8hEn8RHbLezWMuoPmtMdzdpavrZ3i/TS9dtf8UM1uovh4jBhWL
	Fdai7TVXEhZaRebZgpG2fIBl6z1wIy8adTjclZsjyO7uMoMJTmdxU8jj+O4FSMIu
	lcvJ91FURPTJYuzzLBqhhkwQNin2YLh5mx8SwY/AX5En2AU0KRljXlQ6Ti7rUymD
	s2Pzr/DJLRf6fhABGPeGg==
X-ME-Sender: <xms:U-xYZvY0w0AFFTfamcovr8Y1UM-PFi7dpuoRJ1e3i_tt8BxIujh6tA>
    <xme:U-xYZuascGP8ojqaFdLy3OEXLjEyQa8CNu5HLqlsdp-m-CMnwQD_ny7WBmRXTNuSE
    zn9IhCIQA_GCChSfg>
X-ME-Received: <xmr:U-xYZh-auGHx2LSYcyJrIaqyDKNd0XOcsLSPFiboGI3Cwir5DlrXau3BmWLgUwS8CZXFMYhHDcpKMhOuDFrT89ooiumvuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdekgedgudehhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigr
    nhcuhggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrf
    grthhtvghrnhepfeffhfdujeekfeffffevgfffleelveegieekvddtheefieegvdejffej
    ueekgefgnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthho
    rghsthdrtghomh
X-ME-Proxy: <xmx:U-xYZlrliLE5uK46swfQL1BxmJCoEXNs25M4QoB4JdfJ3rOlHJXzZg>
    <xmx:U-xYZqpHlEyq6TdVeayXKV-DzJ_Hr5Z_3T7BUbzD2LVbi-ARzzAGDw>
    <xmx:U-xYZrTbI9Ex3IWjvpRzAkfexfV8JH5sb1HMHZGsnC0_UvbFE8bfug>
    <xmx:U-xYZirVNVhJlLJBTWmZkK_H3sOj_brarT6Hh18yfTaKbuVhHZGcrg>
    <xmx:U-xYZlePAnqyvozhgUZvI3VHHZNqC9BFOX_DRM34AQgpmHIZMM0rp8Uq>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 May 2024 17:14:49 -0400 (EDT)
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
	Ryan Walklin <ryan@testtoast.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
Date: Fri, 31 May 2024 09:12:14 +1200
Message-ID: <20240530211415.44201-3-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240530211415.44201-1-ryan@testtoast.com>
References: <20240530211415.44201-1-ryan@testtoast.com>
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
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

---

Changelog v1..v2:
- Correct compatible string and filename
- Note #dri-devel discussion regarding vendor prefix
- Remove unnecessary node names, spi-gpio compatible string and GPIOs from example

Changelog v2..v3:
- Remove errant tab and un-needed spi node label from example
- Add Reviewed-by tag
---
 .../bindings/display/panel/wl-355608-a8.yaml  | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml b/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
new file mode 100644
index 0000000000..e552d01b52
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
+    spi {
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
+                endpoint {
+                    remote-endpoint = <&tcon_lcd0_out_lcd>;
+                };
+            };
+        };
+    };
-- 
2.45.1


