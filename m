Return-Path: <devicetree+bounces-95160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03190958409
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8587E1F23A3A
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7263D18DF7D;
	Tue, 20 Aug 2024 10:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lvHqmSAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA13D18D62F
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724149175; cv=none; b=jPjFXzu3lmDAiAAnlponXEi+ztOnm6MqDPtaooQrvtP93wxtvW+dtwZjOy7K9f4G9DlRpvKE6hnAhrZhfFbu/3FQ/8w32TRDLRI3Yg5ofmyTvnFE2ZW6EknNu9cmIkQEL8Jq6ajVBeodqHjBLi/1PWarFU0NivrDVDCtPsN1t3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724149175; c=relaxed/simple;
	bh=lgF87i563n5qYxGhbdx0bAnsNUkMJUCbBBhp0i4Za78=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CHexk5Fja9Cwa3HPR1p2Q6M7TPBymygigc/kIb2S1+yqzOmTkHe3aw70xoc1yRvj7xzjjtePS4N5/Du6kXS19OD/Ue1rwPIg5ueqnZt0C5C6vsoAIUFvru8izuXGscN2TX4MeeYIjIPihMLNDcyJl1+IjSYhEeoiuKj2jifV6Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lvHqmSAt; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7aa086b077so553917666b.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724149172; x=1724753972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vY9o/Nl62TKbhCLX7atcDP2SpjpHhz+OtNH0EB36mvk=;
        b=lvHqmSAtxWyf0WQpbgqQWpRVpv834TsqAMsYXQSw1XljwzkqPZ58/lW4YA/C+Wt1XW
         CqKrz/rfJvnmDO6vmu1q0WfDFACSh7uzI2R/P86I/hOIlZNfChkT8CPVkqjEqXHEnuqF
         O7jrJ2bx6hhS4H8aZX4xm01D2qCU4u1vOKCUmaNan7qoiP+yI0/sjS9XZk1ipJWO8mVg
         V3zpe8STyUmHsEFmgPGmh3OIDix1cZuXtWk8U7hFM+SOR2j3flhR8E7cXRO3bMZ+B+a9
         PFGo3FS+kK1lgbAFpROqAN5nHOEjzwsZm3wqqBsbuFWyMlv1VNc8B2do6veB29lco9KN
         hRJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724149172; x=1724753972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vY9o/Nl62TKbhCLX7atcDP2SpjpHhz+OtNH0EB36mvk=;
        b=V4deqaodtnk1hCO+12GwN0Yw8OFC9sVatWLVFDrgbeYIe4y+ixwL1oHr6LW7Y/EYHD
         3GJTPcxnmPu/MX/8LsyLJZAEipjThVEl2Pu7e4ilmO8O+xGBxfQaVAe/pIw2rmoaybIJ
         8bnSicAXEahpu2W9OAHVMnrRsHBd+XnM30GFo4gIASCi0WvKBnBjvUDuw6ZGn2oyPjhq
         idF3ENxXoRJn0yl5AseQcAHj47exG7HZqNiUkOUYtfiQhChqcGRxbl+t8cIS0PEJlPGI
         FM+5MsfLkCJKH7hpwkkbICrqgsLJGSWyUUBvLRtpONiZraM2ByW3mxR5nUwukU+pAKQx
         QzdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgU2oHb5xp3fEMVHMT+HlAr33z3bD0IYawz5MQQoKpyuhxYAXAIVVqf5BJLHNpUaHLKY+MBOgwJJN3pvIA5hnm3uPuEAH61LRKMA==
X-Gm-Message-State: AOJu0Yz8SV9oGusVvYSnB0YBJb414JSYBGZway327FcG1BYbt1uoP4lK
	qu+uSB2TrxyMbmLdlDezektCU16fjweHIVlT8XtU2wo1aY0DOh/ttzKvamtthas=
X-Google-Smtp-Source: AGHT+IHKggK3LvVjfl8weadNV30VOmTLLixqhXeRjGTDSdzlLUhfEQlIy5hpSKL/KQ7R+S5xamhJdg==
X-Received: by 2002:a17:907:2d2b:b0:a72:7d5c:ace0 with SMTP id a640c23a62f3a-a864795d21amr129101666b.11.1724149171922;
        Tue, 20 Aug 2024 03:19:31 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839464ebsm734550066b.155.2024.08.20.03.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 03:19:31 -0700 (PDT)
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
Subject: [PATCH v5 02/11] i2c: riic: Call pm_runtime_get_sync() when need to access registers
Date: Tue, 20 Aug 2024 13:19:09 +0300
Message-Id: <20240820101918.2384635-3-claudiu.beznea.uj@bp.renesas.com>
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

There is no need to runtime resume the device as long as the IP registers
are not accessed. Calling pm_runtime_get_sync() at the register access
time leads to a simpler error path.

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- collected tags

Changes in v3:
- collected tags

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index bc33762a5d07..2e119024c2d7 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -301,19 +301,15 @@ static const struct i2c_algorithm riic_algo = {
 
 static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 {
-	int ret = 0;
 	unsigned long rate;
 	int total_ticks, cks, brl, brh;
 	struct device *dev = riic->adapter.dev.parent;
 
-	pm_runtime_get_sync(dev);
-
 	if (t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) {
 		dev_err(&riic->adapter.dev,
 			"unsupported bus speed (%dHz). %d max\n",
 			t->bus_freq_hz, I2C_MAX_FAST_MODE_FREQ);
-		ret = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	rate = clk_get_rate(riic->clk);
@@ -351,8 +347,7 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 	if (brl > (0x1F + 3)) {
 		dev_err(&riic->adapter.dev, "invalid speed (%lu). Too slow.\n",
 			(unsigned long)t->bus_freq_hz);
-		ret = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	brh = total_ticks - brl;
@@ -384,6 +379,8 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 		 t->scl_fall_ns / (1000000000 / rate),
 		 t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);
 
+	pm_runtime_get_sync(dev);
+
 	/* Changing the order of accessing IICRST and ICE may break things! */
 	riic_writeb(riic, ICCR1_IICRST | ICCR1_SOWP, RIIC_ICCR1);
 	riic_clear_set_bit(riic, 0, ICCR1_ICE, RIIC_ICCR1);
@@ -397,9 +394,8 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 
 	riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
 
-out:
 	pm_runtime_put(dev);
-	return ret;
+	return 0;
 }
 
 static struct riic_irq_desc riic_irqs[] = {
-- 
2.39.2


