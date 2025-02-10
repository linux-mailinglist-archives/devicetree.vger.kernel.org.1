Return-Path: <devicetree+bounces-145007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6516A2FDE8
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 23:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1C9E1884107
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567F125A329;
	Mon, 10 Feb 2025 22:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IB0jmWQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE13253F17
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 22:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739228240; cv=none; b=rYC+tbqO0X26t7n+SERPYa4AtbdLJEQOhB2+J9r5vkcjsoq4UUiYIVf9NyJ6EyhMMzdy3SLGbWoAV2KM0Cp7FsfvCVtQrovt7MTukB28me10coEvw2UbR3cxaToI8/w4WL8EIUi4MfK21yUhmOO0R62+BdvslM3+wB25FIJ4ghA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739228240; c=relaxed/simple;
	bh=TigOjWjByS/qOxFStuN4jxQdOoIMiI/Kd8fVikyy1TM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZEjIJtuSbaCVEpW50hAU6cDkY2qdzowlLmooDVKB4t2obZzpf3gTimd6/D5pxJCJq5ur/PZU/2OZe7JtgR2W1R+v2i4MnxIHSYMt/Ofrcla4UbOmPUQQ/QyIx89C85Lj24q0yB5fK45LSpEeQxsWWmxojf0hAqrnWmKHzsOQ044=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IB0jmWQw; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-21f4500a5c3so96152805ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739228237; x=1739833037; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CZJsAaQGNn6Yx+uv7DpUfzz85gmu7DiYTeAAhcXBbX4=;
        b=IB0jmWQwT2FxQhF10tXeQW9PjWfvwL4KYJYDG6AcTELx5gdjyaGsaNQ4ZGfinwm+vP
         J/MJBU7VybBzzn6T5h+k3G2R6DYUAE1hUYmSgxg1N8PJ73mMN1qFdTI5CzB5bWljZ/Sx
         faxvvE9KyFsjSvPK4JVK4ItwsSM+tl/+YdGHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739228237; x=1739833037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CZJsAaQGNn6Yx+uv7DpUfzz85gmu7DiYTeAAhcXBbX4=;
        b=oyOMsus96Ulk7m5POVqQv9rKY4UGPDQiuqOHVOAgQOrtQOPJ4FpYJD7E9MXa09deVJ
         sz9q88rviOnrnIXet/eLPPqILlaw7Up6BezBkdSQi74H3NZlMskbjCGPHPwu+JOA+FMS
         KOdz0OJDxqswZXDIbiO/ViUdfs8DRRdKecvpEh2A6bLvsu/5KHEH8xA94Vys+Jy/VB48
         m30cs4d+EbIstwEMPBxxg13/M5n8h/onUKd2wvt0R8Fk4WmfRbHUyVIyNM/VO5LsArZV
         udfI0nQlBUQZ31hmKjWtr3i/IaPf03pHOPbuzNQ0JImp7H8KK6vMijIlYy2Lw2m9hLvV
         0BHg==
X-Forwarded-Encrypted: i=1; AJvYcCVHCSOH+Rc7FvMjcl+YXYqKJV+S7zTcBwhUHKmhpyNcfuK7i7d+k5DJwnjFvvE2oaB/hGivqCPKFuf4@vger.kernel.org
X-Gm-Message-State: AOJu0YzK365dqMIm+SuEUv4FxV0Q85BMg2f/TSZHE8GVlu4k3r7VwO+b
	dQIcjvGouF5ND6j7G+Pmq0f1FnoG78bbxKFmcEw4fHrJYNTONQA/7lmKuJGrKQ==
X-Gm-Gg: ASbGncuUNjTCpwVlRwDRqd7LbD1IpcZqiBXhp+3bmZgpT0TaSF+oklvMVkBGeBCpDwA
	Qs6xpXn58MIYnmlvvUMgEdq8NmAod0Xohhho/gtWuYVylAgcvsCAY3OjAASD6R1rviDspJX8FjB
	X7ZtWqU5Phz8NQeE2m+cHpGXQURf5HA9XuztWdZU7TzEe3H0t22PZwBOpP0no7Dd3ZCE7QNX3Zr
	gMaHCICay+3be+te+D8GfrfckyO8LrGwwgT+c9NPPb5UUhSd4eJjjVhxvFoYFH8QyiUp3sTgCu+
	WygvsQ+KZE3KveRkOhzF/mt9L18XuEE2qEuQ/po3OXRoFlzgNR1wj5A=
X-Google-Smtp-Source: AGHT+IGZ3N+kY02h1wIak+gBqbJaa+gpVr6uo4aUlKJT3x7EaQ/2I7u1jOu0/8aGMau+q+PMMuwGiA==
X-Received: by 2002:a05:6a00:1798:b0:730:8e97:bd74 with SMTP id d2e1a72fcca58-7308e97c379mr8317065b3a.2.1739228236978;
        Mon, 10 Feb 2025 14:57:16 -0800 (PST)
Received: from localhost (222.246.125.34.bc.googleusercontent.com. [34.125.246.222])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-730840e842bsm3436416b3a.88.2025.02.10.14.57.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 14:57:16 -0800 (PST)
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
Subject: [PATCH v3 1/2] dt-bindings: usb: Add binding for ChromeOS Pogo pin keyboard connector
Date: Mon, 10 Feb 2025 14:57:11 -0800
Message-ID: <20250210225714.1073618-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.48.1.502.g6dc24dfdaf-goog
In-Reply-To: <20250210225714.1073618-1-swboyd@chromium.org>
References: <20250210225714.1073618-1-swboyd@chromium.org>
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
index 000000000000..e1b3b2c1711e
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
+  "^keyboard@[0-9a-f]{1,2}$":
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


