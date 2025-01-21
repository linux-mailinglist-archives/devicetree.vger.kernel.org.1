Return-Path: <devicetree+bounces-139907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B37DAA17833
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E46C016DFFD
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 07:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044DD1F8662;
	Tue, 21 Jan 2025 06:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RdMMRvsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D121B4237
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 06:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737442690; cv=none; b=umTve3PedA4SDpf9EYtRYxb+Yp1VyxvcGzgwfX47PRl2Vlfx/5s0/D8pUYZwe+iems//AzS8CpVophILgaB/NID7/VHY3F8hTzFJ2LPUDbHtovARz0ZMoUeF8tM6ECooAqyR4sXoTH/1rgDndtRFGZMjesv5Z71ELcA3c+5uyCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737442690; c=relaxed/simple;
	bh=djsCwHBeiUOwF/Yd8BMUBqFrBmr86DPuyw8Pm87LhvQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=riRMFxoYA9Pylr/VoqIR+kIWGRgXa33RCE8k5zhrAopypCXCmCSIvA+NXdtdufNhp/S58NuzHg47HGtvGhp45Ub96QkJJ07xSPj9zpFKnXevwULVwmp3kU6ZYv5Z3XnopHkcq4BM8pm5QC6Qww1aH1RLWvPWK9swMZlG4EKHszo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RdMMRvsD; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2ef72924e53so8976027a91.3
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 22:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737442688; x=1738047488; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QCx1SvldvWoqbxgFpon2TvezEPjA28Rr/LhgNlRp79Q=;
        b=RdMMRvsDhWjbVMl63l+RssiXW6Bln9hYnhgN5N3D022tzes4EX2NEqLR3ME6bewh/b
         ewGNnTF4vSOUOztvap6kimj5Pcjnk+cymJp+ukDpBGUsi+tu0Sq8YR/dxOYCd8BGEdD4
         DWPEVE1PJpvnRp3tma5mKXRq8HK31XhVBruhfL+msRhDWjnJ/ma28uwES8Xunddv181c
         b2RfHAp+rqfEhxVcXH6Fu4JG3TP2eSoYScAI+x/FmBsYDEjS0jYkXgkt1za7iZZbFz7O
         n5M7gix9rOwW8CvuPbzQSmbVLbWiHFv5c667McK0le2LJ+dfRexZzNWqNyHJUjskYW5M
         2Hbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737442688; x=1738047488;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QCx1SvldvWoqbxgFpon2TvezEPjA28Rr/LhgNlRp79Q=;
        b=rp5xXEjyXZt0X342qpwuEYC1mm/DFgQVExO5rAB1yEpMUsBbhMebpVjRhYEN3R7EfW
         KBKrIvoZsli+tKkiJceUDfROKlyk0nFpwXyWfyavEyUH7UjDH0JZaARWb4/q3TXNTl6q
         7k2Vxz9CbN5Q0m4u2gLnOGM7Zs9I7S1VEBH1jB0cWpiiKdtCd+7FOwLECL1SCEJrKKuh
         rIDviGcvy1UeegrpSF9jQZNg5Be1SsEYj0V6514loR6cfvrNEal7z6Lb58XN969EG7aO
         EP2OKv/mlREKh8m4xS8MPtygVw0qfl/jHK77izN1NMfMzbVSflEJ4q8NPh2YcNz4L1YH
         +2jA==
X-Forwarded-Encrypted: i=1; AJvYcCXJvZGed5+i2xHd3F9QMR4rEO8QDJbquH3IfCdIHN5U7mt7jJ9Tk/yH2JC2gv2mC19p8WUxMy60zvat@vger.kernel.org
X-Gm-Message-State: AOJu0YzA0/OSWl8zdKZIbrsVey6GmWAkpxOFfBDC87/yS6NoJ2LVN98k
	vv+LI/YmyOmuw+SFtJMwO9HoL4Ndz9xtSdqdecbSh/Dmk7cQs8+a3VPLO7gWHEU=
