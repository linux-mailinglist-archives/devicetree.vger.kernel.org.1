Return-Path: <devicetree+bounces-158900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECAFA68832
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B91318825EA
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 09:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E3F258CDB;
	Wed, 19 Mar 2025 09:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DI/AriJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D378F258CC5;
	Wed, 19 Mar 2025 09:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742376724; cv=none; b=WmxBbBMMzbbf87MWl9yDmm2Ij6+FoFWjyHjHQpR2VcGVSwRm+QYpf97a+UYvHzKcQ920rD1niGsrklSilqf1qyaP1moUMKMPCZIA+tExe0imHcOYzuqH4HECyJWocKjiVQVbyUATUe4UAaMoWSU/KAs60jcgXLRILcD0BkbVVcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742376724; c=relaxed/simple;
	bh=AkMKflDV4SnttQ4RQACOIUwHeZ3/6SS3x0SYtLJMq30=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YPJAxJDlUXmEyx0veA2Cpo1JJeop0r3Hd5IpOd6laik3MHASNKmi3mzbSt2eQmhsMpCaJ6lANJCOoAHeO7AwuxcWdb8dHgwrqMelAhVonu6s/3K77gJwzdUru+fO7ORMyewXnAbKnp9xA9vD8rIZbfs8zqUoIhmwOSkLpfddpEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DI/AriJG; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-22622ddcc35so15958275ad.2;
        Wed, 19 Mar 2025 02:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742376722; x=1742981522; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h4c5WwdBa8LpxD1/meMFz4s/8X4FVziT5/E3RtA1KL4=;
        b=DI/AriJGqPOguJCdfvXK0HRjvCZpirEXl4R5GV0GaVQxvGjunKhQa8PuToS0I2XsHF
         kalDTA5qZkMRupvC1PXSEfYpW9FjAlDB8InTzkFEgPZ3Dk5p88kjobp7uE4NPfCE9aGD
         fJvsFenNwOIlw2/i1m6qI6guxeX//h+QErQeKDlcWOEdLE1n2BZJHkSe5zTcAkSYHjWR
         jONhLZssvYjwcupJw/6egwjRFbyPLsyllsx/qRhGQgGn/VS2FVIxKElnnMgCG+OHHN6F
         L+2BDGS824nnuo2EOnvU8sF+d/+WKCD1wZYQLW3tn4DDNjZwYHiw2GboM1o0C9K2nEJ2
         9/pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742376722; x=1742981522;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4c5WwdBa8LpxD1/meMFz4s/8X4FVziT5/E3RtA1KL4=;
        b=DJrKx94viFMJRo/aoh5xfJpifjuya/dJr3iA6PcpBhcVOFxeBiRPZexYfrmzi6FSRf
         JmAXKbzEVa6LQ4OED/WIX1c8OD+/e3Uli3zv2x82zd/WDW5HnwOWPLFO17yjAaxje+ci
         eKDYRM+VobbwoyoFjnhb7SSgAnOlojyGNynvxhN0GAqyh/lkTjGiYo3yo4BzLaUuXH4T
         Gyiv6mtilEnU1024vCZfpMy2IKx4GCjEDMuUGze/vk1rG8+1iJ95E+uNwWcOggTSQhq9
         1YwQ81r5KOFDqbA4jfV7dJ3ImV/dS/P4c6oBTZI35PBVgyzmG5siiYluUxlVb77BKPPF
         +qqw==
