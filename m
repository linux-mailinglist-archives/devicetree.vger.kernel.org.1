Return-Path: <devicetree+bounces-169251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AB6A961FA
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FB2E7A2EE7
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB8DD29616D;
	Tue, 22 Apr 2025 08:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nFgCO6mJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224EC296154
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745310613; cv=none; b=ipRkafizFADSq0qyxlNcTNrdtwtO0qFv/SZLFC7M7lD4fcuzpw8bSNdt8hHgBGtBEjz4wFQCANXNLMGdMvFf13jqX6lRUm9LPb55VKFwNjsSQ0a3fRvqF6KTT0KcK89NHhCEHO7AR/AboTFTJSZqpL7tpk/CJkhQpi7xgRjyx/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745310613; c=relaxed/simple;
	bh=1T63O1OlCD9JKHcCQsup6IB7KusjwVZkSD/cwdn6G4Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AbZzSZLL6xf6YrLuMznAzLJi7oOI72Dnipcy1niM88MDZhXWWOhP9BkOY29ASMXJTUVX5tBfi4VVu/n2TdmBWftY9PgdZLeefVRWU1UaE6PsEIgZiFHHDzS+NT6YdxD0cW2UM5BWoVGOT72m/KP+D9XI1nnSkcwa3KItBysMExs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nFgCO6mJ; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-73bf1cef6ceso4176008b3a.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745310611; x=1745915411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfY1cqMOlZNgD6sYRBGuCkyMRj2zV1J4ZTJazFwtz0s=;
        b=nFgCO6mJNRou2JyEHaI0dgJR+8f4zPcDFyNcmqxwtdNVJ6r5AwAOAn5fkivajbK3UA
         eJ8gk0LjUpunDK11AOslJxhOn+8tpgyQGNx/ZM6OtTlK98S9RiiJywSJ6ixc4XopfSiQ
         FO8FjHQjXvvLvs7kxecL3Vk8XoWTvznZWxSHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745310611; x=1745915411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MfY1cqMOlZNgD6sYRBGuCkyMRj2zV1J4ZTJazFwtz0s=;
        b=w+oXAEA4QyPnxVctYCNUUs+UqWfPK6NKwhgRPKqhjGKkjl7klD5wGMPqAQe/KqSNXd
         wWN1wZmkBAkQ0G2xlPU3rGU8j6kSiMKs0gLZdz0CA45ydAA6G+qTK5OJ+kQTWLHcd4Hz
         9RCqSHPwe5ZZIT1Jc75rdNPIigjZTppDpqrlAl/hV+Mza4lruDgk5LydabpmpztwVrqq
         Cgk6azLPWG2Lz/QZp5bwTH98QiRefotuFtpaoIcce8tGRngWY273tUIh/EN5VOIu/Xoh
         0EhtOweD38Qzy0iTZ0xunvZoluZY7xB4usL9q1aurXWMsCJd1B/WRFOhCetJddDyag1P
         KuwQ==
X-Gm-Message-State: AOJu0YyZ7Sycb4K9P/FHMoo4PifvSelT9BDHYhAlVgOzHr/MBJcjTeIx
	Y9zN3cZEkLXSTDr42oKgsbm8dP8DrRYA8NpD0R0VEwdDO2AysPZt/+wtmIF0QQPd95olA7zQ6tI
	=
X-Gm-Gg: ASbGnctI7CzvAT4OaJ9WnmdlVn1e0z7az30zurZ+PVN5tkx2OnHECO3mcnHPF5BemnO
	l4QPdW5pLOMTUEdyWbY/kUSFv9ydKGaSXHkw9f1Sjg5AnnPUegeEENn2VJbc23DMLuv1Ri+ZZBS
	EfM5+2Hyaqb+QX8/CaDK82Fxg4XS6TjCmwrlXks4mXCr4qJUc1UlK41A7XOvls99ADhySVha/DL
	MMELPN0PuK4MYwYpMApPodqkk/OSHGcWjQYyJGqXTBDZVxvsbP65yFTmu2Oo3lv3x8vgW1/qnYj
	jgYn3axy87RxX89XYC6XNuIRh8xuomOPGcKNnJHtVb6mftXCM8v/QPW6CDH9QQlb
X-Google-Smtp-Source: AGHT+IFrR0SjHePrcDyloZ0SNU3e0mpIkK38kOSsRhDb/AUvmUbpn+VO4MBvrhULKtBCtjCKg1/Cug==
X-Received: by 2002:a05:6a00:2e1b:b0:725:96f2:9e63 with SMTP id d2e1a72fcca58-73dc1616d31mr21371230b3a.24.1745310611398;
        Tue, 22 Apr 2025 01:30:11 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:90d6:56e4:9d90:9df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8e0be0sm7993576b3a.49.2025.04.22.01.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:30:11 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	linux-usb@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: usb: Introduce usb-hub.yaml
Date: Tue, 22 Apr 2025 16:28:27 +0800
Message-ID: <20250422082957.2058229-2-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250422082957.2058229-1-treapking@chromium.org>
References: <20250422082957.2058229-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce a general USB hub binding that describes downstream ports
and hard wired USB devices for on-board USB hubs.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v3:
- Remove redundant schemas

Changes in v2:
- New in v2

 .../devicetree/bindings/usb/usb-hub.yaml      | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/usb-hub.yaml

diff --git a/Documentation/devicetree/bindings/usb/usb-hub.yaml b/Documentation/devicetree/bindings/usb/usb-hub.yaml
new file mode 100644
index 00000000000000..5238ab10576308
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/usb-hub.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/usb-hub.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic USB Hub
+
+maintainers:
+  - Pin-yen Lin <treapking@chromium.org>
+
+allOf:
+  - $ref: usb-device.yaml#
+
+properties:
+  '#address-cells':
+    const: 1
+
+  peer-hub:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the peer hub on the controller.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description:
+      The downstream facing USB ports
+
+    patternProperties:
+      "^port@[1-9a-f][0-9a-f]*$":
+        $ref: /schemas/graph.yaml#/properties/port
+
+patternProperties:
+  '^.*@[1-9a-f][0-9a-f]*$':
+    description: The hard wired USB devices
+    type: object
+    $ref: /schemas/usb/usb-device.yaml
+    additionalProperties: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    usb {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* 2.0 hub on port 1 */
+        hub_2_0: hub@1 {
+            compatible = "usb123,4567";
+            reg = <1>;
+            peer-hub = <&hub_3_0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            /* USB 2.0 device on port 5 */
+            device@5 {
+                reg = <5>;
+                compatible = "usb765,4321";
+            };
+        };
+
+        /* 3.0 hub on port 2 */
+        hub_3_0: hub@2 {
+            compatible = "usb123,abcd";
+            reg = <2>;
+            peer-hub = <&hub_2_0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                /* Type-A connector on port 3 */
+                port@3 {
+                    reg = <3>;
+                    endpoint {
+                        remote-endpoint = <&usb_a0_ss>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.49.0.805.g082f7c87e0-goog


