Return-Path: <devicetree+bounces-79688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3736E91672F
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE883B214E8
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1F0D158D7C;
	Tue, 25 Jun 2024 12:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CLOglOsj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6A1156883
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317668; cv=none; b=HcJH7jpdq1mKNy5Ji60vmy3oabV7XN68yfij5S80HQNSjKLW2Ft99BElnmNn58jft9CG8N7SBwPFyiqeD0B0qMIU7iB3zzI6D9T6DyxSH8UMs8h09Tnc18Oo6ysFJiWbyu8wIytVMBOCQxmFtn8t7Unt4/2rkub68mc+3qifHb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317668; c=relaxed/simple;
	bh=aVioSRzJqXlczjHmYmBjJBu7oq6xmwTohrZmb+gYSbU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=g8csSDth2y7d0VWbVhXDm7UJI77ubrUV9KYDECCx/N/y1apderFUaA3VqL5xmF3A18f1TmbX4683uDyREU6uzUgIA17Y4wLvM9PI0z0h2x4icxrtYNjqf9HGrYxI/kjLUJp9vto/Mp0NTsy3mmApg6VGYPReh2SMAd17dzSzPp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CLOglOsj; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42172ed3487so40770745e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719317666; x=1719922466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3mhaGF+KU5yeMisjPIARpLxwyj1AMM2/2N+WRoELhI=;
        b=CLOglOsjSD93t2ALtumKBY822qS/ALq8kVsKTFR6+BgXCwDb7ucCy6wJwQRr/Prmus
         5wnjEdfI/0MdBNRhHyeDP2fMmf20XGXLH4eHVFPU34A42Lv1emuW2WwdzlnOh4EBhjUb
         2iP/zyev7mILSvTRaD1rF0H04o6k30C+6YFP2+Q29i1XRIv5okEP5brmKVnYo6vWpnDD
         VloHNlOmLc5RnKf4x2J7wAqwc4YcQf3bIATdXt+VJ9JXgA+YzFzYK1UaFBjbQa1v3534
         EAJL35whdUwQJp8EzFJEZtReX8Z7SKknUl54dhPwFIg1S/nIzEzHnaG4rhDAMtM3Etzm
         iXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317666; x=1719922466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3mhaGF+KU5yeMisjPIARpLxwyj1AMM2/2N+WRoELhI=;
        b=Bn92csIsikG331/4F2HAHU/+JzdlfEFBqTFsIitPi08tq0sKJtcc91TqiIz+4tWGq9
         YG4/ggCUzMl//d8JDiVJOaf6RnyxT3zrRtYVijOvn6PJCMhzm/cpZ1TZH8v7povcnx0u
         bYsrPM4TZ7LdBKZ3QNcpOmgX3vxkeIjVu4QmER/fNo464RkMxnZVUXRv+j33b+XL+ORL
         VB6/FNvtLphRpBs58rAAbRdQsr+Iikw0aS8XjUTVMOU4ascE14XRuotpJyFZiz1sxDGi
         2oGDqdrPtHJ0hhlyzfE0xmJJlc2zYFqca4qIh8wiCKMIXrgFsHfeKB/9LdBtWyHlrH9r
         /h9A==
X-Forwarded-Encrypted: i=1; AJvYcCVGCW97jyWAVMdxhmPfUaiaB62u1j9SvTzYUDGfrNmfZpuy0w/NH2eLXLoMJedbar3Ma0v27HtDyfMbIo8kSTn7LHhBTqfVyPvqLA==
X-Gm-Message-State: AOJu0YxuasgnCPtsY51mOhlmBt23to8YABn+KIay8osUkaldNRXCkbrw
	UH49OuWXn2VTY7Y07IlGPYY39wtVr6Bgku6uS8ZorX6f8hN+ZtxMSjO+1KY04rTF6CI4BZ9MYEZ
	F
X-Google-Smtp-Source: AGHT+IFK5iuAO1YBTxjhIGSX7Q8KoOhjQXwLGyqLocsV4KY5Z057M7ZH3/y+fDPFPY63w1kZ1xsu8Q==
X-Received: by 2002:a05:600c:4b1f:b0:424:a5d8:ac83 with SMTP id 5b1f17b1804b1-424a5d8acafmr6070375e9.41.1719317665539;
        Tue, 25 Jun 2024 05:14:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8b32sm12798437f8f.92.2024.06.25.05.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 05:14:25 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 03/12] i2c: riic: Call pm_runtime_get_sync() when need to access registers
Date: Tue, 25 Jun 2024 15:13:49 +0300
Message-Id: <20240625121358.590547-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index c08c988f50c7..83e4d5e14ab6 100644
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
 		dev_err(dev,
 			"unsupported bus speed (%dHz). %d max\n",
 			t->bus_freq_hz, I2C_MAX_FAST_MODE_FREQ);
-		ret = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	rate = clk_get_rate(riic->clk);
@@ -351,8 +347,7 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 	if (brl > (0x1F + 3)) {
 		dev_err(dev, "invalid speed (%lu). Too slow.\n",
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


