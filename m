Return-Path: <devicetree+bounces-133043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF759F9144
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B163188F919
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744211C68A3;
	Fri, 20 Dec 2024 11:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PhAanb/1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC231C5F08
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734694082; cv=none; b=pbPa8ueHOrWrXwJMgpfA9gz+gJ5MImCwf1yWk9vU6CIJb/PYUd/3/0B3oTfxyu3dPiOt4FfBO2xv2N1UNe2Oc3A00KONv27P0exwJoOmj38cpPdzeq+hyyRIc39JPMprCajOWudsvfVaGtuzGYWtOL1MGtK0QvLMjwcgu8oOTo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734694082; c=relaxed/simple;
	bh=KJKMOw+QPIKUR9v2b/oJ6qnbx8zhjz5U3TlJ8C3bMxE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z1xaerfk5HmauH1hpcT4Dc1HvLrtAIM81yrDMZcPhVET5HvjwsblPhUUXP9RLu7HfVTZ0aRKxETOv4IwRBtySPuf+N1XxPZnDj+zvPBcR2xGpvPnnfYw8ll/it9/SbZsu7/KhYf0TetRFdu62PcedJMREWy/ANbryv02xZC2i4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PhAanb/1; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d0f6fa6f8bso2787686a12.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 03:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734694079; x=1735298879; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1zESwL5z/yFz+1EwFu23hzBHEEa+Luon6DhT4CZGajQ=;
        b=PhAanb/1I6yV0BlEqj/KO83+oW45+M5g/ZCiHL1RWxPesHFMA/yvh9Se40kxdiPPY4
         UCLOetv7qarUQMuqB2isGKHMHSXoL+QZ3G3Oy4vMhb3HIbTMIeC6++JwycmZ8eZaFOKy
         /do9jEv3OpTtexSrCNKztGpBo4ANoTOBR+kSSh7PvGlV8Prxlo+AO6k8WM8e9/5h1yY3
         uRb4Nb2x2NiFeTwL0cSwY+I8o5la/ABA92LIZVMJalCmYkHArxxEci1PzEdrdOB2Y99q
         5b+qQMF+P1qgwhZVwLdO4Cn2nES709jipt5bPgaw2eNHtTq3aKrJVZED1XwwzopxIdS8
         aS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734694079; x=1735298879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1zESwL5z/yFz+1EwFu23hzBHEEa+Luon6DhT4CZGajQ=;
        b=AfwTiNuZdI+ZYOCpsYwAeWAa+HF334thvPKmcCv8yBe1Q3mhIgsjwhCEP4ube9DKeO
         SftRUL/mrTtKSSJ4mM8eJ7OCVujsDm0WOiaZdzlj9e2FvJJzeKf2nd/Wl/AalixmDG58
         QH1TsFrxIQny7qA9jlPYr8o0OmFIvDy9XHghvmCNpmHhsV0SWBiJe2yEyDQw8gkjVgr7
         F9bhilLrIDSPq3uuBh1biV3yW9d9YAU2LpYdpIyjfycxEDZ+Pi1IxxW33ix4WicWTNU6
         xg2hOUsck5UhCHA+bcNMbujJLlj1DBEm/PRKn3xvP+YlvxeoibggFFCmkAlDoLLONjL/
         EUxA==
X-Forwarded-Encrypted: i=1; AJvYcCVJeOGBRIJIAGRIEyY7iu3XvRTBb5QUvy3dxeJXGw6YRdwjDOFModkBHUMAOo/OvPzbBfVu10TYjDGG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2nmyyXkxAFhd5wpJ+OBq4G/moedYvHg4VHsLCJ0lnrCbcbgMr
	eWuVrkuyGHpeJzNwqFUutGsrxlvF9SEq9wxaXw29AI2HV8io9bQSzzsrF25hZ/4=
X-Gm-Gg: ASbGnct6/norjqOdRWGd+M3qvsWHegxfOv/HdMRWjok9X+q+PqqDASMVjnr9mKlqdIp
	FgruC5GFFeDyWurGuptZ1fKPmbo34YM+TcPxVJY/mdXI+evNRIS4nzVCUsU0SAuNYSUaA1j/GpV
	nlsWN1xQeMGVZiKRjdcsOI03JaQaduXNq3IE8Uey7nsCXj19wAzUTm5OPK4Zr7ZpfFgRFq6zTfZ
	OwvjWkUBoU8UiKpRy5YLMIJStjkuW1AuIwnRYd7TzXIO2Aceo+XNV1OAfygQpvB/ZJbwbTZJw+p
	PQPIFDrMuQS8jhk1g9pdUd28mTFWWoHdgpRKmugk
X-Google-Smtp-Source: AGHT+IHwdFHGdeIg/yzoQyFEM4Ix23wZS04hAPOurAhS8SM0BMEKA/I7VUHkQxsK73sPZbaMVySSVA==
X-Received: by 2002:a05:6402:210b:b0:5d3:d19e:6d57 with SMTP id 4fb4d7f45d1cf-5d81de0669fmr1906775a12.34.1734694078782;
        Fri, 20 Dec 2024 03:27:58 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701abd1sm1632634a12.76.2024.12.20.03.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 03:27:58 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 20 Dec 2024 11:27:24 +0000
Subject: [PATCH v2 1/3] dt-bindings: arm: google: add gs101-raven and
 generic gs101-pixel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241220-gs101-simplefb-v2-1-c10a8f9e490b@linaro.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
In-Reply-To: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Raven is Google's code name for Pixel 6 Pro. Since there are
differences compared to Pixel 6 (Oriole), we need to add a separate
compatible for it.

We also want to support a generic DT, which can work on any type of
gs101-based Pixel device, e.g. Pixel 6, or Pixel 6 Pro, or Pixel 6a (as
a future addition). Such a DT will have certain nodes disabled / not
added. To facilitate such a generic gs101-based Pixel device, also add
a more generic gs101-pixel compatible. We can not just use the existing
google,gs101 for that, as it refers to the SoC, not a board.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/arm/google.yaml | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Documentation/devicetree/bindings/arm/google.yaml
index e20b5c9b16bc..a8faf2256242 100644
--- a/Documentation/devicetree/bindings/arm/google.yaml
+++ b/Documentation/devicetree/bindings/arm/google.yaml
@@ -34,11 +34,21 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      - description: Google Pixel 6 / Oriole
+      - description: Google GS101 Pixel devices, as generic Pixel, or Pixel 6
+          (Oriole), or 6 Pro (Raven)
+        minItems: 2
+        maxItems: 3
         items:
-          - enum:
-              - google,gs101-oriole
-          - const: google,gs101
+          enum:
+            - google,gs101-oriole
+            - google,gs101-raven
+            - google,gs101-pixel
+            - google,gs101
+        allOf:
+          - contains:
+              const: google,gs101-pixel
+          - contains:
+              const: google,gs101
 
   # Bootloader requires empty ect node to be present
   ect:

-- 
2.47.1.613.gc27f4b7a9f-goog


