Return-Path: <devicetree+bounces-252713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93801D028EE
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2031730FDA5E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0405F42849C;
	Thu,  8 Jan 2026 09:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V+ARIHw2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BFA428FDD
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866052; cv=none; b=NYdOgVxu8dXHWaB4yp09dXMS0Mo9Pqqm4xt6LHVPXtvIQm2EvkUoqIo2AOHY7iXVVe7rs1i726T5Uhww7BfTiMUNNvrwhAyIXGb1GZlcxYtvxW3HjUSrnBF2wrY3X4RADqJxu5/T4AkrC2e5soNL/lM762NXJo8umh+avkA2lqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866052; c=relaxed/simple;
	bh=+em6k554hiEdgZ3gCIS3vNjm0IbnUUOfSriX33xjyhs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YYwsCi8qy0dSKIYpiGR8iihBYeSq2eyHKrFu6sqsNgYwx/3S4y0u3auwJZv+lq2axLys7ZDPmVk1ESOUxecLZnUuxAmV1T50+00s8Lmome5XX47KQVved8OjjIJLz6NWZg/PPxeM9U2/dMU5URxoHddy5Ui6pKXdUYWSFcVS5Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V+ARIHw2; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55b302b8369so2001939e0c.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767866036; x=1768470836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9Cv7mdPPcZ8e/4RiioRb+FP1zONlTuWhguDLBncdBY=;
        b=V+ARIHw2mRav1wtLV6YWM/BefFHkmkw3cSOA8P8uEwBX0URJioD3hl20Dcf/EoB30I
         t1lgsYf9hAhMfUphKVLpuQOSgzWHKu36VIvawKnFsQOdb8rNa2ZNkB/uPsgb7PGkkDzV
         G/dVFYzHuLGzleWWCzst0vF7ei2opUbDRrRia+tzrzju8bMALtt9rTIa9xVKWr1G+aKl
         Zgy6LE4cKtoDo68SJk8vSpcMmzWXzboadJoYpBNw/ziTrOuO6xSAxf0HfekdZt0n+C3p
         qHz61hMOa0DDS3Kwl0M9iHqbTPKMJh9NXNcNC5KvVkx4TtKIC6AqUeeWpIDb3bpxlfrl
         uEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767866036; x=1768470836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s9Cv7mdPPcZ8e/4RiioRb+FP1zONlTuWhguDLBncdBY=;
        b=HQXVq1Xg7ml9XvXANbbr1LOQGe3uIGsiNCnXPeAqt5KnSZlc6CaoT5KXPllR88JX3N
         NFrguGz9weIM6matxuF7xTEtSK+T5aIRynQMRi2OFVkNTQRob/hzxA6HF32PozfHEs+a
         YzVrnZL9ViGQtnYsDYgh4pwbTglMDyzXh0T1pgeeb1wgSSCKNcwKFp/jCl2fJ21C0Tta
         9eVBYdK/Fc71lR2V2gNLge0smhDTWRygliXH65FfZ3Un+qFIbv7f7fbCyOipa5FjudVD
         aYp7pdtYjy0TluaxwyhyeXTjiJI/pJoHr5e/HUEERvUuxl1SRq3Prmtb85GFuANF0owe
         gu4w==
X-Forwarded-Encrypted: i=1; AJvYcCUnpTfQUSDfHy0xZtr2gv5QUdp19vADWhwKHtVqVFhuOu7Kf3MmtCxPK6oJayMXfUw4ThT16Jptz8FH@vger.kernel.org
X-Gm-Message-State: AOJu0YywL3sV9N3k565GbtNStCNexNdUpFEdvlr2pb2RxAagEsBSV6rt
	xXM4yWSWHs2qGgR1GF16Ux/GoTJtoMQgAh3z4q0fE2dp4I2bLzY4Pms445jx5g==
X-Gm-Gg: AY/fxX6q/RHRn7pdYVToEf9dYdbQnxO3SPUTUWo2F6RRSECbm9VNgbMqd/W92h0v+BG
	63+ESiS7xP+vO6x1QCC2zol6xyzocfvHxg7nEAZluJa9DMfuiRDmLTD98dvURmZ3SRBH5Q2300K
	VPU6A7ChfjrfUgs2n7MYMQGBaAlKqZ69pS/UCtdJOrt8Cr5KUUJ+t82DeAFU8juXJQIy4MLZoqk
	XOzNXG1aMR0nQ6AHC0+9dlCh9pfmuaZKBXf1J0LqoyWUMv6dOMc8gNrnF5XsdKpVGgHO26TuWoa
	birDa7wSZjVU6yses7k4yaqwinDq7SRbQ2iHuI2C2OHZYGkZg5nBnPotmIENBwg/b8vAg3R6KKE
	k2iQW6duT992TmL3fb5s3TylJtZxLJmGoffxISDWcFBq9/AAKxfbf+q41BT7gZAlnSGsQEb2F3p
	pudBnBoj1MM+04tFhNe0l8pJlbniYVnUAkJohhIZ3nC1ViLsnfQ7CvhIlFXnTS4sLzNesxRg1LD
	V2vS38cPntTbC/tf3fcyQ==
X-Google-Smtp-Source: AGHT+IE5lf3uPbw8VErEKzhFGGbzHGx8u/fDHReHMHASFjL4yvedLS17Wjxspaaf5SF45aWguaeksQ==
X-Received: by 2002:a05:6a00:8c10:b0:7f7:497d:8118 with SMTP id d2e1a72fcca58-81b7eb26e99mr4452899b3a.7.1767859776927;
        Thu, 08 Jan 2026 00:09:36 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:36 -0800 (PST)
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
	krzysztof.kozlowski@oss.qualcomm.com,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v2 6/6] dt-bindings: display: google,goldfish-fb: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:36 +0000
Message-ID: <20260108080836.3777829-7-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260108080836.3777829-1-visitorckw@gmail.com>
References: <20260108080836.3777829-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish Framebuffer binding to DT schema format.
Update the example node name to 'display' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v2:
- None.

 .../bindings/display/google,goldfish-fb.txt   | 17 ---------
 .../bindings/display/google,goldfish-fb.yaml  | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.txt
 create mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.yaml

diff --git a/Documentation/devicetree/bindings/display/google,goldfish-fb.txt b/Documentation/devicetree/bindings/display/google,goldfish-fb.txt
deleted file mode 100644
index 751fa9f51e5d..000000000000
--- a/Documentation/devicetree/bindings/display/google,goldfish-fb.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish framebuffer
-
-Android Goldfish framebuffer device used by Android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-fb"
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	display-controller@1f008000 {
-		compatible = "google,goldfish-fb";
-		interrupts = <0x10>;
-		reg = <0x1f008000 0x100>;
-	};
diff --git a/Documentation/devicetree/bindings/display/google,goldfish-fb.yaml b/Documentation/devicetree/bindings/display/google,goldfish-fb.yaml
new file mode 100644
index 000000000000..48b9c056d9ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/google,goldfish-fb.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/google,goldfish-fb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Framebuffer
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+description:
+  Android Goldfish framebuffer device used by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-fb
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
+    display@1f008000 {
+        compatible = "google,goldfish-fb";
+        reg = <0x1f008000 0x100>;
+        interrupts = <0x10>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


