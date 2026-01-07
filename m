Return-Path: <devicetree+bounces-252370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 953CFCFE079
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B337300BA2B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 739C933F385;
	Wed,  7 Jan 2026 13:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IMXnTQJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D82326D55
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793201; cv=none; b=S2IVQPbUAFN2ota32HtbAngN3ukW26qC6NkWo+eohb8pKwVAMMlKoV4USOBUTRBwd+PJ+7PA2JhYr0q4pSeVvWtkkKRl4jhPPNVF1rPK5MGMsF9L5uGb8Rll9anyK7HkofA6UqBNzz3EF7jA4nIWTdQWII8iESBVXxjWzLOCLX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793201; c=relaxed/simple;
	bh=b4JPiwYZZNZVEP0BvLqcWwbe/rsB9saevx47a301FVA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JbKaaRidNCD7847FixhJpwy80ANd/J44OiI3ZobR9qdasORRxPSc44R0AK0O85yl4rnX0HamJCF1cCoYWtB7YEzjJaLFG5wcH3tunV3RWfk0dX3DOJY7FYLVDF30gkVgDQc1AFORRPSNufGSqyvFB8pnGFi9Y417p8Qyu/7HjlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IMXnTQJa; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fb5810d39so1148581f8f.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767793198; x=1768397998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=essmEBOdYZvlb56f47cnSD8phUDtBzvO/hiGaoERCfE=;
        b=IMXnTQJaBvrujm3qT28MiKfy9kVPWjq/7nSb8GKZBIR8an2W63BoU2BDsC7WvDTC0z
         LQJMzHVdn8EyhcfxgZc15KqxOWOvqFTZ4fUrS8f4jWz6LDs2ixi61oDLJ3R3+F9Sry2t
         dm3rv46URR/1pYuDZLhzwuWdmdBU/ydv4gk2+cYihfqxma9hBGUETeHJr/elH4UT8qnd
         4XNlTNo22VxNC6JdDBfMN7TEfYVBpPltYBZCuc4uifZDm6tySvVp5BKfyXsCj3tdhXRG
         abHWcSRFTjlqTX5QsSTSdHo/83d3mnJ9bgDKBp8mViMfPREu3cIRjoWU5xXh0Zq0D0eW
         dkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793198; x=1768397998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=essmEBOdYZvlb56f47cnSD8phUDtBzvO/hiGaoERCfE=;
        b=daa7TGwacLPXkZVBpWbPFgLjDZYZ6GhDzP1DUIhzrRUSNXiI/PYgiT552cq+m9lkPi
         KJ5+wCiVRKVkdd+pp86IGJyXmlN2TGcdD4i5JLtTSJ3eB/VMwINrxHmiDmykLkmWQFDl
         U/+k76jqzNyhrYoaOAVdTgSfB1P2CM7057aJR9yMapEEoyTTS8l/YXMdVbvCcQIzliUS
         vIsWUafbibgyCcKdZn9XRI9iWEwbJtzhoojxoa8ZDHbB8GrxptbZkYGUonl5eu4Cq3XJ
         mGCnnKWE5dXNE6Gpbt0wKtPEVZNQ9cyXiZsdDcN0DCtYPCQ4dQpRGfIsieNOzdIXms5y
         LOnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC1Y1nOb9isEv1C8S98P5HiFyXVUzieohZpNOhGHEu4Gk2EZuy5sxQSzUtUpl/pw6VJnhe+VvJPaS5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/0QL46EGA+zaY1UVB72Q88Kh5HUIt1z8eIX9EYe5k9DEzIZlz
	v560xZzdfs0vbLM/KftdHXiX2zDQ39tAJQhsQbvW56AIc+2xxiad2ktZZN3Rls2wmIg=
