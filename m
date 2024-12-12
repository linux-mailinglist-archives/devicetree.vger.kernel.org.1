Return-Path: <devicetree+bounces-130420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 210D69EFB2D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D91E616BCEE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF8B226553;
	Thu, 12 Dec 2024 18:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="QCYDjo4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256AF2253EF
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028609; cv=none; b=ZKLUqa5WUEzx/vDWu07ctO6cEuYNXi1fevA0TlDvhxnRPRvKEXDotZRL4onVron7qeurhRMIFWjqGMRJEmpFJmnQzOQZ9aIf9q9M6SeY3eUv1bJQOQkauiOJCGJTvuxl9enTf49XzuMM4ImXPyOAnP2CfFAQSajePFYjVdbgrhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028609; c=relaxed/simple;
	bh=57XSRZ2E/EnBNmR6qzIIjgqOi1Qk7pgoTd1zpcEA0uE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nSBiZ/esVjAfHZdg/LndO5EgbysAJsckfXNUyfo5Mhne7rp3HGHmGG28px+cKbBf9H3SRHrn+Sy9NGWXKeqdN1SuVL1GMu0VHtHnkNQxseN29dXpcmSsVa3/4oHsgz373YMjQtYemufJzdLcGbBJjoW1FjCGuBRS6P8pRnksq8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=QCYDjo4e; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so8997055e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734028605; x=1734633405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fMHTsU0ZjvRQjwquvG/Hg5h2182Nwlr0NKl2ofXPRL8=;
        b=QCYDjo4eDU8/hI0MciikbBr9cDxdWZha5+/QKXxaIsIV7ZktLjz9QksQ9Rc71bGEfd
         xxNChTrDuj18ZgW7/ADJsHW53KSyX2/l+obd0P5RtkiHbJ/LFz0pQ2ZBhmCZmXlI/Ksq
         VuZlHOZvWDVo0amMiQSNAQ7ofKmVDRhaKb3mH81v2DLjqSUNyoX2yEC1HIm0jpI7QQrf
         ElYkL+9Co8871dIXCg6XnOgdDo889J+kZ4B8Pa6CuxiOCP1Va3AvjGW0jIFmFGvJAzNV
         AG3/Wirqc4ON2Ew7a+RRAb7Mo10AOsYe8Tp3Y7apvTaCR8TQs/TN+JOjd1y3kdsZvYdg
         s5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734028605; x=1734633405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fMHTsU0ZjvRQjwquvG/Hg5h2182Nwlr0NKl2ofXPRL8=;
        b=kCm6709Ol3Qr9NS/Hb4YTU7sO14yJsAGVGdfxEc9BusOIp5AWXC9Ec5qUxUK1Z1zOf
         BwV5VStWS21U1Dz543q65KsFaVmfM13kEkxE3VmAwjRQiu7QehN+gFRzFKt2b+9NetCJ
         prCfa5zzXhTFt6JwQsJ3Pak435+s96x9p5syNKDPCyPPHd3kdS8rqN20xlt3KjcrauJy
         z5M4mo4Q9VbrCbquKdkzi9zjc5M+FUDkBe5NZb9FsMdurJzAUtXOppwuSIo56A+l1dWX
         DUoogUgZEA2XTze1ELdnh9+MKclndHO+q80TjyzbZYB6l3ygPo+1Le+f0SclMnoeQgT6
         0x+A==
X-Forwarded-Encrypted: i=1; AJvYcCWnjhZZfG0/nGzbCRBSrb0Lh4lfOK6urZABhy/V6cHD+vGLHLZI24WnCCIUQtPbkI34rG3C3QkZXldq@vger.kernel.org
X-Gm-Message-State: AOJu0YzkZIcRDXlAPzgwRnP6XRi6Mpy3HIjcNnWj8HEQt2/RWW3RJ5lH
	gGEuU7i5rV+7aJ6yNTPvaptELdvf3jOQjU0YuTB2OYV/sNZNoylySM0qaMKMiB8=
X-Gm-Gg: ASbGncur6013t9bBewV5Tc3yokk+hqshhEOIECcFaTencFMy5xY0+Ipw6t55T/U2jQ1
	Rm0x177zPTix2joj9Mbd9cHVv7Cq3450yItVxmXe4TeDZuCJ2HSzmZRw8XMWLXaURcbvSnsnpJZ
	k1cIOkpeCKUkuWaGYkqJHlLDz/c6tQLf2HqGIamZbj+VZ/iLQ0N4pEY1fLyKwABKS9pJUmJRjDP
	vJlrMVuX5P60UydanPF1Ml0nWQ7LQTSgzOFNMIKyqxzG/cG
X-Google-Smtp-Source: AGHT+IG4dP9KmyH272DNzwrKy7iYqqOHD3rxD7Qawn80ZhvjM1j+yRssRbMddmKcTh1pYEKJi0HQLA==
X-Received: by 2002:a05:600c:548a:b0:436:17e4:ad4c with SMTP id 5b1f17b1804b1-43622823c62mr36013125e9.6.1734028605564;
        Thu, 12 Dec 2024 10:36:45 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436257178e3sm24651995e9.41.2024.12.12.10.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 10:36:45 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 18:36:31 +0000
Subject: [PATCH v3 4/7] dt-bindings: interrupt-controller:
 brcm,bcm2836-l1-intc: Drop interrupt-controller requirement
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v3-4-44a7f3390331@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Since commit 88bbe85dcd37 ("irqchip: bcm2836: Move SMP startup code to
arch/arm (v2)") the bcm2836-l1-intc block on bcm2711 is only used as a
base address for the smp_boot_secondary hook on 32 bit kernels. It is
not used as an interrupt controller.

Drop the binding requirement for interrupt-controller and interrupt-cells
to satisfy validation on this platform.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml  | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml
index 5fda626c80ce..2ff390c1705b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm2836-l1-intc.yaml
@@ -34,8 +34,6 @@ properties:
 required:
   - compatible
   - reg
-  - interrupt-controller
-  - '#interrupt-cells'
 
 additionalProperties: false
 

-- 
2.34.1


