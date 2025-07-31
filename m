Return-Path: <devicetree+bounces-201056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA543B172B0
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AFFA18C681B
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5272D191F;
	Thu, 31 Jul 2025 14:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pRhDPM/L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F960231852
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970520; cv=none; b=mTwVtk7gmWUNO6GIDUm9aigipYuz2MzBrjC5fn4IYIYv+j/y772x6G3iwCov/c3X7mqlBbWtROLAwkUwknCmXNmayaNbaZsEtDlYn+ucba0E/P4xgtx16mR1gVY94xhATADMYuxjGI47lrxKabzCwkKkUnn+GMQkriVse+KY3/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970520; c=relaxed/simple;
	bh=vtDoBOhDgvfsTUyaaPcWyqShvPac5U3nE2ogLxWYfzk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZeYX/L3QYRsMKK3ZJNl/pjymez71FIKK2oBpFb5eyQgDZAxgg9zV9HmvEcdhoiM+bs7N48bkBb8XEe/ttO/2d4r3w2QnvKhLcNAPBPnWt3DmFd9JqIH0BUPG3U98fcjhrbadfiRQjm+PIciJaw23EtOmEJ4dx2NFlsG7dLiZWUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pRhDPM/L; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b785a69454so673310f8f.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970517; x=1754575317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GV5s6FOxWw6F5tawQDBpDciMQ1YhmYggnl1ycVHKgck=;
        b=pRhDPM/LyLj9lwaUCnMMPHCkD9HiKSg/3H07nzENZdp+FzKQDwLhqrcBUAgwyH/tmN
         /0tZ1kIa7C44SC4qjy2VEu5UkVpCJGUAOOkj+q2tzq37ygFiAh0iNrBESy65lBX9JU4C
         5QELrxtBtvIP7uWGPiqNglNbrObcwZJpAOAEUCRYqfZp8rwVmlOI5EMpeL10QjsdtGPw
         C6WGNP+stoypfgErUA9xCf10jgq0YWnGOCEPG0fb2SmvIINF7JG0aCYYM5aiATOcmkXk
         gDnSM/o6EXTyyE50pa0TRPH3tfusizUdfzBFsQTOwQX5fs4IzZA2U/QhvpjjpHPuWeeW
         maRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970517; x=1754575317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GV5s6FOxWw6F5tawQDBpDciMQ1YhmYggnl1ycVHKgck=;
        b=wSXkOn4VZsChaCLZcuw0/Qxy8vfYnSh6+uu2wVtr0r49Tm3fPkiEF3fU3LCblfZO9D
         Gc0ek3ByKJV5XOnUITwpt0/+UdNEdcpSb6eaoedjTzajcRKbAhLHnN1ka2FmQeLb4sK2
         XwZ0hiSGTtNMzCg1pcuMU2wEkdSSOA7c8pNSkeHRPxRBPaLo8DJSlY0boY4at0iLKiqw
         Hj9m9w9jaTwx6pTix6uSrE0D3nQztuZdo69r76brIxsUbeiW71A3CUhla4g3tfFIhO7D
         RD4zIFkSVXvaLasUWytZ9IY5wSpXc2ceRgkml/aXQk6Uczn/qGgUWjLNRONYQ3aBXwaI
         S3KA==
X-Forwarded-Encrypted: i=1; AJvYcCXuSuIKy9UwnCwCX0ACx/JHdK+eCADUZ2EP80P70fibuFjStuQAO77Ko/UUzW/2duKIyLlw5BImU+b4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyoz6b9Ok4VZzC6acwuSLMQAUa7joPUYRxQNdh/SP94QaV40vtE
	nnGRYB5WlHNhKzwPfw57rsAEw59TfPBVmz+W7W2BhWqNHvkBtwBpWTutcbPhTbiYgdA=
X-Gm-Gg: ASbGncvz75YbOVSkNeu+lK1h1p/79UgL6icoFG810A35I9QlDwgo3Ddhz5JkUJoiYvf
	XBOx09BBm24dYNpUBEbv3NLaW/Y/LQg2Mo7vSjERHnINJ5wZStKQUeALFy/s1LL0busnQ7FdgRd
	rC1KiY/o4Yts/+po5C1adGB62R1Uqb6eXYw0NkVYqJ3pylW9UvhaEg5NQ6jiPuQoEL6ZC4ZQZ4d
	MaUdrawi0cx/3Z29F3vBtIv6sAQEc8GYfO4Enn5Q24RWhpjEtPZG4IAntfAIHhudDvGs0Bry4w4
	CHffMbsw5EPfoggBjnWCurNy4t0gkVXzRKCU2gjAFOFCu3A33HKo44f2BgOz3EZuryiNOK037sY
	GaDsUIN/e2qPpQW1Nxqwl7WV2DKGObYf+SUE3XWokvjDX5qyhLS6BUkz+qL0=
X-Google-Smtp-Source: AGHT+IELpYq0cfUwdhdal+guuoengtu4ASva2Hzj0xykx429WqgpGqubTQ/jYn7p47HzHjuQsPyogw==
X-Received: by 2002:a05:6000:41d3:b0:3b7:974d:5359 with SMTP id ffacd0b85a97d-3b7974d597dmr5098700f8f.32.1753970516376;
        Thu, 31 Jul 2025 07:01:56 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:01:55 -0700 (PDT)
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
Subject: [PATCH v2 0/8] Add the STM and the SWT nodes for the s32g2 and s32g3
Date: Thu, 31 Jul 2025 16:01:33 +0200
Message-ID: <20250731140146.62960-1-daniel.lezcano@linaro.org>
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

Changelog:
  v2:
    - Replace the 'description' word usage by 'node
    - Reordered the nodes in DT regarding the address ranges
    - Modified the change description to leave the ambiguity regarding
      the architected timers

Daniel Lezcano (8):
  arm64: dts: s32g2: Add the System Timer Module nodes
  arm64: dts: s32g274-rd2: Enable the STM timers
  arm64: dts: s32g3: Add the System Timer Module nodes
  arm64: dts: s32g399a-rdb3: Enable the STM timers
  arm64: dts: s32g2: Add the Software Timer Watchdog (SWT) nodes
  arm64: dts: s32g274-rd2: Enable the SWT watchdog
  arm64: dts: s32g3: Add the Software Timer Watchdog (SWT) nodes
  arm64: dts: s32g399a-rdb3: Enable the SWT watchdog

 arch/arm64/boot/dts/freescale/s32g2.dtsi      | 119 +++++++++++
 .../boot/dts/freescale/s32g274a-rdb2.dts      |  20 ++
 arch/arm64/boot/dts/freescale/s32g3.dtsi      | 195 ++++++++++++++++++
 .../boot/dts/freescale/s32g399a-rdb3.dts      |  36 ++++
 4 files changed, 370 insertions(+)

-- 
2.43.0