X-Gm-Gg: AY/fxX4VWp4CI9eYWV6s9Yw5ZSytpJgC+ouDobmKh695gUlJ4/CrdCFNltjIA5Dtwn4
	th7qb8fMgKocxAuxc6kBd/mPlMN3kvqGukQF1JXyHgv0b2P9C5G4FuuMAYQP7TwO2F0dfT8l1JL
	Zs+er5pi3iB5uG0+r9oHsT0oS0a1vVobs1fYFAMLgQfeeYTbmfBuKqQyZSQAa3Oltic7VE2wHN9
	7xxJHczNRGhzIKD5eoIQFh7Aim5HUPJnnvfzaXPpjf959biG+6xgNjOxWCysGCdJa1A+Au9ykRI
	1AUtn4MX9/tRxMRMnyGVzJp7QrzPVyDHg+IOgevIBaJXeq17wyVuHiMZnweFu27GBeV+U9IAdfk
	mlv8knWZT92QQ0vUez4zvLls0NuBKrpeZkGGlRPVaNKfTi0q/ur5J0Adk+KV28+YfV1OwjirBo0
	FpfYaJ4fpdfwUiaVEUMsHlper7rFDdwbs=
X-Google-Smtp-Source: AGHT+IG5yiUMmsBELFqzl5e0cwWDO08ZlCwN7eYh8sJJ//HcdWLe6zUmYURWf7nvq3DOf61gkk+LhA==
X-Received: by 2002:a5d:64c6:0:b0:42f:b581:c69d with SMTP id ffacd0b85a97d-432c3628323mr2941135f8f.3.1767793197720;
        Wed, 07 Jan 2026 05:39:57 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:39ee:bc4c:aafe:6bd0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dade5sm10595542f8f.9.2026.01.07.05.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:39:57 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 0/3] Add the System Timer Module counter
Date: Wed,  7 Jan 2026 14:39:49 +0100
Message-ID: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 family provides a System Timer Module (STM), a 32-bit
free-running counter clocked from a peripheral clock. The STM includes
a prescaler and one or more compare channels generating optional
interrupts. When used as a generic hardware counter, only the main
free-running counter is required, while the compare channels are
typically unused.

On S32G2 devices, the STM is exposed as a simple counter block that
can operate continuously and be shared across subsystems such as the
Linux kernel, firmware components running on Cortex-M7 cores, or other
co-processors. The counter can be read atomically and provides a
stable timestamp source to correlate events occurring in different
execution contexts.

The Linux kernel controls the STM through a memory-mapped interface,
configuring the prescaler, enabling or disabling the counter, and
accounting for wrap-arounds. Other subsystems access the counter in
read-only mode, making it a shared timestamp reference across the
platform.

This driver adds support for the STM when used as a counter on S32G2
platforms. The device is described in the device tree using the
following compatible:

compatible = "nxp,s32g2-stm-cnt";

The driver exposes basic counter functionality: start, stop, reset,
prescaler configuration, and overflow handling.

Changelog:
	* v4
	  - Split context structure to suspend/resume
	  - Converted counter to a u64 to accumulate the time
	  - Replaced 'reset' to a count write to reset (William Breathitt Gray)
	  - Added events for userspace (William Breathitt Gray)
	  - Added action COUNTER_SYNAPSE_ACTION_RISING_EDGE for signal (William Breathitt Gray)
	  - Renamed counter name to "System Timer Module Counter" (William Breathitt Gray)

	* v3
	  - Fixed compatible typo "nxp,s32g2-stm" to "nxp,s32g2-stm-cnt"

	* v2
	  - Added Rob's tag
	  ** kbuild
	  - Reordered alphabetically the headers
	  - Added bitfield.h header
	  - Use DEFINE_SIMPLE_DEV_PM_OPS() and pm_sleep_ptr()

Daniel Lezcano (3):
  counters: Reorder the Makefile
  dt-bindings: counter: Add NXP System Timer Module Counter
  counter: Add STM based counter

 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   |  64 +++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |   6 +-
 .../boot/dts/freescale/s32g274a-rdb2.dts      |  10 +-
 drivers/counter/Kconfig                       |  10 +
 drivers/counter/Makefile                      |  21 +-
 drivers/counter/nxp-stm-cnt.c                 | 433 ++++++++++++++++++
 6 files changed, 525 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
 create mode 100644 drivers/counter/nxp-stm-cnt.c

-- 
2.43.0


