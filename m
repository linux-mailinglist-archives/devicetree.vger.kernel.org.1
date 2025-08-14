Return-Path: <devicetree+bounces-204608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AC4B260AD
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DC7B163AEE
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EAFD2EA15A;
	Thu, 14 Aug 2025 09:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vrskjrDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4892C2E9721
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163101; cv=none; b=q+WO/YZBXy2FPBsvW/mSxtgKEKHW3xwAfihXlqpWN88K16Zjdyqs9UpJ/lb9mWf3ouKQB2STfj3+88UusMKkgkdhF2TR8crW9cqIaedMrZcqwGzbSn+aDhvujJOuq5OMTUHOIyUnyOe+Ws9l2/Z9fch6kHVddNM+8ly5+phTMuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163101; c=relaxed/simple;
	bh=sfXErAu2y829baB7asLxYKvQd/EDsFZz8LkUJdrlX+s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MWAJhKA+HYw55LceBJ1SdyJdhoJhJKm1YfZMeXQZB2q2qWjhYVYRkwb9JwoGjrRJAQVjGVUZKnNxprAOPvnfhHI/cpwbTxszP8FuSXBCWaNdMPSNzFeVnagsiq4mRPuaX2+CNT/OANTCQ/cM/y5fLN7nfC4j13dFb44mcxG4KjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vrskjrDW; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3b9dc5c8ee7so494466f8f.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755163097; x=1755767897; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ffaHlWpu8RE7aequBY+27dl9SNuH9GqRdQDvB6bAj+s=;
        b=vrskjrDW+yTCwnAjf2FdtgrY3NMOG87/i8gdo4OdV8sqSd461Cme9WWyLcr8JVcp60
         bct5xwOOehrBp2YNXZmdltdbbhHBai2Upp05ETDkzqFdVtkgEVwialYPA72Txdz3PLao
         nLohiPbY74h5VYeYSfzQSfaTFP1aJNtheSufIDOKTva2OjZTsztWTCqm/ZlhKny7Eiok
         iE1SS+bCDWRFbT9/hSW2T79L549PJnnQZFVm3UgqGxFcchHOHHDwc4P5qXmbN0stlgrp
         4iSq17Wa9pULfjrEjasYVhnPVpYvQFvbD4z8VhlYh1rxlTy2V3EOncRDl12R0AobRLkj
         V7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163097; x=1755767897;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ffaHlWpu8RE7aequBY+27dl9SNuH9GqRdQDvB6bAj+s=;
        b=uN7fcGwKco1Fql3ocmwjKX/GOOD4rUVhPUG8bpUnfgANfNqrTVqLD8SwhsEAqtLfBO
         VEjg604rKDC8Yl83hc807qShq6RkbdFjtDPKEGPNDDq76s7JonheLPS5+TO+PpI/U0M8
         lKz0sdZD9ojd4sYo+AXgMRbui+XFD8b7JZxRMfOhR7MqLv73U7VmB3z7ZzSCEE8pEIkY
         kd9c2KnZIwOVzPFT0vKI7UJ/BopLYXOo06x0KClbfL5p3aZ1ExJ6ImJOA/aoefjjUxes
         T8MzADeqxyyJ3quPqSWqg/gOrgAC4jUe2psYy1/lVnz5HO5Xu2tXlfHXVykSZwQ6t5C1
         ExFQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0yefbcd4YUlfBWcwOa/oMXEO5JtfGb+Zd9flj8ltrAdxxWoVgJclf8h4QgPKT4kws46xYQ7eF3m0X@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6wzRQ9EzyzlO5IbxooWhrxYhBAf5FLl0tGpOHa5VxmJz5bQq/
	OPRhgn5fZbKGG+3xMsfFPDzrSimTtbdwUXOvAXkM/hWcTmwUO/h0+72rXz1CSXmCeIo=
X-Gm-Gg: ASbGncsAOgsnz+JtzxG6CWYfn+kgv5XAYjmQHmgJ26ISGNT0lN3C17eSlxxH+K8mqpg
	z8K76n+0S0vuWab2lLJjBRVxcP0cZnsiAM7WTKDd6I3mW9QJ7z20AX+KhcoJEdovc8S7VoRwwqr
	7WIwp9eopgfpaKy2cEprQjNoX0WrCidyZTXuGNH1+hTZvD6Qz5aWt20BVYi8sitVG7MoEOPvDNw
	RuTR7mt5tVlUkTSTObKju/tNSSpaTvsbXXJsTTe2EDNNoo5VheA4/YopWo8hpIdkdR2TvIr3FhI
	L47S5P4pHqgulggpZOpunoJNDN74A9/WliENB8cvJeYQgqjXraBY5A24ZeJ4A8c+l12XJRMtv8t
	T4Nx/Nvzukt6KIPhm0QyIi7gNn1FqpZ4gPySbKbWWr1kOMh8=
