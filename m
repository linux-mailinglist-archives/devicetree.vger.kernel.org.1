Return-Path: <devicetree+bounces-241982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7D1C84DEA
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B41D54E2DC5
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF85531A578;
	Tue, 25 Nov 2025 12:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fU06mM61"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AA93168F2
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072381; cv=none; b=n9Vxj3KElbvyUqGJD63rxLmAhwUHriaNzWSpe35YNECOoj2KUBqSeuJDvmbq/nZj9BxZwnGhR/Ah9v3hfmcE/AGL5RqeyeBAr5WNGn/NAQrRkAU5I2Z8L5HE3d8A+eepZCqLLPkWWX/edc5/oFMu8KLN/9JFAp1oyyZTUcp0g+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072381; c=relaxed/simple;
	bh=fQuCm3yVvrbhWBVd7I+43ZxQG3uqjhF1nzecABEWEzg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ilqboz0cNoQyB5BwWxLsmbpli0+kTbF8KmkU0DrjAYnpiBbAoYhrYtgFQl8B+/AHYvoFIgZR8s7IgPvf2pYusa9Lv20U3ja1AB4OB1UdbKIWMNp4ss64eH0FEzkGzup+BQmvBpJ1Gu5+eNRM4dYKYQXhuk1X4eBzhosMQF1VwPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fU06mM61; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5957f617ff0so5771950e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072378; x=1764677178; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lMKSnXZvXFWxstn6Wmt0f2cu30nxjUQkf102sfmvkHQ=;
        b=fU06mM61RvceKoi868Rmd50KYSbyekQdnapBzNgSLtDZtNpvEyAchg97gli56zRuVc
         Q1iIyvKq7V/My2nW0jL+8iYAsc9Bx+3258ebqGgZxrwVQmKWv3pTC6a/HDJuJvZdR7o7
         OTb7dCJfCxtvu4S/dnMoKyWiIlg64lE5tQ8ND78BxoSNfprDi9gBcA/t0MafYW1GSpIP
         fv2O2HcZmMLzdTJ/5EWxZare/6uhytq0GX9VB9/e3pt4BvOk/T47jbWms9m+XhmfczjF
         LfJ4tNE+Ps5wMCDYYUwdvfe7FLwEokCIHalr+Bb291DxUsokUtVhSPrWO3nPqn41ieRj
         biKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072378; x=1764677178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMKSnXZvXFWxstn6Wmt0f2cu30nxjUQkf102sfmvkHQ=;
        b=nOQdnuNNgQ3B1dC7EK8YaPOo6mIEtJQcgy1fQFyY4zgqxDZIsil0/XPImFkqvBHa07
         bVg5VN6dcCIiUtFFg0n8xMysu+N77tw/XqoIO4qoE3uvrG/A6/Lk0JQLE8VXS2MJyb8p
         nLDm2Yezm53KvgMWsQVlfG52TajFqee+DW/d3SxyX9RbzZRFMgoEX79Fj8y6viBMu7K0
         vwoC5BHQkUugKGAwTZvf3XGpSFOmTNDtwqOOcJnNbNskx5zEA2W0dKQ/WE/Dazn0/dNj
         aIg8jnrgC68DPv1byo7tCovnOf6SmV7nCKSVgpYVIkbMlIjvWQ+gTvbyPjYoaCrACZgf
         1eCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWhZoyAspHS2pQBqJY1gfBQPeVfzkedKFIUdDt07jhnKY8u6Z6fopk9NiDnkWXG3+jKFffSLUy8kQh@vger.kernel.org
X-Gm-Message-State: AOJu0YwKcw8O7OgiDBveajKn+h2FagquXRYUIMcBVqQqeuUonmH84j/4
	KNj+9Ex7V31vspB29glbJ8s5WfzT6oTfB1Va0qtsY+191WYHi1PRkYO5
