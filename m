Return-Path: <devicetree+bounces-130344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1D89EF128
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45F2317A859
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7654231A3A;
	Thu, 12 Dec 2024 16:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="GB8IKFnM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB47223C72
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020347; cv=none; b=SjNeEwEBPjmvfn6nt72TD7LQt9scKbSprEtQfc/Xa2F2a+qeUnNb+c4Y5ZeTroaBo4ENONwkUx8kDzCI7Lbz8Ge4UtyIj0L1BSKZncxVUYLHrIgRnsE2QuObK2bfKsqGUu2Xd+mUGOlPPNYhXs2MQaxuoaqDMLp01I0B6y/9tro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020347; c=relaxed/simple;
	bh=ediPT7Oqlg+YRMFwjtENctOZgPBi+bwG3vdK1w45XiM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qFmpZpb14VnXMB6QcrtQ/AbykNJabvDRblp7xTCKhNr4Y7sOnPTT13ZkwwxEW0Zk0PNwiupr9KmyzAvmzH24SmJ4tUHyfxvTNTEzKo1eNLqomXjfUCxtklsSELoHdT/9sWG8WoU/17cQHpoejzSGSdIh6w3RZBWcwD32rDm2mP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=GB8IKFnM; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43623f0c574so5854105e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020343; x=1734625143; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=68JInAhAW5Is8mwm4BYMUDXa8RJRJvDNCf4zhjotoGo=;
        b=GB8IKFnMSUixu4Jo6png8ZJAqTiwIQIdTrtZSXCOKoy8yB/48qj7FkXO/zvz94LRFe
         y3euJQjjkoRaTr9Vf/BDw6gaWvxFrMqASBnwCo5bRX3C9Gpu5AOXJ+PddTsg0rN8RFxK
         F43gU48Tl/rYNGymMAu7Fp0fY2vAJ6hWf4RyLCx1JjM22qwhkEbVoysj30PejHYEjgBS
         TOGAhusfscd0Fmwj9CUqXaqfi2qJPQZ8uw7liDVmKtPN0GB82J92a92oqgbxf/QFSkEf
         vHmTSISW58+Q6qr8ninUifposl6iLs0Dz9fjNTBs4c83kyfzUhemcB2ll3Pa4AITd+be
         7imw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020343; x=1734625143;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68JInAhAW5Is8mwm4BYMUDXa8RJRJvDNCf4zhjotoGo=;
        b=bF4YuqSHShZCPc/H88yjy/a/Rq8DaYHUJdcHzek1pIVDI/uajzDc6X+Vw54uc+92PX
         9K1LaSvEqdZsW/a4LlN+M5PHGEXXryG9DuIY7G2uqiDL36g8vgXnpcGakQ0v2zEaqXz0
         IQF662G9Mrb5FoEzI0HlqY3lRCiwr0F1CclTttzZOMCigvuR+OTSnsm166j14pd3FoxC
         KkrfKxN0Pb8dXAYIjqSnTjI4DjBCXgwQns1NmQGBK7eZDN/tuqtFEQfjkhYg27vQjO5T
         1x9Pedv19yusbobrax3vGlKhLm+wAWokNKh5474ml7cKe2GJGUjjoL16YltuOK9u+8PO
         QoTg==
X-Forwarded-Encrypted: i=1; AJvYcCV1jhVOmiYOGmzu4etLOpH/dvQ7B31S8+hH8lPAG9G7mR7TIFfjIUmFQtlQQFLmjcKo4XJo/uh5X8m/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1uN0OFLg4SbcnG5yaT0b0DL7U57ogJi/D5P8M8UVjY/dkmoZ/
	fDgz1O6jyVblsMLsWrLPRtVdKMp9NRTx7Aon+Vfoky8dYrMxn+Usd30fAA/14pQ=
X-Gm-Gg: ASbGncvfWAfRaz9k0uLMuQU5Smaw6Tw+R8/x0Tjw7YdwOdw0TaWsj5muxU20ZqvJE1d
	d30Jclr2lVK8m03qwPupZ0ywxlh8LKGtLfn19aCtzWU0VOeeRihjR6mvqsutijno0kdWl26/M3Z
	FPIq1tbMzOijNh4dhOjxW5OKBgtzKAVJoTLJ/m4Rf6Q4GxIzJT+cju5EYPvdHGe1vOxcM1tX/yD
	1trEHeldl1z/ZWJZMLpJHEKpBaTCB8ZwL1BfnjcJzRHptZR
