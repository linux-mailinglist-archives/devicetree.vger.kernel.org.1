Return-Path: <devicetree+bounces-202978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9B4B1F9D8
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 14:21:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6A301756D3
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 12:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF7E2522BA;
	Sun, 10 Aug 2025 12:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="G0YrLyEj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEED23A6
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 12:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754828504; cv=none; b=OQ7yi3SQWxftOVFrz5Gdk+DVLPkM3a83SbAlfySG/D5LlOPbxw/TglRdi3iVkhQNPMiNbMyPXB/6DpO0YmOFel67RoHplHvYd0CHEOcve/GAZm15JHhArCmaEHjgSUY7f0TyWoUH/cr9bAf3FwBDL3zQKZ47ZNzsEEWgMqpWI8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754828504; c=relaxed/simple;
	bh=FKF32B1DbsrgOSP6yeaxp0UqlkMMCckPHJ/HTZ2PyYI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JX/MihgpZ9dIpG1Z+ydjDOnhW3Gtsh8ym9ENkZuavx6dyTBKeyPr6OKo5vsxQfNsQTx3syAkZreszATRAi+evzcoakmjbRjSKgdpWvw189DP+CSHEBEL4xOV258O7JUTz7mtcH+NA98YkIXeNzeB8kl+nXG2d1Hz3tVDLg/+sFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=G0YrLyEj; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-615756b1e99so4887112a12.0
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 05:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754828499; x=1755433299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L4RjcnrIZ+W5L3kUceF7GfLbbqAQQYw2hpKEnRdHMMA=;
        b=G0YrLyEj6gNSqmGrDBeb375MqwH6QVilybgJC4h10UPSD9VBoMT4eJ7trvKrff4dEH
         JjbgUc+vRmJNDDQ3dr0m3nr7uM2/PQJIzEHbSZRhmP+jjU/pvzDZB9Qi8Wml69O9cRYX
         3NlZgzTWOoaTnBY6bXvGmN70SEiwJcld3hK3xIJvksmClUQCZ9GxAJPZjdNDg113EDXS
         2xijzAGPFkVWsUh/AZppZ9CnLqEkFicZhNX/hac8cHH0rqxSclwq6FwcK21bsefRY1VH
         GW0UMBVRFPW08Haf8sX2U99h65YWxhIob6cFjKZsz3m1VCbb2w8SuVA4FBI5c2Gks3TQ
         i6BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754828499; x=1755433299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L4RjcnrIZ+W5L3kUceF7GfLbbqAQQYw2hpKEnRdHMMA=;
        b=BKv1kop6HtY2ucEs2aTPuKrufkNOcSvA29bmBf1iDq9lcgom+5O7FHCwCW+xLmqzKz
         f1i19iqHDH296PQ6S8C/Zssma2mIuBGSKQNhCTTZ2nEt+QD6DX9w80qmfiru6BaaWzIy
         NDwRCtm1HxF6nksHlsQOiVZmPU9N9qu45sED/swmVwUwW8+5sR9C3m0pnjs+BGIcvRJ2
         nIP9PPMCBJPwffwZRDzwZMzoSVUJdpikeXh7L6pU/Tt6+8HvR9AZqhIX8Q9IHV9SqbCN
         awvnUkrbEkg/vaRUyOV968NOvUce45c1TMkhnpjRKPtuRP+8v91mGR5i8vMfONgyu3/d
         XRmA==
X-Forwarded-Encrypted: i=1; AJvYcCV6WHTuaLx6KZ/zpSUA/xshonzIoyg85wXtRI9ccQGHj9OkdkDAavJ5kkOb0mj3WSR4lha0CggX9UWN@vger.kernel.org
X-Gm-Message-State: AOJu0YwhB+UaWY2r/Ib0jeJVQyYw7DaW49kN02e1Mr0PCBswfyPIZ6+P
	XV0MJARwtQeyqQnl7UZFNbs2Vsjh2DeBIujnm4V9xMdh68DL8VSTN1pM4b3gMAZPqEA=
