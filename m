Return-Path: <devicetree+bounces-95006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4099577D7
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6D0B1F221C6
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 22:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10F720124B;
	Mon, 19 Aug 2024 22:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QEThiaFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282471E7A42
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 22:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724107145; cv=none; b=YGYTCTqmwdnVhZE8GpsNXMzuHhkSEpyJrOCeV9Ij6SDthfgZQ4Rmkv/CLOJ+TXd8+BLtQjlF/b6l9KkDqVLcI+caS7QYO7vh5v1a+baXaLO9+74pycq/07azsIMa3HGbVuFjgfwU/qMbV6PewCu/m0Pgl8eLcrsO3Avj4mEKNAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724107145; c=relaxed/simple;
	bh=OyfKCvFwATaUez+mf6fqverYicn9LjhxOLPnjc5Aioo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ITssGnwOYdM9vyYy6AhG/mz/rt29EYbDi2gvT7EXNJXXDKpkgzuuz9aGiNdxIdLDQ4THw4QUmv0cARJtcXOcdjjonpP+JDVCaJ6mZ2e+zKmfJTLTkpV9E28WteLSmaQiDuxSmVbqVEOYoBngrh0D8gzr4ehpLwQvBN2ENDeeVGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QEThiaFP; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70d18d4b94cso3787916b3a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724107143; x=1724711943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KXXy3QiBKqggoPFDIuBfkDFn401Aqji9aDGpL9/5hY=;
        b=QEThiaFPy3jMiwt3vGxKE5TNLpLw6/YcxtKVI3S/vuQAJ1U9tWv78tC4/bA4Ezt2Xr
         NcffNhI41xl5eXh80Du4uxt5DIy+FuMf/i8rBtc9q9s0SWdB8imCFYviMPwa9pE2H9TG
         eKQ55xG1sJXbPNEJU/GyKPAvFSqzrJiHkJ4Zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724107143; x=1724711943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+KXXy3QiBKqggoPFDIuBfkDFn401Aqji9aDGpL9/5hY=;
        b=MVzGC3fA4KeU0uQtRH1dqAPBS1FZ9a0ClO4e4Jpy7VBWxFovNpOpG/g//ohm/6zy+B
         TUJWxqmkhIYXGEGJPBfd8ZRp3ZMP3tFACEtdVhKjPhdEBcG3HhxS0PO2Nk+lTqpnzHf/
         2946lwGUpRamrqMtVKTnUrQE3XkmwnYRYpE71kaD6Sg140M/YXHyxi0nvvIefaL1cLnB
         Dk9DPdPunPg7fh4pX7iSm1m+j0sS3fBQTmEa3jGUAKc4NltdO5lqXgDgNrcPjR0bxnrh
         iTwfqU0tS8lChP8qgwnM1W7ZPzyQiJBr+YVCZYbLRM/RVlq/FR2ZPzu6kEpDuBLL+yNo
         KD8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEyvP5lDb6AJpfmBHPmgoZmnOTqjdzAz5sUtFAkJ9gIM4sYUv6UJzAx7AWq32b7csVzGBao32UGsUi@vger.kernel.org
X-Gm-Message-State: AOJu0YyVYjcbxuMqQox/1Bau63PWqJFW15Si4KVfrzcX0ZnZnuxIJ5dK
	hpcG/7ivsb3weRmo4J5LM2wZ0M4epzfqOvDn6l5jxLcxfh2HFtAHldz1wadGzw==
X-Google-Smtp-Source: AGHT+IHkcygBzOoFTnBwjvK9vCMx1AS2hQGHjZYX96J9FuIVU3ZRveOh/nk0VuMfJPp9k0jk6TfziQ==
X-Received: by 2002:a05:6a20:3149:b0:1ca:c958:bf55 with SMTP id adf61e73a8af0-1cac958bf92mr516935637.0.1724107143200;
        Mon, 19 Aug 2024 15:39:03 -0700 (PDT)
