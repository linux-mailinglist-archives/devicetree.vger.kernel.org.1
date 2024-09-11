Return-Path: <devicetree+bounces-101856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C72197471B
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 02:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC8A01F268F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 00:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886CB625;
	Wed, 11 Sep 2024 00:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nxdBQFve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D919EA934
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726013283; cv=none; b=FYyYW9/2SJYOhXlDdeq5OcpIcsAwhYXJcZDJuWkKbOT9+QPGQD649yQ05bQvh5tR+5qB640GV8S4xfxW5XWpRs/hzr+BFpt+EXc0IGzymriWypZZSb1W46q4PIJJyvNxRdx2tBvXp2CsFklCExkwhT2YYfXM/OSMkdKIDilU/9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726013283; c=relaxed/simple;
	bh=HCzm6/XYJgVg038NOuIBT5dfy7b7uGQ2TF8ZuJ2Crj0=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=hz6JnagY7WeqfvqOBvOQ64GhM8hbcuGYiwu5qzxS6JpJlpi6BMUQpdmlmPPMoOQKrp99wuVnoi1ri5eIDcPZ2mX89idkloClAhuEJdc46aLg3KzahOEOHSCfmxh7xlRW0xc3Wx5MCqE7n8z22pZENdMDxYRtMlA1gOpLZa/RnYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nxdBQFve; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e1d46cee0b0so7066064276.2
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 17:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1726013281; x=1726618081; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=20SC5znsIjYm+2KNyb0KEnPeyTx6kqJyFPelaWmdQXA=;
        b=nxdBQFveAs71K0OseGgzO3bN9zZ/6myW6oE5YztW/00IyP1dK7eNUawCwZf/MlwOSN
         tUntpso4u9vB0TwnkGf8AXrQv3wZMV4DVWwttXjyYyym3aJhCAMQFTvVVC7it7+Egltl
         uafMCt8l1pNLeoIEVSKvvdxe+ijL+xJjidJTstR3WXUUrJ+aSGwWoxgR8zoDb7ZuDfj8
         hD350mJge27F8gzqp+4rC1nbAw7Ft302mr9ItwHr7ln/kDIZZDDCTG68O8AkZx3DL5JL
         7+Is/2+nP8zriZ7uzGL3vsUSFB7w+XzhR9bNwljFZWFBkLwsc/zey8MjGyv3C1ET6T5Y
         g4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726013281; x=1726618081;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=20SC5znsIjYm+2KNyb0KEnPeyTx6kqJyFPelaWmdQXA=;
        b=WPDsZFou6y2o1dSZ4YFDbmZ9DWXsWC2UeMfKfpfCP0uI4Ggy0toC3Oq2t4w++6P7VK
         1g+cKmEF6sN3RAYr0iSdHBAmi4fwc/3TvDQj+X75f5EWosGf6G4cXlIpPLlGzYPfGCbm
         FHSYWspt2xmI6Ayrn4MTDZn7gFYdvA0d89NEzSQeH+1Szd0fHb6yBLB+faVivIwfWGst
         LkQqtBfxsswYEtiidaOiNpYYZiNaueYHR75/+zFBkZU8jNBA7DHh/WZhMnLPLqj3m38V
         uusIDFJZFJ2ZWxaCRhAeiwq2Bicnz95lgOCippSD5xluObfHSFyd4UELGCGXvbxMaWfS
         Eb/A==
X-Forwarded-Encrypted: i=1; AJvYcCV5VuBABfmeYDxAn3duiO/01ERqoa0iym5kX8TC2LuxH1ajTcqgBiC1y83Cq+LUYOtXDhjhiI0cm4ti@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0xQVlQJ7gB6xnjSKU9xmlHzkkrAYxv7HhYqasg0O85ICQkrU5
	t1C5O7JyxdYAP6SGHeOBEUGDItR5i55JTIognqH7w6dPnWYt4V7LdLP96Xurznoh8q51nLA2iwu
	WBg==
