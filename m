Return-Path: <devicetree+bounces-254178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D67FD15366
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3DB73002BAA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2EA9328623;
	Mon, 12 Jan 2026 20:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TBxuyeQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392CE315D53
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768249660; cv=none; b=l7CXsHFqQ0sazFvMj8dPuL8SBSpQEULBt1R+LdeADuez4kxcDRq4axY5GFnJZ5rjYb1+wWMORZheBX7e/atj3wits+wQmWFbuVRmASniF7CPD0ChaPRLc/2jzNbXKOwDwcfW7r2uDav2chfvTqu+WdcTpm/T0xSVD3LXoTA1aws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768249660; c=relaxed/simple;
	bh=ymB4O87Tj8cdyAQ2Mbv88kf7il5FRPCeihIKxEZnuSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DNH9sjXnEGPCzae9JxDItdNKFd1t3OjyGb2I6/On9jdFvY3KJNlnLSiAvJp4Szq7OoZ3IrSNbCe4CKxV+5rb6jBeJNJZ5WFVAv/rGlaTfNVMDP/1icJO/IeWfUdolgsl+q0xeTTjSNX3AhBFvKDPiTORc0YELaxHz+xJQ9bnkRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TBxuyeQu; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8b2a4b6876fso1046552185a.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768249658; x=1768854458; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9IpW9E256hAdb5Kp0Yw/WkAtwWAPi3uXbVhccnFIi6E=;
        b=TBxuyeQuRP81xNxUOBCTIk3HX6qHOIC5wMvCZWuHLjDOVLS+aXLP9M7fL85wYywHj3
         //eMQgRT6KyXEVsDXUaDik68zfMGfnj0fsYek8NGFmpFpP1cfWv3bGeCeERrQjpHlsn0
         n8Ac0o6oD5l+cYYVwH9OnCDb7fv2yYa5WtK25fTJnEnAxW1tDIy0brtiA257UHfd1FmV
         DqejdY4cLbry9I5Tem1Sjclq9FLwKMVM2RuxIaRbv1qWA+RBxpDhpL/vBY37nRoqQvGE
         L6fiM1BS2SzKhIyF7jnQ39m4ww+zUMT0R2iOD48L+vVahVxG3WpugjYYK4l3TeZMwhWm
         163Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768249658; x=1768854458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9IpW9E256hAdb5Kp0Yw/WkAtwWAPi3uXbVhccnFIi6E=;
        b=vrnF2PUP1YucYCmrQjiQVY6E5h1Rqys/bb59b3gUmjeHQxKvFTri1nfmgd+//rEikL
         6kThlv61/MdaeUkztuBTdvQhAKTLzL5kTbjjuKcP9Vjj5ViQtmBGLTTRKmDPxg6WHL1H
         nvdfAmueib4sD94J6ux0pzFqmttOrV/W79s/DdklvnYEOga6yy/rFAPqDY9wyXX9IG09
         kA7mLJwwsG5D63uoraUPMVHWQypHCOzsXmGhUPatTpkS14v0qKwWSROpl/stIW06Ipe7
         dc3OyNW3pps4EFgs4msDinVwkwlFddMqGzzVkh5PPp7mLfOZpfuhx/8Qh3Osv6lUs9pw
         EbDw==
X-Forwarded-Encrypted: i=1; AJvYcCUagrJgECrXEIidw09i6+PImBtd2cnoJkD0PEGuCSw2u+OI6/+6UaZAT9DY5U2NMeY3O/Ivf3wURG+i@vger.kernel.org
X-Gm-Message-State: AOJu0YzDVWEsWUxyBSbOCjkvelZeIJ5hdb0ZFAhiZGPezBdcqFd808K7
	3xEwHrpVqytzeYRk5gTQVdIYkYsNmPOeH0bLGH0DhwhaQoDnAcszMa41nSmA2A==
X-Gm-Gg: AY/fxX4zvO/a6jFgAN9ee2RxcQKsSsV/3Owio/HJQQ4Tn+uowY19EH6GDSaNF/fr5nB
	/0Odu/uQTZJlhpkBoHLC0WuHzgKH63/DEiKWRWLVbGfQ+Wb4HgWymXXTh0qx/DUKZwQiCjrYBAA
	LU6wGNLPhs718sq+xl7gy6EmEYddf+byhLUiqHhh3mKaPmUyWIvPbVYwMd+TNODLelVpf//vw8C
	SFohESAxR3+K0UJQz67faiOyJSb5pc81i9mB54opNW9Zvsc+srj1V7PPGLvPlXavYHU9Kzf5n4L
	kkt+7/mLUsJVNHtbCBxuOBIy+agEprAPCmulOW4QmPr+VbsDnxGZDUr9MPB0paUcAYFiGDjKlyb
	PjuBU3edfG5ouio7AUhltgWl55RW9Gn7gk7JSBrt/X2nM1k9K8G8J6wbmHK0pfXOotGikqHIBqd
	+bDb/J8wfkZwxfBLrRIQMtcDOU9YF9t+s3qZF5G1pqyseh1goxRzVRbc/bmH3Eq6hHnPcAMSZ0z
	iF+FC6MZcUDbdV+fGpMwg==
X-Google-Smtp-Source: AGHT+IE0iF957v0dhX+oh2JuRctvQjKaodi99ci7bX97j30HxAiXsxhGrr+rNQNYdsy9DMkXs0FDHQ==
X-Received: by 2002:a05:6a20:4322:b0:366:19fd:dbe4 with SMTP id adf61e73a8af0-3898f88eb3emr18090615637.4.1768243916723;
        Mon, 12 Jan 2026 10:51:56 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:51:56 -0800 (PST)
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
Subject: [PATCH v3 2/6] dt-bindings: misc: google,android-pipe: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:40 +0000
Message-ID: <20260112185044.1865605-3-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260112185044.1865605-1-visitorckw@gmail.com>
References: <20260112185044.1865605-1-visitorckw@gmail.com>
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
Changes in v3:
- None.

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
index 000000000000..12b0cfc815e4
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
+        interrupts = <0x12>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


