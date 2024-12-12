Return-Path: <devicetree+bounces-130347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6656B9EF183
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15D1F1782F1
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5AA235898;
	Thu, 12 Dec 2024 16:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="BtMdDz/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A333123236C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020351; cv=none; b=ae7LKW1yzoNXUf9anglZT/NQPK1PE5zmtSfdckAxkZuLIG+Njg+BN7LqEfVl6eSokBlhbYhw6vV8uRBP4sPFPfGb7IdrDhEzoVfcmBssVkq6DaZ5nRIkNwpe40ZensjVbUl2VEp3bf+VQZ/j/c7KJXg+Eq62tzUYzhqTPHr21Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020351; c=relaxed/simple;
	bh=57XSRZ2E/EnBNmR6qzIIjgqOi1Qk7pgoTd1zpcEA0uE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BwL/6Rx7uL2R+w8KA5Y9fusCQYSOSvPTJ8Um2EvB0Q6IHnBvhos58oDu4UtTEomOrGI9AAaGN/fcFXQoQAhWuaLL3B99G7A8BGhHOi7R26UiDT8DcqDExLa8cAvQybWoZOiTpCZkYFdG6+bPhclB0v5H/hzvCA/kREXYh6OIP1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=BtMdDz/9; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4361b0ec57aso7703355e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020348; x=1734625148; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fMHTsU0ZjvRQjwquvG/Hg5h2182Nwlr0NKl2ofXPRL8=;
        b=BtMdDz/9Fj1lVIYpynF1mcCFkVoxVIpyE5cI8JdXoIvpLcrJRzjvueqJeueQySTWQY
         4sQGRJoSKBUTRbSwOHowKNgY4I2FzBK2NzcLO6LwRvTCGIF/gubcFr92DngGPbfPtdux
         3GTDMYchfNzE9q3EWmrGLMBBwHUdc1l/03yP5K2GMhktFWuWxhvqwMPJUhHCp5hNLGk1
         REUGp+wjSxM/BV7arKIc2LbyJB5Y1wM0pffwxXtt6MMfa43dRjQKJIRP2RPtCJUumNeD
         7zl26dH/ftBN9tKLpz2J1Ap+82MNG5QNxTzTvQyFP47toMOZlETIlke7mglB3aIshkC+
         o+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020348; x=1734625148;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fMHTsU0ZjvRQjwquvG/Hg5h2182Nwlr0NKl2ofXPRL8=;
        b=ITuEQYwuog5suprHGNaUNQBQEHaTX6NdB3WYLsg3WNPEm3cbNah427KWd2h5IoIFyk
         SUFIjGUic8wkb7/tvgx48IIK+7WCcQKhJyetgUAMl29VSKqaib043SCVdDTkeJt1QHUR
         3338Y7kfvzrwqG5OiukdV4gZEDht9SJfK5+oDQHm1/ycD26zTjIFzgN4oAQE4/q0Rygn
         bQNSPJJfb2nKufijZ9Ll5IfNKffoBwGTqcujHQbB638uj0cbBIhB23UiUMJ9j6tqw6+9
         JGcBxc7CFivgQM4uu8EFOKxd0I67zybpwrePACy9aykWpgzv4jRIAYjfeG0WTWRn3Rtl
         JEsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOeyt4YA0WXLmL56rTrB2SABiJU3jRLImuHlM119b4PlfPH6QCcq4u5tG3s0rD/dZ6OZ0J6gPlJau/@vger.kernel.org
X-Gm-Message-State: AOJu0YwlU/RklNtkAmgzU6enl5UPX13WjqXjNpYEG7pmQFBNphSCKGSF
	XqsNsOBwYtpVeYUPRMGJWXyvQTiwWWofyzBHIbH468/JXXO2pxKDOPAlHRAoV4Y=
X-Gm-Gg: ASbGncss3gR11WlSBu/nObPyMLPHXIzIMvUrAL9dQZL7pW76lUV/lpJpIyhfz5Tp8DL
	2YO/px1AyihcUA/tKWuefr7YQbscNpsecVR3sBFCyzVhzfS2kwZi8LF0oKA5ow9MRDikl5HwmNQ
	mKaJaN1S9TLBG69NZjRBkNEYEtE04SnZkCBgQnlsmeaYJoR/6OvMpKQwR47SbZ99ND4nL7+Y72d
	pcvwzGXA/9BLtN+nbG9VcJpB/F4iZlfeGEuXoPI7uWl3n3L
X-Google-Smtp-Source: AGHT+IEW963IsJu+5kmA4Oes4+Y3LvbmvGkTXDKtXSMQMJQRuXOcNzh2GjScR8bf2D3ZBqv1bcGbwg==
X-Received: by 2002:a05:600c:1c82:b0:434:a815:2b57 with SMTP id 5b1f17b1804b1-4362286399fmr31867605e9.20.1734020348074;
        Thu, 12 Dec 2024 08:19:08 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:07 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 16:18:54 +0000
Subject: [PATCH v2 4/7] dt-bindings: interrupt-controller:
 brcm,bcm2836-l1-intc: Drop interrupt-controller requirement
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v2-4-35986e04d0f4@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
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