X-Google-Smtp-Source: AGHT+IHBf/CkYwwV5YCDCoDlBGs3t7DJrHBFw8STBH4yNhFZK8NKI7+uk6ZO9cjpKuabgBSSS8Q7eQ==
X-Received: by 2002:a05:600c:3acf:b0:434:a802:e99a with SMTP id 5b1f17b1804b1-4361c346253mr66269165e9.4.1734020343031;
        Thu, 12 Dec 2024 08:19:03 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:02 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH v2 0/7] drm/vc4: Fixup DT and DT binding issues from recent
 patchset
Date: Thu, 12 Dec 2024 16:18:50 +0000
Message-Id: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOoMW2cC/2WNzQqDMBCEX0X23C3JImp76nsUD2vc1Bz8YSOhI
 r57U3vsZeCbYWZ2iKJBItyLHVRSiGGeMtClADfw9BIMfWYgQ6W11GC/YudGqi2hD2+JyL4z0rD
 hsq4g1xaVM8itZ5t5CHGddTsfkv26v7Es/2PJokHPrqqdI39r+KEcl05UtyVc3TxCexzHBw0Ef
 TW2AAAA
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

I missed the DT errors from the recent patchset[1] (DT patches
in linux-next via Florian, DRM bindings patches on dri-misc-next)
as Rob's bot report got spam filtered, so this is a fixup set.

Largely it was changes to number of interrupts or clocks in the
bindings, so those are now covered.

I've fixed up the missing "interrupt-controller" flags for 2711
and 2712 whilst here.

I can't get my head around what is meant to happen with ranges:
"soc@107c000000: firmware: 'ranges' is a required property"
The meaning seems obvious.

However if I add it then I get:
"firmware: '#address-cells', '#size-cells', 'dma-ranges', 'ranges' do
not match any of the regexes: 'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#

There's obviously some other flag I need to set in the bindings,
but I can't work it out. We have similar errors for all the Pi
platforms for one or more nodes.
Please advise and I'll happily fix them all.

Thanks
  Dave

[1] https://lore.kernel.org/linux-arm-kernel/20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com/

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
Thanks to Stefan and Krzysztof for their reviews.
Hopefully I've addressed all points raised in the correct manner.

Changes in v2:
- Commits have now be merged from drm-misc-next to linux-next, so all
  commit hashes are valid on linux-next.
- 1/7 Removed references to "previous commit". Fixed up indentation.
  Added maxItems
- 2/7 Defined widest constraints
- 3/7 Added maxItems and removed reference to Linux
- 4/7 Described the errors. Split into two for fix of node name vs addr
  being wrong.
- Added new patch removing "required" for interrupt-controller and
  interrupt-cells for bcm2836-l1-intc
- 5/7 (now 7/7) Removed the intc node for 2712 - it's irrelevant on 64bit systems
- 6/7 dropped as updating the binding is the correct answer
- 7/7 dropped. simple-bus claims ranges is required, but adding it
  creates other errors. I'm unclear as to the right solution.

- Link to v1: https://lore.kernel.org/r/20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com

---
Dave Stevenson (7):
      dt-bindings: display: bcm2711-hdmi: Add interrupt details for BCM2712
      dt-bindings: display: Fix BCM2835 HVS bindings for BCM2712
      dt-bindings: gpio: brcmstb: permit gpio-line-names property
      dt-bindings: interrupt-controller: brcm,bcm2836-l1-intc: Drop interrupt-controller requirement
      arm64: dts: broadcom: Rename bcm2712 interrupt controllers
      arm64: dts: broadcom: Correct hdmi device node names
      arm64: dts: broadcom: Remove intc controller on BCM2712.

 .../bindings/display/brcm,bcm2711-hdmi.yaml        | 107 ++++++++++++++++++---
 .../bindings/display/brcm,bcm2835-hvs.yaml         |  83 +++++++++++++---
 .../bindings/gpio/brcm,brcmstb-gpio.yaml           |   4 +
 .../interrupt-controller/brcm,bcm2836-l1-intc.yaml |   2 -
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          |  13 +--
 5 files changed, 170 insertions(+), 39 deletions(-)
---
base-commit: 3a6b7ba51f16c093420959ab2bd3476d180547fa
change-id: 20241128-dt-bcm2712-fixes-afb0e8a0a476

Best regards,
-- 
Dave Stevenson <dave.stevenson@raspberrypi.com>