X-Google-Smtp-Source: AGHT+IE667GhT1HoNc/PHmcsLt+AJfIx+Hx1SkvhKuEFRZUjW1lbjJ3YKeeUz2y1ehuLDAgex6elLCsr8SE=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a25:680b:0:b0:e0b:958a:3344 with SMTP id
 3f1490d57ef6-e1d34a3abb7mr41869276.10.1726013280867; Tue, 10 Sep 2024
 17:08:00 -0700 (PDT)
Date: Tue, 10 Sep 2024 17:07:05 -0700
In-Reply-To: <20240911000715.554184-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240911000715.554184-1-amitsd@google.com>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
Message-ID: <20240911000715.554184-2-amitsd@google.com>
Subject: [RFC 1/2] dt-bindings: connector: Add property to set pd timer values
From: Amit Sunil Dhamne <amitsd@google.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, kyletso@google.com, rdbabiera@google.com, 
	Amit Sunil Dhamne <amitsd@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

This commit adds a new property "pd-timers" to enable setting of
platform/board specific pd timer values for timers that have a range of
acceptable values.

Cc: Badhri Jagan Sridharan <badhri@google.com>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
---
 .../bindings/connector/usb-connector.yaml     | 23 +++++++++++++++++++
 include/dt-bindings/usb/pd.h                  |  8 +++++++
 2 files changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index fb216ce68bb3..9be4ed12f13c 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -253,6 +253,16 @@ properties:
 
     additionalProperties: false
 
+  pd-timers:
+    description: An array of u32 integers, where an even index (i) is the timer (referenced in
+      dt-bindings/usb/pd.h) and the odd index (i+1) is the timer value in ms (refer
+      "Table 6-68 Time Values" of "USB Power Delivery Specification Revision 3.0, Version 1.2 " for
+      the appropriate value). For certain timers the PD spec defines a range rather than a fixed
+      value. The timers may need to be tuned based on the platform. This dt property allows the user
+      to assign specific values based on the platform. If these values are not explicitly defined,
+      TCPM will use a valid default value for such timers.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
 dependencies:
   sink-vdos-v1: [ sink-vdos ]
   sink-vdos: [ sink-vdos-v1 ]
@@ -478,3 +488,16 @@ examples:
             };
         };
     };
+
+  # USB-C connector with PD timers
+  - |
+    #include <dt-bindings/usb/pd.h>
+    usb {
+        connector {
+            compatible = "usb-c-connector";
+            label = "USB-C";
+            pd-timers =
+                <PD_TIMER_SINK_WAIT_CAP 600>,
+                <PD_TIMER_CC_DEBOUNCE 170>;
+        };
+    };
diff --git a/include/dt-bindings/usb/pd.h b/include/dt-bindings/usb/pd.h
index e6526b138174..6c58c30f3f39 100644
--- a/include/dt-bindings/usb/pd.h
+++ b/include/dt-bindings/usb/pd.h
@@ -465,4 +465,12 @@
 	 | ((vbm) & 0x3) << 15 | (curr) << 14 | ((vbi) & 0x3f) << 7	\
 	 | ((gi) & 0x3f) << 1 | (ct))
 
+/* PD Timer definitions */
+/* tTypeCSinkWaitCap (Table 6-68 Time Values, USB PD3.1 Spec) */
+#define PD_TIMER_SINK_WAIT_CAP		0
+/* tPSSourceOff (Table 6-68 Time Values, USB PD3.1 Spec) */
+#define PD_TIMER_PS_SOURCE_OFF		1
+/* tCCDebounce (Table 4-33 CC Timing, USB Type-C Cable & Connector Spec Rel2.2) */
+#define PD_TIMER_CC_DEBOUNCE		2
+
 #endif /* __DT_POWER_DELIVERY_H */
-- 
2.46.0.598.g6f2099f65c-goog


