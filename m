Return-Path: <devicetree+bounces-174811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB6AAECCD
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1533C7BB991
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7628C28EA58;
	Wed,  7 May 2025 20:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bThHkQpl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC8728BAAE
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649350; cv=none; b=gvWp7lh/C5KYXOu+57IR9q5mYAYBWlIRi/ezSwg2ILZbjZ3bw4r+Vux3NTF62ONCHiD2WDfJvaKwhLrb1gAGbxVbJrKYDI071+7IVnn+2oQLa7LdWfyVJMWrs9i8caKr3ZtWo7YBDPRrX45zgdCfEr3UshLQXW9rBMc2EXa0weM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649350; c=relaxed/simple;
	bh=Hm9q5o2rYDsqjHYjSj1Uvjx99/3HGNtWp9xI42EEBpo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UcvwJvvZESp7yhHawZtC18AqQDS0b/FfgwCTJ4D4FGgLkdddrnOIJFxJKPihfhRWBGGPDnjrDJblQh4sUyPPVCR0jY01iGEt64NBPi8nynzk2JQvCrw1uVZbygRNQNjwczftGCxC2KnT+R1fQCa5nOoA3K2ORMnwakilCZ8oiYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bThHkQpl; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72c1425fbfcso188865a34.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649347; x=1747254147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6WxAsVZwuIlKrsCCu5XYkgSaSZ+q+xbI2lg/jdck3kw=;
        b=bThHkQplv30sZNB0kdJRmVrrh1XNGK5lAEuEQW4lYrTsck7GV58UElcpGE9PVIKAQ2
         UgU/bKj1wYeNYdqOwKd2P9dfuu9Kdq24g69X58SGhDzLN/2f4mEbI/F273F/RoMSkAsh
         IgqCFa92A+JIl62od9+jbKTWDUXX7AOS/IyqakoU1KneF2LmXpDJMIt/WGQAV8qNpW62
         AO2+2aV8V3OwQxbR40ncoU2l3BNRT76oHCn4oaw/PXlK0z/zK8SDUBBNxKE4+a5BOlih
         EXJZWkAv/Uq+4L9YDlcCjt7NcxX+/bUWBHQ8niWrFy/ngJxALT9XYZuJmT9zX420iB6e
         fEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649347; x=1747254147;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6WxAsVZwuIlKrsCCu5XYkgSaSZ+q+xbI2lg/jdck3kw=;
        b=ApSPgnhdLoR2OEuqW0A5Pa7g26JC0FquCkuKLFeAfHmGTB/vMEAtmx0F36gPeuDIzV
         N8O2emz/sjpC5ZxMYNEkBsE6FliiC/F6uZwn4XlIcOVjhg+UytXJwRNQsRtffxR6DMEG
         CvDxAY62Eg/McC/Ppziu9xC1QKqnORnb5cdRqTt0vbVm3LHbLEOhlmPw9eetI7NibCMM
         72oQJWW5/RP4dj5wNLP9Q9PEOPYZbkV8R50VFSUR1uqqxcrhpwI/wRGreQxmxlbOq1fX
         qk9TbkE9e3HKKpeGtWRimkx++R83/h6ZSA9tZUGHCX5pWjwiGeBUA5nIh7+lFgGiw040
         8BpQ==
X-Gm-Message-State: AOJu0Yx+jiRHi7oHuYgrAZnj6soq4HUbko5EDL/PVz/x9bGbFBJXzW8q
	cVT0US96XakidVmrlV128Wb6gbppPDh/41kdmEUDx3Ju/jWJDpcQ
X-Gm-Gg: ASbGnctOvomjK8qXAEpu0LWk73aOVJqpTiHb2Zc6sSVjqggIFJwvtoEMEu2eC4556Yn
	3AsCbn8NW0yjCfHX9mxqCLYgZOjcHuMP3ycfjlxDYMuTrojrmgR0b0Z9llhi4Aq24jm0exZQuPn
	4mVrqsQwUqiWtOJ7Hao53J0Gl9fcmVHRlQmjocdw8AJ0MO7zuqNVaGJkLVTNhzdA3QmSQUydklN
	565leaVLXOMszMTHr8NlEmJ4WDCQEBbni2r1KjJ1KZTMmkT/ijoBf5Pyhtwsgdf09Eb5NZ9qr4B
	X7yNKOrsuE4DbuGb0pwLHD+W+mp/cq1ahiPQG0NRpUwUTGpHhCGUmnrYT/Kb
X-Google-Smtp-Source: AGHT+IHoe0JkaM3Y80DR2zEp9shvUEEimkHkCWgil5PClaq/7bVrL+WbGs9IXYdqS4P+pZ1L1ee2tA==
X-Received: by 2002:a05:6830:348a:b0:72b:9674:93ed with SMTP id 46e09a7af769-7321c948d40mr427028a34.24.1746649347434;
        Wed, 07 May 2025 13:22:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 00/24] drm: sun4i: add Display Engine 3.3 (DE33) support
