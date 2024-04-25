Return-Path: <devicetree+bounces-62755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2252F8B25EE
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 18:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 558971C21854
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 16:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5542414D420;
	Thu, 25 Apr 2024 16:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yAlbA9vd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81914D282
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 16:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714061034; cv=none; b=Sclv8Y6MBZ0j0iP6yA9M+w2PmsPoeSAAeiTTRodMhitgPkpaVgGUBhdnTQwjS4hCSqmWbN5YjclWmUCKq/q2Ux6cNlzn/sR51IkqBp5AxUWOk9dYyffZTtu8a7+vQ2KrHcJ0zrHoNnNFA5437bH98kWaBHipgSigAfBlWY1TEQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714061034; c=relaxed/simple;
	bh=qjiLRzQ/LzL957Tztom+GeWOX7MmZNPVIPPVkVPDhT0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PWKIbYGXHvpvdD/aT9bzceZLpExEGyYqz1/JefEarcyeJeOS1hhRo7CukdTKmgeb0BA6wYXirVwKVdV9gylyxQSSze9XCbXi35lad5Y4hQAL/Jgx48Thxic+EvlI97z0YQ8242H5JxRbFHaRJa3xcTAO8flSO0ia1GJDdYOEZ40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yAlbA9vd; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a587fac79e5so164868966b.3
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 09:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714061030; x=1714665830; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kyR9vWPsqsAUgpTsJMpV9yCJydAsWbKkcw3s9RwSvbs=;
        b=yAlbA9vdpKll8bZrBaNU6rcD8+XAh04F/rFaXX6fvdSYj7XfQyV/lRlX+DS/oB/ZE2
         2CdeQJjfrFiOBvbyA2CkJv8fmUbiroEz9Fd3VrZyzRu5Y/GOvkon9oWMLE/xz+giL9FC
         ExeqkDI/X0Yw88AcsFICWjF2Otw4xvIeWtohxik0UDwo6dwDGLfWTXdicWJQ6b7W2KO8
         BAbcG8r3KMVjkw4ps1K/KHydeONaQn/fz6gHqwnSfcXTc7uA0KxhRaTLthbeu0DmW2Cj
         bjKL34eDFNWECfY3xGewwDGAWj0PTP9ISvKOE0jn6Y0G4xx9Bl4DMLIhLPyql4GGbs0W
         /i9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714061030; x=1714665830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyR9vWPsqsAUgpTsJMpV9yCJydAsWbKkcw3s9RwSvbs=;
        b=vpjtuqk9TAQZ9YALZhhnrVk3nwKJXFTLwvli/57zMlJWZgoPr8xai3suO9GodjO2/u
         s9nC+5bWPWJhZJyvfdFxRvQbNZn20NuEOE8N84Mqg4eYgIvVU+kbXteqTUs1hyKCSTwq
         w0/0zi4+SFgmv7GbJvDs5MhEKRpaIhcfWGjRZ+K4EalDzbMXdMWsGigIFrYjhlgEYD4G
         tgpWqn5IXSD4f0N74kf9PTuJ2CGyyp/wcP6Kq7rEFsxsu5lPW/rrk+FL3x5NzTyBDvCM
         LuLT5goe5T/q2PQFrcKaMmEXk3OUHT20UKk1FMtKofdOf/gIb6WmUnoslDI8KM/6bVEU
         y34A==
X-Forwarded-Encrypted: i=1; AJvYcCUABZOshzHEI5DmT2ivC5s58l+tg0PvVQmq3IT1sIe0BxLdc9DEq+iPSCsr57Jej9W66BC0F2ePGNJGAtIaIFWbwX8jIp6J2+CNfg==
X-Gm-Message-State: AOJu0YxguqdFJDKwJzLAhjIPMVUzMLJHWQO+G8bKp151DV0UW6VsktJT
	LXCT1gw25e60aWaKa1EhEsU0ofdJ38e/C4urScr4rpqpz8kxwk3onhz59V0/CSM=
X-Google-Smtp-Source: AGHT+IHWlzXObnhoIYoQz5NBCn2aut5u9/VWIBSK4AfPvrhlCDjNKP1pLhTffJGnUYMckpFjpwyP/g==
X-Received: by 2002:a17:906:6bc6:b0:a52:367b:e4ff with SMTP id t6-20020a1709066bc600b00a52367be4ffmr120217ejs.42.1714061030485;
        Thu, 25 Apr 2024 09:03:50 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id mm10-20020a170906cc4a00b00a58a44a4419sm1329562ejb.57.2024.04.25.09.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 09:03:50 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 25 Apr 2024 17:03:31 +0100
Subject: [PATCH 1/2] dt-bindings: pinctrl: samsung: google,gs101-pinctrl
 needs a clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240425-samsung-pinctrl-busclock-v1-1-898a200abe68@linaro.org>
References: <20240425-samsung-pinctrl-busclock-v1-0-898a200abe68@linaro.org>
In-Reply-To: <20240425-samsung-pinctrl-busclock-v1-0-898a200abe68@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

The pin controller on Google Tensor gs101 requires a bus clock for
register access to work. Add it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
As we only have the one clock here, please let me know if the
clock-names should be removed. Having it does make
/sys/kernel/debug/clk/clk_summary look nicer / more meaningful though
:-)
---
 .../devicetree/bindings/pinctrl/samsung,pinctrl.yaml    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 118549c25976..49cc36b76fd0 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -73,6 +73,13 @@ properties:
     minItems: 1
     maxItems: 2
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk
+
   wakeup-interrupt-controller:
     $ref: samsung,pinctrl-wakeup-interrupt.yaml
 
@@ -120,6 +127,16 @@ required:
 
 allOf:
   - $ref: pinctrl.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-pinctrl
+    then:
+      required:
+        - clocks
+        - clock-names
+
   - if:
       properties:
         compatible:

-- 
2.44.0.769.g3c40516874-goog


