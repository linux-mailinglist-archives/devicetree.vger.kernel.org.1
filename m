Return-Path: <devicetree+bounces-33694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D84D836159
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:25:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFDAC1C2577E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C184BA84;
	Mon, 22 Jan 2024 11:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DZWsPIdB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93F14B5AD
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705921915; cv=none; b=owX+IHFqTtib3Nz/gtjeGeVAybTTXN11IE5uE4139V2u32Jwt+fFxFZKolTpFZeMAEToClu4xbwVAnE812v7xWtZqm8wVwfQMcF0hNTyDclo8F8RPSiy5oGuuf221bui/vKvXEyfk+Qe30XTZFb+LIoqniSjbc3E+TBy7XT+FSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705921915; c=relaxed/simple;
	bh=zTlqsx7mKfKM3c1U7q3bgF1ozq6SPgRhMiKSXezx7ps=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WS4ag66ZaRc0AyUhqLXXTMV8jKRAAjIXbdVbVRXftFgHGok37VepM4MINDz0ngsM14Y6pI5LYA0I2iveiWqNHJU8xvo1rcCP5nKyjKtJtAVqA5kg1e5IAbN+3hsXejc63HSN8Ph9BZANeBhSmHo7IwJeartUfjolrwZM2zS1q3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DZWsPIdB; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cca8eb0509so33391011fa.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1705921912; x=1706526712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQQ0M1y0R9w1O9khQHwqELj36c//l3qAUiggBNqlLWY=;
        b=DZWsPIdBczQp1mym0FAttc4bI0Z56jLIXLHrtPecYWzvG2wfd0BtJcAp67PShMYVWI
         c2y2xHrton0QpqHqni8zdwTYZxefJXYR8wWM0R2Jt12HGLRU5UCGbAjZ0iXykAEmePro
         7P67A4SMGw19iplQD+tvvYW0oanClsul6dgXEF76LqYOecRWuah6oQB8iCP9ypudOlSg
         1F8KrwGFS32CTScTkAuKEWOhZV39geFHSM0J0fQShf90DcJakZbeb2n8RjcVSuo/Ege+
         1fFkkPh0I2DNFWmFLLIMz5tsEHqZHDoubGDQyscQj6HfOzI2cXbGt26FDfLloTXTHTFI
         s/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705921912; x=1706526712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aQQ0M1y0R9w1O9khQHwqELj36c//l3qAUiggBNqlLWY=;
        b=Yw1G+FDAHHqRk1AV3d6vtjvqyOEAwv1fGyURUYqqMqCHRdtKs9RihhrBjxMY+P859D
         0mL8aePMR2ZsE/4IZ74+vva11mv8nb4DTD0B3Z2g2sv3luNlZ4ay0CwbNCMmztmeohgL
         cUrV8ERy5DecD3V1+Z6kEqa6eSaLUI/JRsFnYcBfIweZJLsLoao8M8Vbt9SbXUP9ZHX7
         yUJt5StzJ/hALXPO365qoqvv1O4PIvxIiZPMQhAIZyyGpxGbCDRX10/7zS65JPRlSAaW
         6MBPDO8h/5Y2TDtYwLT/3Sa/0zQ7VbTVqOZPlB7ZoXKclTWYfnAV8SsB0wWBDwgZ6XOO
         nLZw==
X-Gm-Message-State: AOJu0YyvbBFtfeiWxqHyVFo+WhgZe2jBEjfX3775EqkhYY1c0F7vMIG0
	j4K6jgoKFzBn4CeXW6H+NYHJWsbYQSffwoD27oEZhTgleQC9BzIbnh3si7sl6sU=
X-Google-Smtp-Source: AGHT+IHSSE1awmKtlpENu0dlTIoJBksSl9M22BcDbrDCiSEauFdroEktdrK8UjU0sUX9a3qUPgS0DA==
X-Received: by 2002:a2e:a786:0:b0:2cc:a636:d5a0 with SMTP id c6-20020a2ea786000000b002cca636d5a0mr1683977ljf.100.1705921912027;
        Mon, 22 Jan 2024 03:11:52 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.135])
        by smtp.gmail.com with ESMTPSA id t34-20020a056402242200b0055823c2ae17sm14194241eda.64.2024.01.22.03.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:11:51 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 08/10] dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support
Date: Mon, 22 Jan 2024 13:11:13 +0200
Message-Id: <20240122111115.2861835-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
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
RZ/G2UL SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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


