Return-Path: <devicetree+bounces-97577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3768962B16
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 17:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00F32861E2
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 15:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3E71A2C24;
	Wed, 28 Aug 2024 15:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7Yb+6mJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69D019EEB4
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 15:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724857471; cv=none; b=T4NSUvd97F2ZnSA3FV4oHDe7uaNHRzfz75ftmWC4fg1FF8iSbPws8OPTNsU04LaFumHtoJw4d+w0mJDJTgGQnKULUEZIWrqCRkAsvpcO2Giu7LmDtbmhhfCFp1s5mzdhn3V0Yh0x0XvO1J8qOXgqHrI/5D9hSdDMEk50jGXmPKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724857471; c=relaxed/simple;
	bh=k90FJiYtmg/K/XsmEGN56aQzqI5ne2AB4Kxge98c3Tc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cRcfbFaQn4k9J3IFOd2tQMYZuhR9VYFo4Jxxl/iNvG6aX6VCIgD3gFw5iGvfKOT/5gfH9qyB50568rWNGqB3vtl93TwZVv2OYSXZ3RSV7gcaX4DNx8V62CZ1SHkDmBAQhynqgemTdRP+rA9rapl4Gorsg090K0gUs643dkdgGRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T7Yb+6mJ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42817f1eb1fso60279405e9.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 08:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724857465; x=1725462265; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UGXjhFkocI+i08oV1NJCziTFyjsWoKBmQLNW2boCzlM=;
        b=T7Yb+6mJc4pn6yeQFR2G0mFDY4q3e6cJbRrha+Is/AGtME+Yb7FwPffUiKcu/jRct6
         mOkvfXuSXJypwdreMH4CF3xceTJVz5sFnIq8VnD63c/sUNaWwCMiOp5hwWXkeIrlMS6U
         P3lQBmwOmBVFkQzY1zmbxGcf9RGf2tMrZqcKeLw83JJj1UTUyiRbRpwyna/PfsZdClbF
         BFc6GDPo9dP+WZiMruD0t7PLhA2JRMASFVvRyZKBHrsdGALr2rR+VvYDrU8SSXExGIC2
         nUkIb0pZAtxYoZ4AbR7ZLA2G8H1uMBBkLKsmTf7+bJmaLDnPCeude03K91Y8zy4oczQO
         QZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724857465; x=1725462265;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UGXjhFkocI+i08oV1NJCziTFyjsWoKBmQLNW2boCzlM=;
        b=YAHqQ8du7UxgSjzyiKotuWTB0Yxa7a4R7OYZulARym1pfrn1uMpjgQCC0K9oxyoD/9
         +E744d+JN3o4x4bdv7umLmKptN962nsn7s0MQIaw2pkGFXjIOr88AzA6bUJv4KAY0BvQ
         JCVf2DrMBnnXiEo42thWmkERR2lTnm27SVAHdWnhGz5K/IDyznf8hZoLNhe4rY5sBnzf
         pHmfv1sbS0F2vpE649nDnwqpqoqx6RLBIVZGCOS9an5LR5gakE66w+XrJxjy2Y8Olf6E
         uX4iScvaCoXgQv7HX4s2foOF26oO7uPrfWoSc+meo/NWSippDZlxDZwIxiHsOR6Xr8iR
         0qdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfbRTsfg/h+/kp7GsS5b+E8t1zI4nwSVe6khFkxjp6udND7WbMIeaPy06Z/tqxLnfQ8dBRi9XAPx8/@vger.kernel.org
X-Gm-Message-State: AOJu0YyftuEY0CxgS30od5IyG2ELt4Q7lgTjw/ZDKxhJU8ZOTKH1sjjI
	FEc2eVoLCK6H3KhKYiyLiLe7TegQNmybjcUH1uo0XzcWuBi2LoeiNr3DLmrEiEI=
X-Google-Smtp-Source: AGHT+IEvY10F1sZtPNF2MFzI/j5iEbNVcW6c+5O3H8h8FcEaTMnSUvyk6KIx7czphb4GnqAi796tcQ==
X-Received: by 2002:a05:600c:1d17:b0:426:64a2:5375 with SMTP id 5b1f17b1804b1-42acc8d5247mr122882035e9.1.1724857464501;
        Wed, 28 Aug 2024 08:04:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba63acd66sm24079315e9.23.2024.08.28.08.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 08:04:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/2] drm/panel: add support for the BOE TV101WUM-LL2 DSI
 Display Panel