X-Google-Smtp-Source: AGHT+IGCOwNbc5nUe5UXc9T+LlZ8/LSjfCjdWogYZwRPwtV/r3ZErXEW4EvaurTmA3Z5w5QHIDd2wA==
X-Received: by 2002:a05:6000:420b:b0:3b7:76e8:b9f7 with SMTP id ffacd0b85a97d-3b9e414d51emr1806910f8f.10.1755163097393;
        Thu, 14 Aug 2025 02:18:17 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:ea13:2485:4711:708])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c74876csm13861925e9.14.2025.08.14.02.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 02:18:17 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/2] driver core: platform: / drm/msm: dp: Delay applying
 clock defaults
Date: Thu, 14 Aug 2025 11:18:05 +0200
Message-Id: <20250814-platform-delay-clk-defaults-v1-0-4aae5b33512f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM2pnWgC/x3MQQqAIBBA0avErBswSbCuEi3ExhoyC60oorsn7
 f7b/AcSRaYEbfFApJMTryGjKguwkwkjIQ/ZIIVUQlcSN292t8YFB/LmRuvnXM4cfk9Y10JIrRq
 nrIJ82CI5vv5717/vBzozBnltAAAA
X-Change-ID: 20250812-platform-delay-clk-defaults-44002859f5c5
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Michael Walle <mwalle@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Currently, the platform driver core always calls of_clk_set_defaults()
before calling the driver probe() function. This will apply any
"assigned-clock-parents" and "assigned-clock-rates" specified in the device
tree. However, in some situations, these defaults cannot be safely applied
before the driver has performed some early initialization. Otherwise, the
clock operations might fail or the device could malfunction.

This is the case for the DP/DSI controller on some Qualcomm platforms. We
use assigned-clock-parents there to bind the DP/DSI link clocks to the PHY,
but this fails if the PHY is not already powered on. We often bypass this
problem because the boot firmware already sets up the correct clock parent,
but this is not always the case.

Michael had a somewhat related problem in the PVR driver recently [1],
where of_clk_set_defaults() needs to be called a second time from the PVR
driver (after the GPU has been powered on) to make the assigned-clock-rates
work correctly.

I propose adding a simple flag to the platform_driver struct that skips the
call to of_clk_set_defaults(). The platform driver can then call it later
after the necessary initialization was performed (in my case: after the PHY
was fully enabled for the first time).

There are also alternative solutions that I considered, but so far
I discarded them in favor of this simple one:

 - Avoid use of assigned-clock-parents: We could move the clocks from
   "assigned-clock-parents" to "clocks" and call clk_set_parent() manually
   from the driver. This is what we did for DSI on SM8750 (see commit
   80dd5911cbfd ("drm/msm/dsi: Add support for SM8750")).

   This is the most realistic alternative, but it has a few disadvantages:

    - We need additional boilerplate in the driver to assign all the clock
      parents, that would be normally hidden by of_clk_set_defaults().

    - We need to change the existing DT bindings for a number of platforms
      just to workaround this limitation in the Linux driver stack. The DT
      does not specify when to apply the assigned-clock-parents, so there
      is nothing wrong with the current hardware description.

 - Use clock subsystem CLK_OPS_PARENT_ENABLE flag: In theory, this would
   enable the new parent before we try to reparent to it. It does not work
   in this situation, because the clock subsystem does not have enough
   information to power on the PHY. Only the DP/DSI driver has.

 - Cache the new parent in the clock driver: We could try to workaround
   this problem in the clock driver, by delaying application of the new
   clock parent until the parent actually gets enabled. From the
   perspective of the clock subsystem, the clock would be already
   reparented. This would create an inconsistent state: What if the clock
   is already running off some other parent and we get a clk_set_rate()
   before the parent clock gets enabled? It would operate on the new
   parent, but the actual rate is still being derived from the old parent.

[1]: https://lore.kernel.org/r/20250716134717.4085567-3-mwalle@kernel.org/

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (2):
      driver core: platform: Add option to skip/delay applying clock defaults
      drm/msm: dp: Delay applying clock defaults until PHY is fully enabled

 drivers/base/platform.c             |  8 +++++---
 drivers/gpu/drm/msm/dp/dp_ctrl.c    | 10 ++++++++++
 drivers/gpu/drm/msm/dp/dp_display.c |  2 ++
 include/linux/platform_device.h     |  6 ++++++
 4 files changed, 23 insertions(+), 3 deletions(-)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250812-platform-delay-clk-defaults-44002859f5c5

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


