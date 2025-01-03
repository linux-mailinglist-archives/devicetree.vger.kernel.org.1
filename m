Return-Path: <devicetree+bounces-135374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB46A00C2C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D44977A1E98
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1E01FBEBD;
	Fri,  3 Jan 2025 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZtVRxumZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F651FBEA2
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 16:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922313; cv=none; b=Jgy6btwuo0sadUJJ80WcgfImeV7i0cyHCMTGTB/naYm9JRvJPP7n7jTjqjGJdDrqYwv/pK/j9LhnlRDQFtQoMvkHwijnK0jdSYT35rT7DVYqzAH8SOEfyjF6Y3yVNE6Rd8D5dbupkp1135YMFFXdaq6CwrWGCD4SZTdkAExHSZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922313; c=relaxed/simple;
	bh=yivWCk87L5Kn1vLLCLSBD23i/m0z9LXbY0astKk0t14=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hugaZ9EOvNgM/wZSul01Mhh1IC0rkzCKMxiTvqkV6F1N5yIxlkpKMizV4kuKNjxdtiVnB5KtKLBNimsiCIZiPYGT2ei8b/dlQvxcocaNNgiFN4TI3q03Rfu3wxKHtfo2DZ999FerDm+7bJPTG7paJFhFdu0WoGkAWyA+oS2auOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ZtVRxumZ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aaf57c2e0beso697545766b.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 08:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1735922308; x=1736527108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z12n6pwBuO+Lp/RU6Y/RGTOaXGSjqsnsbDrc/bXr6NI=;
        b=ZtVRxumZi6oAhVXSSG6Z9GCRYi7LXtt+pArtl/iylPnSZQtPviVxWoDbiUNgXEHAWj
         BesXaS3E2LRXKY7r/lp+9inSCoN4ZdJi1IJb25/dUWYY9LJHEf6pYoumM3kplxK8zPQ7
         98ccXllrKaXDCpelj8IRmDNg2cr9XcAE36Jn+mB0+7BVJa0BE+7GHo7fpedpx0mU9plh
         j2nilDpNY/hOTaJh0d7G82Jmaf6T5FdOEw/NhmzvwJP9/vYXK8YIsGY/zLh5Y6+q8bql
         YkQl8J+Y7zaBfna2NkQL5+2oVjoZFf+HlAKHDiqwMK2Xzw7bwYKrh4/Ks6VloIHwNwtn
         2peQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735922308; x=1736527108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z12n6pwBuO+Lp/RU6Y/RGTOaXGSjqsnsbDrc/bXr6NI=;
        b=J9G5cm2stNOieKsO2fJ9/WSCUOCTmi0WoVv0S3n3V61uwNqEZWWREiUB9zvV3iRSrn
         iQF11MTpQEqKxGeafFtbYCO+zORTulF3zgkR8mU7JHalc5revoKJTz5soDudaFyMN5I0
         jjglov3QbFbiNEk2B+4U9PA3ZZ4YzTdhUr4G25tDg12y4Iw/lz6894pwN+WPdHkIF2Ls
         iwA26WJBZpnbfIBsdEMHcCuKNPwowLmQSuAI+km/BMfi9uBprGaPLgOM8yAmXD8OGMEa
         V2gZc9gZEM6tXllBU4e9bkASrj1XpEqDxRC+2wrPhXb89JuXLDF3pznUYyMLt9EhSm9K
         ghnw==
X-Forwarded-Encrypted: i=1; AJvYcCWQn6V4f5+DGJ+ERCyWF5FCJzQR6bkRGL+YF9QvnOMvfIoVTRwcAqVADucAOz1qRos8dANxuVXKpVJG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpzuy86D+xvfEQAAXXkVkpTvDH2eBresGeFQXqGvWLXSNotZbk
	zu7bhDX7qHfqmhEzWmP8/I1sqPOMkaBWvLqrKdSdvU8nXO/VAhT70zKdrKlWfIo=
X-Gm-Gg: ASbGncudFIaPXahC/X+ZFyb51SMb7cBDfGI2eRpDJY4IRoCQlUJ8zLjXLgvlaZEM2Im
	HDesL64mk0cTXV8OyEOoYAvSfSnb05ATdCkqR7XbhpZFXIvzQk6yzX7fnszjohacXB0GqzywHNB
	L8gqdCAIjWNCAQYCUdST/Sf6IioM2QgOdj1wuKsrx0R8t7kz4bUcuogJOfdmcFRHh5DkXOrHf4/
	8fj5+LzKYf1Frro+9LebqXF/d5AkZULw4JoEaCJrESAyUq/FvEFkhjex5rjkvUm2AbkS/zr7eHf
	r460TxhAsw4=
X-Google-Smtp-Source: AGHT+IHvB3jSYSwVEdM8kpizh++WgojhHChTKlXDXhzjvg/G2jGnSPtOR2X4YibeMuE1jT2+Wk3xTg==
X-Received: by 2002:a17:907:7dab:b0:aa6:98c9:aadc with SMTP id a640c23a62f3a-aac2d45fb01mr4593376466b.31.1735922308221;
        Fri, 03 Jan 2025 08:38:28 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8953b6sm1932984066b.65.2025.01.03.08.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 08:38:27 -0800 (PST)
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
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	ulf.hansson@linaro.org
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 0/6] thermal: renesas: Add support for RZ/G3S
Date: Fri,  3 Jan 2025 18:37:59 +0200
Message-ID: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
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
- patch 1/6:		adds clock, resets and power domain support for
			the thermal sensor unit (TSU)
- patch 2/6:		adds support for non-devres thermal zone
			register/unregister 
- patches 3-4/6:	add thermal support for RZ/G3S
- patches 5-6/6:	add device tree support

Merge strategy, if any:
- patch 1/6 can go through the Renesas tree
- patches 2-4/6 can go through the thermal tree
- patches 5-6/6 can go through the Renesas tree

Ulf,

I've added you to this thread as well due to patch 2/6 that has a similar
root cause as [1].

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/all/20250103140042.1619703-2-claudiu.beznea.uj@bp.renesas.com/

Claudiu Beznea (6):
  clk: renesas: r9a08g045: Add clocks, resets and power domain support
    for the TSU IP
  thermal: of: Export non-devres helper to register/unregister thermal
    zone
  dt-bindings: thermal: r9a08g045-tsu: Document the TSU unit
  thermal: renesas: rzg3s: Add thermal driver for the Renesas RZ/G3S SoC
  arm64: dts: renesas: r9a08g045: Add TSU node
  arm64: defconfig: Enable RZ/G3S thermal

 .../thermal/renesas,r9a08g045-tsu.yaml        |  93 ++++++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  43 ++-
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |   4 -
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a08g045-cpg.c           |   4 +
 drivers/thermal/renesas/Kconfig               |   8 +
 drivers/thermal/renesas/Makefile              |   1 +
 drivers/thermal/renesas/rzg3s_thermal.c       | 301 ++++++++++++++++++
 drivers/thermal/thermal_of.c                  |   8 +-
 include/linux/thermal.h                       |  14 +
 11 files changed, 476 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml
 create mode 100644 drivers/thermal/renesas/rzg3s_thermal.c

-- 
2.43.0