X-Gm-Gg: ASbGncs2kxrN544Y6+WkD/6BLf5vk7NBbP4S4qe5T8SAhtzgBn1NN++KxKdeF7j0zc4
	axC567qBU7jbPLixNNTFHIVxqaM64ZyzdWCL8vkTz6eCMZvrea6v+HGF3xJakxHH16A433hSpHH
	4JQENJOB6jwRQo19AG4ZsAwbpsLQcLIjeYlBMJoL1+UKW9M+Y8RdmfyWzw8TZegWIMeoqkOdafR
	aWDviCF7ST86WjB/E+kk3B6dNSnqWBdNrsgTNDT+8vzXrJ/0StAmMYzfAhlQR4y1pOqLwXmU29N
	8k/W9i8=
X-Google-Smtp-Source: AGHT+IGTDgpQAVNZjtI+Oozrv4Z3daBIVHvUM9SOBabufsgddCoyXMampLgmx/TFMSSuDp+9U6Vdbw==
X-Received: by 2002:a05:6a00:4c18:b0:72d:8d98:c250 with SMTP id d2e1a72fcca58-72daf9a5535mr23615446b3a.4.1737442687760;
        Mon, 20 Jan 2025 22:58:07 -0800 (PST)
Received: from localhost ([122.172.84.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dabaa2388sm8294524b3a.157.2025.01.20.22.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 22:58:07 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: Vincent Guittot <vincent.guittot@linaro.org>,
	=?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
	Bill Mills <bill.mills@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: firmware: Add bindings for ARM FFA
Date: Tue, 21 Jan 2025 12:26:38 +0530
Message-Id: <505bb9d66e8d4d8e505201eced6751b6fd6b1dcf.1737441631.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1737441631.git.viresh.kumar@linaro.org>
References: <cover.1737441631.git.viresh.kumar@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds DT bindings for ARM's FFA framework. The bindings are used to
provide a reserved memory region per FFA device.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 .../devicetree/bindings/firmware/arm,ffa.yaml | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,ffa.yaml

diff --git a/Documentation/devicetree/bindings/firmware/arm,ffa.yaml b/Documentation/devicetree/bindings/firmware/arm,ffa.yaml
new file mode 100644
index 000000000000..b88d6cec7e16
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/arm,ffa.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2021 ARM Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/arm,ffa.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Firmware Framework for A-class
+
+maintainers:
+  - Viresh Kumar <viresh.kumar@linaro.org>
+
+description: |
+  ARM FFA (Arm Firmware Framework for A-class) is a framework designed to
+  facilitate communication and resource sharing between various software
+  components in an Arm system, such as operating systems, hypervisors, and
+  trusted execution environments (TEEs). It's particularly used in systems
+  leveraging the Armv8-A architecture and later.
+
+  This binding is intended to define the interface the firmware implementing the
+  FFA provide in the device tree.
+
+  https://developer.arm.com/documentation/den0077/
+
+properties:
+  $nodename:
+    pattern: '^ffa(-[a-z0-9]+)?$'
+
+  compatible:
+    const: arm,ffa
+
+  vm-id:
+    description: Virtual machine identifier.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  uuid:
+    description: Universally Unique Identifier.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 4
+    maxItems: 4
+
+  memory-region:
+    maxItems: 1
+    description:
+      Reserved memory allocated for sharing with other software components.
+
+additionalProperties: false
+
+required:
+  - compatible
+  - vm-id
+  - uuid
+
+examples:
+  - |
+    reserved-memory {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        ffa_2_mem: ffamem@81000000 {
+            compatible = "restricted-dma-pool";
+            reg = <0x81000000 0x00800000>;
+        };
+    };
+
+    firmware {
+        ffa {
+            compatible = "arm,ffa";
+            vm-id = <2>;
+            uuid = <0xc5b82091 0x48bbd4fe 0x244de7b7 0xbe28bb6e>;
+            memory-region = <&ffa_2_mem>;
+        };
+    };
+...
-- 
2.31.1.272.g89b43f80a514


