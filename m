Return-Path: <devicetree+bounces-151232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB4A45038
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 23:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C3E018998F0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 22:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45ACE219E86;
	Tue, 25 Feb 2025 22:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QUSOCo5T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC0217718
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 22:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740522645; cv=none; b=Sr1lVSD8oM741p4ppsnP4DjsRDJqkx/6QKxXsrsRkAQAAG8lR45W6k28o2GsubMdDv0MfffLmaGSlNpM72ES8gyG02gpw0Wu9gKyrlJ3UU6biwn96mcDUwnTBu7DiNM1NtWeEtDX/CoD96zjrPBtwsNUsk1UytyDPurJoyoibRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740522645; c=relaxed/simple;
	bh=LsqVGCjtMo5lMpVB8FHpQNoTpKeLzijmuixmRj5EbJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mx3snDwIZFfBmO98SQI4sfzDU7vN8YkTO+r7ICZBNd3fkS9a52AmPm2HVMwxWxLaUYTEPU1xGYRpf1XPzARK3vcVI1PoQeEBwTUYbKDpyA2GeyzqCxgEuAOHLcG0aNEMa/0ryhTj0WyRYhhJMXHpsyg04vAsHRcrQ57GllqXANc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QUSOCo5T; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2230c74c8b6so34958535ad.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 14:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740522641; x=1741127441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ApYHs/n7IfGYX7B4lQQ+p4O3G1a7OCsUKtghlEJmtj4=;
        b=QUSOCo5TMPV7m/c4IaFjN5LLiPUH9ZpqLA9nAIx7iqaZpDPHcWtF1mGO5Te2vGdI0t
         Tnmz96DYETSS8HRiR7nTsFAfFREL5jXY0gus8pJSFvzZKuYTxdV/YtxFbA9GVAJTsoxX
         7sLOMp17vxRU6A5BLb8BwaM6OFD0rVQvAqZ8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740522641; x=1741127441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ApYHs/n7IfGYX7B4lQQ+p4O3G1a7OCsUKtghlEJmtj4=;
        b=NOHnz+yIbREaqrtMNJktHc/c+U4amSCodHM+h7CtUFzRUQBBhGjAj7Z2yqH9jzUtNp
         xtPxg0IgdKxbjVUNoKgn1aNTFjfB3cGheAMTlkF2KHfk55+fkZEcITTWKYp3XVSmfrOX
         dO+N1+DZ9lOlK+/rQHhp1HyYp18EUVq2NaC3v+Dd5UjNwYTPa2D5W9PN6n3uridwxS8E
         xfViS9f+FwsGMqAM1e6g++m8KSFKmJWuLGZVn92vhQ7izoj9r5Y+0/z0psJ3xfi5qed8
         Y3Gr4MyE0EJGHHn6TM4Yd8nuV+MXkaaGEy09d86ffVd+zwLAL2nTUMkMaTYm336vyIl5
         iR9g==
X-Forwarded-Encrypted: i=1; AJvYcCWrDCUBIKKZ15+Rf5uS0xDn3EtKIzlMOEOn+UE3F+wLqYBPU+869RFPBsalEdbx2Ewi7uPc/9piFonp@vger.kernel.org
X-Gm-Message-State: AOJu0YzSKIVC6N+19glp2zAx13hufhEAIVfDcE1hahUmP5NzLP4Ks+n5
	j6UjVUCsNKX/G+i6bn05WS86b369/pPjPd08ckQ+Ue9scW88oUY/3+zOhZHXXircUVlVaIEoSKo
	=
X-Gm-Gg: ASbGncuA0YA4yUJqQW/+BZ93sGuU41m3XmbjgA0OvUco4NT4RdBwv2jy9zlcIdq6GY6
	nqN9qdJqKY3IYZNyYLcX8bczhOLIx+FTZhxmM64jdNcECcl9gd+GPI+floArQCsWNv+v8XMA8j2
	yzJLPFMXgA78fjOSSwpYqSibC1Q+6jTP09nKrXJcUjzF961ENxGRpTUvN44DeEENUqobkcj6hrw
	XmF0dwzw5IBOuF3+2MqaUntTOSgc9Rt67Van2jB/bGBYRRegj4kGHF6cjITzDbTGDIxxaNGvkad
	iya4UqZTCA8bAp2+ACJWCgvOj0c+yzazwHVtavXGvPAqEOltwYXQ+o7L040s0Lx/8Q==
X-Google-Smtp-Source: AGHT+IHW1xqPTBE6DlhH45+k6SdX/yDbLaHBxXJlSInk+OwmjcdfQ4C/YpQmsbuuwHQxPH6RrUiRJg==
X-Received: by 2002:a17:902:cf10:b0:215:853d:38 with SMTP id d9443c01a7336-22307b59639mr75965445ad.25.1740522641460;
        Tue, 25 Feb 2025 14:30:41 -0800 (PST)
Received: from localhost (222.246.125.34.bc.googleusercontent.com. [34.125.246.222])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2fe825baa7fsm78653a91.11.2025.02.25.14.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 14:30:41 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	patches@lists.linux.dev,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v5 1/2] dt-bindings: usb: Add binding for ChromeOS Pogo pin keyboard connector
Date: Tue, 25 Feb 2025 14:30:36 -0800
Message-ID: <20250225223038.879614-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.48.1.658.g4767266eb4-goog
In-Reply-To: <20250225223038.879614-1-swboyd@chromium.org>
References: <20250225223038.879614-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Describe the set of pins used to connect the detachable keyboard on
detachable ChromeOS devices. The set of pins is called the "pogo pins".
It's basically USB 2.0 with an extra pin for base detection. We expect
to find a keyboard on the other side of this connector with a specific
vid/pid, so describe that as a child device at the port of the usb
device connected upstream.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: <devicetree@vger.kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../usb/google,usb-pogo-keyboard.yaml         | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/google,usb-pogo-keyboard.yaml

diff --git a/Documentation/devicetree/bindings/usb/google,usb-pogo-keyboard.yaml b/Documentation/devicetree/bindings/usb/google,usb-pogo-keyboard.yaml
new file mode 100644
index 000000000000..053c1cfed6d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/google,usb-pogo-keyboard.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/google,usb-pogo-keyboard.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google USB Pogo Pin Keyboard
+
+maintainers:
+  - Stephen Boyd <swboyd@chromium.org>
+
+description:
+  ChromeOS devices with a detachable keyboard have a set of five pogo pins that
+  are the typical four pins for USB (D+/D-, VBUS, GND) and an extra pin for
+  base detection. The detachable keyboard is a USB device that connects to the
+  four USB pogo pins.
+
+properties:
+  compatible:
+    const: google,usb-pogo-keyboard
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: Connection to USB2 port providing USB HS signals
+    required:
+      - endpoint
+
+patternProperties:
+  '^keyboard@[0-9a-f]{1,2}$':
+    description: The detachable keyboard
+    type: object
+    $ref: /schemas/usb/usb-device.yaml
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    connector {
+      compatible = "google,usb-pogo-keyboard";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      keyboard@2 {
+        compatible = "usb18d1,504c";
+        reg = <2>;
+      };
+
+      port {
+        pogo_connector_in: endpoint {
+          remote-endpoint = <&usb_hub_dsp3_hs>;
+        };
+      };
+    };
+
+...
-- 
https://chromeos.dev


