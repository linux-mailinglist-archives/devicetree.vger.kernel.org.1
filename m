Return-Path: <devicetree+bounces-38938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 776DF84AF3B
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4C591C226DC
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC8A12A17F;
	Tue,  6 Feb 2024 07:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="P6FwqO1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103EF129A6A
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707205930; cv=none; b=Ps9mCOwv70fCakyJ/juhlRvHzjbOKV5Rmi9bp0Pg6405jKsS3zCU/MoXL+CJAOQEULxQqw7ZDmpkZCkB0lZPDh4vpTNLkMLKEXQcAZBLLCoCNcyBHsDkA3eVfKpVtxEV1356yxT0ncaWKHZNIADz8dGPwyb3VMZe8ztgKajZ1fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707205930; c=relaxed/simple;
	bh=DvQ1sczGGkq58WRMl4pSS1bo4UgCsyILWKb+zlEciuE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=O4ANRc628Ta9QDbkb58vi+msmeLr4k159joM6jcFTrB+W6XvLeszNlRSpFnitjijRZu92SPs1ejU2Wls0C66hfrsfnkRWNtWInmbWI4PZDiL279Df1JAt46ILervxiu0QD9mtCdpmxAOuGGfFuGaRN0hFVjDihCRzVaHnNy7wPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=P6FwqO1m; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40fe6c66c3fso1327705e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 23:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707205925; x=1707810725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MHuChVkazsHDYwoy1Hiy5LrN1UJx2gkrfgcOs8CBKxg=;
        b=P6FwqO1m83t6SlCpU0NE0+0lL0G9SD7h+ZBtar6c6PcLzApfzDa+63zqsaf0X2uZL9
         k1gOxeEsYNG865piNeHynDiDba5KNxBaPQ66E3ebOTv02Ip3R3JHVDZjffc5YT6Ts4UP
         ZBI8Fau3kM/R/jy053pIswMPNzI0KJIsjop2+iX6d/klu0ye6P5VWYSSQ7KmPYslwn6s
         ySxTp0AWykIkX64SN2rAWoMydHkURZsK6/PK0uXI3Gb6OofrEUVyGw1q7+K7hZlYRdtg
         q0gwFbOl2qYfpkicUMwUYJ4EA6lQRk/VLBmm6Ci6qVQ0olArw4oa9U2w7oaHvLPoU/pK
         3PIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707205925; x=1707810725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MHuChVkazsHDYwoy1Hiy5LrN1UJx2gkrfgcOs8CBKxg=;
        b=KvMd/gdMKVAN8ZK81fWJXtEX8IZxHVWph/+Llv/x2q29y99Vz6ndyYfp3T1snnj6cx
         FFVXqGfiqlMAMSKW6BHhzGoUu6wdy10KNbZxdKSktgdCdXmL9yXpuEaaZrsgQ+6XypVC
         w4ayHJYi7L7SAcWQXO8sxzzcJzAUGDOXGGKn2IZhpVhJWwvA4gEmRPchUn0QgHul2bKZ
         PquMZ48YcfB/sFoURgdbNqnP1Od+KGL2bI40KTLxnGOAZQN+XCvPgeQf/rwNZ6ymgfk+
         pacCl77sX9rBsEHstt+D7mIGtxgetL6B5w4TsL93TqL0oM4j99kn6Vpnh9mdXeT58RGH
         lESg==
X-Gm-Message-State: AOJu0YwRZxCez1RESweNNJaKAXoy++xWqkt3xKdVBiamDnaVXHhCcBZ/
	0VwG6kf36e4syuPB8qQFaE96gqDNadiMwnDfU/RlOJxbEqclDT5ZWtvmAHPZ2hQ=
X-Google-Smtp-Source: AGHT+IHkTXFrAUVvFQmRS87Vo7k03jBuvWrSJ3la9Ggb18yamLROH8wNS/71LyA42VjbljzzLiQaNw==
X-Received: by 2002:a05:600c:4f08:b0:40f:d598:bdbb with SMTP id l8-20020a05600c4f0800b0040fd598bdbbmr942878wmq.11.1707205925116;
        Mon, 05 Feb 2024 23:52:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXQd0XxgUfTQHr182zR99QllPWjQ5Lf478awjZTn68xLCZ2fyFS5zErrMkcf5cMjymRAJD5oKqf4J5olT0zg/tjc4quJ5RT5xvdbMvSjRKS+v9+4cuyD8WjpjQRnKX1RLyTx4uLNgjIx5OlELUApnlwDFK9A1AbmOm4J56pSn2RQaBFia0vOVdMKdcCccPhg3G3XLnZX8g0LQ3966IN8HUOhJpuRPuYwhYbO5kbR1JpGmoFJZHDvkVANXR/NWWVZPzf92+UEpLGwJ5BD2qtUpOI8VN1Q/bP1Ns5EJFl3BJQwdDiNMRKCNlNM5EZoGyjy6mxBsuSbc/6ImSDYd5rBBV+l24yKFIVbcs0fyywUPAP/Se4shtx6kCL0pQevllBTawtwF++pthb+m/nYA1kMcskb8eoXVg5ur8ndu3OV1x73eM09YuzbmkuZiNp4LLlgdKMmbVakVHabqKLIEokMv6Uup/mCAOknyUAf3UsbyN1jooRbZZY6Tbf4n8tl0jN2qWIub4zHjaiZA==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.154])
        by smtp.gmail.com with ESMTPSA id j32-20020a05600c1c2000b0040fbad272f6sm1106843wms.46.2024.02.05.23.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 23:52:04 -0800 (PST)
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
Subject: [PATCH v4 0/9] watchdog: rzg2l_wdt: Add support for RZ/G3S
Date: Tue,  6 Feb 2024 09:51:40 +0200
Message-Id: <20240206075149.864996-1-claudiu.beznea.uj@bp.renesas.com>
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
 drivers/watchdog/Kconfig                      |   2 +-
 drivers/watchdog/rzg2l_wdt.c                  | 111 ++++++++++--------
 3 files changed, 63 insertions(+), 51 deletions(-)

-- 
2.39.2


