Return-Path: <devicetree+bounces-71081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7FD8D5B0F
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DD841F26EC2
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 06:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C9B13D531;
	Fri, 31 May 2024 06:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UyFKYK5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FC8132139
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717138687; cv=none; b=HqRj8Erww67AmbtXxdp4CkzTAC8mostzuA83tCyfITT5tmf5LXR63FcqzXmt5ZxIVKNZ8JZ12Z7up6gqGbSGvu/QkHvtST/Ehd+Ck7mFb0V4k6bsHML2KA2wAoo4O89wvC41+29vFAW2ngmoxH0wxWcNDkBIjihX12vsar1bKic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717138687; c=relaxed/simple;
	bh=SgoDvQnygahdoutjIc9prfX+wgUSyYSEJoNImCfQ4pA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m6ThUxE7T7mL49/Iu+AJlY/UOSLU0nFX+JnMhRjxM7EmniLzl6XJaXRtgD6wVnqH+LJlz1uGvHkRShQ9rZ0vO600zaROzo++WpvM1xArvIti2PCD2Bhr/xwhZGB1jpxSpLAst84NQ0YCA3lfl6puFu1h2KdJDOPMuBI/WuH2bxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UyFKYK5L; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52961b77655so1973810e87.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 23:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1717138684; x=1717743484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tBS+l7TGaeAomOSQfJ8g88idIPgPbvW2eMoPLMjgw2I=;
        b=UyFKYK5LOmpVMu8JVYeh+pp3z3D+b/RcvYc0MAp+fD5bxFv4iqe/1YZRhW0619FfU2
         Ty7QwWyc+rw8siiHmWsW06p8O6PFH7WONwwcaYHKUerndmPiIQqGloNQtqaAFGl0LDBe
         lSUT2WXCPL/IKQWYdWUF92DJGsJ5w66rifGFPNBgp4HOECmTnmTUWXnv6+X5k8HN/s8L
         PSnWjR6Tdu980CKl4+ZjP3UkyvUHQvvKL36VcfWELHTkKVOC6p95ME6ADMCARZTsQdp2
         41Zx34V1YJ7rs2goT2zkg5uQ47aHMKp7ii0ULmMi83MsTPXPRRXBDO6LStNrMAq/iiGm
         3bHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717138684; x=1717743484;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBS+l7TGaeAomOSQfJ8g88idIPgPbvW2eMoPLMjgw2I=;
        b=BnUY0bRvPWF1qKprO1oV4BIYxNjUKPFWWv7maLmEZu4KpdJe8QfFh9womik4uaIO65
         gX5UeAr3ARjqxfY4Ot9GyynoTbTyX6krGBjeOvnh3vq0q+AwkZQg2govB/SltjklhA20
         LCbrimLqVPULjEG+vDLDojYiyYliZCz51edrv1FwtHAEEQkf8aA+OJ8P94e+9JH6f54O
         iHZmnVZVa3pxPNx2KeTauGIpJ6AOTo95r/11UQ8b6h78ofUAl5hCQGVlMzgxCBFIXbWk
         ysJR+nmvnCZjUU8B1WiC8/EbAd2OyJTVtMbzyJH5XM2NIC9LEuVW1wQxAyfXDpICa8+4
         f3Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVMduqf1fAT1/hfDqvXq801KVxTjQ7QCYh0SOvxoJ2JbT2049MWHs2iQNMWa0HLwxO483IF76imcgd+WEmaPECaMMNuGq9cvKRtng==
X-Gm-Message-State: AOJu0Yw+ubI4T7fQrXnvQuUFMTyAu6uIMyw5cPlrrJrfd25yes1Oncmc
	w/9NyqY365xA4kr8YiWm/+6IqohZ11+AS+qxVQBglzyyZDwDpCG1fMbArjLyf4U=
X-Google-Smtp-Source: AGHT+IEcyG1M6riI17p2bccika8+2c8x0/U5C5XU7YCTkfFMFXVNfVGbi2NX2FHHz6cClYrhqai0ag==
X-Received: by 2002:ac2:4853:0:b0:52b:8877:30f2 with SMTP id 2adb3069b0e04-52b8980aca3mr441625e87.59.1717138683718;
        Thu, 30 May 2024 23:58:03 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1a5sm54205566b.53.2024.05.30.23.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 23:58:03 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: biju.das.jz@bp.renesas.com,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea.uj@bp.renesas.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 9/9] dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support
Date: Fri, 31 May 2024 09:57:23 +0300
Message-Id: <20240531065723.1085423-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the support for the watchdog IP available on RZ/G3S SoC. The
watchdog IP available on RZ/G3S SoC is identical to the one found on
RZ/G2L SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---

Changes in v9:
- collected Guenter's Rb tag

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- re-arranged the tags as my b4 am/shazam placed previously the
  Ab, Rb tags before the author's Sob

Changes in v2:
- collected tags
- s/G2UL/G2L in patch description

 Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
index ffb17add491a..eba454d1680f 100644
--- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
@@ -29,6 +29,7 @@ properties:
               - renesas,r9a07g043-wdt    # RZ/G2UL and RZ/Five
               - renesas,r9a07g044-wdt    # RZ/G2{L,LC}
               - renesas,r9a07g054-wdt    # RZ/V2L
+              - renesas,r9a08g045-wdt    # RZ/G3S
           - const: renesas,rzg2l-wdt
 
       - items:
-- 
2.39.2


