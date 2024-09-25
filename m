Return-Path: <devicetree+bounces-105205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3B6985678
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:38:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 404511C22625
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 09:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED6515CD4A;
	Wed, 25 Sep 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JhqYBcDh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8663215C136
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 09:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727257095; cv=none; b=B8RXCG1bSWXsGWEKB+wO56LKnYyQviJ+ZYg+a+vWoc8NQoSqvJauDAiZzTNu0AA9Pn45a9rbdSs4uESmWjFWTKA6RiG9Mq6pIKrBK93jIAs0NcJfEqIlL0x/ujzQN7Kcos9ypf0f/wqgzAuOvWonQ+nQF2IGYDZNmgy/LlHk0nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727257095; c=relaxed/simple;
	bh=SqbS5v3cny9juRMvQbBkarVDrSyWUwFhEZbxrpDyRko=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nIa3ByxL60nE5cDkmu1iDfqelhzn9b/AqkGfHfm/x1WsDq+9BIJEdSjler2mZRgMoaA0RBboxT867HngkPqiwg0JnF7D27sG3YIRG2Lzy7GO2ymFlrLWdXJ62wwtBphDLV6eea0qs/It6gu6+9iLiCt+Pfvyr+4NkV8pXYi8qX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JhqYBcDh; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7179069d029so4702728b3a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 02:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727257094; x=1727861894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hg1NYIg/4Cp0y5bNhAKciX8PEp+xLYeFC0blmyCsPuE=;
        b=JhqYBcDheyoHfYJeSqWM7PT/Uf0X8eTgN8YzUWdxLiYsNKOgDWrX6AkV4jo+tyYjXn
         0i6wyXf3TFA+esV3Dwsf5EAjfMTnEX7X1jW1EydNBVCf3vLrq0bd1tSpAjE7YEO5KwpL
         R0Z3Hs1mYEU+KABIDuIBdPSMVqdh5E3035Cd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727257094; x=1727861894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hg1NYIg/4Cp0y5bNhAKciX8PEp+xLYeFC0blmyCsPuE=;
        b=rOVRnS6TwbSKv1GfCc3fss3IDZCg7ZijKJUmWL54zy3BrEKoe4ei6iL8Voq0wtoSMV
         bCEROvWNCWZzVkLJMIN/fbqhN4RorVvDY/VVlXtizPuQqGQAbSJLFTBS947oZnERIP5M
         k13+KzVxucJG17zm9iabeA28MLmZ3t9qj9/v2b4kgKqZiakCmB7T28lX6s1iHMtksp/S
         xac6PHyIDQwXP99b5dR+xt94M4lW94QgrkpbmCFpQ9jrGis4NYVP1sdaCSqbH/ddtxf1
         zave6J9B/mnAhGO7m1qwQxzgS5KHq4/hjIq3DBSsNEAvQtluYiHU51fHLBuqlS83fN0I
         2QIA==
X-Forwarded-Encrypted: i=1; AJvYcCWOFBjzxP6s8yHWsmai2hDyQMmUczKfWtcrez054e6fFFZlTjVBB+AXOy0xFk5tGVeGsyFPmz1z5vQ4@vger.kernel.org
X-Gm-Message-State: AOJu0YxL4Sd317tloxKbGaCqN5yonUvBsZ1L5jMtHoUIwuaR48lGG9h2
	djDfVZ3Ect6YRVtIGxgK6GO6A2tX/ECeT9jUieEMtiGqdUI3DigfMKBvZYDvSw==
X-Google-Smtp-Source: AGHT+IGy6BLTQ2yk8nK1BnDwn8ihRKFUDhdNkl6yPPDueqyuBMklhO/bVczNjLCMAQ+n1ABozov4dA==
X-Received: by 2002:a05:6a00:3e1b:b0:70d:2583:7227 with SMTP id d2e1a72fcca58-71b0aaa263amr3187086b3a.6.1727257093845;
        Wed, 25 Sep 2024 02:38:13 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2480:2c96:2b64:cdcb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71afc8347fesm2432789b3a.35.2024.09.25.02.38.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 02:38:13 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Pablo Sun <pablo.sun@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v8 0/3] Add of_regulator_get_optional() and Fix MTK Power Domain Driver
Date: Wed, 25 Sep 2024 17:38:03 +0800
Message-ID: <20240925093807.1026949-1-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi folks,

This series is split off from my "DT hardware prober" series [1].

Changes since v7:
- Added stub versions for of_regulator_get_optional() for !CONFIG_OF
  and !CONFIG_REGULATOR
- Added new patches for devres version and converting MTK pmdomain
  driver

At ELCE, Sebastian told me about his recent work on adding regulator
supply support to the Rockchip power domain driver [2], how the MediaTek
driver has been using the existing devm_regulator_get() API and
reassigning different device nodes to the device doing the lookup, and
how the new of_regulator_get_optional() is the proper fit for this.

Patch 1 adds a new of_regulator_get_optional() function to look up
regulator supplies using device tree nodes.

Patch 2 adds a devres version of the aforementioned function at
Sebastian's request for the two power domain drivers.

Patch 3 converts the MediaTek power domain driver to use function.


Each of the latter two patches depend on the previous one at build time.
Mark, would it be possible for you to put the two regulator patches
on an immutable branch / tag? Otherwise we could have Ulf ack the
pmdomain patch and merge it through your tree. Sebastian was fine
with converting the rockchip pmdomain some time later.

Thanks
ChenYu


[1] https://lore.kernel.org/all/20240911072751.365361-1-wenst@chromium.org/
[2] https://lore.kernel.org/all/20240919091834.83572-1-sebastian.reichel@collabora.com/

Chen-Yu Tsai (3):
  regulator: Add of_regulator_get_optional() for pure DT regulator
    lookup
  regulator: Add devres version of of_regulator_get_optional()
  pmdomain: mediatek: Use OF-specific regulator API to get power domain
    supply

 drivers/pmdomain/mediatek/mtk-pm-domains.c | 12 +----
 drivers/regulator/core.c                   |  4 +-
 drivers/regulator/devres.c                 | 39 +++++++++++++++++
 drivers/regulator/internal.h               | 18 +++++---
 drivers/regulator/of_regulator.c           | 51 +++++++++++++++++++---
 include/linux/regulator/consumer.h         | 37 ++++++++++++++++
 6 files changed, 136 insertions(+), 25 deletions(-)


base-commit: 2b7275670032a98cba266bd1b8905f755b3e650f
-- 
2.46.0.792.g87dc391469-goog


