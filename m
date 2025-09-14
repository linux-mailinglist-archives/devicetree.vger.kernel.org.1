Return-Path: <devicetree+bounces-216915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD59B56870
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 485B7189DBDD
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62FE7258CE8;
	Sun, 14 Sep 2025 12:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="akXhhK9u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE981DF99C
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757852482; cv=none; b=VS/G74y2iycddc2pH9xQG/Er3/tjW2K9vMgAzne+UhUAd/EjCSw2wWCh6y6GIQYyZUanTnVDhZR83KEXulTKKzMI3njzLXenGpe9khpE3wB2GyHGscQ54vb3u2utHYnuR9j2jXDaI+iK9TjYbgrv30Say4C7UDeh/86u6LupPXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757852482; c=relaxed/simple;
	bh=bDv9gzB2l+sWC8tMgu06CrB9Mc3zq0b/cIxffjhmvHU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LTB2QsX8SSQGDAMyZg6cBPx9kJ02uPDlBSYxmQY5ndL4tcU+YFyOnSBNs6bhVHkhp8OahDRPH0gyfOve88swTBwxYmL+P1t3rtvZLDSXNDbZadfEro7sWB497gzqppbOquBQUbFlxk9B8nWI5ilLXO3UegcJ6uFffnzpBIHgc08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=akXhhK9u; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45dd505a1dfso27098755e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757852479; x=1758457279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9hU2kDwn8IFHpbOTDX+dG8pysyvJ8KjOOASnN49MHHM=;
        b=akXhhK9uFBFghQrX/Jpwvf9a6/Zx4zFHCExG9TYCQ5dlGZEYbTsYjF5TxOV5iehvnq
         T1ahkXm8POKKZZLvNR/myfUQN2Pjp5JqtydUJrPhUowdxLPA27RTCJoNgu/Q/R/wsfNM
         ezMOpewOcDvj16mhFIJER4iBjcLDAnPGfxxPT9e7IUCon+SUbpX2y86MOYAtbcXrehj3
         jXbVKzfoDHSf+3Nj+GUdCVcTl2OUfCkJyTOKL+sZ01KFMdW5bMPLZJYEiQxSseeUQIfk
         BkOzsbCPOGlcUXJCJ4NX+ANMDcsF3BEY0TYKKhJI/d1KQy7Jh9a6V6vhs6XpYbm+SEWd
         G8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757852479; x=1758457279;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9hU2kDwn8IFHpbOTDX+dG8pysyvJ8KjOOASnN49MHHM=;
        b=ucuXf88kSmsMWoUZWgMEKYGefRH2xwqqfJgwtWwDzQPzmmCM1R94KaRo371fZyNGOZ
         sHVpnVRlfk6QC29XR2oXX0tIJsR0b7oDDbUhQiH0SOxp1Ylk96gH+1Ba1s+k0SIlj0HO
         uHlGQB78Sdf69vo/7h9XWL7Xs1/uYSRfSBU7j0IDbIdD0yHFxvzlDRtSP9lDxht3/slr
         4a+vRmNM8D2IyJjTriqNxh/Umz5Be7uqGwa3Np49i69hlOe1SJlfl+3OzjDwrGifqfB5
         XCQTh4ZGFgqjsVl166NbuB6vw9AxzgOBi3fWOt3GVBdl7QKz4W2DYvhBgcjTGaM2nL1Y
         gidA==
X-Forwarded-Encrypted: i=1; AJvYcCUcUABrzn7b3A7zN0c7oIxAmXbdeLlvnE8PVMVW5c7wnG6f9hgLOjyjttxm4GoUGSBSB0cLnp5v8Yu4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/xy99/zvxfZQXYUFeUe3mCS6cEZKK4UVpHGstzchpTrRaXSv4
	/gnN2JM+OXPzoFcU/bJWMg5Hki5/aUwDL9EFeMGYmoV5hVCkrn8QRQDD
X-Gm-Gg: ASbGncub0LBrlPf24zd7vlV8eiSnvJh1ftdITo8XhgRAcqHbbY7Ca7Jt+tVDtoqCXNb
	RxaUnxTh6y8CsXhSkqtLfyYJbz8MAItZ3DJDTt9GlVKPo8DWnbIOFFGuGamtfn1fUlXnMJ+zjOy
	U99RK19xTmODMuHzXWccdSXbE+9GNPm6ZflFKcgtOaX7ZlfrtoTjU3AYLKz7NHOXvLOre7DDoaB
	x5aE2B0F9Y7g2Na72EEju81V6DLzpB9uQcg1XPoij2cnRhcj2ZbONV1V2og965pLL3hSm9/53Uk
	6vEYXlHQuVx1qLU/RolI3KkHOgkRE68uJxqOd5HT3ccZ92ElI6QPdWL3DzXJxOQpSHXb1DYH0+r
	UTnL90LTVSTrU17eI4LEX+K3N4mU5BWgXLOCbVNU1XgaYVPHakazqqZObWj28mZyQw5302LIJvp
	I0qgVo0PB9anCDkkaeu5c=
X-Google-Smtp-Source: AGHT+IHNLBsatSIb71J2GFQncSTA+a3kyt/UTKwYcV2O04qKu+uELYeEsk/eGdFPUJLCbm3RtTdvwQ==
X-Received: by 2002:a05:600c:5742:b0:45b:8f11:8e00 with SMTP id 5b1f17b1804b1-45f2120592amr59760815e9.37.1757852478915;
        Sun, 14 Sep 2025 05:21:18 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017b4222sm136476615e9.20.2025.09.14.05.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:21:18 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/5] clk: samsung: introduce exynos8890 clock driver
Date: Sun, 14 Sep 2025 15:21:11 +0300
Message-ID: <20250914122116.2616801-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds a pretty much full (except for ISP and camera blocks)
cmu driver for exynos8890. It's configured to run with gates in manual
mode, which is done differenetly from other exynos SoCs.

Best regards,
Ivaylo

Ivaylo Ivanov (5):
  dt-bindings: clock: add exynos8890 SoC
  clk: samsung: clk-pll: Add support for pll_141xx
  clk: samsung: clk-pll: Add support for pll_1419x
  clk: samsung: clk-pll: Add support for pll_1431x
  clk: samsung: introduce exynos8890 clock driver

 .../clock/samsung,exynos8890-cmu.yaml         |  477 +
 drivers/clk/samsung/Makefile                  |    1 +
 drivers/clk/samsung/clk-exynos8890.c          | 8695 +++++++++++++++++
 drivers/clk/samsung/clk-pll.c                 |   13 +-
 drivers/clk/samsung/clk-pll.h                 |   12 +
 .../clock/samsung,exynos8890-cmu.h            | 1279 +++
 6 files changed, 10475 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,exynos8890-cmu.yaml
 create mode 100644 drivers/clk/samsung/clk-exynos8890.c
 create mode 100644 include/dt-bindings/clock/samsung,exynos8890-cmu.h

-- 
2.43.0


