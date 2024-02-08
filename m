Return-Path: <devicetree+bounces-39696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F6E84DF27
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 12:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97B8DB2AA0F
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF886F079;
	Thu,  8 Feb 2024 10:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Iw7HTzt+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2236DCFB
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389906; cv=none; b=ns2bXzc/yXlcQcFse9TvuokmP0h1+OrTiSAr4bjwFcRb/71rd9qW6zf040dSwfYTd2DMfYagnoZh/5zqeBPGAEahcAB7iN76tGrq58xckn14xZOyMVwl7K1oLTLzu3q8X/VhYBWkot9jiQO3ZxGgptrr0vNgmeT+xAK7SHJwCyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389906; c=relaxed/simple;
	bh=uR0oljfQoh6iB/WKm0lAA5t+I2JdXaZjt7gj/Jb+GGE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bqu7E+Xf3xtQ8YjSRQAOEVPQObQQV7nhJEwzWe/iPQloqAyyzOsXsiDE+30Xwg7rJ/KyHO6IvtxvBwqIms8U1OmFyDjekwkRItvErhf7ZAWvakGy3pBrJDck3eh3rEgx03PZ3hFABiyykMp79Agvjht6p9hRrgSsPYLFCPb1nxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Iw7HTzt+; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5116643c64eso3031397e87.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707389901; x=1707994701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UMiRLJAT90vqgAxXHmFa9vUy566zx4/QASUV1IL63DI=;
        b=Iw7HTzt+qtQbZVltZFo8Cwuur1cnPJ6n5rnrycbnzF4wm0ATNSwUmYOqpoSILtN5H7
         7A24UgMHsN5LI/TTMUM3mlkS1Z9pDjnhwnu1NVOY2tKXdtVg7uvwnv74XyHGvuXE4WO7
         KEIWvIshfM+RK1T5d30+a0oVdW0YDceGR64nT0tBcIGk6vheRggR5UIdoUMybFTDFpp3
         103tta1+YAklfoMLgn+p51nM7QBGIFl3WmnbtEwweYHb6N1MfBkY5/1w+w+jmN4B/TF8
         KTefdF7y0RmMLz8rs4swmYRm3fbORfoqXVQg9Hj/iD7CRzbFJNNmjS5Ml7DBGdzGEONQ
         F01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389901; x=1707994701;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UMiRLJAT90vqgAxXHmFa9vUy566zx4/QASUV1IL63DI=;
        b=Q9cnVKRLA8z8sQ0Rq9PEc9oIoCpwBRfEAsq67FlXAbJJseLm0pXxiDvrEqNp9t9cA9
         69ZNWotDUKND5OqK+hOshTic1ze7muHfzK9DzMhB9yEVePe/3HzQrryzBRVZ1j8037Iy
         12+smxgxlglWf+kF8OCy1aPyiPX06nMDJmiHcAHbJ5pT8EorOj0ShsDIY2Ldh5c867lt
         h2bYHMNbiBbKcmOEQMDqV24sldVv6Bb1F6ZFKgdumK84qLj16UjAQ29YgZ3u3RCVmTFj
         qhjyDRCnYw45jY+npTvMdcMHgxEjYZAe504XSUidnwPPKJERobi7NWv3EFMSN9aeqzXf
         78Ow==
X-Gm-Message-State: AOJu0YzJMG8pZVi/EP3Z0DJSoriIFfCBCOEbyDgyHMrJhPQHc8c3BIFy
	SeuO/wPb5HaC01i0qPSdmEi8Q5iI9rV9RYXUZhjaO5UreKgnaWyHAJJmG7IOa84=
