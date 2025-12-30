Return-Path: <devicetree+bounces-250631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A135CEA8F5
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C94F930169B2
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D571525A357;
	Tue, 30 Dec 2025 19:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rd6ATAeV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431C721CC79
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124316; cv=none; b=j2XNvsLpBK2UorYuCf5YRtQmVdylRDCU5uFebHbowLdqW6ofc3xf8ss9T31PjojMq3aLWIRdcG4DnoewglJK+7v2lfBofuqw5UarS3rwcDe2khuThQnvsziQ3khKiE7kXRP8DDmPTsC38W6oIbUTKTpTjHecA9dm/iQf3vL+Esw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124316; c=relaxed/simple;
	bh=UfuU7YANuY2DtAb1JPJwiKh/zNCqLQCQAfbDrFS7vE0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kgwrL/vaWfiMj0S508JpsKNtmNFh+Uwajg6x1w45A/6EVu6sBwf0hmBj6aVB7YNd5oKX6LkuDw0ACSyrDf7jCUklHlqhkHssD3phC5GJ00Jz7T+TlRyrYXSi09YWyJAs3PwHDSssPRA2ruUK6AqqGCFO0reNTzSKH9E06om6JNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rd6ATAeV; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-4510974a8cdso5576869b6e.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767124314; x=1767729114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=83p8xxawIJkmopSMpAdalPGsHw+uQLv1ciZtoS9EH+c=;
        b=Rd6ATAeVkVidye6g6YBbqtial3omJyh+eXZF3ni2VkN6OWpqZLfYeTkMyS30sgD1q/
         Szp6qXjxyo6AAVBqvnKzRvYbPwif5WWm4wn0sW3+MJFQt/OZHb/ZNWWGayaKpmKOSKvx
         FeyJqywwfub8V8+Kjld16O+vdIRJDQALogIhXKTu3u9zTj1hUeg4a75Y814401+3OA03
         SIkSrqDULyfQaSnRuZR7OUHYlZWTSw1Ic3o8Tr/pwQk142P4Ci4spP/bo4BA61EAJJt7
         8Dn9GN/RLBpnwHPOXTdNPHUE8vm6m0JmqplTOfV4TDcC6eDGktWjmigpv1o4b/PnfjVl
         B+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767124314; x=1767729114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=83p8xxawIJkmopSMpAdalPGsHw+uQLv1ciZtoS9EH+c=;
        b=NiDsDO2XxSrZeJUH1ZSCKAkK2RiY1fKlF8cnK2RyMg3wBTStXutSCEVtJ4kJ1TY19Z
         72zh37g35BWEqJlFeyDE1vnmEMpTj4EMgR5i6MPPHW5Xxlb00kNu5aMylYNFVforM+66
         anasfuR4FC3wioSquhiVxy6hVMt3j0flHPML3FcToTLtjbPsD8CGLPAOPbprZingCy2B
         ozqpEqQiCtMMtpISCwQnR9gGPx21YAEq2cBIOinY5ZIoi4nGpo89Aym3owWVfgu0+Loo
         07vxz6eiHq0DkAlxxCOnqB4BwSJndVIghF2/e9zdqJPAnRkY+4RpkVxyLShT73SbccUZ
         ltFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWL4B/joFM8C1pdPYlGX9B53Bgwx5LuKRGlAfgggkfgz7oqaaeAlie8UTMkb3I526n1MuCLKP2R65Vs@vger.kernel.org
X-Gm-Message-State: AOJu0YzjHa6v9FbXGAH3nKXd/hL3os96n9RtY6XTxZlpfKBfLqY1RB2R
	IuaHZykrJNbJU7sryeL5r0dqmZRcAf7gntKe+FBcEF/CzpKPZt7AWpTaEVIS3w==
X-Gm-Gg: AY/fxX7J8P4SoOxknM26uifa7fKSiCltzcYk6ztNjiM5unsuMV3qxSuM/4NXOAQldLu
	VMo1IK8Zg0wczasj/RNyX/qkKuI2Q70W45c9iRMva18gqDCJqsZs1v0rg2B+Yk2hICbVtlT+pYi
	WsxVNiG/XYCiWKWocjw0IoKZ1kY2crjWOL65WBJ2iSTJaKUW5RGllrAE91IcA8zq5dkoclKlmU3
	USOg7B+tSZs7ar7knjxgeKznfYwE2kO4OMSb777jpe6o4BLZcrQLwPuag6D0NyXOmoFMIEPVo+U
	vCs52JuKPecYo/L0BZ5134c0dbOeieuyOJDezZSz1aj1MF+tRvwh3BMP/FrQPgUuNIeSrjOjFRC
	RMy54cTqAjNa/vhNs/uR9X0SYLt0yRCjo/OZWlH2iRheWNEN3GL5z8TIckaJuPu0B4wkXdFUlbo
	OGDNWu67orhbH4aKHq0UFjLpXF6sWuMSiAmrMTvjOTFUQTKORWuAh3I30ZXRKx0LhL93Fpsdm3Y
	4OVz3ZYNgkrrWL2hsDU+A==
X-Google-Smtp-Source: AGHT+IFIRsb1yFLdQjiEzch59E2/VO7Id1WJQzqg0S6DL4+slVXOXOweBZRKfGEK/PtM3/p1UkcWag==
X-Received: by 2002:a17:90b:3f08:b0:341:8601:d77a with SMTP id 98e67ed59e1d1-34e921ccb3bmr30732436a91.29.1767118270582;
        Tue, 30 Dec 2025 10:11:10 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:11:10 -0800 (PST)
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
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH 4/6] dt-bindings: power: supply: google,goldfish-battery: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:29 +0000
Message-ID: <20251230181031.3191565-5-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.358.g0dd7633a29-goog
In-Reply-To: <20251230181031.3191565-1-visitorckw@gmail.com>
References: <20251230181031.3191565-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish Battery binding to DT schema format.
Move the file to the power/supply directory to match the subsystem.
Update the example node name to 'battery' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../devicetree/bindings/goldfish/battery.txt  | 17 ---------
 .../power/supply/google,goldfish-battery.yaml | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/battery.txt
 create mode 100644 Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/battery.txt b/Documentation/devicetree/bindings/goldfish/battery.txt
deleted file mode 100644
index 4fb613933214..000000000000
--- a/Documentation/devicetree/bindings/goldfish/battery.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish Battery
-
-Android goldfish battery device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-battery" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish_battery@9020000 {
-		compatible = "google,goldfish-battery";
-		reg = <0x9020000 0x1000>;
-		interrupts = <0x3>;
-	};
diff --git a/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml b/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
new file mode 100644
index 000000000000..a7c98ef56201
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/google,goldfish-battery.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Battery
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+description:
+  Android goldfish battery device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-battery
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
+    battery@9020000 {
+        compatible = "google,goldfish-battery";
+        reg = <0x9020000 0x1000>;
+        interrupts = <0x3>;
+    };
-- 
2.52.0.358.g0dd7633a29-goog


