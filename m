Return-Path: <devicetree+bounces-114819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 565439AD18D
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77AC71C22658
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87601D0DE8;
	Wed, 23 Oct 2024 16:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="W+PXNxnh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B199A1D0418
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702218; cv=none; b=poxuCUxgEgfnZRmjGtLb8ye9y8nIGwaAgMt33NXSdhxWKeKcCDsICQXkBRrIW8f9xtCdTkiGcYKXL6njDDAN+JWXek1xM4mv7TA2eqqisJqox4yeDrauVUGAXV4pWFTsJhxZE/HC9LngnZLd7+O9/a5Nv+RnjEcQFtIfLcFg5wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702218; c=relaxed/simple;
	bh=myDXwEj4/Pt7bXQuFI1piwvvg+1lI7X2Hera6uIfya4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r9cQO4P+4sgJDfQzVEKnktRLQ1Vdt4c2u8B1GgbCAdw/K5bcrVtVT53fHDnMV/eFaC0APpaMwD5rWlF91qyKQ+RetEFtJB7zYF7hn0JZ5XFNCmc2G5kEVNOcirdvp2KGPSx5ATXf/STJG+pEmMmfEeZKnjmdQCpL+smzX29iZkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=W+PXNxnh; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4315839a7c9so77162165e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702215; x=1730307015; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4FUFXgI6QaPA6jQr/YtcQOxmD1Pid9zdxxQkfAdgTGE=;
        b=W+PXNxnhN8h1lQ7mkzzKjvXotM4YF1gk4xIbYjqq3w016pK8fLAuWoIVale+OTV1oB
         4yucW4Co60DjOp3wH0HNbp/D+VZEJOmyQ6fGcfCQMTylAvjNQVN4pIUm4mk1mazDlOj4
         FjCepovdhQr04IIz8LTmkXr4Pm6jRH8djJGI6idxK8Uexq78v8ZHtLFqPt5Z0I3QW/Pz
         LWPpQu7GAY9Ky4PgIsZixLAxfs/33wgKvQGOYqOvfw9AZVaqju4hv03FyMEUV0tkkcDa
         AnRXFCvOGlL4HyXrwJK5ZuvvQy+zt4O2QXpQu6SrC+t/pZwMX9oOBRIVGhe12mG4pMj8
         Lp8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702215; x=1730307015;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4FUFXgI6QaPA6jQr/YtcQOxmD1Pid9zdxxQkfAdgTGE=;
        b=ioU18noHYKfCp5fYX5+sGNVUYXz1TnV6vVj2lF2dg2WZ4Jis+AbWSi8WXip/wRM21P
         1xiJ5k6PAyFEGu7/jDizgk/CCzMPv3tp80Ai+iM8Q4O+rYO/C5LlcIkg3sT5xs2GhMqP
         aAqyx1A6DkuaBPfiJG19NH2MDsOr65dDBO5hqAjmMXxv99ZAVwbcCyVh/SZIIN1TADbd
         hvYuML5mOM16EOHt1yuon8xeZ1hdLLNsKmnJAarpJ2XRPMnVQDjNDgvPT1L99CPj2IhP
         nxCGSfw+vThK9G1/5uTH2EQRmrMnHY2TgOwgIHt7iM1qxf+li3PiEMADnQZot9ZQ+0SX
         ts/w==
X-Forwarded-Encrypted: i=1; AJvYcCW9jlTvkaTUl2kgN88iKDfsuRmY5sv77+ZXsjj4mfxOPBGkhiU+3yIh5D/kp8uOYaDA5kIjBXwz6msr@vger.kernel.org
X-Gm-Message-State: AOJu0YxeSzBHHHZuS3lguQzxqE7JcQImkaI+cFl7QH1eS/04gsNgD/Hr
	zcSa2eiIqwAYu0jlkAWsYvt37rmj6KWipDojZDzwkUUGdI6DIBVtUIdUKS2iYLs=
X-Google-Smtp-Source: AGHT+IHIUSOHmyQPqkYRz55BazSmKBq/h2kF4iw8nhK8CZovAtLyhCKZ0YMIVAUaEiQvYpcstK2LyA==
X-Received: by 2002:a05:600c:4f86:b0:431:5df7:b337 with SMTP id 5b1f17b1804b1-4318413e293mr25123795e9.8.1729702214888;
        Wed, 23 Oct 2024 09:50:14 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:14 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:04 +0100
Subject: [PATCH 07/37] dt-bindings: display: Add BCM2712 MOP bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-7-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

From: Maxime Ripard <mripard@kernel.org>

The BCM2712 has a MOP controller which is basically a new revision of
the TXP.

Express that by adding a new compatible for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
index bb186197e471..c9c08042cffc 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
@@ -11,7 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    const: brcm,bcm2835-txp
+    enum:
+      - brcm,bcm2712-mop
+      - brcm,bcm2835-txp
 
   reg:
     maxItems: 1

-- 
2.34.1