Received: from localhost (210.73.125.34.bc.googleusercontent.com. [34.125.73.210])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-7c6b636bcabsm8080907a12.90.2024.08.19.15.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 15:39:02 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Guenter Roeck <groeck@chromium.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lee Jones <lee@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Prashant Malani <pmalani@chromium.org>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Ivan Orlov <ivan.orlov0322@gmail.com>,
	linux-acpi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 12/17] dt-bindings: usb-switch: Extend for DisplayPort altmode
Date: Mon, 19 Aug 2024 15:38:26 -0700
Message-ID: <20240819223834.2049862-13-swboyd@chromium.org>
X-Mailer: git-send-email 2.46.0.184.g6999bdac58-goog
In-Reply-To: <20240819223834.2049862-1-swboyd@chromium.org>
References: <20240819223834.2049862-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend the usb-switch binding to support DisplayPort (DP) alternate
modes. A third port for the DP signal is necessary when a mode-switch is
muxing USB and DP together onto a usb type-c connector. Add data-lanes
to the usbc output node to allow a device using this binding to remap
the data lanes on the output. Add an example to show how this new port
can be used.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Prashant Malani <pmalani@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../devicetree/bindings/usb/usb-switch.yaml   | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-switch.yaml b/Documentation/devicetree/bindings/usb/usb-switch.yaml
index 5fc031b56fad..7a932c638a90 100644
--- a/Documentation/devicetree/bindings/usb/usb-switch.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-switch.yaml
@@ -54,6 +54,15 @@ properties:
             $ref: '#/$defs/usbc-in-endpoint'
             unevaluatedProperties: false
 
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: '#/$defs/dp-endpoint'
+            unevaluatedProperties: false
+
 oneOf:
   - required:
       - port
@@ -67,6 +76,19 @@ $defs:
     $ref: /schemas/graph.yaml#/$defs/endpoint-base
     description: Super Speed (SS) output endpoint to a type-c connector
     unevaluatedProperties: false
+    properties:
+      data-lanes:
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+        description: |
+          An array of physical USB Type-C data lane indexes.
+          - 0 is SSRX1 lane
+          - 1 is SSTX1 lane
+          - 2 is SSTX2 lane
+          - 3 is SSRX2 lane
+        minItems: 4
+        maxItems: 4
+        items:
+          maximum: 3
 
   usbc-in-endpoint:
     $ref: /schemas/graph.yaml#/$defs/endpoint-base
@@ -81,7 +103,75 @@ $defs:
         items:
           maximum: 8
 
+  dp-endpoint:
+    $ref: /schemas/graph.yaml#/$defs/endpoint-base
+    description: DisplayPort (DP) input from the DP PHY
+    unevaluatedProperties: false
+    properties:
+      data-lanes:
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+        description: |
+          An array of physical DP data lane indexes
+          - 0 is DP ML0 lane
+          - 1 is DP ML1 lane
+          - 2 is DP ML2 lane
+          - 3 is DP ML3 lane
+        oneOf:
+          - items:
+              - const: 0
+              - const: 1
+          - items:
+              - const: 0
+              - const: 1
+              - const: 2
+              - const: 3
+
 examples:
+  # A USB + DP mode and orientation switch which muxes DP altmode
+  # and USB onto a usb-c-connector node.
+  - |
+    device {
+      mode-switch;
+      orientation-switch;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@0 {
+          reg = <0>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          endpoint {
+            remote-endpoint = <&usb_c_connector>;
+            data-lanes = <0 1 2 3>;
+          };
+        };
+
+        port@1 {
+          reg = <1>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          endpoint {
+            remote-endpoint = <&usb_ss_phy>;
+          };
+        };
+
+        port@2 {
+          reg = <2>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          endpoint {
+            remote-endpoint = <&dp_phy>;
+            data-lanes = <0 1 2 3>;
+          };
+        };
+      };
+    };
+
   # A USB orientation switch which flips the pin orientation
   # for a usb-c-connector node.
   - |
-- 
https://chromeos.dev


