Return-Path: <devicetree+bounces-225848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F456BD188F
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:56:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C50B3B2665
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D93B2DEA8E;
	Mon, 13 Oct 2025 05:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H6MQksTg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A314F2DD5E2
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334976; cv=none; b=IhTFVA8X0GmeFDDJdx5cRE2XMWoqHXliKRK8+BAV6IKJ4mfFg05tW8R34Pm+xnKotX36rGMlLvvpvVeEVkg3EYg2ieHzDfscIyGB12IatpW4edBX561vxVIc8weMXK2qdSsra/gOt/cqp2EFLXPQ9hkFSmWSoU58clmZUvAn6Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334976; c=relaxed/simple;
	bh=AAy4P8dvMHeneV0IgwHSPlPKzVlb7cPq1pIPErAgdos=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JxIYtWIMXljRi5NfjDkVaHWDcx2J40y44g2gDknH5sqdGqACyqaGcQ19m1fff9vt0Ivp1jgAHNUZGIbh+iTrwSs/6owU+jQBFA9bkt2MYvnUA8o4R7uSZdG3jZ9SHgtYSdtOOunB91QZUBNDnkY/uSj9jhSMXoNAg0uhszx5yKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H6MQksTg; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b4f323cf89bso669310966b.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760334973; x=1760939773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZ9/LjENMEgkqGr3qDNK6DAWAvXersuPBKAH6ygTJP0=;
        b=H6MQksTgLYoYoyDZ7H5vM/njmNIzqe+6uIfT9WFQL/pI0kWfzOi3+YoYm6E/IkhW2N
         MDqcdOKZTkG4Co+ALOv2g83Fg3SyywNXcGsTubuC7LA8lkcdQlhB92cxpDnJIc98g9rU
         faR7HbHDZvYmrs0JGeCtctxMyRAKJ17JQxxSEGtGIuNIFtYRoXGy4m75w+zakycaVlGF
         49lT3Ztb6nZtc33UeKwjEEIkni9ly4wR+BvI+Y4/oy8E8J74OEZQ/jp5NJMZb7rg/UyB
         6jkbmyaCgXb7AXGYNvfViWxk3zUt57omBh6mGVOLX1Lpqd08t88IM5zi8xvLmxGlGnAW
         LOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334973; x=1760939773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZ9/LjENMEgkqGr3qDNK6DAWAvXersuPBKAH6ygTJP0=;
        b=WWT7j9RGhGv83ZpdZmOlOWNkJSmm3m/nk0pQySJtUd7h8bXNoKjeL3S9VWx80CNx5K
         q2+Y3MSM1P6PO33VOKLz12nTgqfcgz7G/gK+wHbLCPVtmWFqJsUy0anRYNgQoTiXZJsO
         gZ63CC3oUjDtmy0m2H1EnOJFJMxB7rKbMaF7IXJpSb55W1LkkCii0yRn7Y/SiNBAdQO6
         Ex+ES9SU1bvAgZ5mbrW/OjvCjZcFP3KgHyLMKUd8AY0fw20jmyD5kmpdLOqvgUZE2SQj
         kGofLx4S+iaNmnwgqTzGhRBQ2fMNg/VPcAGIMm3byAhXFkNR3EWOJdSH9jJafwGxXkmr
         nsYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpN++JrYfE8DczoOVBe7K5BO4eAh1gMUIDVAxSfX5EzNgIADkPB7sqHF3HL3naFM+/peAESPyA1Ehy@vger.kernel.org
X-Gm-Message-State: AOJu0YzSJ1s26TxuqwdOxF/XonG2dCkBZNtLxfSwI0TFeeHB9Z+y68LS
	ajkiAcuDPY7YVS31jVvODIg/8D7TNP2013Zh/lqLsXzDso7HeRbBv1m5
X-Gm-Gg: ASbGncsuphmwYZpfV1lMmMp58UoZYBrdKy6W1fLYiIbiv42Wu+Wc0Xy87a4RufhRZdY
	vOngA6jC+FPa0BRD0LZpAPqWp8LeQ9MQXtJInwnZMrBmMjaAg5oagsQp6+rdatILgSOMsNt8FzG
	vvoxBDV1XCD8kypZGn4Kt9Aj/feDrWvZz3h3qrF3AYSjVR6zxarq0kUWJDLHnFua6JoUNcDw6G6
	X70LfF+dpOYRqGq+TwoKrJ39OlMbK3m41DeTf1ZoVwDeK8K1mhn6BUuYQqJx1udbeJOvnFYJcKc
	gTCq347JfZ/gbi5zAIH/dTPedIDncpV3DpfW03X728s6DW0WWCSGy0pWXhVvhQganaOFQsQuK92
	D313Ty6YbhhMcsRZxJaHOR2jLQ09jcNVN
X-Google-Smtp-Source: AGHT+IEoPPn3y805fRrMXlesV3g+CUW+Q9IgTH2jMMITzvjih1OKeTWGE2CbYjx7Ff9blH+VqEhVUQ==
X-Received: by 2002:a17:907:db15:b0:b3d:b251:cded with SMTP id a640c23a62f3a-b50aa393ba1mr2306986866b.16.1760334972693;
        Sun, 12 Oct 2025 22:56:12 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d63c9a3csm860912566b.23.2025.10.12.22.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:56:12 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v3 0/7] Add support for panels found in various Tegra devices
Date: Mon, 13 Oct 2025 08:55:35 +0300
Message-ID: <20251013055543.43185-1-clamor95@gmail.com>
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

---
Changes in v2:
- dropped gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry (picked into drm-misc-next)
- expanded commit descriptions
- return accum_err on prepare
- switched to devm_regulator_bulk_get_const

Changes in v3:
- lg,ld070wx3.yaml > lg,ld070wx3-sl01.yaml
---

Anton Bambura (1):
  gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver

Svyatoslav Ryhel (6):
  dt-bindings: display: panel: properly document LG LD070WX3 panel
  gpu/drm: panel: add support for LG LD070WX3-SL01 MIPI DSI panel
  ARM: tn7: adjust panel node
  dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
  gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel
    support
  dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI
    panel

 .../display/panel/lg,ld070wx3-sl01.yaml       |  60 ++++++
 .../display/panel/panel-simple-dsi.yaml       |   4 +-
 .../bindings/display/panel/panel-simple.yaml  |   2 +
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts     |  13 +-
 drivers/gpu/drm/panel/Kconfig                 |  26 +++
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-lg-ld070wx3.c     | 184 ++++++++++++++++++
 .../gpu/drm/panel/panel-samsung-ltl106hl02.c  | 179 +++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  65 ++++---
 9 files changed, 496 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lg-ld070wx3.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c

-- 
2.48.1