X-Forwarded-Encrypted: i=1; AJvYcCVwyCRrWNjt8zGuQj9yVyimJjVN7x691RNMe9EG+Tuxe0rgytvByeh1HKBvrZ1KlX/p/0f4XEhybQJ3@vger.kernel.org, AJvYcCXbWYhUd7OaZ3I7pVg5whf2Hd9wDosvClio5jS6uju2fS/BC8DZ/M+CGt6kOOsLmvbvn0wK9ygew99ClGze@vger.kernel.org, AJvYcCXblli6+VDcM3Oz4lJg87NK8VSSSn5jZpGOYNGHKbYtqMP6BdhvX9qrzAScDyf8A+txc+7Oe7MJIqEK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1b/5R/c0qE9EvaDJ+iGbksdcfY693hjteOY+6bk7t8GfhtLlD
	QnRRisw59B1NMVkYdw8rkmEJOU7IZ9Cm88gUyMlFcVzYmLAGYyzq
X-Gm-Gg: ASbGncsiJ3r1FW9zB0gFQtZh3KzTui8c5dZi94z7w1P3t92Njpre4zGIUnt6YKqW63g
	qBcrXRIxveP9gcsMdupSK58KgxWjyFpAT6A+bJgxn9BHUTS2fnyQxNHp5vwRmkVjIqhir4k2adZ
	yh9J1YC8yK0G/l+mYi75JzbfR4ncGZvT54BUzyqyrhrnIBHX37IgTIIWgMW+cYjbqmTIddTD+nN
	CDjf6w1lHvnchL9YeVQIBg7QL1YgG2wKqJ4YG5BTALMc3L8tpB0IxxjHLxvdAoRd3dqmCl2nlG1
	iplDETwsq124V7OCSeYUi0m6CivY
X-Google-Smtp-Source: AGHT+IGCyKya6WzyBN16MEpeZN2uX9SoAuQJY8rHWzzjsI1adcqgzMZBDftNlN8shh0ccTOLI/9j7A==
X-Received: by 2002:a05:6a00:1888:b0:736:6268:9ec9 with SMTP id d2e1a72fcca58-7376d6ca21amr2967984b3a.16.1742376721829;
        Wed, 19 Mar 2025 02:32:01 -0700 (PDT)
