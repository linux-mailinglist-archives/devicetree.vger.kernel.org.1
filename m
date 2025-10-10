Return-Path: <devicetree+bounces-225238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1ABCBC94
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 78EA44E977F
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 06:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8980D23BF83;
	Fri, 10 Oct 2025 06:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qstCqJuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70F6227E83
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760077746; cv=none; b=hGE46Kprlf1WUYSPm/svxTcIB9pOs56DbVFOzCfRXlI6tWrdXy2k4Otw5psO8hWrMZiu2CQEbZtxU4dcYCR88gumT04b+B2tAmKHGrnseEaEgYUn1uHfsl4lrKUvGYaeNPg8Cgog3EAxwfvwv7FZUFdBB8Sqh7ddGIa0fQvGgAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760077746; c=relaxed/simple;
	bh=kySh9NG87grNL5z+EmRBxiIrYlsYRYH05crLoGgqga8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Yzasm+iB8TtVN6STCWP/yawAMf8O+hcW0mnxTVQfRXVt3p6JRKenx6o22NayeSOUcXNcRb3lMcLbwxYVuKuHxehcrT4l11YgYiCP7xBMcJwGKaDjGX0KnqhWxVogfGEPZGm6MWxVd+hQ9J2M0JSN7taujE/rBk8oTEq7ziWG2EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qstCqJuD; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb7ae31caso296515366b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 23:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760077743; x=1760682543; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yUUNHiuEgnPPKqI5m8ivJnCwrgRBbv9ROPeU9S0a/7A=;
        b=qstCqJuDecuYKYcDjkT5d3FIcLpTXxZ+qA418cfvn4pFLh8hVmoPKp0w20e2dh644R
         tCmBbXScP6kkuQYdIhOL/VlGxrFqNPINmmROGXYLVUQPo+UCSgZqJpQTpI7jcjlvxkub
         /7dO9i2asyAcE43TLnNw5D+xSiLDtsEI53efaFGD3SOsrCWns6xzHyAddKeHF0TjUHVY
         qtdu1XUQhFzfD5jOHJDm6PJqGltAkyuR/+o3ffnWB/OHUoTh5dHr1cFA1GBrIbt76OOC
         fne4uLGr1TANYUnOMbupQFfZlrQYn7NT00rgS2zYI0dHt0KKiAKyL28GXq/ItuH2snsi
         21pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760077743; x=1760682543;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUUNHiuEgnPPKqI5m8ivJnCwrgRBbv9ROPeU9S0a/7A=;
        b=iiVQr8QUnv0RJVIQSVmg8n32l1e+IrpSP3UAjbyXeciHuCMqIC60/m31KLpuPB4U54
         SUjBXzCZTRuDOWLob1Lqxm59+nmJzoT0PDz/TK5bWh2qJxt7sv3mbu41+ry7yzhBbv84
         Tj+2Pi9EYgk8h6cWSVaHjQBpAswpB+oNWZa0dQGq5EgOGilAfCZszpeRA2OlfTE8sbCR
         Un5I9L+k+P+mma6qg+d6WMwu+XxbGU4/yj5iRbmUyrXH//Vr0OvbKTDWh/+W1ls/Rdd2
         gjhaDT0svrb4QBKgKeeTg1xaTnvwkPLmkcXO1t1sh8VR3zJH8fQXuKDGjDyTPJc2pvOJ
         eM3w==
X-Forwarded-Encrypted: i=1; AJvYcCXcSPMPt+Ky8Lvm+upvkGU/wgJoLuaJ4F2h3LcI+9uzof0wqY7k/6HTXDg8600AkR02cwGLoXeO0UWY@vger.kernel.org
X-Gm-Message-State: AOJu0YyNwvoHa0+BvZ1goP/oh8BsTG4txC8YyGIgtJRWaL/z5VWvJz4t
	jdQIL7SaXtKi8iz8Lx5Fmte/NtE3QtYxx7/+DjRYNZlhK713/WLN3am6Nl/NAj18rKw=
X-Gm-Gg: ASbGncuCb1i7Z4aY7xfSEOFAogS8sfgtYe4wDgADjRcldHMqOvKGu6Zy6L+BGNhcsNU
	Kov1riqHTGYLpFJMdt8eOerktM8W5sgG0FcRlWFrzzNfkbFnwjduWnX/8v+36Qb068mZXJZ3Uue
	rDLbZbDYfu1k1edgxJrIyQBBu8Zya4Wz0nTGQjnhYK0lVM5820GRWIw2DlEIQwQYQZxHOsyBoET
	T+91t/DGS5Pe3hdjTAIcqUhAzGALFJGQqhma6XL9SDBOrtB6OhQHc+PTlb4HwHYNjIO6lkiM6Bu
	UwHVTs3ZtgI3oR1p/T5OKWfP01S9APuHdTDNi53pGAheGj8/nOFjEjXamgREpQE2hed4klaGepc
	KPq6Ez/xcWe1U7Mf83iULSJYFuQH+8xPSeTZziHjTyKFts6a2EU0frwfrX9wRYY3DCA4Gj+CJIy
	5eSdLWBEOal8/pss5C/P1MJX66Txk4MIDqI5Q0A+A/snnHpw==
X-Google-Smtp-Source: AGHT+IEn4M2YqhFbmRC2ndhdI24yjeQJVlUILDD3ySBiu6pkd6BQr4bN8V7llojmXDE9gUYXL+O6Dw==
X-Received: by 2002:a17:907:86aa:b0:b3d:73e1:d810 with SMTP id a640c23a62f3a-b50ac4da07bmr1000402066b.49.1760077742044;
        Thu, 09 Oct 2025 23:29:02 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d2a76499sm160895566b.0.2025.10.09.23.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 23:29:01 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 10 Oct 2025 07:29:01 +0100
Subject: [PATCH v2] dt-bindings: soc: samsung: exynos-sysreg: add
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251010-power-domains-dt-bindings-soc-samsung-exynos-sysreg-v2-1-552f5787a3f3@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKyn6GgC/52OQQ6CMBBFr0K6dgytIOLKexgWpR3LJNKSDiKEc
 HcriRdw+d7iv78KxkjI4pqtIuJETMEnUIdMmE57h0A2sVC5KmWeVzCEN0awodfkGewILXlL3jF
 wMMC655d3gPPiQ1ILR3RQWnsq6lqqNjciLQ8RHzTv1XuTuCMeQ1z2E5P82l/v8ldvkiBBt4U0p
 awsmvPtSV7HcAzRiWbbtg8bw49M9wAAAA==
X-Change-ID: 20251007-power-domains-dt-bindings-soc-samsung-exynos-sysreg-5dd349912b0c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

On gs101 only, sysreg can be part of a power domain, so we need to
allow the relevant property 'power-domains' for the relevant
compatibles google,gs101-*-sysreg.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- limit to gs101 only (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20251008-power-domains-dt-bindings-soc-samsung-exynos-sysreg-v1-1-ab41c517dec6@linaro.org
---
 .../bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index d8b302f975474a87e4886006cf0b21cf758e4479..62bce63a1557cf425a651de8864f350b0c46b1ad 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -73,6 +73,9 @@ properties:
   clocks:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -100,6 +103,16 @@ allOf:
       properties:
         clocks: false
 
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              pattern: "^google,gs101-[^-]+-sysreg$"
+    then:
+      properties:
+        power-domains: false
+
 additionalProperties: false
 
 examples:

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-dt-bindings-soc-samsung-exynos-sysreg-5dd349912b0c

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


