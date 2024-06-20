Return-Path: <devicetree+bounces-78113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CDA91105F
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 20:12:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58BEF1F20F59
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 18:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5091D2A37;
	Thu, 20 Jun 2024 18:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="tqE1e0EM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE51C1B3F0F
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 18:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718906472; cv=none; b=pC3gpf/by55j5s8uE9mOKCAUyOyJ60QdLKnZVhoZtzwEoRuRPNy0VBnsspsAEGsr38w1rOfV02Dc/345cUvm5RBC9Cb7HavyuO60hu7Kwx6aqgZ08rj6cQQRSVTfp/fkS3nHo7kBZN5vgjrNnBgHvGU6DQCXbomdrG6BkdBhZpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718906472; c=relaxed/simple;
	bh=T0AdqBMK9lkL1kcLkmUERSGkLaTYUdQ6VqLsNTB1DZU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RK5RBhpiuTZKH3BAcF6U+6MbGMvGV/hBMbQhf71o+aU0v3skQtyazmMIe1KE5Z//4viYUflHLloREGXQ6QRH3cAK0mKoHmmrtF58Vl5ZWwKm4nEr95oN/HaUN5/ZRLK9X03/XNgVaVelh2VbQQ6Q1BKsmtkOHI6cO9QR+Hd7pno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=tqE1e0EM; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a6fb696d2e5so135954966b.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 11:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718906468; x=1719511268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qz8kTOxdaIm1u93eV0Is+4r0vyFAn21pP7Hjv/L4wvo=;
        b=tqE1e0EMqUp2C79hQhRClkk6F46UnOwj31dr27M9qmDkJrZxEP3hyNP4zu628BPCqw
         0tSSFPiQxEVpSeif3aXosKjXeITYlIUThl1mw7LalfsMA3qLmumGXhPCQqEm4QghDY/l
         06uJL8I3HpoyFr7fgEW8mjs/fCjz8dgSTjoeCFR1hY7wb2O7KAhRKj6jKtY3fh1SL77G
         l+IaJWqEfSycIPsIDsUZqhpPuPpuM+uRXDbm/Im+Di1YLI5HKfJ8rvlUiVioW3pZ4eLd
         7fAgA4zdtpkeXkAVD6hEEwdjAm+/EQqLSoSzPYHpmL9voXsAlCy8NacJt5jj1+nXbgUQ
         L35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718906468; x=1719511268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qz8kTOxdaIm1u93eV0Is+4r0vyFAn21pP7Hjv/L4wvo=;
        b=JJYE99itar7adWsFkB9IhVTebjvrYyUhjwQ7J9nXhYhRxKGRDJIWALxWT8wb6B2e8S
         b+kHiyPh+w7wcBjdIC0l9WmmOyBiQCYPDrfrTm2OCOV9EptpEGvDfrGxPSajeq6gBhN9
         jU4cnKkMDr0amp94BRzyxg9iGdRh1ZfhPBw2jgxWHNhdp8sUOJesmOf4K6ZZE1nGDI3/
         g4TGguR1rGTNWK0/HPeomqijRW1HH35fdu3xsIXffAIvS05pahFfNqiWE8wlUSbXRcxF
         HzKsUAw+vhpNIeHpH7vKg9n89aNOqfxIWkrAetV3VOcobLjvrewCSCu0gB9Jt1cEUv5b
         s+Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWUbBYnjYDl7gLZ8wtd7B4fsRTKqMQMg6inUhTm3LkqDzlGCeiVJ2lNlPQJ3Moap+XMzXMFb4/ojRrdBjbRsgDimPrDJvJIB9DZ1A==
X-Gm-Message-State: AOJu0Yz4WsxHaIklC3lAktImDn2/m/YN6OzSPNj6gmgiMNZWvUcaTgQV
	OqE5AbjQOaghTNLY+hwU+0/akLByWg1qvpwa8350sLi0cp5M10iiCKqenR2dsnU=
X-Google-Smtp-Source: AGHT+IG8eY8d/PSntzHXSfPtqV/wO9neoC+Na07hB+VY1pAoMYT9SP6YNE1GHB/rvuCByUpgceEg7w==
X-Received: by 2002:a17:907:a80f:b0:a6f:b67d:959e with SMTP id a640c23a62f3a-a6fb67d9870mr344459666b.53.1718906468099;
        Thu, 20 Jun 2024 11:01:08 -0700 (PDT)
Received: from localhost.localdomain ([91.216.213.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f42e80sm781370766b.186.2024.06.20.11.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 11:01:07 -0700 (PDT)
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"J.M.B. Downing" <jonathan.downing@nautel.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Yangtao Li <frank.li@vivo.com>,
	Li Zetao <lizetao1@huawei.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sound@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-mtd@lists.infradead.org
Cc: Markus Elfring <Markus.Elfring@web.de>
Subject: [Patch v4 10/10] i2x: pnx: Use threaded irq to fix warning from del_timer_sync()
Date: Thu, 20 Jun 2024 19:56:41 +0200
Message-Id: <20240620175657.358273-11-piotr.wojtaszczyk@timesys.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240620175657.358273-1-piotr.wojtaszczyk@timesys.com>
References: <20240620175657.358273-1-piotr.wojtaszczyk@timesys.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When del_timer_sync() is called in an interrupt context it throws a warning
because of potential deadlock. Threaded irq handler fixes the potential
problem.

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
---
 drivers/i2c/busses/i2c-pnx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-pnx.c b/drivers/i2c/busses/i2c-pnx.c
index a12525b3186b..b2ab6fb168bf 100644
--- a/drivers/i2c/busses/i2c-pnx.c
+++ b/drivers/i2c/busses/i2c-pnx.c
@@ -718,8 +718,8 @@ static int i2c_pnx_probe(struct platform_device *pdev)
 		ret = alg_data->irq;
 		goto out_clock;
 	}
-	ret = devm_request_irq(&pdev->dev, alg_data->irq, i2c_pnx_interrupt,
-			       0, pdev->name, alg_data);
+	ret = devm_request_threaded_irq(&pdev->dev, alg_data->irq, NULL, i2c_pnx_interrupt,
+					IRQF_ONESHOT, pdev->name, alg_data);
 	if (ret)
 		goto out_clock;
 
-- 
2.25.1