X-Google-Smtp-Source: AGHT+IFWWDTgKV5y9irRchCK2CIohgINcNpLRXP9xak3uGCg5YgJW3kvp9t3iKw2Y/Im+ltjm4aGeA==
X-Received: by 2002:ac2:5e9b:0:b0:511:484a:dacf with SMTP id b27-20020ac25e9b000000b00511484adacfmr5185800lfq.30.1707389901282;
        Thu, 08 Feb 2024 02:58:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXxa3EjxzfRHUFyD5fIO3DNnW+M6vp5ApMtQ9Vw7UgjlljgfptNSF5+qrzDJQWcaG4QGfIr6kGeHO/mD7ZPAIwRcjEtHo8YvGo/GWWPh3eWGw2tyxam6Yy8t0KJ8pYQ36kuw9tfe/s4PXFvh/yGVsYuZTbU+lL10UPDioL3qFMN70iDVOr+hp626KqeyxovmWGyLCg1CBbtQGz+Y6kBUDndrV2HluDPTlSkOvofL2pxGYG6igjMB7QZqEieNLnuM7EnXV7PzJVFV5ijxeyAkHEeGTiTxqgrht9OtgVVXPSJK2ozpQoW2WaYFuvZtWnqTZ6nmyO5WbyA7lL5AV2uKuRfn/qS/30pC0UIQHNW8XrdsmUJ8knheFVfQKmJfmhhDEeqz6LSYB/oGp9ndYUxjW2nKEcVcJObiZ3LqwQcSNSDOGnOSkf5J+XtZavjvgE7t559nY7SS5qy8PGkw9M/IXw5+EoDv1ZkvwJlCkos7gQeP4BMWdrcaF5LHe7CaCDGshJRArG49+IygA==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.45])
        by smtp.gmail.com with ESMTPSA id a6-20020adffac6000000b0033b4a52bfbfsm3344153wrs.57.2024.02.08.02.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:58:20 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v6 0/9] watchdog: rzg2l_wdt: Add support for RZ/G3S
Date: Thu,  8 Feb 2024 12:58:08 +0200
Message-Id: <20240208105817.2619703-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds watchdog support for Renesas RZ/G3S (R9A08G045) SoC.

Patches do the following:
- patch 1/9 makes the driver depend on ARCH_RZG2L || ARCH_R9A09G011
- patch 2/9 makes the driver depend on PM
- patches 3-7/9 adds fixes and cleanups for the watchdog driver
- patch 8/9 adds suspend to RAM to the watchdog driver (to be used by
  RZ/G3S)
- patch 9/9 documents the RZ/G3S support

Thank you,
Claudiu Beznea

Changes in v6:
- update patch 2/9 description
- fixed the dependency on COMPILE_TEST previously introduced in patch
  2/9

Changes in v5:
- updated description of patch 2/9
- simplify the code in patch 2/9 by using on a new line:
  depends on PM || COMPILE_TEST

Changes in v4:
- added patch "watchdog: rzg2l_wdt: Restrict the driver to ARCH_RZG2L and
  ARCH_R9A09G011"
- collected tags

Changes in v3:
- make driver depend on PM not select it
- drop patches already accepted (patches 1, 10, 11 from v2)
- re-arranged the tags in patch 8/8 as they were messed by b4 am/shazam

Changes in v2:
- added patch "watchdog: rzg2l_wdt: Select PM"
- propagate the return status of rzg2l_wdt_start() to it's callers
  in patch "watchdog: rzg2l_wdt: Use pm_runtime_resume_and_get()" 
- propagate the return status of rzg2l_wdt_stop() to it's callers
  in patch "watchdog: rzg2l_wdt: Check return status of pm_runtime_put()" 
- removed pm_ptr() from patch "watchdog: rzg2l_wdt: Add suspend/resume support"
- s/G2UL/G2L in patch "dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support"
- collected tags

Claudiu Beznea (9):
  watchdog: rzg2l_wdt: Restrict the driver to ARCH_RZG2L and
    ARCH_R9A09G011
  watchdog: rzg2l_wdt: Make the driver depend on PM
  watchdog: rzg2l_wdt: Use pm_runtime_resume_and_get()
  watchdog: rzg2l_wdt: Check return status of pm_runtime_put()
  watchdog: rzg2l_wdt: Remove reset de-assert on probe/stop
  watchdog: rzg2l_wdt: Remove comparison with zero
  watchdog: rzg2l_wdt: Rely on the reset driver for doing proper reset
  watchdog: rzg2l_wdt: Add suspend/resume support
  dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support

 .../bindings/watchdog/renesas,wdt.yaml        |   1 +
 drivers/watchdog/Kconfig                      |   3 +-
 drivers/watchdog/rzg2l_wdt.c                  | 111 ++++++++++--------
 3 files changed, 64 insertions(+), 51 deletions(-)

-- 
2.39.2


