Return-Path: <devicetree+bounces-160180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD4EA6DC39
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EFF316CA35
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD88525F793;
	Mon, 24 Mar 2025 13:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LdnvjBV+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE1F25E81C
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824632; cv=none; b=De8RZHP5liHBU3Lz3Ft8+O9Xhqcle1P3mmUA0+Cs9BkbEZhV82h7bURbbOomikCSckW7JKZn0J1gZyjLYU2Hab+irGk5M22h6KdLyu7cDnCEVlubEeai9Ld9gWwvYsWkHLyuhH2e40FtX+l3miAUcsbW9kDeeebNzzT4Vdr6BDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824632; c=relaxed/simple;
	bh=MPO6jCCozjhYMoPt4y+gKPOuX7ez+gZqkKwymGwFc0M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oiriJOozHSuNXNgalCH+DWQwV4BOYNqRqllc7TZhFtgIrLZswvePAE2NDYDt8Nm+5JBAft00fk/mNEVyyrPGXp3TfgiYOHp0xtVOC36mDRkPlchpIVbmpQna44zUCzXdQqUmF5pHSEBUgmYAIdIJAjnsqP5mdgPxCfq3Rs7nni8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LdnvjBV+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cf628cb14so34427195e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1742824629; x=1743429429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=geHsdT1vrdpFfM6YFLK2c0Yi2DY1fN5x5Y+Dw80cp/o=;
        b=LdnvjBV+8Eaye8ho5RjmMoedW57GovKqz7vx45WSQPkXG0yau3B7sA8P3xg6+X7bUC
         UaR8J6UYHxcgTN3Y2e6mad1yF5zV/upEiMnA1slqtErekQzAL458hzSXEiZmsWEk9oc0
         aXQnpjXcQlLLqSITTRhjEcggyjxxvjK6nfVs/qRt82JxcsSm0HCqo+ugkA1aSALB2d0N
         kHf5YDBXhaAB/DMT8K/haBwA+h3ZSiIsqxSztQzcEUqh9h3NdZaHoukIi+Q/E36pXCXU
         +Gqxg5u/nS/H7IoGddCW8NKiYtrnQ3iTjsm9ruWzP1slCJFUAZdIJBorqECIDK9j8asJ
         +igA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742824629; x=1743429429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=geHsdT1vrdpFfM6YFLK2c0Yi2DY1fN5x5Y+Dw80cp/o=;
        b=Ns7B13iIutpNlkpHVFnFcZ2uBbKn0lgzAUjw/tXgpwY6cgAYAtZF/2rnUb5i/eKvcK
         3eFgiJSyS3yqd3KImMeXk/f1RA9A5MmlwCgLWRmXktONuCRL6NqjiVdjFT+D7Yv55GDX
         ELkiKrc1OU+OsmYzXMUYQVvxSsA9lBG08RWHizPLkSvheXz3TR5bVoeJcFX5SPbhM3hO
         hH2J7Hr/EFO9TPyyRvHIch1Xd7rqENcwOvSL+pJiMXNIsj1zN0Tr3NjJauQYAWa0IL3L
         ZIYAoDTfST6Jlr2nbXy21w7yL374mGHm56g0rjCqT4aplL2yO40ocvKk+ZoA+dvcdwtF
         55bA==
X-Forwarded-Encrypted: i=1; AJvYcCXRf7unxtCGC/ytC6fSKc2lZj79KgB7wQilUz/4p/pCJUVm4JCJDW0simlzC20X+pGYrMDAOfLNOURA@vger.kernel.org
X-Gm-Message-State: AOJu0YyhrdFZMj+wWHIBJVt0ameyqtQC6tZGZ46Cu2l4OABgaixCobSq
	61dptpgNitVvoR9iz39337Jh5fw+ihWdP8nBtstRF7Dhwdgkiy+sa6pQ1vDP8MQ=
X-Gm-Gg: ASbGncthBkCaN2poQO0NAI/ELg2mRKnWLLX2tuw9otVzWfDPRdj5CJec0/v1/b3MUUD
	9WTBXoZW8//fd/fEpRtawpjWdkwTvt/XKAPw/PT0YNnQKoJALORiu5o7zDG3JLw5H2OLQlFI0ey
	GVbZUsUUkLTTOtujJFRInK2wsOrLBhQOaN8id03FsFMMo+6GTJ2lkrxmM8FDUUSCpd/ZUEyf5/v
	yLliLQ5j20aZ+lqsO1Ik8HndS19hf2QfbQwM4jpB7QyEHeE7jxE1TG5U+WvQPKXTK/o7kAleAL9
	gAUJZYnRlz1fL9mI4qTmvkvwU8d2Pz5tnABLJ7PRAGcMnQ+NVpeG+fqmIhWgac1Hp54TIfGBIQ=
	=
X-Google-Smtp-Source: AGHT+IGkbsgJvhaLoKe9hCL01Phvk9cQWomrPl7igNBxsiltgQYpsqqfKtqy6vBzpm7mTH5vwHyozg==
X-Received: by 2002:a5d:64a8:0:b0:390:ff84:532b with SMTP id ffacd0b85a97d-3997955cc22mr13735349f8f.7.1742824629087;
        Mon, 24 Mar 2025 06:57:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbcfaasm120146525e9.35.2025.03.24.06.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:57:08 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 0/4] thermal: renesas: Add support for RZ/G3S
Date: Mon, 24 Mar 2025 15:56:57 +0200
Message-ID: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
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
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  49 ++-
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |   4 -
 arch/arm64/configs/defconfig                  |   1 +
 drivers/thermal/renesas/Kconfig               |   8 +
 drivers/thermal/renesas/Makefile              |   1 +
 drivers/thermal/renesas/rzg3s_thermal.c       | 313 ++++++++++++++++++
 8 files changed, 471 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml
 create mode 100644 drivers/thermal/renesas/rzg3s_thermal.c

-- 
2.43.0


