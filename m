Return-Path: <devicetree+bounces-114816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0889AD177
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:50:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA28D1F24209
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D141CFEBA;
	Wed, 23 Oct 2024 16:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Kq5c5wsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E581F1CEEB5
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702215; cv=none; b=oT6oSHj9wPyPSTDKhfMi/VHvvHfi+XE38Slv3wgjBOnFz7G5Kb0YY6AEYTaAUbeTb1NTC/HIP6RCPuOFa4weDju0XUWIk8NNA7oc4vpwBFi3LvJK1memH7MW+CIdkaDt+SJ4m8JiihgkAJgcwFNz6BUcfGaDUaNz1WDngF81bvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702215; c=relaxed/simple;
	bh=/unp98Ik2tbTzl0j/4id2arkguKjBRGpeMQXneVg42Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=alJ7ihsraOPEuem67eOuDhK9RnJ0VCBZ0E2nxNldqWpezCnF8d0CmA7bnm2PB017Uv5fusmdHPOZa1mK33MaAGT7qGCWBo/+vRl7vZOrvkDKxiXG1+xD33E8CZ1VBD4WZ+uXC13Ls1W5lMhg3XlTXpslp6848/RCKQIoMSqDJWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Kq5c5wsy; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4315eeb2601so85338605e9.2
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702212; x=1730307012; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UraO/WfabHwA0kcDmdostvPDiMjVW2AKFSzHSQZmNBs=;
        b=Kq5c5wsyMGN7tefrhCENcY+nIqx/2JDgvdVghfH7hjkdMC5nQLyivbVv6fXzrHByD/
         vnkkBMA8pCzu4Lt6KZmb+2yHe1suV5L0nK/3uu/U4ZMjCh5zqgbvv4ASx97b+aH3l3vM
         4QhFCtIZQQb9xKL7faNBrap3zU0zbrWePGmaDH5mEV2XcFtq0pzJBYNWAm9+qCK/wG5S
         mFnO4hvR7CkllcVV4Sdad6GC1BrJvFoyxJTwvZzbhizJ9t7GzGRh6ate1OE9eN+e8x0i
         7nqKswxTnp6+MVHFEZk5m1eNSTv0eCwS3J4DcD644JHtuEqSxM0ySJhSwnyL/9Ufo33j
         5lmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702212; x=1730307012;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UraO/WfabHwA0kcDmdostvPDiMjVW2AKFSzHSQZmNBs=;
        b=rTmKrZgmTii7mVvtIys5zjcxg00i2TSdJXLdfUYZIybOd21mUkJw6lmpTI4Mt37ooV
         nbwvQy/hzo3ZLBY73M16yf+eRqB6CXJeDCN3M6U2+Kfml9eHIYhVedCtGI4bABsIM/mS
         aLEc8b/0aLR2ag+Yg9eAP42oj1zd9tSlJMwZV5NVT44K1PvFTCnUs5ETfBsPUjm25H9R
         CXSY0Lx7lrtASww9rasKmo46J1PNmI1/ia6PBF2jyS1MtsEctki0r0YuZz6qpAHiTJkm
         JXOCXRQEnHk7P2+YzHNhrE90PmRQT+3lCy2lj/SGXFNna0TDyWz5PCWIFrVlhJYJywKp
         n9Pg==
X-Forwarded-Encrypted: i=1; AJvYcCU4Cu8XN69b/A3xQeiuChdQXCNEiLUK12C6HdvWv+wHkEg4kqenJq3OvODG94X/29b8447ufNREYJHt@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ8qMpXqG3HfKQQaM2VQJBSjaP+ZRPXswwAg02FxaYi+g920g+
	ty3svVOgop5xKYdT5IxK+QP7cPeOOOk/NyIVcPzwFJPLV/pojiGXOFPad+Cw4Mk=
X-Google-Smtp-Source: AGHT+IEZ2TQIiD2rD7dtSbDNYkDUqcAgoqtisqjGeExVyCYGMYZ5lugyYr5OzlQS2JdAABbh9QpYMg==
X-Received: by 2002:a05:600c:4ed3:b0:431:5c3d:1700 with SMTP id 5b1f17b1804b1-43184213763mr34326675e9.21.1729702212298;
        Wed, 23 Oct 2024 09:50:12 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:11 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:01 +0100
Subject: [PATCH 04/37] dt-bindings: display: Add BCM2712 HDMI bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-4-1cc2d5594907@raspberrypi.com>
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

The BCM2712 HDMI controller uses a slightly different HDMI controller
than the BCM2711, and a completely different PHY.

Let's introduce a new compatible for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
index 5b35adf34c7b..6d11f5955b51 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
@@ -14,6 +14,8 @@ properties:
     enum:
       - brcm,bcm2711-hdmi0
       - brcm,bcm2711-hdmi1
+      - brcm,bcm2712-hdmi0
+      - brcm,bcm2712-hdmi1
 
   reg:
     items:

-- 
2.34.1


