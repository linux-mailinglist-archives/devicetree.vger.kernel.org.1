Return-Path: <devicetree+bounces-137460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C1AA09156
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEC9118868AC
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B364520E004;
	Fri, 10 Jan 2025 13:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="1eKCEyXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A361BDA91
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736514039; cv=none; b=LwnziOh6tZZTUjJIAqc4sHSU90ZHf5HKYlXVie6M6Ijjohm4eUG1/cX/0ISlDt1vqYJcyQ+t9zrBCK8kw4+bXLe8wjBuOWXWEGAV8HGnYGUvq43Mb1elkdymtp8KPEtK4pi5aCX1oDxGPS2gU91vh093WsnWxjO7rr6LZcS3T0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736514039; c=relaxed/simple;
	bh=6Xd6m6Qf56pAA0+r0Q/cgq86ljFZzMNIsMNJ9dxTWeg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bVTLMTeiOJO6umb+iTLgIIxJ+5gP2rVs/vRXCiibKV0uBwKVKJ9BRwA7NJEUsd2akuhIu14QM74x4rrMxDdhDdhB0HpIBgUHXU0dd/i+h6kF+8e6qbAnR99lif+RMIrgycrUPG2kvAW9mDkWB9TCBWx/rSRpHdxBNRUg8kUipBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=1eKCEyXC; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43624b2d453so21512315e9.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736514035; x=1737118835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eGbNecL+K9WiUO3ggBl6xJgcZQagKJNakaKpat4Nv20=;
        b=1eKCEyXC8TYuH1ymu/AQZGx7z3pnfuw2qw+UHfOiKh/mBOuJqkwS71H178hV9+FMaM
         oPxAU9ON40xm3OxGBDm+v9ShUKQCapTsh1Z5X1brx7EbC7rQ9MzmBT30ZVvpwaZBDidC
         skRiniUEOWMwL1hF3NJbS4i5IuMyoi5YVLURXQPtyPandtYnV24WpKQX1+FxcQWcGvP5
         ynZyo+wXK6JuopLuqBQyjQ3klYzDlkahxqyTuBPZZgcG+5+hSafmooonXerXU+bF9AFL
         ahSkAxTmP1UKnbeqPVSlSmyxtBCwboluxySzPmF8FTLVThcX3aUroIHcGKtrCIRuS8W5
         1YFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736514035; x=1737118835;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eGbNecL+K9WiUO3ggBl6xJgcZQagKJNakaKpat4Nv20=;
        b=shv4PqunnVaitAq1d1qJyxufeVg+p4TYdeu8dnxgWZFape1v7aqFXeS5Q9oyNyMUHS
         2wyRczApzfvytlxLAJc7/ptL1zfqq54FSiTcdSzz/yLtYKg+0mpxaokWF5ETSrNQYn6T
         DrPP5W89OuyzzvwfnZHbKuSbMMZnlyXVyzhTBoaC+hdYsyCHQynz8x3D3lJhVyxWbdDo
         bLkUXuikt8BWp37/QAdcLHlxeDWPGYe7WTXsRjk3va2pdYDI0IAPfiV5lLC/bgA5iqH6
         G6xtao7+ozL2P0lHB7fXBSWRUyTK1qEo+HEZ20V8vC94WO6Ie9PbxihbS31qplQjzbhI
         KAxg==
X-Forwarded-Encrypted: i=1; AJvYcCXoVH4uq3SQdGnx0Y/xTG65REQMdSNZ2J7bSYsNbzSHuEpFP2ru1c+lueEfBECfkLbCRF1Rvy0Bu9vv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+s9T9T0+ljaTH+9cum6/YoNkiqwe4t1gsmcz6F9Y6vLDBRAaM
	IXPsPLkdgnyIRLxH7JvQIcLMabb65xjjxmOeLep360Zy+I3RFF/YhI7GQXu3I8Q=
X-Gm-Gg: ASbGncssQkFRiTsE8AshjaQ2Xa598+pG+LXzVLbD0KLJkQUHvm4cYgvm1c5MEPMjq6/
	MsBm777E5O2O0Oa+wUVL1/vdm+flsAlvvk+a5iemmy/0A5plQvA0uEzVVtUxjBY7h6U4/GN6hcX
	h5GGcvGCoBn/tGlOonWDbGVgalaYzt38Na3BAA6WXixbHId2NJbsM7mdzv3Vk8pdXf4iIhrwtuq
	YF97Id/eeKX/TXund4kivcsBCM88dqFxAvpBglXVNNmkc3PsSjgEM4=
X-Google-Smtp-Source: AGHT+IErf/j35AOiqc0OKlKOsILU9Y+ZiwnfYZ14qASoSj6/d+9GEQHuJ8eFf/7JBQ7iQNhmyBvRUA==
X-Received: by 2002:a05:600c:1987:b0:434:fddf:5c0c with SMTP id 5b1f17b1804b1-436e2679e05mr101882715e9.4.1736514034398;
        Fri, 10 Jan 2025 05:00:34 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:5581:e96f:97e:b3a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9e37c2esm51360745e9.28.2025.01.10.05.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:00:33 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	=?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
	=?UTF-8?q?Cs=C3=B3k=C3=A1s=20Bence?= <csokas.bence@prolan.hu>,
	"Geert Uytterhoeven via gmail . com" <geert@linux-m68k.org>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 0/2] gpio: 74x164: use a compatible fallback and don't extend the driver
Date: Fri, 10 Jan 2025 14:00:23 +0100
Message-ID: <20250110130025.55004-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

There were other suggested solutions (for instance: just use the
existing compatible for the On Semi variant) but I figured the most
common approach is to use a fallback value for 100% compatible models
and this is what Rob suggested as well.

This reverts the driver change and makes the "onnn,74hc595a" compatible
use "fairchild,74hc595" as fallback.

Bartosz Golaszewski (2):
  Revert "gpio: 74x164: Add On Semi MC74HC595A compat"
  dt-bindings: gpio: fairchild,74hc595: use a fallback for Semi
    MC74HC595A

 .../devicetree/bindings/gpio/fairchild,74hc595.yaml    | 10 ++++++----
 drivers/gpio/gpio-74x164.c                             |  2 --
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.45.2


