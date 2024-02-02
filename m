Return-Path: <devicetree+bounces-37882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E5D846A09
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 09:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1843628F837
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 08:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01BF1AACA;
	Fri,  2 Feb 2024 07:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RFVuMCPU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FEF1AADE
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 07:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706860754; cv=none; b=PCa3EiRSi0PCltBrweCkq1645nnbqCB7lUYclEAk77OjgEAbcKvxJuk5xXquZQEk8FFvCyb2QJ1PySnIB0PAEdnrk9E8QMwFZl4hU/C3mlW14BlquBqfvVcK5VafP+UmOyah2s/6wqgeQ46l45WxTQTiKCJP5YfA15Vk4OhW9vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706860754; c=relaxed/simple;
	bh=Zwc8hMqLgPN8bD3UJwAwqjR9H5olcfm6X8NvTVgAYpg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FW9N+xYVFS4eVTqh5eyUmcgG9EsnzrTsGw3RMYb4g3sD6SbBL4ySlK94v2+IuKTYvjKZDv0IY1L4pdfoq1ZrwN3pe1lSUGZeRyoV6Nh+e0Z4ZX/ck9eihbRVIO1yOVKYMz6upVmPdqQ6kIqsHyJapCyELGuMsOsGY3CGJFlP5tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RFVuMCPU; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a2d7e2e7fe0so97533766b.1
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 23:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706860751; x=1707465551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6ThDsg6UEiz1glmUeFqXiY5u5KHvWrwpDg8zbhv8Nk=;
        b=RFVuMCPU/lCx91Pa9CqnjHXzU/+c/6xnSfYkOBZ7WXHY241sBXXcW2ux4fBE1lfNK5
         JrNyt1yvccv0w+Kxb4gVEaBiHeS0KZarLecSc4UCdIMREmTtjnV+/E2Si6xFSWMFeYcr
         qjzBT8k0MLBk75oiwip6Jj3n2/V7nft20klTNYLtL0pOaKnVjyCrZppMN1fOMc0/zd44
         J/g3xvZ7ogQTNY/c9bBqzFQZUN0oidiRSnEZ8Ufb+Rf+H0qL6kTibbiMHS12fId6Ug7J
         8qBKCeXXcTxwM0vkw14wWmRbG6HRzWhK6Fr78xEoXzHhFt77vvpfRr7c0Ek/XpzU5hQ4
         ucRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706860751; x=1707465551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6ThDsg6UEiz1glmUeFqXiY5u5KHvWrwpDg8zbhv8Nk=;
        b=ZSrqMicR6d1qe8+4+cIP5xHi+5tXbqGaIRa1hoGLGI+X7BJQLfJhqlDeS2PKuUHEce
         5oxKEU/tduLobk91ddymoqyQSdsWpHZludC2v6Fxaj7l726YIW09aqmxwZvN+EPMZJ2f
         kUy38EjXzo20j0AlWaP23bXqlyC5hJNFvCbl5ESRNJCIv+dwKWynVISRLR17RWjk5/uc
         5dtq+b7P3X2VPRWMvg38SmAyqi58qjy9OnK4KeBUD4rofrSdPdgnbG73ws/iRiD7ZAY3
         Bea0w1JCH/ag9CuXDiMhYg4SRRNe+oFNW7jiGoRuTvdDOUVPXPXOS6K/GFxSbXkXAfjT
         1dkg==
X-Gm-Message-State: AOJu0YyaMiHSOx60VPM4XTSK2EDdWdYGx8OrzJun2PM8tplvfJqHW2mV
	eXMLDOfWQYxFkRbEp3iOAl9oIwE3rOtFJwLQRjicg6O+F/Z5sZ4t90l+WPabSFQ=
X-Google-Smtp-Source: AGHT+IGMUyZMvg/FQvT7oGWibUqqzr5lLBja0V/PsJBGeyDN17/PwqHuZvb+CGW2Bl5LXIEAqJUwaQ==
X-Received: by 2002:a17:906:539a:b0:a35:b59c:fc04 with SMTP id g26-20020a170906539a00b00a35b59cfc04mr1003170ejo.25.1706860751304;
        Thu, 01 Feb 2024 23:59:11 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXO15qrGo2Lv+43BwItNC3BX8V3vW2zwTNeUoF6lxb9YqIyIPZHidtKkuYc8frn9XDCGwHu1MxMBl935n/1JaCrTh6HmmPup3BB/CYTHRGthqNklLg3MM5sAnLKZDckhQFd/9TfgNIdY4MYhgmsT+hXQY+R8GvsHR8nxJ6VvlwlpnURczTBcEUI4UqHbYuHxRgcB1x/yshDHjeWoGQlzfLMmtac/D4jfSq2YlRVrZIAQjDWnuI+tiuoj6ibuDF3Q4sa2hcpsHsIzUS6cD1ai0wANCPKH0rqHvJpQxpDLk3BKt/3zzIK6OVo8uwmk4P6cA9MiZKbLYEodZ+D4jppa8mMCiPnaruCZCeMzhrVvhjPO0etp5qR04j2VPTAhSJyrbpTUCiyuyWFM6GUnopLPo8WbfaHPtij9B6nsnLHszLCWEmQmbOahY05EXHDacl3BaHLQN9+SDYXn7NLTTP8SaDXSzP2NSDBBqDBcgcQ2NiN2DjVOyIoWcQtZN2lp2RmZEdltcNoMIwrNWIScG+KMgofww/CU6Kzgh5VRa9TxadQHZphlZE=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id ty13-20020a170907c70d00b00a3715be38c4sm185544ejc.210.2024.02.01.23.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 23:59:11 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 8/8] dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support
Date: Fri,  2 Feb 2024 09:58:49 +0200
Message-Id: <20240202075849.3422380-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202075849.3422380-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240202075849.3422380-1-claudiu.beznea.uj@bp.renesas.com>
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
---

Changes in v3:
- re-arranged the tags as my b4 am/shazam placed previously the
  Ab, Rb tags before the author's Sob

Changes in v2:
- collected tags
- s/G2UL/G2L in patch description

 Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
index 951a7d54135a..220763838df0 100644
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


