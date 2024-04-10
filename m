Return-Path: <devicetree+bounces-57919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2578C89F8AC
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 15:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 581771C22C47
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 13:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 755F316E88F;
	Wed, 10 Apr 2024 13:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bLpduocW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FE916E865
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 13:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712756470; cv=none; b=bjaSMeg9wCrp6sA92RgL+B5EejQK37dZPrnavjT9w1eVWNGK3/RuocQxjGQhJ3oigPrOYagkiBl0Q/wwxOGnFE2ioobAVdZoUe4dI0pgiZQP+3Cwe99UX+LdIBUBIC2UjIqgVYf35lgqF+j81okJCIM1fVXTztMXtwVtfTRS/yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712756470; c=relaxed/simple;
	bh=AHg4r1igOHQ/H9MTzUFzqv2TctQMmFdO0mNsX/ev1eE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BmTLQIkGZ+MtvQdvRZr5dgouRW0xcMyCsi1yL+1bIzy6NpmVAni9+c2I9sPjv9nLACMi6OnbmSu+8jPx3GQarM9AO6dbkBdUQYWBlEUwW4r7GXP6b9HQ9NWVDDtlZhJsvPNibkN20QrWL/qwTN4yLaMz8PTh4BLcmlQNkKllLRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bLpduocW; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d87450361fso59267361fa.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 06:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712756465; x=1713361265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+lvKNL9MEQ6OHHG/4yYF9MfyhojBLzLY7o7MaWIK6A=;
        b=bLpduocW3SOZfigBjW9eI9gwZU75N7BWshSqBBh7X6azWnkDPhW0+53QKvOtKIXH5c
         XCWFi11lJI2rjzHy1TULTxqkhxIxKWxtGZXUap9aqtJ8Ql8s3gm+q1StobHoDu1gf++q
         BXBw+DSwzW+Gf6NMBPEoAzyQpNOKcRSyRuvC0FhD/e1TO3oPczl6rYYce6O9Eq2AHp6J
         8xYll2OnYuBQteynP/OGF1iwFNJMWj8TLx+kTLu35A/ZI3pQ4fbgiOlfws4Zb8LWhOzu
         SKl/2cAIr910zB/xfl4mtGPB/wgpkSHpKXFEsGLK8E9nYyhDAF544rBysUexGDbgwfXX
         u+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712756465; x=1713361265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C+lvKNL9MEQ6OHHG/4yYF9MfyhojBLzLY7o7MaWIK6A=;
        b=Yq1yYQsP74eSkY499rlDcDe1LaAErGkTkE1yJb8YP7ZHANu6jdVxAGyqCnhQXb1qE4
         DwL1kCBJfrTDLQd7cmpo4LO2FCr7K3bbxeC72zQjAB40ZH3+v7VUJyLwNnDuSUyr8VyJ
         JOZ+0JTZQjJYQhPUginDfFCxio+RnO0d4zabepohd/v7/csVug5+RL2vJ7SQh3bfWm0h
         rK9gYVWT+vIG7U14AKhPe4kICwdwDeZR0TRLuW/qrlr2pUnuJLs1K4Q2rLYeV3eIjOa0
         yKYIbVos1dpPTKo9S84EFBqDMsGw1sf+7gYcJBb5G1pIufZNJWh5BnNl/vG3m+wKvqGB
         oA5w==
X-Forwarded-Encrypted: i=1; AJvYcCXa2+mjivdbBIqgIvj3DMl5lK4+fXz803OSNFs3zs0q1yyG65maTi6ebDKKEnbijPP29zRSvOOH63+51LFaezZ8vWNPKDURKmDHAg==
X-Gm-Message-State: AOJu0YwRKmkB2ibSKZpn39RIU/BkZsmBjARW94EjbIt+S9lWW01K3tEW
	Gct0cdD6kApHbKQndlyRoPZE7b5IFwrL8V+MIVgORp+phmoz1dWR1AeZOftSNbI=
X-Google-Smtp-Source: AGHT+IFYbRQ4lnDwqKIuup0OKWbE7mK3L/xVYd+kGdrzWnCZWAoH2Gm8LU9jCLdNJsOSjtPrTAQ8wA==
X-Received: by 2002:a05:651c:8b:b0:2d8:3eaf:86d2 with SMTP id 11-20020a05651c008b00b002d83eaf86d2mr2127105ljq.47.1712756465419;
        Wed, 10 Apr 2024 06:41:05 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id n15-20020a05600c500f00b00417c0fa4b82sm872528wmr.25.2024.04.10.06.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 06:41:04 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
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
Subject: [PATCH RESEND v8 01/10] watchdog: rzg2l_wdt: Restrict the driver to ARCH_RZG2L and ARCH_R9A09G011
Date: Wed, 10 Apr 2024 16:40:35 +0300
Message-Id: <20240410134044.2138310-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The rzg2l_wdt driver is used only by ARCH_RZG2L and ARCH_R9A09G011
micro-architectures of Renesas. Thus, limit it's usage only to these.

Suggested-by: Biju Das <biju.das.jz@bp.renesas.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- none; this patch is introduced in v4

 drivers/watchdog/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 6bee137cfbe0..e2439967417a 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -920,7 +920,7 @@ config RENESAS_RZN1WDT
 
 config RENESAS_RZG2LWDT
 	tristate "Renesas RZ/G2L WDT Watchdog"
-	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on ARCH_RZG2L || ARCH_R9A09G011 || COMPILE_TEST
 	select WATCHDOG_CORE
 	help
 	  This driver adds watchdog support for the integrated watchdogs in the
-- 
2.39.2


