Return-Path: <devicetree+bounces-255072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF74D1F5C2
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AA8A305709E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F40C31AF3D;
	Wed, 14 Jan 2026 14:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l6B+ujYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540412DE70A
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400234; cv=none; b=O1frOyld+EFOcLrXMa/RS2cMW1t9J7PNx08SXCYnIIpTRtBk5JPr+geZcwSydA21iMWIORLAamJWYjx/Eb9YYOlFhlVWSZl5bFDdllUvQU3uJaRmtYLRcU3mT2ihpzIKV0/BK5MSbZDIIg5/G5rpJ2XPQKNWZFWKGFOGXwdTVDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400234; c=relaxed/simple;
	bh=Y+qelmK4bAlyv/krT1u3T7mbMOZyLus+NJ7siKthjMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lGg6YwG68reWtMQDoh9ne/UZSSFR0wUbthR8GU6BaS5tCV4YbRWM2f+sgKazWXNssAnVcSrCvIQjt7+iKra06dJ3jA2RjGB9/mbPYPIRjQW+jMBCITJdEDwJTfc1NShMOcG3yfwQ3dMkIJgw4jjeYRE+mpBfA7dU226iLYImdvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l6B+ujYV; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so55509615e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768400229; x=1769005029; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YO5IPtO5cdGkzvneXRvi+dlXdyTwC85OfiFr6xfp5RY=;
        b=l6B+ujYVKM1sBblbNAMJCTC70KkS2D6EZxpInI8m5TBmcdckqVhkYCM4Vr0rk3EDx6
         BsY/9KGnUThwD/foFJER3XuEEexoIDAwHBDsePKSNf0phTuxjnPA4obqoNFSn2yHzsN8
         4Uu2hCfrMojRFH4CKOLuQRJxTYRnThz8s0L/fb53Xstj1KP1Wgld44gGJ5yBSQMIG+iv
         SML4SsOoWTobjtV+cRFy6lZ8NSCFzlDMkFYgINR83W16bcBnFScjnIcux4lKXIpEh8SX
         TOW9UyvyenBMbzePgouSlZKTFCvdKTo5QKI69rxxwgBG69G0h8/boJSdaE0u6b3KRJug
         2OKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400229; x=1769005029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YO5IPtO5cdGkzvneXRvi+dlXdyTwC85OfiFr6xfp5RY=;
        b=B2DF0YsGVfxOI8yhRMFd20i9z3yyS3dXVywgpf7DRVul7J6BkWqH/03m0StTpvpK1X
         OyV3N+s5zqrwhyyz59zFxo64NxT8elW3RYGcrRIbkG07MhLP9Fz26WRoWnRzqhgqBYvF
         PJygZxGPsGg/kRz2mr1Z01Qfvt627d2Hubo0IYxXDE2zA/Yshl8bm561Kf2ltkRmfW0u
         elUQrVUev4PGgo82wgZnB3EpIsdPBuWe8Gi8HNlcgpNquSVKUubX9SyRHKFtLwdUC3WM
         sSxPnI8wVKKz/b++c5nb3DGJY751sFWWJQZI5dKBwQEzWnd5befEtiIBkvMvXcjpW/OE
         a7eA==
X-Forwarded-Encrypted: i=1; AJvYcCUNSOzlh/QVUpW/Kc7oRiQHaUU0NaBN0E28HjIhaHxxpABddVGo//AWcDsMCTv6RwVZTjYCxblUqBbr@vger.kernel.org
X-Gm-Message-State: AOJu0YwIL/73s8EWX4CqZ4cf9yD//dOTGD1vl8zt/FIg1EfQmgIVdPfo
	joyctKHLQrfDlkESv0a+nGJkI0prw8n1fhJDSEAsY/GpC6B6EncsuDVfSjMmjNL/8ws=
X-Gm-Gg: AY/fxX4kWt/KCgtLF4Rcb7JWXWOZTY/FXyzq4ZgTLv96FjpVWIYiWcLB5NwEFmqTGe0
	gREIcY56/ExsMqtCTRhThLqyY0aN7pU5KKysb44yN0onvMH8wRnX+pmOb/VW2gls3Dd7PBlk+JB
	XnAeO8WvWBN33a0nqo4YxDb+m04GG/bFEhrBezIXDY3KAhtC/UE3/U9xM8p2aO8BB2HOP2YxVA+
	vPlPeNB5Ybl8dKrYyCuL+UFPWmrepqMwrA0TYJZqDgJzRA+ki8OqPSK6HLSJj/5xwkV72+IIfHd
	x46Qvarm2coR+5NmeAlK6SisRXyxglpoEXtlCAWnzc6KbqKXpWx+FG+uzUJcrkLtg9jH7bzkZp9
	QW0DcsLBxe+QWnwAkN5YWIJ+HgMmhkdENV7tMWp8owz+X2fqpVowHU3/z/EjIqZXz57W/Y/QqHn
	xrrBUYI/RK9UhSpT3XSB3SYuvrBjhrxD3wa045OXLieNAmNckpsCRf1ONiaHuvTwEdVNGPNQ==
X-Received: by 2002:a05:600c:3555:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-47ee3363c12mr38044285e9.19.1768400228580;
        Wed, 14 Jan 2026 06:17:08 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee57a2613sm29595445e9.6.2026.01.14.06.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:17:07 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 14 Jan 2026 14:16:30 +0000
Subject: [PATCH 2/8] dt-bindings: firmware: google,gs101-acpm-ipc: Add TMU
 child node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-acpm-tmu-v1-2-cfe56d93e90f@linaro.org>
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
In-Reply-To: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768400224; l=1633;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=Y+qelmK4bAlyv/krT1u3T7mbMOZyLus+NJ7siKthjMI=;
 b=C+ZHlnpywyNkQkIYeZeMHaDsZBGpz38Vgp8+GMBcn0/FwlaNnjHtHkxAETXB7iXLe1n+GG1Bf
 Y6UwZZFTUyAB9FjKozYqzSJoOTCshklD/jjZIt4actl242H/wICUhN9
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The Google GS101 Thermal Management Unit (TMU) is a child device of the
ACPM (Alive Clock and Power Manager) block, as it relies on the ACPM
protocol for configuration and initialization.

Update the ACPM binding to include the thermal-sensor child node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml        | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index d3bca6088d128485618bb2b538ed8596b4ba14f0..4043a6453a9897b9e1d0e618489f79c19f32f247 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -52,6 +52,15 @@ properties:
       are used for passing messages to/from the ACPM firmware.
     maxItems: 1
 
+  thermal-sensor:
+    description: Child node describing a Thermal Management Unit instance.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: google,gs101-tmu-top
+
 required:
   - compatible
   - "#clock-cells"
@@ -93,4 +102,12 @@ examples:
                 };
             };
         };
+
+        thermal-sensor {
+            compatible = "google,gs101-tmu-top";
+            clocks = <&cmu_misc 71>;
+            interrupts = <0 769 4 0>;
+            syscon = <&tmu_top_syscon>;
+            #thermal-sensor-cells = <1>;
+        };
     };

-- 
2.52.0.457.g6b5491de43-goog