Date: Wed, 28 Aug 2024 17:04:18 +0200
Message-Id: <20240828-topic-sdm450-upstream-tbx605f-panel-v3-0-b792f93e1d6b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHM8z2YC/5XNSw6CMBSF4a2Qjr3m0gcPR+7DOCi0hSZImxYJh
 rB3CxPjTIf/GXxnJVEHqyO5ZCsJerbRujEFO2Wk7eXYabAqNaFIOZZYw+S8bSGqBxcITx+noOU
 DpmYpUBjwctQDmJwpIUyjOOckST5oY5fj5XZP3ds4ufA6Tud8X//z5xwQpOElY3VZMaGugx1lc
 GcXOrIfzPSDVrT6DaUJRYmsVlhwnbMvdNu2NxGdgycsAQAA
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Doug Anderson <dianders@chromium.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1531;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=k90FJiYtmg/K/XsmEGN56aQzqI5ne2AB4Kxge98c3Tc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmzzx12kbEcQt53kUvBa/axB+YrYmKf6QAEDSz71S6
 N8qrzISJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZs88dQAKCRB33NvayMhJ0UqtD/
 9DG3EG0GP+IOqYocy50ljwQpd+mT48OeDUFV5TCYjHvyILAwgH5aQ5jrqjEl9Fiq0NpaBd3psirbTC
 JbQIQl7MMB2CkvwUXAafkSGM+BKlnxuGCNnTOSCYpIotbmlfQQiuFqrJQTKHZpKbsKWFXquwIZnEXq
 p6JwBy+e6nUba4jO+bA9o+uEvvy1zjZTN4mrboAmhbt7ebGEOANHbg563GNreKE+OaPkQUpaD1urLe
 a1ObNd6wpFMu9KQBOO9ag98nGQnk9CuU47293iU55bt6piUMOhTXN6rcUTF8RUElfYxS4RiJKXNPoV
 2XUy4WPwzMb2pB7Rg/rkGwYGu4XX9WjPcKLrrYHZUz/CndQ6chK9Tv1cQzupATezE62mtnv6LaCYiJ
 nHXvT0GoVnUYN5TO05E6M8OcsPf5bJKM86tl5/MI+Erp1A3ksY5d8kIHJn2tmzAB1la7qq3yJXMS+8
 IrTneMAugBpy0nILH94NZJfWHhOMq13ftc7WZTCSKnW0x48VJTvEKyXK/BDydq1G5+wOh4lQ0Fx2NE
 QQs2bfVUQMqwko0FjOudT2wsKHfTXaMsGpVyoJlg/jmVGErLFHzpXdKyFOQNnn8fBonnLv6wDeCOSa
 lTH1xPKmuAUM8W96spgFEm4XgAH6IWxaqpWflGXfejytQnzrvAtA6dVssTQQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document and add support for the 1200x1920 BOE TV101WUM-LL2 DSI
Display Panel found in the Lenovo Smart Tab M10 tablet.
The controller powering the panel is unknown.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- switch boe_tv101wum_ll2_off() to void
- add Doug's reviewed-by
- Link to v2: https://lore.kernel.org/r/20240828-topic-sdm450-upstream-tbx605f-panel-v2-0-0a039d064e13@linaro.org

Changes in v2:
- Collected bindings review tag
- Driver changes:
  - reorder makefile
  - reorder includes
  - switch to devm_regulator_bulk_get_const()
  - remove useless dev_err()
  - add comments why we ignore boe_tv101wum_ll2_off() return
  - add comment why we don't set bpc
  - fix MODULE_DESCRIPTION
- Link to v1: https://lore.kernel.org/r/20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org

---
Neil Armstrong (2):
      dt-bindings: display: panel: document BOE TV101WUM-LL2 DSI Display Panel
      drm/panel: add BOE tv101wum-ll2 panel driver

 .../bindings/display/panel/boe,tv101wum-ll2.yaml   |  63 ++++++
 drivers/gpu/drm/panel/Kconfig                      |   9 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c     | 241 +++++++++++++++++++++
 4 files changed, 314 insertions(+)
---
base-commit: ef14a2e943460970c95f7936fb3c26fcb223f76d
change-id: 20240709-topic-sdm450-upstream-tbx605f-panel-f13d55fbd444

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


