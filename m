Return-Path: <devicetree+bounces-254472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0C8D186A2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEE9030169B9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7595C354ACE;
	Tue, 13 Jan 2026 11:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OmkIOlcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE9936CDE4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302655; cv=none; b=L4HvfmHu7crktUnvzgl2iMs4IlFgu9ahKLyTzohIftpkvc47clBuW95Pw0QpxikJTTEBh2qCwDM/YldQX7W0vZjDY40DctRDvpkhoQp6/gvNq2u3xfTfz1SnzOQXbmaacaEpLzf9k19hmJlLs+EuNGqag2nmXhBaVkjTHUtNldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302655; c=relaxed/simple;
	bh=H/DtsJ2E/56brWT90bF0TB1znfavml5P75EoVlijniE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ev7k9yhEeunup3J/gVCA4ZritWLZGR8xRzGnwit0sgzMOFb3edRMHrWNynp9jfCqNYBbBge+XAgiwokXJksVSH4Q89SgsvIMYW6KaksSv/gtXE1783mw5Vy5kNkEWs/TtoqnuNxW1OU7AdQV1GIBmiSB+NgPLnVrjW28myt/PGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OmkIOlcw; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7c6e9538945so3994997a34.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768302652; x=1768907452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4XLlcSDrZxQliY6Jsns4WsjKtz/A9etiQH4EFHPP5z8=;
        b=OmkIOlcwBeTYMN0BVpbGT4YrjKZngSAg9r1VU9HPZmMMiaoCuMHcvP9Sp2e331vWJl
         A07adhLQIaa67KCgg2iH3yi/3NtV7vQM1YpJQyzifenWZ8mFhGvUkwLXn9Jg/3NP6qEF
         SeImyku8MTIhBvjDj9EHwj0gRlp1v4HerMc/vWKvC7/vGwEoqeLki/oxKHzbWb3uAlYb
         OTDeED08mUKMBc39xrIsTuu5BqtKQ+fCiqTBimcKMkOE0D/3AhMokzFbc1b5qIxpzSL/
         03QnBIt5TqJn0od1T6K1ZqIl+v/ZNjR5q65Hi0j8IT0JTYsBC7oI2WX74EN34FMzBiXI
         MJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302652; x=1768907452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4XLlcSDrZxQliY6Jsns4WsjKtz/A9etiQH4EFHPP5z8=;
        b=oUpfSYJeffzB41uJMMf5FhVVYf81sw1Qii0BM0ncRSGBDLpmJUKlBuA5Fd86UxQV8F
         BtY7Bp8wOLdvDpOTKMTQdSDOijlSKUuel1++kro30oLy8mS4vOaXonrFT65CX0GFNYTO
         IfkO5ZENGrXqGOxukh3dplD4XCaB/5YmaB8wZoFcJPGrOrXhuAMHQdbcWmgOK4ztzfn8
         rZzjj3OdwNieZLlg7221pSVhDtJfwW93TCaRsVWqD/OJmTm4iNbkN6L0xoa56WYW+GKt
         Z1KSB3RPXoLkNoYw3B2c+9G/nEOhFOvarx+HsU9GQ8fKFnzjgyx6U3/6t3rmUckqESGy
         Ylig==
X-Forwarded-Encrypted: i=1; AJvYcCVgCbmRs+U6aU3LqCicIRvgiEIkJv3exuqw2a6PJWNifqOXVkMw74vsiIj+hSq306GVhw/OvdohdSxt@vger.kernel.org
X-Gm-Message-State: AOJu0YwkuBrXEtOde1nkuEhyDlI8y+Rhw1ay7/hzMcxzivrhJmQj3P4L
	9cFCWiKHASf8fYKN7GagnnruwBL7SQfrFhwjAXmEbz4og1IXROqMsVwbz+dNYg==
X-Gm-Gg: AY/fxX7K5iB25c3QygEpeYA9TykrAXhqlXnVT07SNxs674zqrNXHze1y3brJlw0RmQh
	HQSoWPqmdOmxLAwMQMRn/5TF+KJ8LSXI/LiDLPALl5y3rriNGdiB+Z/tqQuu5z5QSA7bbCuM7u+
	3cHPcD8qugfWg+esYaJ2Bc/AxgPa9ZGwniMH8mn/ntI5oaSGYgjXVnc6RmHuovYtUy3jFvZwmrm
	Ay/jvd85HwzcMENSL//XvXUQVsfqiVhGmZR/HtXk6yQweLJKMj98nZinp++g2sPL8A440omNWqn
	A35z3Tzj/1+jzz/i+A8Ud8e/pIAbV4HX4A4G0UPxJkzP+rEipQmBoTFkcGcUga1CyHwHnjOMTtG
	TTpvV+YYzO/GL1d2wIKZouKuY7cpgCBD/RkTQPyC++Rig9+tVe3m5t7Y2oxyB2ZzNyu3SwX50Tg
	c92tlJ89qSyNKZTNcvbygJ6ZNBSFnkPJQKi5vgz8VzBKvc/FiPVR7muGN27o2kYNISFhu00cMZj
	RBpMbgtHZPIZjGXE2RgYg==
X-Google-Smtp-Source: AGHT+IHoetKCTy/pEDc32+prvwD2Q1RnoCrCBHHEv/M6mDpq1Oqnx5ryJch1QdsdD39c7PlRb7aCxQ==
X-Received: by 2002:a05:6a21:c154:10b0:38b:dd94:936a with SMTP id adf61e73a8af0-38bdd949736mr1217364637.24.1768296389614;
        Tue, 13 Jan 2026 01:26:29 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8b0f67sm19483200a91.15.2026.01.13.01.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:26:29 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.torokhov@gmail.com,
	sre@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 2/6] dt-bindings: misc: google,android-pipe: Convert to DT schema
Date: Tue, 13 Jan 2026 09:25:58 +0000
Message-ID: <20260113092602.3197681-3-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260113092602.3197681-1-visitorckw@gmail.com>
References: <20260113092602.3197681-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish QEMU Pipe binding to DT schema format.
Move the file to the misc directory as it represents a miscellaneous
communication device.
Update the example node name to 'pipe' to comply with generic node
naming standards and fix the mismatch between unit address and reg
property in the original example.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v4:
- Use decimal format for interrupts in the example.

 .../devicetree/bindings/goldfish/pipe.txt     | 17 ---------
 .../bindings/misc/google,android-pipe.yaml    | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/pipe.txt
 create mode 100644 Documentation/devicetree/bindings/misc/google,android-pipe.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/pipe.txt b/Documentation/devicetree/bindings/goldfish/pipe.txt
deleted file mode 100644
index 5637ce701788..000000000000
--- a/Documentation/devicetree/bindings/goldfish/pipe.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish QEMU Pipe
-
-Android pipe virtual device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,android-pipe" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	android_pipe@a010000 {
-		compatible = "google,android-pipe";
-		reg = <ff018000 0x2000>;
-		interrupts = <0x12>;
-	};
diff --git a/Documentation/devicetree/bindings/misc/google,android-pipe.yaml b/Documentation/devicetree/bindings/misc/google,android-pipe.yaml
new file mode 100644
index 000000000000..9e8046fd358d
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/google,android-pipe.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/google,android-pipe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish QEMU Pipe
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+description:
+  Android QEMU pipe virtual device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,android-pipe
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    pipe@ff018000 {
+        compatible = "google,android-pipe";
+        reg = <0xff018000 0x2000>;
+        interrupts = <18>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


