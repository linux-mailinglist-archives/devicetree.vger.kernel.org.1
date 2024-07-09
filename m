Return-Path: <devicetree+bounces-84137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9878B92B26B
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 544F52838BE
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 08:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37601534E9;
	Tue,  9 Jul 2024 08:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eGAvct4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D09212C481
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 08:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720514655; cv=none; b=D4duEzPxjBueuYNRhL9crbGRABOFr1voIzIdfM6h9NcC8iVFI0OCkPVIE7BidD6vkj5X0akjJoorgOo+wVMtDUc/Dcqfto9iL9ap2l+Nba/e8vsTKIVvuOgsoCI/jDdr3ljUfuNSaTx0KScCKTyYt1J6q5hljxAEajd31vg2YpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720514655; c=relaxed/simple;
	bh=s0jvCbYGLEo3OLqinJALPSAC6SagCi0vbWs5aTXRa/k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SnN/uuhWU6g0LZOVlcSe+rXy9mMBw0EWzAxxJ/3CFAksfI3YHxOoJReSWqX3AYCFUFAfR6BzX8YXS3x57vYiHwpvTKMaW3A8A174KD6pqn59f9p49VL+YZ5Px/AWHqOaSzZ53QdLfcMTF+2a1vrbgC9QTYG2GRKhK1hZ/1qhWtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eGAvct4Q; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42579b60af1so34633855e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 01:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720514652; x=1721119452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9sE9pXbgkh0YhCqY/lhOE3+zughmoMS00TBY/FZhtbA=;
        b=eGAvct4Qe5Bb8tK4yPxBro1AnZAwEoxnglyH0EeHZ8+m2p4OsGYXwn0gFjGl8KqM5h
         Fxk+j/knYDPE27bKydMdtofuAJwnKHDLnL/d6hDf+OcUxvO1z1k5C7LTS1OmX1I3k50H
         TNZk3moDd/HHOtcVBWiAzU2pAMVVmMu8M6pVgMk4thuDySET0qKK9F459PeCJBjlB0Fi
         xFl2qqH4rk69+QWqdFxcfjvK5CSIMJGChEZ7c/eYIhrqqNery/vRqJbhw3g56WtjxjRI
         WN5YZhD/bVrYe8RXMRZVngqiNcDlP4DJiUb5Nkrh7lvHyfqgewbWR7Z35PrNRthS4C89
         es9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720514652; x=1721119452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sE9pXbgkh0YhCqY/lhOE3+zughmoMS00TBY/FZhtbA=;
        b=KIvmT1cbgrouVPz5Hqnw5MEWElNAQqw2uaj5os0LiaAJqtUuT+VJmU2JcFCzgNnPZP
         sxRgG1NbVtfkyi7TBeEiSuCNb8oAxN1Og7soOYAUVZCoFyKzF4rsIbVP3ccWjOj8vGOB
         4Kv9X6Z7F0yNs55i5RID6D4uNJ9l3s/q8cDp5q/3pX2Bsib8/9GSGhv5rAPiOyWNzQQv
         S8IHD7LWuNLSFjqnn6w7gF3z7LZem7oQYB6ozayStWofkB0SQc5dIGJye6+QXxiRdBoR
         AbM68TH3mvoPvA8d159YSul/urEwrxcJdXYOBa2Jl0Bqynz4tZIKr7TxUMDDoyMGpYeW
         aujw==
X-Forwarded-Encrypted: i=1; AJvYcCVAI4dNjaiUW25qfd4yln/KMR8VcF14e1TPbwRa93gLY1BnqRAMrmLjH0++NxrOBB3AQxl3nrqgi4MS8vMA81ABxqWZgjun2CScOQ==
X-Gm-Message-State: AOJu0YyVjqBUmaQvv/MdQcdZC4Ur6v48Xbi1zdy+rYtZfLXky7YxlTqx
	AgClasGQ9rP1p5SFdF2HuCYV02gLiUrBab6vyPEXE5MEbgq+ZlGC1q+UOkUHsD4=
X-Google-Smtp-Source: AGHT+IGlzmpQAZpXG1fdqdRDyNaRuDJaOQFfwedBfXiToe6si7x56xbAg6qoaKAOY47lpfmVT2Pe5A==
X-Received: by 2002:adf:ec4d:0:b0:367:9279:c401 with SMTP id ffacd0b85a97d-367cea91dc7mr1353258f8f.34.1720514651725;
        Tue, 09 Jul 2024 01:44:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde7e1dcsm1889991f8f.12.2024.07.09.01.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 01:44:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marek Vasut <marex@denx.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH] dt-bindings: non-dt-devices: document ltr,ltrf216a used via ACPI PRP0001
Date: Tue,  9 Jul 2024 10:44:01 +0200
Message-ID: <20240709084401.21108-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a device in the wild with non-updatable firmware coming with
ACPI tables with rejected "ltr,ltrf216a" compatible.  Linux kernel still
supports this device via ACPI PRP0001, however the compatible was never
accepted to bindings.  Lack of bindings causes checkpatch.pl warning
about undocumented compatible.

Add a schema for such ACPI PRP0001 devices purely to satisfy
checkpatch.pl and document consensus: ltr,ltrf216a compatible is allowed
only via ACPI PRP0001, but not bindings.

Link: https://lore.kernel.org/all/20240705095047.90558-1-marex@denx.de/
Link: https://lore.kernel.org/lkml/20220731173446.7400bfa8@jic23-huawei/T/#me55be502302d70424a85368c2645c89f860b7b40
Cc: Marek Vasut <marex@denx.de>
Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/non-dt-devices.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/non-dt-devices.yaml

diff --git a/Documentation/devicetree/bindings/non-dt-devices.yaml b/Documentation/devicetree/bindings/non-dt-devices.yaml
new file mode 100644
index 000000000000..206334693c7b
--- /dev/null
+++ b/Documentation/devicetree/bindings/non-dt-devices.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/non-dt-devices.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Non-devicetree Devices - Exception List
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+description:
+  Some devices using ACPI with non-updatable firmware/ACPI tables use
+  incorrect Devicetree compatibles via ACPI PRP0001.  Developers want to
+  support these devices, thus use such compatibles in Linux drivers, however
+  usage of these within Devicetree sources was rejected.
+
+  Following list of devices is an incomplete schema with a goal to pass Linux
+  kernel scripts/checkpatch.pl checks about undocumented compatibles but also
+  reject any DTS file using such un-approved compatible.
+
+  Usage of any of following compatibles is not allowed in Devicetree sources,
+  even if they come from immutable firmware.  New entries can be added
+  only on the basis of non-updatable ACPI firmware on the device.
+
+properties:
+  compatible:
+    enum:
+      - ltr,ltrf216a
+
+required:
+  - compatible
+  - broken-usage-of-incorrect-compatible
+
+additionalProperties: false
-- 
2.43.0