Date: Wed,  7 May 2025 15:19:19 -0500
Message-ID: <20250507201943.330111-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

I've spoken with Ryan and he agreed to let me take over this series to
get the display engine working on the Allwinner H616. I've taken his
previous patch series for Display Engine 3.3 and combined it with the
LCD controller patch series. I've also fixed a few additional bugs and
made some changes to the device tree bindings.

Changes since V8:
 - Combined the DE33 [1] series and the LCD [2] series to better track
   all patches necessary to output to an LCD display for the Allwinner
   H700.
 - Added a required LVDS reset as requested here [3].
 - Added compatible strings with a fallback for
   allwinner,sun50i-h616-display-engine, allwinner,sun50i-h616-tcon-top,
   and allwinner,sun50i-h616-sram-c.
 - Added binding documentation for the LCD controller.
 - Renamed the de3_sram device tree node to de33_sram.
 - Corrected the LVDS reset for the LCD controller binding.
 - Removed the PWM pins from the pincontroller bindings, as PWM is not
   yet supported.
 - Reordered the patches so that a binding or a device tree node is not
   referenced before it is defined.

[1] https://lore.kernel.org/linux-sunxi/20250310092345.31708-1-ryan@testtoast.com/
[2] https://lore.kernel.org/linux-sunxi/20250216092827.15444-1-ryan@testtoast.com/
[3] https://lore.kernel.org/linux-sunxi/38669808.XM6RcZxFsP@jernej-laptop/

Chris Morgan (24):
  dt-bindings: clock: sun50i-h616-ccu: Add LVDS reset
  clk: sunxi-ng: h616: Add LVDS reset for LCD TCON
  drm: sun4i: de2/de3: add mixer version enum
  drm: sun4i: de2/de3: refactor mixer initialisation
  drm: sun4i: de2/de3: add generic blender register reference function
  drm: sun4i: de2/de3: use generic register reference function for layer
    configuration
  dt-bindings: allwinner: add H616 DE33 bus binding
  dt-bindings: allwinner: add H616 DE33 clock binding
  dt-bindings: allwinner: add H616 DE33 mixer binding
  clk: sunxi-ng: ccu: add Display Engine 3.3 (DE33) support
  drm: sun4i: de33: vi_scaler: add Display Engine 3.3 (DE33) support
  drm: sun4i: de33: mixer: add Display Engine 3.3 (DE33) support
  drm: sun4i: de33: mixer: add mixer configuration for the H616
  dt-bindings: allwinner: Add TCON_TOP and TCON_LCD clock/reset defines
  dt-bindings: display: sun4i: Add compatible strings for H616 DE
  dt-bindings: display: sun4i: Add compatible strings for H616 TCON TOP
  dt-bindings: sram: sunxi-sram: Add H616 SRAM C compatible
  dt-bindings: display: Add R40 and H616 display engine compatibles
  drm/sun4i: tcon: Add support for R40 LCD
  arm64: dts: allwinner: h616: add display engine, bus and mixer nodes
  arm64: dts: allwinner: h616: Add TCON nodes to H616 DTSI
  arm64: dts: allwinner: h616: add LCD and LVDS pins
  arm64: dts: allwinner: rg35xx: Add GPIO backlight control
  arm64: dts: allwinner: rg35xx: Enable LCD output

 .../bus/allwinner,sun50i-a64-de2.yaml         |   7 +-
 .../clock/allwinner,sun8i-a83t-de2-clk.yaml   |   1 +
 .../allwinner,sun4i-a10-display-engine.yaml   |  39 +--
 .../display/allwinner,sun4i-a10-tcon.yaml     |  10 +
 .../allwinner,sun8i-a83t-de2-mixer.yaml       |  34 ++-
 .../display/allwinner,sun8i-r40-tcon-top.yaml |  13 +-
 .../allwinner,sun4i-a10-system-control.yaml   |   4 +-
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 224 ++++++++++++++++++
 .../sun50i-h700-anbernic-rg35xx-2024.dts      |  64 +++++
 drivers/clk/sunxi-ng/ccu-sun50i-h616.c        |   1 +
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c          |  25 ++
 drivers/gpu/drm/sun4i/sun4i_tcon.c            |   9 +
 drivers/gpu/drm/sun4i/sun8i_csc.c             |   4 +-
 drivers/gpu/drm/sun4i/sun8i_mixer.c           | 168 ++++++++++---
 drivers/gpu/drm/sun4i/sun8i_mixer.h           |  30 ++-
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c        |  27 ++-
 drivers/gpu/drm/sun4i/sun8i_ui_scaler.c       |   2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c        |  14 +-
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.c       |   6 +-
 include/dt-bindings/clock/sun8i-tcon-top.h    |   2 +
 include/dt-bindings/reset/sun50i-h616-ccu.h   |   1 +
 21 files changed, 597 insertions(+), 88 deletions(-)

-- 
2.43.0


