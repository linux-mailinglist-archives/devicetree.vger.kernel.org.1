Return-Path: <devicetree+bounces-251989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1128CF9451
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:10:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C5793041540
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC98033A005;
	Tue,  6 Jan 2026 16:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SA+sYJyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ED6337109
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 16:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767715441; cv=none; b=pCYf575rDtnHc0KLkUYhDzMRekTWGmkQyp4qq2Pry0SJQgAL4lmlPylQaaGOjWUYkQhVgLOisxwFYUebfWBybPyHA0qo9HWTW7wzBbv97cERd2rztZMP9wrsOR14uukYTLnqO9DfwssxdZcftkDMzVUKZOtj6HTXWVbRr7queYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767715441; c=relaxed/simple;
	bh=q7ZffHMEJ6S7HH7Vy46Q9bG0ze32HCzvVz8NWmJuFOs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YTMKSAEh0A+G50qXfPr+HMCv+gVeCkxVL+CQ/9DAXEmRcvVhck+BuLjAM+Yf5MYMlSPAc0uOsH2mbzlwtOkDpbz/6YrTOXFWPLBX/w6chYePauH+xa7KQZWGYOltS/vpeXNYs1bCCjWAzL0aqq1XkhaOAmFmytakB1frCo/q3uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SA+sYJyg; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6505d3adc3aso1654023a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767715438; x=1768320238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0luukR6GB0vtkreCdXxNdvwtnnCpUjD0tYf9hb5lzG4=;
        b=SA+sYJygsbjW1ueD7jOvHp3jVNB26Uss/b+NYm5ajaPA1L4XFcWlmPh8NIMIl4npW2
         sluo4fCrzvV7o3q7amlveuPA+6hCVbxi+2y6ZKmOe3aAhMk+0dp7wX1ypTP7kV6gUZxD
         hbQWEq11ll7oJD4e0HQkZHyYiJ/o+6MiHBqdpzKvC1nAjAf1EkK8MZzSJ9bleIUI/pgV
         aY3QafY7zFzde6V3b+zkgR16Ic2CNDyyY2uq7z5vu03vdFxqM5Neoi944iO/8SMu0FcG
         12BqqJKEg5OfJlqdsepHDpbGLT5Z5BuUrEHkbgM5U2bcIpwKZsDYqsEeiShB49aHSrjP
         hUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767715438; x=1768320238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0luukR6GB0vtkreCdXxNdvwtnnCpUjD0tYf9hb5lzG4=;
        b=INFgeGfPSjpLjuHJBWnqA/C/kyzQEX2WrOjPnn+/zE0OypcrCuwA37bVFCEg+NsWHs
         Jrf9Fdl5wKZPsk0LM7SdePRe7j+lm4mB8AHu4K0KZtevLpK6LuNHgH4fNEJDTcqu1H8X
         pjPRIfHg9/GdUxGCYdG7gps10dcQrLqw/az1FbrPKhRujg1B6P1RXz0LACWUIeT1P0hc
         y5Tj5wgAhgHVQFjcB+SswcC0xeW1JA8JGPEqu4hQI3/3AGg7OB+FA/d3hYA72A3EdYXV
         phCqPbkjN1yj0iITEDoT+w6imqWX7LHfCcymQ+fR0E1r8UN8FJcntE7Mk6xCB7qDWKhW
         KGTQ==
X-Gm-Message-State: AOJu0Yyz0OBNrDN2PrUww/U6c7lGeSgOQL0VefeqMbzOnRHpN11xmX4E
	OXnRidZH5aXFF8yKwQ/Qa9oX24kMPcRBybYD4b1CKfIXmAFshd8mr7aj
X-Gm-Gg: AY/fxX5OiidwCP5KNLwjLWMNwQv2PfWAmPdvGwMOlXxnxjrznPr8BGYC6wj+5rtNRpf
	JnLEhsg3UTG6KDrtSpy9F+P2FiG7bg1LiOGhasCcNIKOgSkGcrVWMsCTPdEdvC6rCQbMH/MPy92
	pHMdY9fKt9AIVwCKub47Y+xW1ttaztCLI33X6hMVqU/lMbhiQWsPH6A//Jf8G3e6UsVqQD1prcZ
	rYZQ3TvnDLeNNLz0uqdSl4E58Fpf96wb48OeFQQM5Ah7O+9BqyRfUhV65zQIVJIp2HMOutvL+Y0
	bBOIDDascCTOy6QqBEMHlo+G8czZz1ER9f/uxlfLRpJTYLbqe7oDL6UyziohSptsRPFwWkXB9a/
	9jFzjeZzXwnf4meuLJFQYWfyt2gNx/6oUOfPncN0vdWZmpBDAq8O3W/Zgd4cd28ZfPN6WdttvYD
	DMaLsVO/ljrO2w2bwaIDGoHuc=
X-Google-Smtp-Source: AGHT+IGR9v3J89GSKErBV2ue+nf1hP2ngLMAfTwsJSEBW82CVZzOXwAEySuFK3GwjV2cHC8Zmar8wQ==
X-Received: by 2002:a05:6402:1e91:b0:64d:f39:3fdb with SMTP id 4fb4d7f45d1cf-6507932220dmr3241052a12.13.1767715437804;
        Tue, 06 Jan 2026 08:03:57 -0800 (PST)
Received: from vamoirid-laptop.. ([2a04:ee41:82:7577:80f9:d6dd:93b5:e2ef])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf65ca0sm2474912a12.24.2026.01.06.08.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 08:03:56 -0800 (PST)
From: Vasileios Amoiridis <vassilisamir@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
Subject: [PATCH v1 1/2] dt-bindings: trivial-devices: Add hitron,hac300s
Date: Tue,  6 Jan 2026 17:03:52 +0100
Message-ID: <20260106160353.14023-2-vassilisamir@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106160353.14023-1-vassilisamir@gmail.com>
References: <20260106160353.14023-1-vassilisamir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>

Add HiTRON HAC300S PSU to trivial devices since it is simple PMBUS
capable device.

Since this is the first supported device from this vendor, document its
name to the vendor-prefixes.yaml file as well.

Signed-off-by: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..4864ef9bed7c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -123,6 +123,8 @@ properties:
           - fsl,mma8450
             # MPR121: Proximity Capacitive Touch Sensor Controller
           - fsl,mpr121
+            # HiTRON AC/DC CompatcPCI Power Supply
+          - hitron,hac300s
             # Honeywell Humidicon HIH-6130 humidity/temperature sensor
           - honeywell,hi6130
             # IBM Common Form Factor Power Supply Versions (all versions)
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..fdb11141e597 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -701,6 +701,8 @@ patternProperties:
     description: Hitachi Ltd.
   "^hitex,.*":
     description: Hitex Development Tools
+  "^hitron,.*":
+    description: HiTRON Electronics Corporation
   "^holt,.*":
     description: Holt Integrated Circuits, Inc.
   "^holtek,.*":
-- 
2.47.3