Received: from [127.0.1.1] ([2602:f919:106::1b8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737115294b3sm11124315b3a.5.2025.03.19.02.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 02:32:01 -0700 (PDT)
From: Troy Mitchell <troymitchell988@gmail.com>
Subject: [PATCH v8 0/2] riscv: spacemit: add i2c support to K1 SoC
Date: Wed, 19 Mar 2025 17:28:58 +0800
Message-Id: <20250319-k1-i2c-master-v8-0-013e2df2b78d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFqO2mcC/5XQu27cMBAF0F9ZqA4X8+BD2so/kC5d4IIih14iK
 yuhFMGGsf9uSk5gQU2QcjA4F3fmrZmkZJmay+mtKbLkKY/PdWi/nJpw9c9PonKsc0NAGoFR/UC
 VKajBT7MUlcQl10MM0nFTzc8iKb9sed8f65zKOKj5WsTvUqgFw0RwZm2pZYXqWxlfv+Y5XOV26
 9r24Wnw+XYO4/Ans8iv37Xa/BH82exyWhPBkl17AareTzmoOCv0nlFE+hDpspg1p+5E1cwhz/V
 A6agLvdFWRFPovMVIOnmxYMFIJ4wdsdHNesU1T/NYXrcnLXqrsF2CZA7/WLQCBYmjaVvLbPvdK
 WvSwjuNdNRctQEwvasvJWiPmj71f31xw7jDaMAZZH1GrTtt2n9r81cbYOBjcVOLE8YUnI9J2B2
 13Wt31LZq1gldpOgFw1G7nUZ71K7qRNEEzUJJw17f7/d371OFiOMCAAA=
X-Change-ID: 20241031-k1-i2c-master-fe7f7b0dce93
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Troy Mitchell <troymitchell988@gmail.com>
Cc: linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 spacemit@lists.linux.dev, Conor Dooley <conor.dooley@microchip.com>, 
 Alex Elder <elder@riscstar.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742376553; l=6178;
 i=troymitchell988@gmail.com; h=from:subject:message-id;
 bh=AkMKflDV4SnttQ4RQACOIUwHeZ3/6SS3x0SYtLJMq30=;
 b=o2OSsb/aqFHq4+VWQCR4ZvdMZZdj1/DBzMlTdG7+wGPUzPznl2D7WwHKs+aYRRjyuTMana6ck
 vrmjSkmVLTfAkub8lWttmqqo8xzGDYy+HwaNPJkb/qamy/eVQW6AwCU
X-Developer-Key: i=troymitchell988@gmail.com; a=ed25519;
 pk=2spEMGBd/Wkpd36N1aD9KFWOk0aHrhVxZQt+jxLXVC0=

Hi all,

This patch implements I2C driver for the SpacemiT K1 SoC,
providing basic support for I2C read/write communication which
compatible with standard I2C bus specifications.

In this version, the driver defaults to use fast-speed-mode and
interrupts for transmission, and does not support DMA, high-speed mode, or FIFO.

The docs of I2C can be found here, in chapter 16.1 I2C [1]

Link: https://developer.spacemit.com/documentation?token=Rn9Kw3iFHirAMgkIpTAcV2Arnkf#part5 [1]
---
Changes in v8:
- Patch #2:
        - Fix code style
        - Fix comment style
- Link to v7: https://lore.kernel.org/r/20250316-k1-i2c-master-v7-0-f2d5c43e2f40@gmail.com

Changes in v7:
- Patch #2:
        - Adjust structure member types  
        - Default to 400,000 Hz if `clock-frequency` is unavailable  
        - Fix code style
        - Fix comments  
        - Kconfig: Rename "Spacemit" to "SpacemiT"  
        - Use local variables in `spacemit_xfer_msgs`
        - Rename `spacemit_i2c_wait_bus_busy` to `spacemit_i2c_wait_bus_idle`
        - Reduce transmission timeout in `spacemit_i2c_calc_timeout`  
Link to v6:
https://lore.kernel.org/r/20250307-k1-i2c-master-v6-0-34f17d2dae1c@gmail.com

Change in v6:
- Patch #1:
        - Give a brief clock description and a clear clock name
        - Changed the clock numbers in the example to match those
          in the mainline clock driver
- Patch #2:
        - Fix incorrect comments in macro definitions
        - Fix code style
        - Merge `spacemit_i2c_xfer_core` into `spacemit_i2c_xfer`
        - Remove `reset` and `enable_irq` before each transfer
          and place `reset` in the probe function.
        - SPACEMIT_I2C_GET_ERR -> SPACEMIT_I2C_SR_ERR
        - spacemit_i2c_recover_bus_busy -> spacemit_i2c_wait_bus_busy
        - Support standard mode
Link to v5:
https://lore.kernel.org/all/20250303-k1-i2c-master-v5-0-21dfc7adfe37@gmail.com/

Change in v5:
- Patch #1:
        - Add `clock-names` property
        - Modify the clock property into two
- Patch #2:
        - Enable the APB clock
        - Fix comment and code styles
        - Fix typo and drop unnecessary description in Kconfig
        - Prefix all macro definitions with SPACEMIT_
        - Rename `spacemit_i2c_bus_reset` to `spacemit_i2c_conditionally_reset_bus`
        - Remove all `unlikely` and `likely`
        - Remove unused register and bit macros
        - Remove the "err" field, as it only contains a subset of the status field
        - Retrieve `clock-frequency` from the device tree instead of using a macro
        - Use a local variable to track the current message
        - Use `i2c->read` to represent read and write statuses instead of `i2c->dir`
Link to v4:
https://lore.kernel.org/all/20241125-k1-i2c-master-v4-0-0f3d5886336b@gmail.com/

Change in v4:
- Patch #1:
	- Change the default value of clock-frequency from 100000 to
	  400000. This is to correspond to the driver's default value.
	- Drop the minimum of clock-frequency
	- Modify the description of clock-frequency
- Patch #2:
	- Drop the `inline` qualifier from the `spacemit_i2c_xfer_core` function
	- Drop the initialization of `ret` to 0 in `spacemit_i2c_xfer_core` function
	- Drop useless wrap
Link to v3:
https://lore.kernel.org/all/20241112-k1-i2c-master-v3-0-5005b70dc208@gmail.com/

Change in v3:
- Patch #1:
	- Change the maxItems of reg from 2 to 1 in properties
	- Modify reg in dts example
	- Changed the enum selection for clock-frequency to a range,
	  setting a minimum value of 1 and a maximum value of 3,300,000.
- Patch #2:
	- Drop unused judgement in `spacemit_i2c_xfer_msg`
	- Fix the dangling else warning in `spacemit_i2c_is_last_msg`
	- Fix the error check for `i2c->base`
	- Modify Kconfig dependencies
Link to v2:
https://lore.kernel.org/all/20241028053220.346283-1-TroyMitchell988@gmail.com/

Change in v2:
- Patch #1:
	- Change the maxItems of reg from 1 to 2 in properties
	- Change 'i2c' to 'I2C' in the commit message.
	- Drop fifo-disable property
	- Drop alias in dts example
	- Move `unevaluatedProperties` after `required:` block
- Patch #2:
	- Alphabetize Makefile and Kconfig
	- Change `.remove_new` to `.remove` in `struct platform_driver`
	- Change `dev_alert` to `dev_warn_ratelimited` in `spacemit_i2c_bus_reset`
	- Change `spacemit_i2c_read/write_reg` to `read/writel`
	- Change `spacemit_i2c_dt_match` to `spacemit_i2c_of_match`
	- Clean up code flow
	- Fix unnecessary line wraps
	- Move `spacemit_i2c_handle_err` to a suitable location
	- Modify Kconfig dependencies
	- Use `PTR_ERR(i2c->base)` directly as the `dev_err_probe` parameter instead of
	  the intermediate variable
Link to v1:
https://lore.kernel.org/all/20241015075134.1449458-1-TroyMitchell988@gmail.com/

---
Troy Mitchell (2):
      dt-bindings: i2c: spacemit: add support for K1 SoC
      i2c: spacemit: add support for SpacemiT K1 SoC

 .../devicetree/bindings/i2c/spacemit,k1-i2c.yaml   |  61 +++
 drivers/i2c/busses/Kconfig                         |  17 +
 drivers/i2c/busses/Makefile                        |   1 +
 drivers/i2c/busses/i2c-k1.c                        | 602 +++++++++++++++++++++
 4 files changed, 681 insertions(+)
---
base-commit: 8e929cb546ee42c9a61d24fae60605e9e3192354
change-id: 20241031-k1-i2c-master-fe7f7b0dce93
prerequisite-change-id: 20240626-k1-01-basic-dt-1aa31eeebcd2:v5
prerequisite-patch-id: 47dcf6861f7d434d25855b379e6d7ef4ce369c9c
prerequisite-patch-id: 77787fe82911923aff15ccf565e8fa451538c3a6
prerequisite-patch-id: b0bdb1742d96c5738f05262c3b0059102761390b
prerequisite-patch-id: 3927d39d8d77e35d5bfe53d9950da574ff8f2054
prerequisite-patch-id: a98039136a4796252a6029e474f03906f2541643
prerequisite-patch-id: c95f6dc0547a2a63a76e3cba0cf5c623b212b4e6
prerequisite-patch-id: 66e750e438ee959ddc2a6f0650814a2d8c989139
prerequisite-patch-id: 29a0fd8c36c1a4340f0d0b68a4c34d2b8abfb1ab
prerequisite-patch-id: 0bdfff661c33c380d1cf00a6c68688e05f88c0b3
prerequisite-patch-id: 99f15718e0bfbb7ed1a96dfa19f35841b004dae9

Best regards,
-- 
Troy Mitchell <troymitchell988@gmail.com>


