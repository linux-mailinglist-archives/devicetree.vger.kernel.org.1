Return-Path: <devicetree+bounces-143432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFA0A29D8C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 00:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 247FD166AC8
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 23:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3F521D018;
	Wed,  5 Feb 2025 23:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Pw7lTsgB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F877215067
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 23:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738798225; cv=none; b=WexMEboRMCCizeyxwTsKw4ktTc2EPSY1o1TPNd8iRqEGymBx/0HtVr4EMn7hYIu0GMXn6VHxMK8ApHIdlBZJ/7RpXNApfy4GSzhWf22BfF02ci6ZVInuVgEe1btwfexflmkef9dEsElNK7cTxYP9BJnAEIfuUMbCgtwC271LkBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738798225; c=relaxed/simple;
	bh=/4MVACIsm4mxXNiJSYO9O9WP/zDnD65LIiLgfNT+Jv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Se4/8enOIDWB3bMUOrdZMx0xu9CoDI2oC8/LSYCh19cFJQUgxQyWIB+mnB5nnywOb+0ADCESzgA8CgTLLMto9/VMxXXex9YXsLov0BQ2OFOILIaKgYma/m002QzN3jsRv+LQWzuCyexPU3y2OBIXKELlXflaWyFpeq+D5ABgCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Pw7lTsgB; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21628b3fe7dso6694205ad.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 15:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738798222; x=1739403022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENYD7Jqf2Ry9h9YG/MAy2Qwl7UQB5Doq6yEYLu32Qi0=;
        b=Pw7lTsgBYl/515XJoKkhUNOpCBO91Y11c4OYld34HqrpbFfmxdcUQ3iLLvHLRwDac/
         PFOUIACTO3oOdXOy2EIg2UxxH2XF3t0+rksRn3eXHcLqsz14FsGY5AvAMbbuyMZIpBXS
         MyqA0EsYXK12x/cy0bFzfNZmkKhFt8vdGPSbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738798222; x=1739403022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ENYD7Jqf2Ry9h9YG/MAy2Qwl7UQB5Doq6yEYLu32Qi0=;
        b=STSGVPaRMdARuj5ZKUR3vsROTYogPUHj+DsjN3OeLfmco2fV1o1VzVjrmOdBmnfkvU
         ndYD6PXgoV9R2HXv5DCelTlbaqqm8ypN9Dg/6l5eqK9icGoeFAadHiw+KOlwvq036P/K
         njT4D1lH9IZWNfn7mOfvU5ywQ7t7ea45DjagKztMly9Jl3FLTSkrCbWPrQK10gJoC6ni
         LJKmH1jw1A3kaZlxUqM0s95qkhkjbfvZYC9/CXJHnTig7bv/ZyuYtUPYDXpxl078T98t
         sno+V1GWa+qYXnLBOMVDBaaIYp3mJMHfncuurP0/1Ka/CwJFPF1m5X1VLgLFnWwYcGPA
         R18w==
X-Forwarded-Encrypted: i=1; AJvYcCWSfB3ISSi+qS+Db/+LdWCtQXmlaeN946L+bn8RWt2qDguxFaLpQOyj9KNo7ThppWR7HMsZeqpttboU@vger.kernel.org
X-Gm-Message-State: AOJu0YwdZtNPXs4cMsbLkfc2IVUArzZKxw+hWrwgDhbVBFQAMQRkgroT
	OFS7ezTqW7JgHJZDsVsrpqP1SUZYM0aS1bIcWQxrPN7TACQTFgkHpLe1EDRgOQ==
X-Gm-Gg: ASbGncvamI9llVIAXJVkGp2JuiUqSGYVDG912GHqA/e5bnHElI9XbjF7f40UK+MMAWx
	K4SjlEsBja3SblDQJwUKBkFv8DbgNqGA4DXDSX91N14f2Fr+kxXTk0YAJsVRW1SprGUYyGzqBqv
	UZZDLdaO3zLf/hz5Z121u0yyOpgrFoAVGd33Xt2eTfmhEdeUliFdYQq6AlIuy9JveEJ67fWmav/
	hgfB8mCFI2k9UVCp4v8WjcfMJRoieAzrKyzI3Nyq1XGu4iXBac6ZiobQrX4s+iYm1lvs2d9LNHE
	uAG2i1YyQsOAeyGdLqe9FX0LfqOmdeT86KSsdp7ilETbBW1OVqeSZe8=
X-Google-Smtp-Source: AGHT+IEZ4n+Jd53BNMcbz3qeJy5aLqWtFVqnGwoigd8TEJYu9DWYm8+Vg9ly6TVuMdEWwx88axmwQQ==
X-Received: by 2002:a17:902:cf12:b0:216:48f4:4f1a with SMTP id d9443c01a7336-21f17e4ca85mr82422235ad.16.1738798222190;
        Wed, 05 Feb 2025 15:30:22 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-acec0a69b3bsm12388570a12.71.2025.02.05.15.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 15:30:21 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	patches@lists.linux.dev,
	cros-qcom-dts-watchers@chromium.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2 1/2] dt-bindings: chrome: Add binding for ChromeOS Pogo pin connector
Date: Wed,  5 Feb 2025 15:30:14 -0800
Message-ID: <20250205233016.1600517-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.48.1.362.g079036d154-goog
In-Reply-To: <20250205233016.1600517-1-swboyd@chromium.org>
References: <20250205233016.1600517-1-swboyd@chromium.org>
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
 .../chrome/google,pogo-pin-connector.yaml     | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml

diff --git a/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml b/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml
new file mode 100644
index 000000000000..622e171b6b08
--- /dev/null
+++ b/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/chrome/google,pogo-pin-connector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Pogo Pin Connector
+
+maintainers:
+  - Stephen Boyd <swboyd@chromium.org>
+
+description:
+  ChromeOS devices with a detachable keyboard have a set of five pins called
+  pogo pins that are the typical four pins for USB (D+/D-, vbus, ground) and an
+  extra pin for base detection. The detachable keyboard is a USB device that
+  connects to the pogo pins.
+
+properties:
+  compatible:
+    const: google,pogo-pin-connector
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: Connection to USB2 port providing USB signals
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
+      compatible = "google,pogo-pin-connector";
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


