Return-Path: <devicetree+bounces-14063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4C87E1E64
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F9AAB20D24
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13C818045;
	Mon,  6 Nov 2023 10:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WPRBBWX3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE4E18041
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:33:23 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25ED894
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 02:33:21 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32fb190bf9bso2168199f8f.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 02:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699266799; x=1699871599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jlw5HxIULTW6/Y+wZ7qEz5z78H/my/JnN6AqQuvllNo=;
        b=WPRBBWX3uYXHjnG4cN1t9SOL7xnD2U4rn66tf52L1f9zcPESNEgcvuk6ZHNBr+5sxp
         45ilXqSiWLq48TV9Sou5eTKFGe1o3JjI23wNZu52vLpIGxYR539tz1Bl5DY/Aa0l7XMk
         napLjUxiZ8VIcHTQVUX35UcpvSB2rX1Y3hYgqzBNkQ6P98P27PEHXU2LdJSXqiFznWgt
         tRqMTb/M18rMiH1SroqfH3usviStWu6j6ayBqSkiQtTjBpfke+8vYLwziJ2UpOZswMn/
         +sLXot5U7Ikj1GFI4PzeHdA7nMpmHU0gsNHKbm9zntCkkXCq1QXgzQy396DsxYsvyQYc
         MmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699266799; x=1699871599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jlw5HxIULTW6/Y+wZ7qEz5z78H/my/JnN6AqQuvllNo=;
        b=eRXkfhh29G8cDLP8IJGsoPVXixxSb4ssKPxvwuAeVVom0IUEFcZ03/zpBWQRtBRdCx
         Zrf9h4bKiv968VUrkR/YNijrKBH5p1pzVl/heHS8JZOfD0OGP9fsUzOZjQdj3CxDtEHP
         xyJ93f7J2M9/Qo5JwZPl+L8VtxFb5riBXacG1IiFyPeUjvFf4VdAUvo4OdkbmhKF6Ej9
         GriJlSwK6Qw+MBGPaWAP7RXHxiLWiY9h8vvUlBqyNckKv/c1GlEOUw6Whda3rH0qK7Iy
         5YSax/4hhuT4wazQcH2mUd80bm0iaOYOrnzF8rB+P8xMiT14VeR5brxRT+M6uMv3Fs77
         VUHw==
X-Gm-Message-State: AOJu0Yy76Cog7GWfklzV1KUTEk7Mx3WVcdK89aFutfhfoPG9Fg2vumOJ
	wsRfiRWBnZAMBvP4+qMNrhLahA==
X-Google-Smtp-Source: AGHT+IHzv/E3x2UyZHstlPEHYl4kHcZKQvmPeHGYQ167btT+c+1bBfLcj35EW0Wc7pkdgodfZZ7zXw==
X-Received: by 2002:adf:ed4f:0:b0:32d:a366:7073 with SMTP id u15-20020adfed4f000000b0032da3667073mr9251507wro.14.1699266799485;
        Mon, 06 Nov 2023 02:33:19 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fabf:ec8c:b644:5d3])
        by smtp.googlemail.com with ESMTPSA id d1-20020a056000114100b0032415213a6fsm9033602wrx.87.2023.11.06.02.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 02:33:19 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH 0/6] pwm: meson: dt-bindings fixup
Date: Mon,  6 Nov 2023 11:32:47 +0100
Message-ID: <20231106103259.703417-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This patchset aims to:
* Fix the incorrect bindings for the s4 type of pwm that was introduced
  while converting the documentation from txt to yaml format.
* Introduce a new compatible for the existing PWMs to better describe the
  HW in DT, instead of describing settings.
* Make the introduction of a new pwm variant (s4) slightly easier.
* Migrate the supported SoCs to the new compatible.

Usually, I prefer to send to dts patches separately. This time it seemed
important to illustrate the change. I don't mind splitting this out and
re-spinning if this is annoying for the maintainers.

Jerome Brunet (6):
  dt-bindings: pwm: amlogic: fix s4 bindings
  dt-bindings: pwm: amlogic: add new compatible for meson8 pwm type
  pwm: meson: prepare addition of new compatible types
  pwm: meson: add generic compatible for meson8 to sm1
  arm: dts: amlogic: migrate pwms to new meson8 v2 binding
  arm64: dts: amlogic: migrate pwms to new meson8 v2 binding

 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 101 +++++-
 arch/arm/boot/dts/amlogic/meson.dtsi          |   4 +-
 arch/arm/boot/dts/amlogic/meson8.dtsi         |  16 +-
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts   |   2 -
 arch/arm/boot/dts/amlogic/meson8b-mxq.dts     |   2 -
 .../arm/boot/dts/amlogic/meson8b-odroidc1.dts |   2 -
 arch/arm/boot/dts/amlogic/meson8b.dtsi        |  16 +-
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  24 +-
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  28 +-
 .../dts/amlogic/meson-g12a-radxa-zero.dts     |   4 -
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |   4 -
 .../boot/dts/amlogic/meson-g12a-u200.dts      |   2 -
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |   4 -
 .../amlogic/meson-g12b-a311d-libretech-cc.dts |   2 -
 .../dts/amlogic/meson-g12b-bananapi-cm4.dtsi  |   7 -
 .../boot/dts/amlogic/meson-g12b-bananapi.dtsi |   4 -
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   |   4 -
 .../boot/dts/amlogic/meson-g12b-odroid.dtsi   |   4 -
 .../dts/amlogic/meson-g12b-radxa-zero2.dts    |   8 -
 .../boot/dts/amlogic/meson-g12b-w400.dtsi     |   6 -
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |   6 -
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |   2 -
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |   8 +-
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |   2 -
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |   2 -
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |   2 -
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |   2 -
 .../boot/dts/amlogic/meson-gxbb-wetek.dtsi    |   2 -
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   |  26 ++
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |   2 -
 .../meson-gxl-s905w-jethome-jethub-j80.dts    |   2 -
 .../meson-gxl-s905x-hwacom-amazetv.dts        |   2 -
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |   2 -
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |   2 -
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |   2 -
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  26 ++
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |   4 -
 .../boot/dts/amlogic/meson-gxm-rbox-pro.dts   |   2 -
 .../amlogic/meson-libretech-cottonwood.dtsi   |   6 -
 .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     |   6 -
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |   2 -
 .../boot/dts/amlogic/meson-sm1-odroid.dtsi    |   2 -
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |   6 -
 drivers/pwm/pwm-meson.c                       | 312 +++++++++++-------
 44 files changed, 407 insertions(+), 267 deletions(-)

-- 
2.42.0


