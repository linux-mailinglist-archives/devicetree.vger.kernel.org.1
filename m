Return-Path: <devicetree+bounces-114818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 062F29AD188
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89D6EB223AA
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD661D0796;
	Wed, 23 Oct 2024 16:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="j7qqNL/+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FD01CFED2
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702217; cv=none; b=jMMrGzFjrN7LjsTNFa9CI95su8HVVstl0LMfXpVfNfoK8EugKkIx7+IxIkofCcVNvACcOU/3KQ6Bxi/MubLumOHsXqobvnRJkH3YbO+k+KDzoK2ZVfwtkooHM1sohU+L4cZ+fI+EgcAKowKiYd6PrcVZWQFIKgAxWrvRQ4baP0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702217; c=relaxed/simple;
	bh=wluIXe1MEVk5FSOrqpni5YIVgNcieamBPIp5PPJnleI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SSSyrTsO0t3QfE3yn8/YRTjdmjLmuphZUs6w3mxpAEjGK0Pmw7ePn0StneHt7L0X6OFlXT6PDqve6QGCmTZXI2D3QKgn4mOyCZYwOUfYvB4hZW+6pxxUA0lmEnnk+li6OQMkfLN2HMGM2wC2RhdvyPXh7Y3bpUpsKzEHnomDFyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=j7qqNL/+; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d4821e6b4so4810889f8f.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702214; x=1730307014; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsBVoQZ8zap5DslrzzzsVJMIsK4Q16E87oM6AvNUOjA=;
        b=j7qqNL/+xrIYdn9KSKRvQMw83pePtN17jJbIwI091MkoiU/67TnyqcXlAas396Qb/7
         uvwCbe3ONyzWYMkGfDwUJK6hPURPphm3kmkDq50p1nEstc8eQwhdUKSG7hpx1NkbzHLf
         7Hag0IJJohewIfsD7KnB8gHvCkvjCGn+SLc72bMQZfiPa06MCFsKhXXR0oxBr86ThXWt
         L1UNsTpQHxWlnE+X6RfZmCmqDkwJOqBLUApPQ5Qzrrn+aJxE8Lj7Fey5N5HUqWynzrMu
         FQF7Y+QMnCxWVa/uZkTZYNozoA1grafJXUlKvmkYWm2NAcdp6B9bmmwxcDW8qtrBAjhA
         BWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702214; x=1730307014;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KsBVoQZ8zap5DslrzzzsVJMIsK4Q16E87oM6AvNUOjA=;
        b=JMyEAexdHLL5A9tmAfXNAopI63+rl6qYZQ+NBmfZI85I5JTqhHx2eUp9Lu04eNY6Nt
         f6yXI4/nbwfQPo6tEvM40poWPU1KSP/7/Ifpvdqin+wR25REF7HimhWIpto5UN2iStZs
         r1AjSzEJU1STmLtkascfjKl7x+6vHohAYMMQRs/v40q2dYp09MfXCH/ptZXUre182RZA
         goPyYWOQP/Ln0O3hLwWq/Q07YWzKRVWYZZZPC9rjEKMj52eWzKIvM+rmPXTp3TaWtvnG
         /Q0XNVn2RZi2CfxA5Pg5ahWom6Iq8cb84Kd/7/TTfPJKoDcSDPn4/PJCyDyTnWFFcTim
         866w==
X-Forwarded-Encrypted: i=1; AJvYcCUajMiS8qW0ddBYLpMzqjhhZCGcBdfnJm+s5sYMA84RRrfhiedtlhGN/KeU4OmGWHjGUJPlOYl+i4WY@vger.kernel.org
X-Gm-Message-State: AOJu0YwM480bnWRjmqGWiCynEriTT5gowrpG3EJvZ+zuk54PydBJP6Hq
	/cVwzKG5kCyj9VqiPOHqorC+fMnpJU6WjhBMZ0ZYV6ay+S5aOVktcuZ4Lt8zvZ0=
X-Google-Smtp-Source: AGHT+IEPMevLaP10jHP2kjP5QjuvQyoeAseVICs2i6vuIJvW5BstXAY25poTAtlyrCUn0K4+h2nj6Q==
X-Received: by 2002:adf:f6d1:0:b0:37c:cfba:d16b with SMTP id ffacd0b85a97d-37efcf84673mr2298249f8f.44.1729702214024;
        Wed, 23 Oct 2024 09:50:14 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:13 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:03 +0100
Subject: [PATCH 06/37] dt-bindings: display: Add BCM2712 PixelValve
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-6-1cc2d5594907@raspberrypi.com>
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

The BCM2712 has 3 different pixelvalves that are similar to the ones
found in the previous generations but with slightly different
capabilities.

Express that using a new set of compatibles.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
index 4e1ba03f6477..6b5b1d3fbc0b 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
@@ -20,6 +20,9 @@ properties:
       - brcm,bcm2711-pixelvalve2
       - brcm,bcm2711-pixelvalve3
       - brcm,bcm2711-pixelvalve4
+      - brcm,bcm2712-pixelvalve0
+      - brcm,bcm2712-pixelvalve1
+      - brcm,bcm2712-pixelvalve2
 
   reg:
     maxItems: 1

-- 
2.34.1


