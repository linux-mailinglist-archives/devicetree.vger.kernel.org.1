Return-Path: <devicetree+bounces-167143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A4EA89877
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6329D3B4554
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5E62918D1;
	Tue, 15 Apr 2025 09:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lt5Y2zKE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E183291171
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710165; cv=none; b=cHNTPb6Ja1zVJxfMqqrQ42Op8IzKx+H/X/4DDHVcEWBILL+sMcQKYvfuammmqriIaD1VpQVTPHH1cezriEH6kobF//KM8nBoGwNUVcasA5MAY/oe80f0P0Qmh5JWkst8P4+3mSSpgCYPJKnHErViwOg0Zsg/iVRknWvNSg5PCoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710165; c=relaxed/simple;
	bh=ONXSgzh9c6IpKB4NMWKJprMd6baGNhHuNXrdpm2GO2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g5kjg/TUXOpjwOs/iAYxRgoW8EvQOXpYGIZEtMjPkusQlf02RjcPjMxEU2X5bZJQR5Ixajn8LPvsp71XKV+0yPILazlkyEvlOOEBUeLul0sJiEk20mpEFNHWnKRqPpGvErGjegEO2Nk5c8L5oGBMVZxKrdTSYhXbguG8fWXRhtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lt5Y2zKE; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-227c7e57da2so46376105ad.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744710163; x=1745314963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EnnKr2l4LbB38k4Mhz6nIOWpASIGRG3czOC4OX6mJP0=;
        b=lt5Y2zKE50YZBW4KMaeax2b7+VUtHIcyx8zTp4QsHIVNt9oJL0vKXREra0OD9rn3JR
         1HDu4gqmzbj0OqPJBLo3aEN48GMxQLKMJCnkbd39Uwtvjlsa3g4+QA6BLDKxivGCTCqc
         CKAwp5p0sDS3Krj2dLp9gVF46+OH6gZ9k91Gs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710163; x=1745314963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EnnKr2l4LbB38k4Mhz6nIOWpASIGRG3czOC4OX6mJP0=;
        b=lBUYmcoYE+8F/u8MmkZT/cceWPEEHuCpxHEUgDR2gLyZ3yTruRx3AM5Igw9QQ7S+ph
         ZHDT3VgVvMMyqetJTxQ0Zl3GcEowBisfXcPsb+Cz4SmB1OgdRt9MGvSvPmS/xBsIU7ZH
         hpjk9FWmn6MNSWvKbNuahVOT1Ey2YKQ99Wd2IEGe3hRdSvMy0o4rnR7ZTSliY3mZAUQD
         4Q3OOWWdfganlMlTmSEwVliKZzFHYANbtEXWCJwT+Vwrm9dz5bYruu9YR8GcZtoIZLav
         fnTmSpNabRaE2Xi35qp7IOAQVLpeELErX/VELSuJ58C5gmzXqhZ5j+dm9z13mJEkwNE9
         TTiQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8I/2jt8+ZSy8d6qfigZU13226kfcGyr5q7KHv4zrMe+UDVjxfbakKsms86J2aGG3jsSqjGwCMgUWF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy048JGiH9QDz8sDyg9ACBsHMde16/4vVRg9v/ocZgW1TzI2nyq
	j03/6aCNKex1sBrJ8mYSWs6j6ggm4fszH40uao06+ljwORzODZ3lFIO8/fjgQQ==
X-Gm-Gg: ASbGncsIQMc077e5VCaU2fOr9I9k4iM9KQQNkUQzdG6QArOoYNnhrp+HBVAmZvsjkto
	ds4yks0nxIiVXZIOr7JlIKQsNduLegf34CPnuGIQQOztZ7Y2nocq6XJbxgN7Ypb/Md1S3srwnF2
	nYlvy/X/OE7IpVTo19LkDCx+Uh6ukOibk4H2o64Hl/XdFxgh5NXw3lqbHrHJ0VOQ2sElIBSmeTs
	C/ioztfT6qLZd0WJ1VbhdnFnyU+/hIc3+PJLu/MxwvsLNaTb5ZMfWr4/i07R2GRNsEhxnxY/0bT
	DfdzbXzJVmYUwhhKH23yh83WlcSZvIgfx80fdFZfgTPaaV9ehSWNMZa80HOqKycA
X-Google-Smtp-Source: AGHT+IE9w43CJv/UOue4t3Qpb3ePg00zQx/RfidlriRmSUsZqjwz6p1TKUXguwdh81XU2yIGyaoZRw==
X-Received: by 2002:a17:902:ef0a:b0:21f:2a2:3c8b with SMTP id d9443c01a7336-22bea49d314mr228210365ad.11.1744710163568;
        Tue, 15 Apr 2025 02:42:43 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:7d0d:86ea:ee84:cd08])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccca5asm113135215ad.254.2025.04.15.02.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 02:42:43 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: usb: realtek,rts5411: Adapt usb-hub.yaml
Date: Tue, 15 Apr 2025 17:42:00 +0800
Message-ID: <20250415094227.3629916-4-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.777.g153de2bbd5-goog
In-Reply-To: <20250415094227.3629916-1-treapking@chromium.org>
References: <20250415094227.3629916-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Inherit usb-hub.yaml and remove duplicated schemas.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v2:
- New in v2

 .../bindings/usb/realtek,rts5411.yaml         | 47 +++++--------------
 1 file changed, 13 insertions(+), 34 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
index 6577a61cc07531..52fad201a56c82 100644
--- a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
+++ b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Matthias Kaehlcke <mka@chromium.org>
 
 allOf:
-  - $ref: usb-device.yaml#
+  - $ref: usb-hub.yaml#
 
 properties:
   compatible:
@@ -21,51 +21,30 @@ properties:
 
   reg: true
 
-  '#address-cells':
-    const: 1
+  '#address-cells': true
 
-  '#size-cells':
-    const: 0
+  '#size-cells': true
 
   vdd-supply:
     description:
       phandle to the regulator that provides power to the hub.
 
-  peer-hub:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      phandle to the peer hub on the controller.
+  peer-hub: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
-
     properties:
-      port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          1st downstream facing USB port
-
-      port@2:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          2nd downstream facing USB port
-
-      port@3:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          3rd downstream facing USB port
-
-      port@4:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          4th downstream facing USB port
+      '#address-cells': true
+
+      '#size-cells': true
+
+    patternProperties:
+      '^port@[1-4]$': true
+
+    additionalProperties: false
 
 patternProperties:
-  '^.*@[1-4]$':
-    description: The hard wired USB devices
-    type: object
-    $ref: /schemas/usb/usb-device.yaml
-    additionalProperties: true
+  '^.*@[1-4]$': true
 
 required:
   - peer-hub
-- 
2.49.0.777.g153de2bbd5-goog


