Return-Path: <devicetree+bounces-162639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A01DA7926C
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 17:50:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5FB16F5D4
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 15:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9DC151985;
	Wed,  2 Apr 2025 15:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q1texYzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BB713C3CD
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 15:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743608998; cv=none; b=C08VPogm1MVy8wMmWd4aPvti4YDDLjEXYKunJRKl2MQni7hUjAk4lBujLsuGPoMzRJBmBoIHLv3HGvRTtrui8eIfFDKxi8uACQH1bn+8TUInqEzN2hbrC0xlCEiaiWgI/Ei2E5BYnTSm6cypyEE68mg86io84GRzFSO9FwBLLZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743608998; c=relaxed/simple;
	bh=R1vtErKl2BzedEvjhWWXJCdtLNjDCmhp/prRalj0xAk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rVAKDFGvru17ItR7dRL/pmSseYbyH2QjLrkXn/3JeDNMaQ+4kvB2oUmdBAjhe9cARb0FBaRP5/3vPFHgCXod3TYXP4h7zHQN1D6HjH3SZUcFssvMfpArLyN1Myofj2DduQVLO/Si5dAuozzToLL0gVuGqHJE3a/O0HQxl+XNxDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q1texYzu; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so27319195e9.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 08:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743608995; x=1744213795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f19WgeQ78sxdiIjTFJ2APJJGvVw1dxzyTwQ7DYBPLY0=;
        b=Q1texYzumRcfQRVNQeYCYZgZR6eWmf8PbQi/d259wQVf19ZERezxIvI2d/QoLlLjdK
         YUtPC7l4Q50GsAvmmG5q7bK0d8EXRT9UBjHBhUW/V8N55TBi9SJqWLUgc+GISkCOHnYp
         TW8C8ZfOl2LrCx3nMLj5njeZdhBP9ix8ll/RLgwQgERKCuY9+ZUySdKqdxhLbQrEDhcj
         RIS8PZuVJ9egjJ0an7TgEtZIBZJ5lmwo6pJ5BIy8p9M5my5v13LnBsAK3eSGH9Wtlbwe
         6LTONMopPFe5GEIB/ApoTuq6rIi0XyRFn4YOeisRP2OeAHwXa1viVQiZU88hgR+iKEC1
         Cb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743608995; x=1744213795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f19WgeQ78sxdiIjTFJ2APJJGvVw1dxzyTwQ7DYBPLY0=;
        b=mMrwGAturaDUYYRBab4qo+zkDAjSE1AwAidepl4BPHT/2biROOFt0VJulXs8YixlbH
         cG/ZbJcR901Y1we5Z3m/UEf0qfYU6YRse6wW5MrFBhRln4F0rLL8ype8ICmguV9kuX6Z
         EAw3ZElk4viLISjECKhHxRxdA8aD6E1mIAKvCOArRW/Dq92yatou/fcr73sDxebgOr4o
         XrGIeZbVexp6cg1WU69Q3+w+pVNoLyzl13tmOdE4NumM/8mR9ll9SziCjGNDXARnZ7d4
         MGxxJltxXu1HxkbALHdGCpQr4EBehjda2p/tALdOTDI95ZJZPj3P3smcesMnIXf6JGsg
         iqCw==
X-Forwarded-Encrypted: i=1; AJvYcCXaoxW9yVlI27D4doeipIv5Pv622FOcwfTzXRWwPAl7l8CcCQ9E5fpez3mqa5Ivmf4tC8ssRyIa7b4B@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3HT6Wbyte1CtWtImMrPXa3wGlVkR4evSIwn9aUQzTADUrF8+r
	m1kWHYgT2HkEl482opSjLQ0HKa+KaaUW3HBYMPlDGZbsmMWzzhvHn5afVmkQZVDDGmU/74c9Pzm
	V
X-Gm-Gg: ASbGncs2nIeShSnJdG0Rtq/SHH7Gau17638h2Qk2p7p4mlp386Y5pxKWvPDLid0mJa4
	xdzPx4+wxYPm3t5tKxsNcqAKZTQebC/xiEoUhD6hu8rkstyc+7LghZcsoNQYa6IFZVR69DluT6r
	rKfTUKyblAhAntnmkbHoHQG8JAoXAqE8dbULbQVpzH2ZzVikckeLxsJ2zEbANZxWG5hLyoHdcRe
	/75p0NNVKrHLwmKyJMY6HYhrH7OIDi3NJGl35FU/gcBJGHJizKx4Jpr+bz5Dzd9krLyOLDwkXxo
	cJXgnBffTlLV9+/LstQw2sktsbWnYXZdwc3KhcvPopy/1BJEHKDspJYUtCmOJjCq2ri0CzM=
X-Google-Smtp-Source: AGHT+IGqxQcz+/0qde9VdZYOmDlRDKSETydjHtHNN863PVRigirhEFS9zdQVnVdG4C0KFu+Or92Y4g==
X-Received: by 2002:a05:600c:444b:b0:43c:f184:2e16 with SMTP id 5b1f17b1804b1-43eb5c18428mr23351285e9.5.1743608994610;
        Wed, 02 Apr 2025 08:49:54 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eb5fd1194sm24674555e9.11.2025.04.02.08.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 08:49:54 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wim@linux-watchdog.org
Cc: linux@roeck-us.net,
	linux-watchdog@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	S32@nxp.com,
	ghennadi.procopciuc@nxp.com,
	thomas.fossati@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: watchdog: Add NXP Software Watchdog Timer
Date: Wed,  2 Apr 2025 17:49:39 +0200
Message-ID: <20250402154942.3645283-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
References: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Describe the Software Watchdog Timer available on the S32G platforms.

Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/watchdog/nxp,s32g2-swt.yaml      | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
new file mode 100644
index 000000000000..d5f2513c4e8f
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/nxp,s32g2-swt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Software Watchdog Timer (SWT)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+      - const: nxp,s32g2-swt
+      - items:
+          - const: nxp,s32g3-swt
+          - const: nxp,s32g2-swt
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@0x40100000 {
+        compatible = "nxp,s32g2-swt";
+        reg = <0x40100000 0x1000>;
+        clocks = <&clks 0x3a>;
+        timeout-sec = <10>;
+    };
-- 
2.43.0


