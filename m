Return-Path: <devicetree+bounces-214386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C224B48F0F
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10B1934385B
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 13:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05B9F30AD18;
	Mon,  8 Sep 2025 13:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SfxK/VBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F1530ACE6
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 13:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757337182; cv=none; b=A5QmaGIWKeCAaZSlhcffmQcQeH9Wt1J8c/AzS0gbFlpxarS0KcPF5+efzTtVTQKYKA8+NO1qUzoMD7nmOrxcf2u2QRhbhl4xDAM2tcLj2DHRyG/fJGVa3h2K/6pB6fw/ju3+I0UxWEe+8iKu8CGaaoBkX/6ZMmtF2SGW8zMVlkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757337182; c=relaxed/simple;
	bh=k/rYEqvoUHmQsSFnRWJthGrqkooxPs75rw/T6s9nl2c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EVyRrERR833S/c7T79BZWk2pCdFNUshkg3NYftU0VSjwKpDw6O7Wz708aSb8AZrFWMQX342M2lnLls8GaYh2o74bjzaLMoiG8K+OUuy4BOU2mSalxWrQl4WYoDnASiKsRFpS9WRjTQLFgMaa69NFYdLemK0oTzLhW3b2DQ0bU9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SfxK/VBK; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3e07ffffb87so2023185f8f.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 06:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757337179; x=1757941979; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=euNzNi2+8hGcblKlx8oKoI+4PgNfizE50VEjZnuwFB4=;
        b=SfxK/VBK52yTBIPVmbLDgxebshnhN44UPTUIxChmJxcVX0XCINwhwbGbTpcff3jmX6
         lKC6x8Vx+7fI/IUH/8dBA83Bf+4bORjnNLgnNHOSNwPkQj67LGRbN9fJJ3nyxlJkAMGV
         /qG1eqpIgE4jqVbggdo0H/PZ66eFnpcFRa2FIeWGkVSdCLTEjvD6JIoqaqn9qKduAmZQ
         dRHXt/l0A4xPzb6NPAAw+o81Zo8g7O7th46H6SyXIT+bllMn/VrMITIyTEOwKEQBjdUa
         5BAnt5KFezhQP8HVqxkDsgwOayVxTW9gw+mWbreEHmpEeUpYT0rrgJzY/wmP8MvWU/Pr
         opXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757337179; x=1757941979;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euNzNi2+8hGcblKlx8oKoI+4PgNfizE50VEjZnuwFB4=;
        b=TLxUYoCqibRQestd5xG0D7MfXB8VD5DcltFdPYb1QiHJAjrR3ig/3/DxfgIlhpwR8c
         +Hjd7OI5MZZdnmnVvILxmjKvK/GjdnMToTUZWEOfBxOeCLGeHLD1/rEIl9PeoWAqZBiw
         d+4WO6i8ENzBKgRSwbAhwfzfL+NYP28WOTBGvq2Is/XHley0xQM6cBEa1VKnzibgA/+Z
         x/mqc6waMNjI1lhhqs6dYAI8S8TeFxcxw8Mvji6638Jb/RNA+jugkKfo/04Y4kc/OTeL
         pd1xiFPDiCanVQIcGuNeTxuTVX7nwgJzecgIeoOn9DhEw3yzcTqaY+H+NMpcoqdUpIIQ
         DjNw==
X-Forwarded-Encrypted: i=1; AJvYcCVIp8N03lY0MLAQay7KPzVpooEyPG2DW1G9xi2S32tuL4nng6H/6bVwZgNsSAhUdJi0BdoI2RyI812Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+cOzN8GMlZQbuqJ7U7lPnFMGrQGAm/3bTfIsNmUDkSM4TJTAB
	Kbl2NJaf0EINQRpOXsQA0WX3a9T4uxLpFQf8bZKKbeU69lSRD+DP7VV5y8oXclwX69c=
X-Gm-Gg: ASbGncs161e1EmST3OSmUhDwiY6wDntT1hz5fceR+tfJImdt97sqchLBIQnQNf+n480
	72c1Y/XoqN0FhjbtiE+8BOYzu2gxiIJAtb94FFdYvwOCcRi4W+7PvtC0Bc2eRE9eLj8G4nMsCXC
	AjJohmLtvXEVf/pY1wvMsoiFuCTa7mNy53HXUiBcRJ8FcykTKsOmTkJqyPvB3x8/3nDDHx+PjRV
	fmd3L7UWOfdCxI+rfE4f8L9FdkTnwBh9bifL10lwOZkTXoKq5sUStjDpm0S6JF+4q6owrD384d8
	YplZUEyuImLH1xK1EZW5VASLTo40rq/xyKTyKY2v1vuF0LswOTSPyEpyL3Mm9ho7L1wKV+bHsah
	hFboOb1OCdBkAeAccyC7IRXvgDY7DXWIptrpn0N69xPPfqaOTD0nFTOEasTfwej+xndC3HQFSFQ
	FcBwAobytYkHZZYTfCTRQarek=
X-Google-Smtp-Source: AGHT+IHYOeXJ7kL2S1pO2C07X8d64bw/OMH9vgtjnahGnxt7HgXXYrfjcsnaLr8FftHR7cKUZ3vsRg==
X-Received: by 2002:a05:6000:200c:b0:3e2:2dd3:f9d6 with SMTP id ffacd0b85a97d-3e64ca780d5mr6256069f8f.55.1757337179163;
        Mon, 08 Sep 2025 06:12:59 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf33fb9dbfsm41650181f8f.43.2025.09.08.06.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:12:58 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v4 0/5] exynos-acpm: add DVFS protocol and clock driver
