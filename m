Return-Path: <devicetree+bounces-35802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F183EDE6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:28:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A79C1C2139B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 15:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E9528DD7;
	Sat, 27 Jan 2024 15:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gcSbM8Ck"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEA81DFC9
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706369311; cv=none; b=Zs2LrmzQsHJ2gCL2Z72m7VZi8XTKXOF7oyMfTcrZwyLCOi0jsk9PrX6J0tpFMsX09QtIGVaj1BcFXS3l06pVgl7VRI+SUpwGelyZMZfkfZ5cAPg31dkp2H0p1rlRvBjzLH1nIbxKf9CreH/u8m1z00JtXZw4X4t95FRjDAkxyfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706369311; c=relaxed/simple;
	bh=B1lQN2DRgn3nQBtFdWkRtHnud7Y315A8P2HYAFO7EV4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Q3BBt5PmyTi8I6tpaUofGOoLBTqmLAiHvsuRmwVY53+JdQSsOrKKElOcjiV+yQ0JGkMKr939mM4mXPgiiwpFg+CCb4SlYX44LmYrt8zo6apjxLWK3hhuXpvDVzgdFN7IX/awTOx4bBzh1BN80N/xXdAJnRFH6P9BOcZxVXVIO7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gcSbM8Ck; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a277339dcf4so129603566b.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 07:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706369308; x=1706974108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=haBaXjP3IuqWi4Vh3TynqcBtGi5D9/RbAjyH8MaxFEk=;
        b=gcSbM8CkOWCDF+p+eNKp7quYEF1qTbiUKuPCtutrj74yh7XXteIhq1thvHMUJW3z9f
         Nwee7ZIKqZb7EMrRgHx0uO3iQxemyB10MpeOXmQ4i/0+bqi9b58fORmNFrrJBI7RNYR8
         ofXaySANPiWe81hUVtcWIcaz47T7Kco5T8Q6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706369308; x=1706974108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=haBaXjP3IuqWi4Vh3TynqcBtGi5D9/RbAjyH8MaxFEk=;
        b=eawqS3JkuxNVU8xCLo142OApWX0rXZ1g6mCsy2ySBxnwodXnUC8VgeM4qaHyhOsljP
         J9cgvnDbr1QpgWquh42YjXrjC+zzTMXHLu6MeBi7k5g8PHdCCAu95IWweGNR0NOUmoJW
         hEsDeUJUVsFKnes2ROgRNnhtQpmwXcxPAYuUrmHqe1jJk4NI5jTN760YobIJOgEPnhbC
         ZVRxzzPB3gbEyKx1PXzwikrj5/A6+el5yPjHTY/bHLI5xCg2tftUhgPHk2aHyVnJxnzc
         cgLgxbu9NI0vBfMDNOUGljdCSC5SsOzkqR6x50aUnjcylXcWmGGkiVOsIISrkWPzds9h
         aKJQ==
X-Gm-Message-State: AOJu0YxrsNpdxrwMC3TE/ZGj2Z8vxG4mmIbXqVyf3y8nMykS9gaYj9JN
	wHIuNs7le4VXmuERoaTNijSLJ4BAtsvnbgNBDhGY99qUVnkp7EH+8kCu0VU7pK0=
X-Google-Smtp-Source: AGHT+IErhFoxSEE+bInbELtSYR5kkaNSeW62dXAyFHtebD7TQBYzbADVG8K8/cyVC3nEdk8weBw+vw==
X-Received: by 2002:a17:906:6953:b0:a34:af8a:ee3d with SMTP id c19-20020a170906695300b00a34af8aee3dmr1160137ejs.16.1706369308266;
        Sat, 27 Jan 2024 07:28:28 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-21-103-141.retail.telecomitalia.it. [79.21.103.141])
        by smtp.gmail.com with ESMTPSA id vs3-20020a170907a58300b00a3550c56127sm509361ejc.9.2024.01.27.07.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 07:28:27 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [drm-drm-misc:drm-misc-next] dt-bindings: nt35510: document 'port' property
Date: Sat, 27 Jan 2024 16:28:08 +0100
Message-ID: <20240127152821.65744-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow 'port' property (coming from panel-common.yaml) to be used in DTS:

  st/stm32f769-disco-mb1166-reva09.dtb: panel@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>

---

 .../display/panel/novatek,nt35510.yaml        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
index a4afaff483b7..72913719df23 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
@@ -31,6 +31,22 @@ properties:
   vddi-supply:
     description: regulator that supplies the vddi voltage
   backlight: true
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - frida,frd400b25025
+then:
+  required:
+    - port
+
+else:
+  properties:
+    port: false
 
 required:
   - compatible
@@ -54,5 +70,23 @@ examples:
             backlight = <&gpio_bl>;
         };
     };
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "frida,frd400b25025", "novatek,nt35510";
+            vddi-supply = <&vcc_3v3>;
+            vdd-supply = <&vcc_3v3>;
+            reg = <0>; /* dsi virtual channel (0..3) */
+            reset-gpios = <&gpioj 15 GPIO_ACTIVE_LOW>;
 
+            port {
+                dsi_panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
 ...
-- 
2.43.0


