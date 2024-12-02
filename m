Return-Path: <devicetree+bounces-126125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7FB9E0621
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:02:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F04DB2A6D7
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019F120B7FB;
	Mon,  2 Dec 2024 14:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="JnAOaWtj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27C220B208
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149938; cv=none; b=h8X/KXqCLMpKu0O4ObRPXcMH9rdnUgtzA9ykwSI43yqVl52IedygyxOCbDLckILZ8gXMkFe3uuk6+75XLTsQgEatjBq8YTnFFXUj68Ktgletvbq86WBCwzvjEtulPF8/LlZU6o5Zu2OnHxdLdqUr1rlz3N3qiLapaumn1nQBeys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149938; c=relaxed/simple;
	bh=5zXjITbgA5FSFSmYOEMfbg84vfuGIoappc2/TOnidqA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S0IQmjf0DSWulhi2iE1kjKaJSZtCwRZGAfXa665FetRSlImC92hjcSkncKme/2yH6mL17N0yFbNmxrcPXb3zP0DUWhiSi2MrfumSykSxwmaED4XPvymQ+Kx/UcoFYoVV05O7zNY9d/o/aW9WryMO3uCxnOfjaUuogFPFSer0gGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=JnAOaWtj; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434a8640763so36643405e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1733149935; x=1733754735; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=66NaRjYo+TdRIjIUtk+A/zrTfjyMbW0NLvNCk3ACUHQ=;
        b=JnAOaWtjEutUVX5FoLqjgsgCyMTJhtRjF8G8nLY1Ee/5lsmHIlR/1f9MYOSTlUBx4m
         CYrSa9AN3gxy5Dltk8AIPUBcjFzVe71gdav0nzROfvW0QJebT0PptUfUigBsq9bR5KEK
         Pz2bwvZJTVR+RWQrVLMFj3/y06LAzKPR6UBuHQsWPjrbubZ+7mQDP2FnnFCyMPHsimCK
         tR7TfOaqq89NhpIM19SotIYGUmKYCNTRj5xUU5ByGd+WufZn9ALY8ks8EefHL1g1cPzf
         f5dOo6SKcXMKqGjjndhktzDjM3oKm9GoLAx2QzKC6PvxhNCQiDJSPZn5GqgN1ptzNkxe
         CJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149935; x=1733754735;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=66NaRjYo+TdRIjIUtk+A/zrTfjyMbW0NLvNCk3ACUHQ=;
        b=bWDUKdMwiuglsG/PRrMb4i1VL99RQPg7TRKWHXe/9fLoVGQl2m2JS2z2jiCu1w70Bf
         qylHejwzvb6dxA1x/SPFFv+8n2GLSi6gwJCy8mzIvBfWWymOKAQ/gjFi2LQuhm4xIcLb
         Ot6Ay45/7wd8DGVCal8+NucdvJ3ykWBkmHwDT9W63exqE9cgLTO4UVLDiK43sjyjqp8F
         mc+7rvNGLNYMWy6Ivu2yloAC+EOMYLknThTg3/VWjWcWY3yEJmlv78XgaMR3AKCQ0Wai
         QRjmFmRLXtwJdfgExi3AbQol5QmloK3PAFVGWUGFDyqwMe7t1sIDRD8vOD2DepwDfzs1
         +kFg==
X-Forwarded-Encrypted: i=1; AJvYcCWANfnYO05CsUPO2LhUOIi4Oe+z2d3xkjw3xpehyPkLEjVeSQqzqf3SI0U3CHdvfY4ntzAaEM0sm3yf@vger.kernel.org
X-Gm-Message-State: AOJu0YxsteKkX7V1zZPQ3JmU3m3MAREKrwK0bKOJ/YzjmA/qwFUabobx
	33w/2lJJR1zCbAAPWCFpVPaTMtfNPbKdJ0dV+CiqqzBaZ1GaIcH2TFCONvzYh0k=
X-Gm-Gg: ASbGncuVKPGGmCUMwd1G9TOiw/Jh86on23pIe43P3oJrtbnlboztOn63wgYKavoCxWY
	10JxibrO7mLy6BsBQ7BA5gsUnzWg1mlQHyEQD6NZokK8aQjVhNe6p++nyRvlgawV8cnfd170Gjl
	dExDCIFrHNQrlKcmSy4mnUMSjgxs4EyWjZW6qmdkUKftXvHLXQzXQ+cPEcE9ysniD3A2hzeG1W1
	8k64yAyCBp0CpF55c8n4EATPTZPtZZDBGjkUkqBgw==
X-Google-Smtp-Source: AGHT+IFjvnTvxoYoYzXeiS+rT48r6tDHyIvnEQ/xQrP8Q+YrgHiGsItI6q35+4octUNLW9uQ5Wq4wQ==
X-Received: by 2002:a05:600c:1e09:b0:434:a8d8:760e with SMTP id 5b1f17b1804b1-434a9dc6774mr200107125e9.19.1733149935182;
        Mon, 02 Dec 2024 06:32:15 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434aa74f1e6sm188429555e9.9.2024.12.02.06.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:32:14 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 0/7] drm/vc4: Fixup DT and DT binding issues from recent
 patchset
Date: Mon, 02 Dec 2024 14:31:53 +0000
Message-Id: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANnETWcC/x3LQQqAIBBA0avErBvQQVK6SrTQmmoWWWhEEN49a
 fn4/BcyJ+EMffNC4luyHLFCtw1Mm48ro8zVQIqM1uRwvjBMO1lNuMjDGf0SFDuvvLEd1O1M/Id
 6DWMpHxlHVi9iAAAA
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
 Bartosz Golaszewski <brgl@bgdev.pl>
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
Dave Stevenson (7):
      dtbindings: display: bcm2711-hdmi: Correct bindings for 2712
      dtbindings: display: Fix BCM2835 HVS bindings for BCM2712
      dt-bindings: gpio: brcmstb: add gpio-line-name
      arm64: dts: broadcom: Fix device tree warnings for BCM2712 display pipeline
      arm64: dts: broadcom: Add interrupt-controller flag for intc on BCM2712
      arm: dts: broadcom: Add interrupt-controller flag for intc on BCM2711
      arm64: dts: broadcom: Fix device tree errors on BCM2712.

 .../bindings/display/brcm,bcm2711-hdmi.yaml        | 44 +++++++++----
 .../bindings/display/brcm,bcm2835-hvs.yaml         | 77 +++++++++++++++++-----
 .../bindings/gpio/brcm,brcmstb-gpio.yaml           |  2 +
 arch/arm/boot/dts/broadcom/bcm2711.dtsi            |  2 +
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts   |  9 +--
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 10 +--
 6 files changed, 106 insertions(+), 38 deletions(-)
---
base-commit: 8c3f4a248f35817d2f604c0e3df1bccf27590228
change-id: 20241128-dt-bcm2712-fixes-afb0e8a0a476

Best regards,
-- 
Dave Stevenson <dave.stevenson@raspberrypi.com>


