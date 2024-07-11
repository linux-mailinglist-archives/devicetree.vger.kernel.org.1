Return-Path: <devicetree+bounces-84991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF05392E790
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:54:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C15E3B27765
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F096215EFCA;
	Thu, 11 Jul 2024 11:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gErmeWW8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4086F15ECE3
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698749; cv=none; b=PsRMD5NUagCIY8oMxYvzZnbKW+HURYgunuLfszA7hIYrrM6p7xlxvEvkr9U8g4qy1z+ADzXuRjKgPDhVxdwng7TqvhIy4ycfv+6/vYlI6YRoKNY47ZGFDx9fmgmzMgU141z016EyVBBvNCoQn+055IPeZTg8tP8l6ammOsVHfGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698749; c=relaxed/simple;
	bh=LNIbD0mShRhijjyrncFa/Sfct8EIIrIFNTLpGEmeFOg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Kr3xx+gQ2y+sfM1HlvBZ2qSqOItXUAYYj7HIvQMt5tTqWrQLJybcTm8d+LCkidJsmjVUi9yTNI0nx4gxUkQFSXn7Y8GBVCbPEiXYdaUug7CyAt+Sl9hZySYlCy9pUVrQMnZqOj9DPhtMiTPeWlkonKUnQQjQyS0TbtfHS+3+Vys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=gErmeWW8; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4266182a9d7so4914395e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720698747; x=1721303547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3C+MvDdWpXknhzh2+tcBHGd/tUZH0vNFhsggMze/hfU=;
        b=gErmeWW8eVDwAiXp6aiu2XEy1MSLe9CBSZ9+GDpA7W2DSjeuklvmMM83XouSD4s2wB
         D26jtlvXgiJMsgKaMdjNKVb4ixXvTt6SvRI+dHmce0UaXUW4oXFjEIrp/fbX02DX1TB/
         ntFxJNtICST8HniZPGeQ2TcW/QcuJjt6jkV3TIPQrS+wlbT0esvCSvQERbgt374C8YSl
         RO8FKaKxp6dWMqvAovMOo0uUg212NlAAQjijpbX4qmF7heynE/c4s80hB5w0R1stqqig
         J6qLpBA7e4QayXljvU5iMABGr1Wch9CVR10QTOsfEjKSP7lCiuL9W0rwF6o87I/yZ1Vn
         kOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698747; x=1721303547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3C+MvDdWpXknhzh2+tcBHGd/tUZH0vNFhsggMze/hfU=;
        b=gBvjQ+OpN0GyHb2yjmTV6adG5m++WDXkU4Zn39WUT2wtvKXQFHgeJ7wiTmq9EFG39p
         GAfCl3xmegpZsSnju295+HG26XkZh8LujvIC8kYCaNjPqT0yp406qsiTL4i84nxvKLpM
         K5gOcXUVlPMDC7sS6trsJ9qYcVZ0GDZHl7GHcuV6oumksPAsdHgxO2dMpwp/ekC0HJmq
         VBIRFOE0wrRfTmWPMwtWedy0/dIwvyIheJZn866sJRwXT16Wf2Gk+Q6bwYcROTdpumqE
         ylsX9uwOl8YlOlA2jWcD6Dy6RLBdOlLIT6xdMQP6OIebpROMWKQCmNKwnXpSGrYCM7cL
         rvMA==
X-Forwarded-Encrypted: i=1; AJvYcCVFssZt+a3nfdDGlxQIL3TkI4EgJZAmGJOR4pkI0tMoDwS8fK3VhQ1Gepc4UgCf/q1+1LMu8V+wIJtO/URtqj9Uw4b9C0fVGuS6ww==
X-Gm-Message-State: AOJu0Yz+d8UBT06tbOdM3cuWSW3q4k2YSZprSwfaYIyhZ/R6moho2Nbj
	A9FvHTxQS5HXMvLLfHdyfLxZb49iakLQ3zgp3gqVBGshTX5TPrOs1tUSqnOGwww=
X-Google-Smtp-Source: AGHT+IH2hTGLcXrN3uhdyk22JKMZRxxLuK+TCBJEjjs2NDQ/EQ3L1L+BY0g6p7ApgwsOTecou6oDHA==
X-Received: by 2002:a5d:47ac:0:b0:367:4384:a572 with SMTP id ffacd0b85a97d-367cea4687amr6873928f8f.9.1720698746729;
        Thu, 11 Jul 2024 04:52:26 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde891cesm7615728f8f.62.2024.07.11.04.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:52:26 -0700 (PDT)
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
Subject: [PATCH v3 04/11] i2c: riic: Enable runtime PM autosuspend support
Date: Thu, 11 Jul 2024 14:52:00 +0300
Message-Id: <20240711115207.2843133-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable runtime PM autosuspend support for the RIIC driver. With this, in
case there are consecutive xfer requests the device wouldn't be runtime
enabled/disabled after each consecutive xfer but after the
the delay configured by user. With this, we can avoid touching hardware
registers involved in runtime PM suspend/resume saving in this way some
cycles. The default chosen autosuspend delay is zero to keep the
previous driver behavior.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 068f90ecf27e..46765715d39f 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -171,7 +171,8 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	}
 
  out:
-	pm_runtime_put(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
 
 	return riic->err ?: num;
 }
@@ -399,7 +400,8 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 
 	riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
 
-	pm_runtime_put(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
 	return 0;
 }
 
@@ -479,6 +481,8 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	i2c_parse_fw_timings(dev, &i2c_t, true);
 
+	pm_runtime_set_autosuspend_delay(dev, 0);
+	pm_runtime_use_autosuspend(dev);
 	pm_runtime_enable(dev);
 
 	ret = riic_init_hw(riic, &i2c_t);
@@ -496,6 +500,7 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 out:
 	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
 	return ret;
 }
 
@@ -512,6 +517,7 @@ static void riic_i2c_remove(struct platform_device *pdev)
 	}
 	i2c_del_adapter(&riic->adapter);
 	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
 }
 
 static const struct riic_of_data riic_rz_a_info = {
-- 
2.39.2


