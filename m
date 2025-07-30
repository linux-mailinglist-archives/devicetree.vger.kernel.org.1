Return-Path: <devicetree+bounces-200874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88189B16720
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A4115A7DA1
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2113720E702;
	Wed, 30 Jul 2025 19:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VVlTJ9V9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400651A0BF3
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905185; cv=none; b=fkLvGFh3tzge004PUiS8c6Dq9nph+oPR1VQTCmGbhtJRiCUd0N639g9808T92C+pbLmiqM4Ujt1DF8iuQ6WPnELuSiQlD201bQmbiZ7tlej7wUcqzT8nqejLneIlBGgHlrnN2Q2PMl4RTYbRHh+CU/OCtF4nRyXENTkSQrzOuzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905185; c=relaxed/simple;
	bh=MfTnB37EEj32Y5FjkQTo/dmxJhOyRQ8e/zW2nSleFZs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oZ8p1X9q8+wVTjBk84Lj3sMxHup7PXHNmjMi5Mc+VTpZ/bUH7PW9JUtKot4L8ubou6vG+hRgNJnQRjoLuy3LJ2c1rRpwRr79C2Zuu5hN1TNbeZ1xa073Al6dIA5JdiVu50Cw6JkOyj1kh8xkjmcfQt4mVa5vNF424k40KcyrEYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VVlTJ9V9; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4563a57f947so5683615e9.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905181; x=1754509981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WTJ04XJW9rCytOzTtWrCv6iwwB/BOv81eXrzl0rsCXk=;
        b=VVlTJ9V9NR5vDJXL59iPaEy7QidU7PNCsxKvAX4nhzmkpsmSzKSUMbx86VfwLExSBP
         lS0979r/NYNvb41duV+1JBHnV3CIZeR4pdtjIvehnEXiCCWTfoePIMzk/GIDWaSutSe5
         HWRPjKg3owRSPkM5JNrtj2J62JpwzgAzKnjLw4e8PnrPwpOYHPFUZfbGrmo6ktMErWrY
         xKfvcd5tEqKP3N50zoUFgoBTkt1iw/tZhy3bKQjokT0LbUi/v7skJxBnwNRaGB/e3lmu
         y3xpK8EX1ec1xIfVZ5jsRp/XTjl4K9oFZ9iSb/KhxZDjGLC9L5tcR/q0FgSGW4Ni1Yrd
         QSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905181; x=1754509981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WTJ04XJW9rCytOzTtWrCv6iwwB/BOv81eXrzl0rsCXk=;
        b=S2vWWQajF14Lx860qRarvqluIphit/va3qlLoDx2UbIBvXLbC+3Tzllwf3ycqIMaE6
         kffmfQaf4luFTcqmKxC42x8YuXZ8Kzzw7FHffdMkG6mAEQHkoZ5rm+X05UiClrzbE8d+
         +qArOTul0t9J3XvaZktq2zm0ALO67Tdv6ufmd3U6XKhhrqk6onXH6VYp1zcpHqHIacb3
         rX0pNt7684p3oCFCYUgyVv+BGneQmWTdYU7mgwxCvQlO9V7KggzTIOaQe3XonoP9fqyE
         GWkbZhMG15gGva+8GA/H0hyZc23bsjh3lmurdUSYE2wcdThCJUME+eV7WfBueHRJEbN9
         d83g==
X-Forwarded-Encrypted: i=1; AJvYcCWPhZ27yEBzpw1xo3lOgD8hdmDi9T6JVU0bupapeIkAyTvk9wGf3A6tVpplP18V+wQgWGsVpMimkY+O@vger.kernel.org
X-Gm-Message-State: AOJu0YwNNNPlJp/N1NUt5i2iih4X3UvsAWBEYSskdRmFM8EHjhcVm9LY
	QoT93qMoBQrnF7Dcuevd6gtVwX9k2Vh2Pz9Pu+JITQHu7M0DgW5jibzn8+pUa2Yrm6Q=
X-Gm-Gg: ASbGncuhGZses/no3fH1UUjGgmhOmwJ0ZjRaA6ep3iR7IlYQygT/rfwDTjHhFXjE1/K
	7SY7tXw+0W0Art8Gjnsb1rr69MjMITtRF4nhHf/EvnZc+nvtjSFCrBTl/Zw5vrrLEUAZgI+tYGp
	6VGgx1fIs/YfoGnWcdQcSf3F8/0KtponnbES2aictBg2QOGrj40y/jnF4N8MMSKblrClZSOcFQ9
	WVbLa+eTCuR1+0HAaAwhjtuUr88/RIIPNS7ARwhd+YKGeqfhjW5xQCESEftzG/tlDZpCAgEU3lX
	+sMRRaSwmlFXjMLOYVXrR2CKcyOj0IKydMkczPYWL3Arl9S/tiqDDB3tfBLX5+ZfOMIh0CbsI7K
	xoaUKOwc0tTztS0BS8taE168NS1DWVlFazYLA4WCYRSEat4jh
X-Google-Smtp-Source: AGHT+IF1QpqFcMkkrFcPI7L92Qa8qVcCM46GAZ3UfOx8fwQ0i6q08CK1SCZ+XKjU+FsVU7KYpwE0Xw==
X-Received: by 2002:a05:6000:2890:b0:3b7:879c:c14e with SMTP id ffacd0b85a97d-3b78e6239b0mr7443255f8f.20.1753905181405;
        Wed, 30 Jul 2025 12:53:01 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:00 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] Add the STM and the SWT descriptions for the s32g2 and s32g3
Date: Wed, 30 Jul 2025 21:50:13 +0200
Message-ID: <20250730195022.449894-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 SoC family includes timers and watchdogs that can be
dedicated to the CPUs present in the system. The documentation refers
to them as the System Timer Module (STM) and the Software Watchdog
Timer (SWT).  This design originates from the automotive domain, where
the SoC can be partitioned, and a group of CPUs may run different
operating systems or firmware.

On the S32G2, we found 8 timers and 7 watchdogs. On the S32G3, there
are 12 timers and 12 watchdogs.  Please note that the 8th timer
(STM_07) is not described here, as it is coupled with a specific STM
instance used for timestamping. This makes it somewhat special and
requires custom handling in the driver. It will be added later.

All timers and watchdogs are disabled by default, and are selectively
enabled depending on the platform configuration, which may include
different combinations of Cortex-M7 and Cortex-A53 cores.

This patch series introduces support for the SoC and enables both the
s32g274a-rdb2 and s32g399a-rdb3 platforms.

Testing was done only on the s32g274a-rdb2, as I do not have access to
a s32g399a-rdb3 board.

Daniel Lezcano (8):
  arm64: dts: s32g2: Add the STM description
  arm64: dts: s32g274-rd2: Enable the STM timers
  arm64: dts: s32g3: Add the STM descriptions
  arm64: dts: s32g399a-rdb3: Enable the STM timers
  arm64: dts: s32g2: Add the Software Timer Watchdog (SWT) description
  arm64: dts: s32g274-rd2: Enable the SWT watchdog
  arm64: dts: s32g3: Add the Software Timer Watchdog (SWT) description
  arm64: dts: s32g399a-rdb3: Enable the SWT watchdog

 arch/arm64/boot/dts/freescale/s32g2.dtsi      | 119 +++++++++++
 .../boot/dts/freescale/s32g274a-rdb2.dts      |  20 ++
 arch/arm64/boot/dts/freescale/s32g3.dtsi      | 195 ++++++++++++++++++
 .../boot/dts/freescale/s32g399a-rdb3.dts      |  36 ++++
 4 files changed, 370 insertions(+)

-- 
2.43.0


