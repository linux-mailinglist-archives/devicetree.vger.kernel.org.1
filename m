Return-Path: <devicetree+bounces-16660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0847EF32C
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7277B209E4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20D530330;
	Fri, 17 Nov 2023 12:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="V5xr/6E0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A88D56
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:33 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-408382da7f0so16078735e9.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 04:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700225972; x=1700830772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lbSFal9UZ0Rgq/J7gXvQGlHm4p2HKjc2Wn5KsakkeeE=;
        b=V5xr/6E0+ApLDoEZ3maxDQ3XOTB/bxuWBtTM1LHBJOnbWRvX8+zqvNAhMNm5sQH1cH
         ET4fnASGazT+S3c9hKrM2bUZnLpw99BqwQ1R+JAJaHfxkWCZGWXSldZZgR17zNV/K2NJ
         lSwUFU+QRGHvdXoJRcfKo+hwM4vxqVpqQXKgylnlYry8H/Vui9PxSWwgqrgqTMqZ24dI
         9D4tFGFcp59Mv83oI3q8k1Bdnldvb8Z99TP/kv1B1YieytxeLAnWyKPi/NyvqH9XLjjL
         z1lLqNw9H9o+J7/mNMfoPXs4KJxAbnO6Fo7kwh7MfeDrG+sSe+dJcVsC8c721CTAdJvY
         9UrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700225972; x=1700830772;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lbSFal9UZ0Rgq/J7gXvQGlHm4p2HKjc2Wn5KsakkeeE=;
        b=k26iZx7HolvSXQIRAXJ4DeldkHTeHeD7dcOd0luiNXtfyHJ3MM+rlGIBTVhCVUDP20
         Lg08g078AsXxqnH2kNlZSSvi+5b6Fp2Fi7/JCrUsWtw0hKAGD3HEDR7QsJoqA24XDdm9
         p+n7NWUTA/OlJjioIysO/Y5GlBmw7mq1Gv9fdAqusmiANR7CVwgSN+z0MSB2bTdMzMZ+
         yx+pfq/wKUsRYq9RykC2BTvLqygN5TLu7/ibynUBbkfA6hAFVMyqw8gNbgesZ9EMT+dD
         W/JBrVY2IF74XtE7ko617nrvo5oB/cPcEg1HxRce5mFTVURM+oJWX9RrkvatgIIzYwT6
         MXgw==
X-Gm-Message-State: AOJu0YxaSAF0tO9y2rs+aMu9tsbOrBn7fe6rkIoWvSXWfnUyCsCCw1Vf
	384xx8EddZPZRzVJ8tFn18apJg==
X-Google-Smtp-Source: AGHT+IF/oa8IfhcTzw08f0oVTjE1AnhvNuYq+rNjiR8uWCTzO0+EsEaFucRhxohy7BVX9Nu7bNIHtw==
X-Received: by 2002:a1c:790b:0:b0:409:7aa9:a903 with SMTP id l11-20020a1c790b000000b004097aa9a903mr4404700wme.19.1700225971858;
        Fri, 17 Nov 2023 04:59:31 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8196:e423:38cb:9a09])
        by smtp.googlemail.com with ESMTPSA id k21-20020a05600c1c9500b0040a487758dcsm2671343wms.6.2023.11.17.04.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 04:59:30 -0800 (PST)
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
Subject: [PATCH v2 0/6] pwm: meson: dt-bindings fixup
Date: Fri, 17 Nov 2023 13:59:10 +0100
Message-ID: <20231117125919.1696980-1-jbrunet@baylibre.com>
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

Changes since v1 [1]:
* Fix typo in the new binding compatible documentation
* Disallow clock-names for the new compatibles in the schema documenation

[1]: https://lore.kernel.org/linux-amlogic/20231106103259.703417-1-jbrunet@baylibre.com

Jerome Brunet (6):
  dt-bindings: pwm: amlogic: fix s4 bindings
  dt-bindings: pwm: amlogic: add new compatible for meson8 pwm type
  pwm: meson: prepare addition of new compatible types
  pwm: meson: add generic compatible for meson8 to sm1
  arm: dts: amlogic: migrate pwms to new meson8 v2 binding
  arm64: dts: amlogic: migrate pwms to new meson8 v2 binding

 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 103 +++++-
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
 44 files changed, 409 insertions(+), 267 deletions(-)

-- 
2.42.0


