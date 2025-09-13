Return-Path: <devicetree+bounces-216684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6A6B55A9E
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 02:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF7B01898441
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 00:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672111C69D;
	Sat, 13 Sep 2025 00:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QxlWNxTp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BBA1A285
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 00:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757722921; cv=none; b=Nns3tgRIOO76sbu4AWQKuX+oPo90LyLvpBlfXBNUghbQGX/XjQ5ed9M+/KfcVivl49wkZlQzrWiGw3CBbHhg6g3kWCsyQR6iWbS6K4PP8EKETCTrq/UOMZIdflfywABt5OuAsh2ITTr0E0MvQQ2N/U2wjgcIrBbNbEgm/PFGLmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757722921; c=relaxed/simple;
	bh=k5zZArz6vslI4kO3FnfOETnAx6hadCaKl5BReigvXQ8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=Ut/EYJKkCiJWV84n5ZzB1IYA263xkN3sjJa9LQHFmllcVTfCs9E54Ctp1cbBeWhs1JBAlQ+EYZ6UVBzpKSoV+TlidqdEq2rtCAj1GrqhW1m48xWEmCkYdswkaXezRoYDEmI0qGDWrN2PglqKXFvzhK+dsl/TGw8uxGx6huZ4fA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QxlWNxTp; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-24b28de798cso17656925ad.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 17:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757722919; x=1758327719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=cosKX5Xl7idwLQvWuO8wp7/WEaUIA3E5mnZgoJsColg=;
        b=QxlWNxTpwwVCPnA5CaL9N8JnbM3DGLid83e4J68JfEHzaDIIW0+IavhlM04+V0GhmK
         L2lrvIwXzK3uF8RBKWRhKZzD9/rk6X+P9amCafx4d9Gbyr5vzGXfVHJeXmbG8AprIuXl
         hKIXrTHcta2ZsdgOldpVcf0R7syMZgngmS7t8FvbBv3Bai0d9taseu8zLMfPmVr5xn8m
         +d9VRjjBYC9YvBl1YsnY4aMR98qYTnV262T9tesJall7kinqK9/CvqVrXMeubEDTwrss
         Smn3ecawhADJiwzf0qif8LV8iXwHAqvLxYDdxZ2E2cm64I1HWaA40xc6IkfU8ZcsDzaq
         SJgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757722919; x=1758327719;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cosKX5Xl7idwLQvWuO8wp7/WEaUIA3E5mnZgoJsColg=;
        b=CLD6KPXbhHzZnws57FpR1Rw2t19DTpMco4HwmMfk9noKHgt+ED1C/2jKkS9omJhgBy
         oIyN9JqvkBunsK7yIUE7WXQluJig2NPvLb0qgFe8bqwcHA5/FTDLTOCCK6XmU0g7W/LY
         0TUjDerMnBsGwFXrpWP6ehHHdEwPyHF3e+fdLTBvNiHFjG6yEzWD+qznX8KpQhPIFCk8
         +W9wXVc6sdq9POGsjHcTYrhMgPGUdvz5CNztCNsNwjMnYJwAMjPRkZOmurmfdDnl0sd/
         P4gNkvVU+lvENYxNMDE0aIDJkUxFsBKxDw96CoPfi7wcenZ21HiWmqpTZIE9eD3f4gUj
         qCMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhHdWyQBErTQf+P1upBG2Pu3CMdTL6+c3MAkGMF2G5de7cSFi9znLps0FKf+WRv8xJJ4G1I8QSkBSi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy0TnwDEmO9G+Pfn3eY6VohAbcUz12+mx2sH/RgmYoPpi20gA0
	hzHFtJfAEcx+m9WgucbOD74nq6M87QKd8h6pnN5ndZMw9bgCpYHHyH7v
