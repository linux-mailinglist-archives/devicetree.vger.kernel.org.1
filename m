Return-Path: <devicetree+bounces-222490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F36F0BA98CC
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 16:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74A741C2A1C
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 14:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F19330ACF2;
	Mon, 29 Sep 2025 14:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jguj4Su+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53682FB080
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 14:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759155922; cv=none; b=X1mFvQwyU1tIgnPGqFhuYNFokCB+5st1B04IG65ADq8EbP+2TbRLRcRkvwoRG52Crg5fj/TpDEEmTCIztNtJO69D/sERpBHUdKJKMX69QQezG5wGZ4wB/Jtk6K7Kb4/96oR2SZxPU4D2yK06r3NMW5NSeJmJrDzj1vSoQKWXSFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759155922; c=relaxed/simple;
	bh=K85rkuCudYsXP5pYW/dzKbInwqXPQwsVrWQ5iHSeRC0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Wj6azpi83XPQEiSkJOfbqU7wkWv5J+m/GO93ufrEPyicPSoJP8+od0rzR7uzPXkO+Pb+j4Y0vt5CQoliJKarhN3/80K/2MrdbGjGY3GCtCufckNeeiq+hNQiB9dHAJlfNIMu32/RYQMl/cFL6TH8S7NVGxFN13SMllVwdNouWog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jguj4Su+; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3696f1d5102so41638241fa.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759155919; x=1759760719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DPPg9TIoZPnzthQd8E1VwdjwIEaEjaVDMMssW2mg+cY=;
        b=jguj4Su+0loOcNAxNNxH55BAURnQfg2SYpHWQNmmQkSF0DVfime/13OeHnO7IWK5GP
         4CWHbvDOwHLKk5ZfpTkQ8rrLJUat2Y4PRZZSPbm8739wIAbWD8KgAiLns96yYFtuBcTj
         +H3l6deLYG5MTMzy8wJkeYPzJFCc+4Jumk2r0boyTpTkX+tWyzBmj8vQsIMJqMIgNyxW
         nlumtuDXW6Zupae6ugyBlfQ5vc74x9IKxVv02sxaITPBAh1UsYZVgsXSK+wHyn9QZcGj
         laXn3e+7WwJWrW7K47NwUSm0FiMMYI0H0BqhHCXkEQs7fyhYd2uKoAlUnqQ2eZCMSlgu
         Uspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759155919; x=1759760719;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DPPg9TIoZPnzthQd8E1VwdjwIEaEjaVDMMssW2mg+cY=;
        b=FqTwRmZVBSKg/FsMrLB217VKfwn436Tl+waiawLfCyveIeELpqJfMGLoFugWnvyU3c
         Rae/7k0HITAV9Oxwj5RNIo0j5p7/5skAU9vC5wVAzrJWU2hf4jPzTjVfDGC+7MeWp78Y
         AMKSfxHY4STxSBCnqMrfqFrzxtnA80IQZEBzQMqifhPo7AgjdYOi+701usx4JtN1zSLN
         Q1eQ9Tcu7KR0YsCJ9APIPiyRanU3LDP9vFXLgKCBpOnXQO9depwlfWwswozPKmNZGbG5
         FthLcZl+vdPsUNcMG8K0aKuXwdxZfFlrDp+/JxqSu+Hcz5FcytOFp+OQKufrms2SmXsf
         7d3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXK3fe2Fg6lip6YhxpK4lJiV/k9Rlkpkx6pmc0GcZYkvzi/UJu4HuUSZpe2IwKn4sAwIHHkCk/rj0Rk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2lRIooo/V06LJhKz66DWnQgdJrd6nG+iABFBBKLIeKI9XAqO2
	07Ph0CsNdBiUVAW28zL4WxW47YrA84cbquuvxOygSxec5t6FholvpgRv
X-Gm-Gg: ASbGncur/U7is7queIbI3CL0RbJ6vZcnwsCxWhnn/FJJooJjVOC1nFrqeEmwJpZw22T
	FNCtDz5y1GGue2K6cgOHk20qaUyCsV70YsicxBVPjqRdaIVrenI1nXyntl4gqfauUhiBbQ3OONG
	C8LItz2OePkESjMYvfakamf9tfEOksB818wQTQbZotPQOquNDsi8LgfTNMcYvsw65hTxXRLyAfy
	r0+Suw9SovY1SSeDFUjROHJ41lTGlXhOgamKwUSGbbQQu9mI/dgRKeEi9Xgefkgb/embrcDNHyy
	QPgzrQKZEy4KwsMmbPN+QXWimI4S/3JN9/4ZLBLkHbT2UVHYhp1/4mAHZn15v8e6lTKNNKqdgQ4
	UjA/gEJ1KdiV8J5Bpcg8eTb5vhRCE8eCeOfY=
X-Google-Smtp-Source: AGHT+IHxDGpQBwuQkWcBRlcxN2mP+i2I0/l8+XNF8RRMmqOhDyFCD+mEDRiLnbhKmmlYr8NSnFokUA==
X-Received: by 2002:a05:651c:1986:b0:36d:755f:a6d8 with SMTP id 38308e7fff4ca-36f7d2cb85cmr46262991fa.14.1759155918449;
        Mon, 29 Sep 2025 07:25:18 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3728c23e6c1sm13201001fa.52.2025.09.29.07.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 07:25:17 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 0/8] Add support for panels found in various Tegra devices
Date: Mon, 29 Sep 2025 17:24:46 +0300
Message-ID: <20250929142455.24883-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for panels found in various Tegra30 and Tegra114 devices,
including panels in Tegra Note 7, Surface RT, Surface 2 and Ideapad
Yoga 11 T30.

Anton Bambura (1):
  gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver

Svyatoslav Ryhel (7):
  dt-bindings: display: panel: properly document LG LD070WX3 panel
  gpu/drm: panel: add support for LG LD070WX3-SL01 MIPI DSI panel
  ARM: tn7: adjust panel node
  dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
  gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel
    support
  dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI
    panel
  gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry

 .../bindings/display/panel/lg,ld070wx3.yaml   |  60 ++++++
 .../display/panel/panel-simple-dsi.yaml       |   4 +-
 .../bindings/display/panel/panel-simple.yaml  |   2 +
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts     |  13 +-
 drivers/gpu/drm/panel/Kconfig                 |  26 +++
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-edp.c             |   1 +
 drivers/gpu/drm/panel/panel-lg-ld070wx3.c     | 182 ++++++++++++++++++
 .../gpu/drm/panel/panel-samsung-ltl106hl02.c  | 179 +++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  65 ++++---
 10 files changed, 495 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lg-ld070wx3.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c

-- 
2.48.1