X-Gm-Gg: ASbGnctgbvUkiDFbItplei0RTM/l2Bn/xol7FJDJJwmTV4qMoX2OXStcSrUXTg/WA4G
	igf0i8GhW+dLTVhUbZ7Fxs8RDdi3MfCulxc2k3Eifo+YMRzocYzDa464YZGMKAnJOkwe/4VZs6R
	iZ6DtJbp/b9QnSt+K5Lnd1dQ0e+2iW+6dbrBSh8pHqlKx6hd1JmBtm6fWB7+CbYwhFD35GCTv5m
	H2e+Nk3zciF6erVL2A6E2XJWS6vRsWC6KJ26XiKee2uuVbjB+3PjMYIurwnaT3ADolVnliW6sN0
	uitVI+v/4J1GP44YoE/XJJ+HdjVH5HjXJHnUfGSsWvXWkYQTktyQ66hDnlQZFjc68Naj9EU3vQl
	gMg1b5AlKC0TYZ3aWc01NKHg/e1JZUTIXhyhGT8P31dpNKY7JdEwG
X-Google-Smtp-Source: AGHT+IFSeAF9Fk04n1puF8WCTjGoIhixSoOG8oLkqqtM+6CY0pS9xTvj6pKvC1KxF2I94fi8T7M8qw==
X-Received: by 2002:a05:6402:2106:b0:615:5353:5e2c with SMTP id 4fb4d7f45d1cf-617e2e5311dmr8217507a12.19.1754828498757;
        Sun, 10 Aug 2025 05:21:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a86758fcsm16611897a12.0.2025.08.10.05.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 05:21:37 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	niklas.soderlund@ragnatech.se,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 0/4] thermal: renesas: Add support for RZ/G3S
Date: Sun, 10 Aug 2025 15:21:21 +0300
Message-ID: <20250810122125.792966-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

This series adds thermal support for the Renesas RZ/G3S SoC.

Series is organized as follows:
- patches 1-2/4:	add thermal support for RZ/G3S
- patches 3-4/5:	add device tree support

Merge strategy, if any:
- patches 1-2/4 can go through the thermal tree
- patches 3-4/4 can go through the Renesas tree

Thank you,
Claudiu Beznea

Changes in v4:
- dropped devres group
- fixed compilation error on arm32
- use div_s64()
- dropped pm_runtime_mark_last_busy()

Changes in v3:
- drop runtime resume/suspend from the temperature reading function;
  this is not needed as the temperature is read with ADC; this is
  confirmed by the HW team
- use dedicated function to open the devres group in probe; in this
  way the thermal probe code is simpler

Changes in v2:
- dropped the already applied patches
- dropped patch 2/6 from v1 as the devres_open_group()/devres_release_group()
  approach was implemented in this version (similar to what was proposed in
  [1])
- collected tags
- added a passive trip point not bound to any cooling device, as proposed
  in the review process
- decreased the trip points temperature
- convert the temperature to mili degree Celsius before applying the
  computation formula to avoid losing precision
- use int variables (instead of unsigned) for temperature computation

[1] https://lore.kernel.org/all/20250215130849.227812-1-claudiu.beznea.uj@bp.renesas.com/

Claudiu Beznea (4):
  dt-bindings: thermal: r9a08g045-tsu: Document the TSU unit
  thermal: renesas: rzg3s: Add thermal driver for the Renesas RZ/G3S SoC
  arm64: dts: renesas: r9a08g045: Add TSU node
  arm64: defconfig: Enable RZ/G3S thermal

 .../thermal/renesas,r9a08g045-tsu.yaml        |  93 ++++++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  49 +++-
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |   4 -
 arch/arm64/configs/defconfig                  |   1 +
 drivers/thermal/renesas/Kconfig               |   8 +
 drivers/thermal/renesas/Makefile              |   1 +
 drivers/thermal/renesas/rzg3s_thermal.c       | 272 ++++++++++++++++++
 8 files changed, 430 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml
 create mode 100644 drivers/thermal/renesas/rzg3s_thermal.c

-- 
2.43.0


