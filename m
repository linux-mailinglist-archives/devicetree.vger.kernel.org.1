Return-Path: <devicetree+bounces-123642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A859D58AE
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 04:48:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C66FC1F236A9
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 03:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF925165EE3;
	Fri, 22 Nov 2024 03:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IdmHw1LD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205621632D6
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732247261; cv=none; b=EyR5s2jrAvek/BCsDbjknaLTkplrt18a13YRMKMA1aV1/pCQKXsHsnNyDZX52xjlPji5MHdc91lmM3qzD1r4uioTqgDMwkIEh0xe0XcFLyGT2g8D0o1/jSkjki9QgHbK5aX2DxvCXyidY2YV73iDgM020FWt2Ogo6G8LMCu7RFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732247261; c=relaxed/simple;
	bh=ecrPWNCROGbCGBvflsd6cHirBTqgXm1cERWiLr23QUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=juxcLa28IJZTfVqJgkHE7XSsd91nyB0M0CowG0dyp+URsW4BqALfbmJR2kVzxas7lpx9GLV0MCxJB0wef65jtZAMUKbQg2D1SZZMSVaIXdMhhYzdsQLE7Jy5pC/irkjv53LsBK8Ymhf6H3WLkoEQTWD/cttYqqmsk1nDjK1+vKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IdmHw1LD; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5ee763f9779so912969eaf.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 19:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732247259; x=1732852059; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=knk5bhF5K5WlFtwhF1HiZTyghnwunglBtYROl19Amnc=;
        b=IdmHw1LDH0scOAYCc1DRfAjBzUnhQlq5yZlBpW0FW+m+U2XxbcY5RTVsLwuLSMTJsp
         ZxbrZc0ap8+3Baj+SrZ1s+e/tuGVGW+oySEslKmUmruAG0YL0l+h4X4hlEet7DbyHqTm
         7PEzg0S7k/9MGkarD6uiOVTr0IP8Gfas56EHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732247259; x=1732852059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=knk5bhF5K5WlFtwhF1HiZTyghnwunglBtYROl19Amnc=;
        b=rVXI/7SfEW2wiW0cKO/YGyNahFuzioFxmjANSyGnp2SS6zeEzMvSL+N1Mz7GJZR6F0
         dfCHXzHEtPLT8s9oxhQ5KLHrFlIkMm0m+fO4nnbqv0iDAlgHT7dJzRhclraZMyoYWZA9
         kwSvYYpTX7z4GeK6vwcSfwcE66RkTfHn+JxtF/l3WpJIsvZqA/T02/4NtZ9K1cB30/gK
         eAGa0SGaJxQL7yhgQTQ4s7zjoFdGrpi9ORtEnTunrRg+n0Y+RC5barfg3m0Vh8dIi3ZX
         J0B8pNMASQTpJeDNo9QT5uXoG1U1vvYpFOdIrTYb09v5bUNfBMzzAoMcxPSraivOelWN
         hzMw==
X-Forwarded-Encrypted: i=1; AJvYcCXUUDB5JmqdHvN/xYNMyE+i2nGcSZILztYdRW5WGkczW1NatDUVesRBDApzSThYtNv7Bp5/w3Zcj6Tj@vger.kernel.org
X-Gm-Message-State: AOJu0YzgcQ9d/aVAs+upZMaPbeUV5VTNi0J1yx+bmBchWB+cQXPRhY9R
	t3V3dLxdbRls3Jy75VW72EJyYuD9TTnGDYwkUkGaId1DzUyuhb5HbRiSP/DamA==
X-Gm-Gg: ASbGncu2PchGsLJv+Re5p/gjVAzJfrO7aSiCnrSrVXh8nnPAf8EYSjH4QThmZXIIM6j
	GfG6E9Ha+9O8TeozJWYJvVPg1GeSdeR2sMvanON25UU0XH6vl2AL7AjA/4islcemRdPN5ozsJCP
	uk7eTTeVJoYCkVosEZYG2pt2m3ZOYzcxRP3bU22OfRMUT3Fd9GM8weg+PPFIlGCbsm+CHapWNry
	2n5L37DcxEc0xMp2y7e9MADZPambqnZ/rmvecCCyTeLLZ8jbhHZLe2JhNyGXLDy3cC2+NU=
X-Google-Smtp-Source: AGHT+IG9TmutnyL2idfCzGrxIgPrFSPj4hupzoYH5zYY4fJEibqFwqT2kUZnaPO1+nOzBHXjr0fcdQ==
X-Received: by 2002:a05:6808:3186:b0:3e6:10d1:ecb6 with SMTP id 5614622812f47-3e915afc2f0mr2042657b6e.28.1732247259232;
        Thu, 21 Nov 2024 19:47:39 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:533e:26bf:b63:973a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de554b11sm550174b3a.133.2024.11.21.19.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 19:47:38 -0800 (PST)
From: Sung-Chi Li <lschyi@chromium.org>
Date: Fri, 22 Nov 2024 11:47:22 +0800
Subject: [PATCH 2/2] dt-bindings: mfd: cros-ec: add properties for thermal
 cooling cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241122-extend_power_limit-v1-2-a3ecd87afa76@chromium.org>
References: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
In-Reply-To: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
To: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
 Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: chrome-platform@lists.linux.dev, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Sung-Chi Li <lschyi@chromium.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732247251; l=873;
 i=lschyi@chromium.org; s=20241113; h=from:subject:message-id;
 bh=ecrPWNCROGbCGBvflsd6cHirBTqgXm1cERWiLr23QUw=;
 b=+Ar7fFL4Es6YoP98iJ8z+ts7PPhZxkPpxs/twgJcXy9F+hxWQE8UDw3qtSLkVEsv8smzvWQH5
 xC5M1yQiGp1B2ApDAeFU70wlo7L2T10cnh4QYIQ6sueAac/a24ZnXMn
X-Developer-Key: i=lschyi@chromium.org; a=ed25519;
 pk=nE3PJlqSK35GdWfB4oVLOwi4njfaUZRhM66HGos9P6o=

The cros_ec supports limiting the input current to act as a passive
thermal cooling device. Add the property '#cooling-cells' bindings, such
that thermal framework can recognize cros_ec as a valid thermal cooling
device.

Signed-off-by: Sung-Chi Li <lschyi@chromium.org>
---
 Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index aac8819bd00b..2b6f098057af 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -96,6 +96,9 @@ properties:
   '#gpio-cells':
     const: 2
 
+  '#cooling-cells':
+    const: 2
+
   gpio-controller: true
 
   typec:

-- 
2.47.0.371.ga323438b13-goog