X-Gm-Gg: ASbGncsU6tWBDGTt9ZRCF1q59kpY2tT0ENanWTxYWv+H/gJXtgZdNr05npSwNxQsVah
	fEhdq8XctbNfMAuJrn7+teV/xcnTX6m2koBVQD+98lZl7UgZ4e+OFwcMBUcpDAmWHFz1J85GL63
	m3DEcugu9vbOVe2/xIxh/wstUJhAuLgDG8ixylZ/NRyk7dViHt7lQG70k75zoSQpGnNGw59MQEb
	HyulxGUJHN4KdMbKfUlyL2TydCxmUGbl52mzUmwhMdNX5+sQ+nuz/Zg6Ing5A8C3W5uJ9/WB0n/
	Edn8Kx1bg/MAwIk3HTfySPy7z19fchTtXlYurdSKAYY0QXlbJ0OHhfUoZ1TVxF7iQ3po6eCWorX
	MdMX1/C7bpkArR+E7Zmm2k4rSlr9DArA24v2DzIHU1q9PBS2tWY5HXKB6GVcSqPZmECPPmGhUF6
	s=
X-Google-Smtp-Source: AGHT+IF56otrGriTfA9UvJPBnGRevOk1eZ6opICTPkgG1WVGE7MGrd1ZjER/ONAVY4mquR51YjO8wg==
X-Received: by 2002:a05:6512:695:b0:594:2db8:312b with SMTP id 2adb3069b0e04-596a3ea66bfmr5947719e87.7.1764072377467;
        Tue, 25 Nov 2025 04:06:17 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:17 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 00/12] Tegra114: implement EMC support
Date: Tue, 25 Nov 2025 14:05:47 +0200
Message-ID: <20251125120559.158860-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for External Memory Controller found in Tegra 4 SoC along
with adjustments required for it to work properly.

Tested on ASUS TF701T (T40X) and Nvidia Tegratab (T40S). Both work fine.

---
Changes in v2:
- fix programming completion detection (changed EMC reg to MC reg reading)
- Tegra114 incorporated into Tegra124 dt-bindings schema

Changes in v3:
- adjusted MC and EMC schema to move description and ref into common property
- added Tegra114 support into devfreq driver
- added MC/EMC to DC interconnections

Changes in v4:
- fix number of EMC clocks required by activity counter transaction
- set minItems/maxItems for MC and EMC registers
- removed CONFIG_TEGRA124_CLK_EMC ifdefs from clk-tegra114
- minimized changes to tegra114_clock_init
- switch to devm_tegra_core_dev_init_opp_table
- switch to readl_poll_timeout_atomic for polling
- adjust DLL_CHANGE logic
- drop touching EMC_CLKCHANGE_SR_ENABLE
- use for_each_child_of_node_scoped for timing iteration
- add emc-mc timing check
- added print for amount of timings and ramcode
- align commit and code style
---

Svyatoslav Ryhel (12):
  devfreq: tegra30-devfreq: add support for Tegra114
  ARM: tegra: Add ACTMON node to Tegra114 device tree
  dt-bindings: memory: Document Tegra114 Memory Controller
  memory: tegra: implement EMEM regs and ICC ops for Tegra114
  dt-bindings: memory: Add Tegra114 memory client IDs
  clk: tegra: set up proper EMC clock implementation for Tegra114
  dt-bindings: memory: Document Tegra114 External Memory Controller
  soc: tegra: common: add Tegra114 support to
    devm_tegra_core_dev_init_opp_table
  memory: tegra: Add Tegra114 EMC driver
  ARM: tegra: Add External Memory Controller node on Tegra114
  ARM: tegra: Add EMC OPP and ICC properties to Tegra114 EMC and ACTMON
    device-tree nodes
  ARM: tegra: add DC interconnections for Tegra114

 .../nvidia,tegra124-emc.yaml                  |  174 +-
 .../nvidia,tegra124-mc.yaml                   |   31 +-
 .../dts/nvidia/tegra114-peripherals-opp.dtsi  |  151 ++
 arch/arm/boot/dts/nvidia/tegra114.dtsi        |   55 +
 drivers/clk/tegra/clk-tegra114.c              |   39 +-
 drivers/devfreq/tegra30-devfreq.c             |   17 +-
 drivers/memory/tegra/Kconfig                  |   12 +
 drivers/memory/tegra/Makefile                 |    1 +
 drivers/memory/tegra/tegra114-emc.c           | 1463 +++++++++++++++++
 drivers/memory/tegra/tegra114.c               |  193 +++
 drivers/soc/tegra/common.c                    |    5 +-
 include/dt-bindings/memory/tegra114-mc.h      |   67 +
 12 files changed, 2016 insertions(+), 192 deletions(-)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi
 create mode 100644 drivers/memory/tegra/tegra114-emc.c

-- 
2.51.0


