Return-Path: <devicetree+bounces-95168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B46F595842A
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CE611F238B9
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90AE218F2FC;
	Tue, 20 Aug 2024 10:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UdtKM+lB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F4C18F2FA
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724149188; cv=none; b=STbTJGld93PPxsblyMT9aZDwizdmMQCLbppXVQjj3Z++zehsu1rRAgE/T+3vtdd8soTJ1LnFFv5UW6MEIVXVbv6SRqV7p2lF/MViSRxnuVaXvHCOD9BtCs7TOY9rTLqxwh8tA6rzbpWD4gyJbwPs58iCcPStZH3iJYK84bLCaLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724149188; c=relaxed/simple;
	bh=Wqysr75UOpRLJZi+TJB7NFRU2ao7/v4mPEggf7VDF5I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tRNGiOTWNhTKtiHyw/jSBC7ojQDVgAtJQ9KKRFafPBDZ6hU4M4ieHAWCjUObe25KkzeC+kQEXX41WRUxw9brTHIY/9770yG+WQL2Y/pACYY8z2Z7S6et4mhSXI70Zp/cYGT1RgHGK0wo8xluEzXO32H8RVW8Zp+a0Ivh8xnmipM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UdtKM+lB; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a8643a6bd55so106194266b.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724149185; x=1724753985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sEoQ+LzNGceW81TOXVfCjZp7CkwCQdijYi1V+HI9Xuw=;
        b=UdtKM+lBZ1qDy7JCq0J+FKO+zzzMLiANIS37iGkt7dDp96ZFqWWfAQ+YQBu+qAsPo4
         zDTCb+JiFh3D4S37Ez4QszEUanYFvuL0l7gjTFNTR1RZj9FFFrS49SEJnCwWmUoBiSww
         BjlGnb1ZWVi2i4va4o4n7SctsnW6fiNWFtsvNhTnoZAGzB8qt21Hk4lHKcMn3C8xLogz
         3l1B8Kr3IoCIszicuh8ZXVpkkZmWbHMLQWm/pkZXttXI+zFvHlGfx7lNBblZ5dhe/Mp8
         vBUOaVu++jVekwJ28RYIIJ9roatiFLr1amU10bLtYkq70k7XohKe6v84XHC1p9yPeJ42
         9qqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724149185; x=1724753985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sEoQ+LzNGceW81TOXVfCjZp7CkwCQdijYi1V+HI9Xuw=;
        b=i4Z1rt8aBhzYzXoa0XrKT9/oSLDYWiLM2SAt1NO+0uvhLEZPWV054WhL6AoV946SKz
         8TrFRT6nol9Y/2TJlnHtRInI2GQLz2k2FaYnafF5qdZtJTVIsBM/cNCRNE5KCsJ9E/yf
         0GiLeoXywiq21IrazXZG1uy2oFUog3sarn9g2/CPBKUjdL/PGYYcaSVSzdcEthhh3LCb
         Zcgh75ByScFMLLk6MeCNIlPWWDF4tJ5ARb4XPka0k/YsizvwvAn+0mxlZGXudLoTyKW+
         VpmAA8IYoExTkr8xIqDSHEwjArhSYj8bFcG/N5zagxHZskpMt3h1VjXxuy0T9otWAoW3
         erVw==
X-Forwarded-Encrypted: i=1; AJvYcCWTFoKt4A1siK14wz1zwD/3FO51yejR5Hk4rpR85mpt1Srf2/feNg1U29YYbXgWrdfzGEf3r3zieyBkHmkPl0N502kr7rqVPmrKtQ==
X-Gm-Message-State: AOJu0Yyobq0kGQcIz1ZNynjgPpZGeLbTTkpaMPYvDtYkmWP0sUQa3fJE
	5ns5lkQaoLjlnycs1MLz4EO0gYYBtiuWGyuKFxDLHuAhqxt/40EbME7pJvjAnTE=
X-Google-Smtp-Source: AGHT+IHbNy3IOlmx4Wtn2iVhYLH+4A20ZXIe0Y7OiuvNo9fUyAyVZBZvbT7n8du8/zrLXjpBeAyUfw==
X-Received: by 2002:a17:907:7d94:b0:a7a:bece:621d with SMTP id a640c23a62f3a-a83928a6071mr1008614166b.3.1724149185171;
        Tue, 20 Aug 2024 03:19:45 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839464ebsm734550066b.155.2024.08.20.03.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 03:19:44 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 10/11] arm64: dts: renesas: rzg3s-smarc: Enable i2c0 node
Date: Tue, 20 Aug 2024 13:19:17 +0300
Message-Id: <20240820101918.2384635-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable i2c0 node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index deb2ad37bb2e..7945d44e6ee1 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -11,6 +11,7 @@
 
 / {
 	aliases {
+		i2c0 = &i2c0;
 		serial0 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -66,6 +67,12 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
+&i2c0 {
+	status = "okay";
+
+	clock-frequency = <1000000>;
+};
+
 &pinctrl {
 	key-1-gpio-hog {
 		gpio-hog;
-- 
2.39.2


