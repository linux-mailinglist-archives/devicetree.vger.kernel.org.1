Return-Path: <devicetree+bounces-20954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BFD801CB6
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 13:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E5561C2080C
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 12:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36EE168C6;
	Sat,  2 Dec 2023 12:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ifEyExez"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3417F0;
	Sat,  2 Dec 2023 04:52:00 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-54c1cd8d239so3237031a12.0;
        Sat, 02 Dec 2023 04:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521519; x=1702126319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=alZsdcAcMlLtVRnOYds6Kv0dEWGog0rlTIYGT7GnEUw=;
        b=ifEyExez0eL3Iu6M+a36fI8LwjpYvZ7wqFXJIOuKc2qALeFb/uhhI7x/2EkocBYiLH
         6HqEd6QPC3kJHlN+JkggUrLRjRNSiGSSrRWzsN5TCXd0VO7vri/Irc6L/ID3SvyQZjN4
         RmcUnZ9A01yqythvMtJGfIM/ZMTENzV0E6zYe8yJY1LOuhvK6K7EFa4zqAZ0gBSTNeve
         HQzgDFOpfzB7SLzA1OvuioXaFBpKrxfPExO4B1QTGXz975G95f9DxDxhxqup8w+PJvig
         izJ5ccWRhdI9nfieK21v/AxCroCCBXQtxgOF0uLavTFQhHZZG7cEGqitkDThai32GVT6
         yizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521519; x=1702126319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=alZsdcAcMlLtVRnOYds6Kv0dEWGog0rlTIYGT7GnEUw=;
        b=K86zv2UcmwTkZ2JaZznztRESeu0PVw+/hL1lGUeGmGk8zx61z3i5MGf8rlUtkgkq0B
         nP2s3azK/n/qJz5ZrbCvPvr7WUGgF0eqRcDd87PxjN4KZ5IXpuNUiu/jZcdmi+fAZk9r
         WpD7Udh9A9wgLBAs+OrQEZu2AWq3F0dIb/dGDcqMuj+IHk7Lv3fUAyVxFI9zQti9kDw/
         2p/uehwIIXND/OAo0KYggMiKgMJrJpT+Bj2uBQX1uLDbxncgqoWPAcUuL2HWp4s9jQUl
         YKAVYPDwdwv0Btsdk+OhrFeQJne7waejNt2e1DXGuGcFHg/STBWoCZYZJo4jEiNiCVt9
         ADAA==
X-Gm-Message-State: AOJu0YzcyNunr/M4oh03iTakPlJFyNo0j2OFsyaupwL243/JfTP4aGmM
	/uoAMGepGArellhwBd+PiQ==
X-Google-Smtp-Source: AGHT+IHtz8+Zp/uL1trpgUWl4gzjVY8w4Xh7BBppb7LpwHM+Q+E5jb/aRHUwTg4W9siZYL2ZFwznIQ==
X-Received: by 2002:a17:906:51d9:b0:a1a:76cd:697c with SMTP id v25-20020a17090651d900b00a1a76cd697cmr219758ejk.100.1701521519205;
        Sat, 02 Dec 2023 04:51:59 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:51:58 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/5] Add power-controller and gpu for RK3128
Date: Sat,  2 Dec 2023 13:51:39 +0100
Message-ID: <20231202125144.66052-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first patch in this series fixes the pm-domain driver and adds
power-domains which are currently missing. This touches the ABI which is
not and was never used until now. Not all of them are used yet, but when
the power-controller is added to the DT in patch 2 the ABI should not
be changed again.
Patch 3-5 are adding the the gpu compatible to dt-bindings, adding the gpu
node and the respective operating points to SoC DT and finally enabling it
for XPI-3128 board.

Note: DT patches are based on maintainer's repo.

Alex Bee (5):
  pmdomain: rockchip: Add missing powerdomains for RK3128
  ARM: dts: rockchip: Add power-controller for RK3128
  dt-bindings: gpu: mali-utgard: Add Rockchip RK3128 compatible
  ARM: dts: rockchip: Add GPU node for RK3128
  ARM: dts: rockchip: Enable GPU for XPI-3128

 .../bindings/gpu/arm,mali-utgard.yaml         |   1 +
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |   5 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 145 ++++++++++++++++++
 drivers/pmdomain/rockchip/pm-domains.c        |  13 +-
 include/dt-bindings/power/rk3128-power.h      |   3 +
 5 files changed, 162 insertions(+), 5 deletions(-)


base-commit: fd610e604837936440ef7c64ab6998b004631647
-- 
2.43.0