Date: Mon, 08 Sep 2025 13:12:41 +0000
Message-Id: <20250908-acpm-clk-v4-0-633350c0c0b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEnWvmgC/23NSQ7CIBiG4as0rMUwlcGV9zAumGyJWhowRNP07
 tJurNHl94fnZQLZp+AzODQTSL6EHOJQB9s1wPZ66DwMrm5AEGmRxApqO96hvV0hkY5oIT2iSID
 6fEz+Ep5r6nSuuw/5EdNrLRe8XP9ECoYIcmOcEkwwLvDxFgad4j6mDiyVQjaSiI0kVTrfWskNU
 4azH0k/UiG6kXT5s/XWMeKktOJLzvP8BlhmPf8VAQAA
X-Change-ID: 20250819-acpm-clk-28d2a78e0307
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757337178; l=4646;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=k/rYEqvoUHmQsSFnRWJthGrqkooxPs75rw/T6s9nl2c=;
 b=MBibO8bOauSF0KxVN1B/clJFWfdF+BQrGCfYfDTCMuR36/9gpDIQ6z5kikA8VEdpKxlYF/Uj3
 dvJ6kP/+SsuAEDD9ACTWR6NVwsGr5VVhx6/RvgiYGs/oe2cYiPwc380
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Dependencies description:
All patches should go through the Samsung SoC tree.
The acpm-clk driver (#4) depends on the ACPM DVFS ops (#2).
If the clock subsystem needs to merge the new clock driver, it will
need an immutable tag with the 2 patches.
No dependecies for #1, #3, #5.

The Alive CLock and Power Manager (ACPM) firmware exposes clocks that
are variable and index based. These clocks don't provide an entire range
of values between the limits but only discrete points within the range.
The firmware also manages the voltage scaling appropriately with the
clock scaling. Make the ACPM node a clock provider.

Add support for the ACPM DVFS protocol. It translates clock frequency
requests to messages that can be interpreted by the ACPM firmware.
Add an ACPM clock driver to model the clocks exposed by the ACPM firmware.

Thanks,
ta

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v4:
- clk-acpm:
  - remove GS101_ACPM_CLK_ID type handling. Dead code, it should be
    introduced with next devices.
  - remove runtime check on clock IDs. Instead add a comment about the
    assumptions the code is making: the clock IDs start from zero, are
    sequential and do not have gaps. Slight changes based on this
    assumption: s/hws[id]/hws[i], remove the inclusion of
    dt-bindings/clock/google,gs101-acpm.h and the use of the clock IDs.
    The clocks are defined solely by name in the driver.
- move firmware patches close to each other, in between the bindings and
  the clock driver
- update the description of dependencies in the cover letter.
- Link to v3: https://lore.kernel.org/r/20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org

Changes in v3:
- dt-bindings:
  - move clock bindings to a new bindings header
  - update commit's subject, s/add #clock-cells/add ACPM clocks.
    It also suggests that the bindings are added.
  - prepend "GS101_" on clocks binding name. The bindings name are the
    same for GS201 and the acpm-clk driver will likely include both.
  - collect Rob's R-b
- clk-acpm:
  - move clock definitions here instead of keeping them into the
    ACPM protocol driver
  - use platform_driver.id_table to differentiate device type
  - fix Kconfig dependency, || (COMPILE_TEST && !EXYNOS_ACPM_PROTOCOL)
  - update commit subject, s/dev/pdev
- exynos-acpm:
  - move clock definitions to clk-acpm
  - use devm-action to unregister clk-acpm platform device
- Link to v2: https://lore.kernel.org/r/20250827-acpm-clk-v2-0-de5c86b49b64@linaro.org

Changes in v2:
- dt-bindings: clocks are not longer a child of ACPM protocol. Instead
  make Alive Clock and Power Manager (ACPM) node a clock provider.
  Update commit message.
- firmware: exynos-acpm: register by hand the ACPM clocks dev (new
  patch)
- firmware: exynos-acpm: use defines intead of enum
- acpm-clk:
  - switch to determine_rate
  - drop __init, __refdata, __initconst, this is a module, we need those
    methods and data, after boot as well.
  - fix the assumption that the clocks are defined by ID in ascending order.
    There's still an assumption that the clk_id < nr_clks, but this is
    now covered by a sanity check in the clock driver.
- arm64: defconfig: enable Exynos ACPM clocks (add patch together with
  this patch set) 
- Link to v1: https://lore.kernel.org/r/20250819-acpm-clk-v1-0-6bbd97474671@linaro.org

---
Tudor Ambarus (5):
      dt-bindings: firmware: google,gs101-acpm-ipc: add ACPM clocks
      firmware: exynos-acpm: add DVFS protocol
      firmware: exynos-acpm: register ACPM clocks pdev
      clk: samsung: add Exynos ACPM clock driver
      arm64: defconfig: enable Exynos ACPM clocks

 .../bindings/firmware/google,gs101-acpm-ipc.yaml   |  11 ++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/clk/samsung/Kconfig                        |  10 ++
 drivers/clk/samsung/Makefile                       |   1 +
 drivers/clk/samsung/clk-acpm.c                     | 184 +++++++++++++++++++++
 drivers/firmware/samsung/Makefile                  |   4 +-
 drivers/firmware/samsung/exynos-acpm-dvfs.c        |  83 ++++++++++
 drivers/firmware/samsung/exynos-acpm-dvfs.h        |  21 +++
 drivers/firmware/samsung/exynos-acpm.c             |  26 +++
 include/dt-bindings/clock/google,gs101-acpm.h      |  26 +++
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  10 ++
 11 files changed, 376 insertions(+), 1 deletion(-)
---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250819-acpm-clk-28d2a78e0307

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


