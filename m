Return-Path: <devicetree+bounces-94750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B49956858
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 12:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE8A81F22525
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 10:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3779A166F11;
	Mon, 19 Aug 2024 10:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bj46Ioii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259C71662FD
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 10:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724063053; cv=none; b=Nbt5+TF036hmCuH0f+SZLmsbVHnm1QkadOJle/IcluT0Vz7MWEylv6gH29kHg/YSR81BrKX8NgAHfmJEawh11sUo+O8MyH44CefzItCJNBwVXI26V5FuxVOBOIle/gdMCpBiX0yl6B5x7aCQ5J9ZD76aAVMbQhMsKSP3o8Hb6rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724063053; c=relaxed/simple;
	bh=iuui/HPIsvJlBttBbi1K8qw454aF9AjMuFqri9PZOtM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eW3mSwLaI8ECxWK4rbn8V0jDU+pa/ozWEigJOe+n5yPGaBcVAvw3mEAv3bTzI0kfSDL0hROUzJ3ceurmf/EDmCRwVCoZN20kZwledXkJ5v+Jh6+q9KOTza5RxvVmkKC5cE5k/a9qJw12Nn6tCw6bDJKvwLzfLsIWuv3+6Sv19N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bj46Ioii; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-530c2e5f4feso4309866e87.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 03:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724063049; x=1724667849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cJAAHX/Rm3TAMRb2o60KMuYQ9YFxv++1+My4+7vhVCo=;
        b=bj46IoiiWam0g3KwRLvZIFAcp4Z+ZRxIFrwKpj4Bhk9ep7bH3PvUivnfDSMDcCVjB5
         /69ONMH1DKo5Dy0k7yWQWsmSbCYrXT7G7rsOSv7OpTisaqF/aTEf8OUnT+aSvBPERFbh
         uVMFdCD5+Aw5kN005WQsUZ0HYpUnzVIpVXadGDvHjF4NE0O2bJqkHYyj8UFEa84BPBUO
         +oqSOpZdpMB3OXwN3XXJIUTHkeqC+ElDWh1CkPKXCVssUur3M/941deV6O1vNatEt4YB
         de5mN0pH4m21ajZwdXNp1dC5qvgfvqM52l505z8fR/M6KGPVyLrn+ptAx+M5ANkBXKPg
         zGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724063049; x=1724667849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cJAAHX/Rm3TAMRb2o60KMuYQ9YFxv++1+My4+7vhVCo=;
        b=X5lWhnPUS+m6EBoGlj2hkLCd+KwlDWOvCf+DSs8b84Efzczhu0dwTPjHHB5OdbwMwu
         LqDQV1o+TUXqE1fm5NuBi6UKMyQ3hcFwG4+D2bfQ89aNL6Ulhs6ZlHFa3LUxy7tUxexB
         qsPVvJExfcJ6Lq7seNfQyG7wYZsyQCtCpiQ5a2FDmf0mP/S6eogHZwHPtwy8P5JOU5Xj
         63EPs+78REPi//AFC1+c5GWM91x/u9EuiuK9/8hhZqYcSLZK/i4+F/VzsutvcZ5j6lhf
         F0stkAhn49pnc4A2NgeyaSObGGJ2Sl76VS9kKoFdRiSOZ9YKYlgAzFnm/cCMxW1a8TnX
         qtHg==
X-Forwarded-Encrypted: i=1; AJvYcCU6wVVWm5Q494P5lW/KbXUjRbV/Rn9mVbIzLsfVWLmA71Os2P0mYOv6+IsONuuVTc34FZukoU8m01s1AGU7WJlvhr+3ZKmTXzDtvA==
X-Gm-Message-State: AOJu0YxgPVUdIrpszYLIGP32nTZgs7XnFVTwXxoiKCqpOG67AJ2w7QHl
	Ym7Lx6LuDERtLq6uNgKx0Eg74U9iJhX0889PQuycfZpzb6+4dcFJNkRfbQnfd+Y=
X-Google-Smtp-Source: AGHT+IF6YLoU4+bdX/oi9H4050Ee34mAfR7HKwspOjdSdAdR1SgAGVkn5mx2EKeRNfJfEy9Yw0Tn7Q==
X-Received: by 2002:a05:6512:128b:b0:52e:9ecd:3465 with SMTP id 2adb3069b0e04-5331c6e4635mr6348525e87.57.1724063049174;
        Mon, 19 Aug 2024 03:24:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed650402sm106690275e9.11.2024.08.19.03.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 03:24:08 -0700 (PDT)
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
Subject: [PATCH v4 04/11] i2c: riic: Enable runtime PM autosuspend support
Date: Mon, 19 Aug 2024 13:23:41 +0300
Message-Id: <20240819102348.1592171-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
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

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags
- added a comment on top of pm_runtime_set_autosuspend_delay()

Changes in v3:
- none

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 6fc41bde2ec2..ec854a525a0b 100644
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
 
@@ -479,6 +481,9 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	i2c_parse_fw_timings(dev, &i2c_t, true);
 
+	/* Default 0 to save power. Can be overridden via sysfs for lower latency. */
+	pm_runtime_set_autosuspend_delay(dev, 0);
+	pm_runtime_use_autosuspend(dev);
 	pm_runtime_enable(dev);
 
 	ret = riic_init_hw(riic, &i2c_t);
@@ -496,6 +501,7 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 out:
 	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
 	return ret;
 }
 
@@ -512,6 +518,7 @@ static void riic_i2c_remove(struct platform_device *pdev)
 	}
 	i2c_del_adapter(&riic->adapter);
 	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
 }
 
 static const struct riic_of_data riic_rz_a_info = {
-- 
2.39.2