X-Gm-Gg: ASbGncuMplQ8yCUsPgXRQV3KJx8vE1cKW+ZlLd7o1UG2+aasldemXa1VipnSqouf/ZH
	Sjsr4iN55qB1ZTKhngfKhLQbg1OQebdIYawAQn9jJgr5MMYi1oUDBDBW2JkVT3zJKW9rostzH5j
	eo9Tr8G3/a21dlKS/lRjkPcYCAzVwOwWQgVeg24FCI9mpSyrjCk3c9pGhSJsAQZOfPnL4BhmjSv
	gwifnFQtB2EJgNd0ufOlxhoIzRnto+ZIA0asnWuDlRO6YAdKs9r1Y3sXgxSVNvzGot+V7FmY6pN
	ZiXY/27ErlInvGf0snSxRkRktG8Ac7gcunmwFfQ0806ACd1MjlhyPRddCmNkdUqMZMPnqe6ZwB1
	hLZKe1nhSTHCEvzNmqr5FhP0eA5ZSI2i6Wa3m5UG9h2wRFTOK6DLpyLvKh+QxUnei7IoaVRqGIY
	jS48511PKuaQ==
X-Google-Smtp-Source: AGHT+IFohPP4U81t22Ynet3qFVaqgBlL6dIfvElA14+ZZZffQX0/DiVAU8HTvR3Y0I/KjtcyFh/Pdg==
X-Received: by 2002:a17:902:f54f:b0:249:308:353 with SMTP id d9443c01a7336-25d26d4ca85mr45666985ad.41.1757722919083;
        Fri, 12 Sep 2025 17:21:59 -0700 (PDT)
Received: from localhost (185.3.125.34.bc.googleusercontent.com. [34.125.3.185])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-32e0c2863e6sm406490a91.28.2025.09.12.17.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 17:21:58 -0700 (PDT)
From: Chia-I Wu <olvaffe@gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/2] drm/panthor: initial mt8196 support
Date: Fri, 12 Sep 2025 17:21:53 -0700
Message-ID: <20250913002155.1163908-1-olvaffe@gmail.com>
X-Mailer: git-send-email 2.51.0.384.g4c02a37b29-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MediaTek MT8196 has Mali-G925-Immortalis, for which panthor gained
support recently. But the soc also requires custom ASN hash to be
enabled. This series introduces panthor_soc_data for per-soc data and
uses it to enable custom ASN hash on MT8196.

The clk/regulator provider on MT8196 is GPUEB, whose driver[1] needs to
be cleaned up and upstreamed separately.

This initial support also lacks support for some hw configs. On some
configs, panthor is expected to query a mask from efuse to mask out
unavailable shader cores from ptdev->gpu_info.shader_present. This
requires extending panthor_soc_data with a callback to read the mask.

This is an RFC because the dependent drivers are not ready yet. But I
would like to gather opinions on having panthor_soc_data for
soc-specific data and having CONFIG_DRM_PANTHOR_SOC_MT8196 for
soc-specific code.

[1] https://gitlab.freedesktop.org/olv/kernel/-/commit/170d5fc90f817dc90bde54b32872c59cf5c77779

---
v2:

- drop RFC as this series works with the downstream GPUEB driver, and
  should work with Nicolas's GPUEB driver posted to
  https://lore.kernel.org/lkml/20250912-mt8196-gpufreq-v2-0-779a8a3729d9@collabora.com/
  with no change.
- remove CONFIG_DRM_PANTHOR_SOC_MT8196 and panthor_soc*.[ch], as this
  initial support is just about ASN hash.

Chia-I Wu (2):
  dt-bindings: gpu: mali-valhall-csf: add MediaTek MT8196 compatible
  drm/panthor: add custom ASN_HASH support for mt8196

 .../bindings/gpu/arm,mali-valhall-csf.yaml    |  1 +
 drivers/gpu/drm/panthor/panthor_device.c      |  2 ++
 drivers/gpu/drm/panthor/panthor_device.h      | 14 +++++++++++
 drivers/gpu/drm/panthor/panthor_drv.c         |  6 +++++
 drivers/gpu/drm/panthor/panthor_gpu.c         | 25 ++++++++++++++++++-
 drivers/gpu/drm/panthor/panthor_regs.h        |  4 +++
 6 files changed, 51 insertions(+), 1 deletion(-)

-- 
2.51.0.384.g4c02a37b29-goog


