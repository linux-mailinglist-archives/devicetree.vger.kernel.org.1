Return-Path: <devicetree+bounces-128106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 974A29E775F
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 18:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 817B1169CB8
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A16F1FFC72;
	Fri,  6 Dec 2024 17:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dg7wpGXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05DE220682
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733506164; cv=none; b=RAhWG6l1nFnmPexXbfkUaqx89SbpmhX8TO8uqcVTkwSBHfmB8CZ8/m4IJGD63p1SWFdVpgP+WbfId1UX1tf0yP6zn8+OLqFC5ZDqtarrn0T3afK6o+nHtQkTQFuxd8Ul7h4G8oYHCxB4x7LODDIM0TJDblMSA2AvL++IePNzPik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733506164; c=relaxed/simple;
	bh=wqhe5Rwj9TC6MCUOJBh7AMTtx8QdT9Ts7NqxrVq4PY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lnjudn7+N/83sAMrL6daEcR/2i2RsX3IoDLQE6AYpdyiDEVNbmCJaXFiCfOUDLbL+YroqJ1fqd1LpcifiqBpFlAlEu2Uz5qVBCVZXffzJsXUK9J1UBCSDIBJwIzhKp75RPDEyfyY1zGs9j8S0gkPdRVbW9PtqPZ5VdIWWP4i/K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dg7wpGXV; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385e35912f1so1732215f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 09:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733506161; x=1734110961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zbmi1uA1n1FNMek8gLMDuAbvVJXeUnOrWAm2nSLfAs=;
        b=dg7wpGXVNP0RqOw85IhzVhr7bl+ACZHzvkvsfE7o2bL750Z7oeyMozERCFuORL7grp
         FwH+SCUAnVRMywPg9gNPgEhN3YQywboO3+YAi3MZWIorMIglziTUS132RgnkYwkGHBqF
         H/oF73VB8m2qTK9lJ4FjKPK3Wki/aDqe07Vuthk7DybBjDRmMq4dOTW6/DuaHPuRi3PV
         GUqWh6xFw7jFMuOyCNZkvownhC/Axm4XGaUx5sLD8YQUpfM5EajJkh+kTopYBrpt5yGQ
         OH5behlAlSRNxguFGA0oHPFGkDAv5phLuVeRFQbGHTOgHzOoK4ikaWjRCRXtMIsXOSVy
         lg/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733506161; x=1734110961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zbmi1uA1n1FNMek8gLMDuAbvVJXeUnOrWAm2nSLfAs=;
        b=GIGIdADp71tSQ+Z5n7fRrt4LEq+AGlUq9xsgA7cUqC4YNqDS+hKLscnD6lAGo252al
         IYfRK3VVQc1qm+ZGWbEczcIssKkg48Mk8Ud1QD3QJanaMf9hMoMRae/0lJVYJ25J/e8q
         M5quQBNA9zExJGHv8U3cLkRS70RlP9YL4K5XUY/rMJdr0VzruzOoVv1LCPI8ULFpxqew
         eksqccNVxtd6xCdiAVWsoVvVS6UwoEDbQEexZJRfSxwnjxuM0wH7TXnNj5EHY70D6Fwr
         +vMJaI5zUOJD2zKPiwNOOsLIkbwqRRvotZTxJZHm6npGgZnUGSHojsDW1sNrde1LgZp2
         SrKQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1bt5nYvMgPK62gftr0PhPybfETSdOSR0poED0lTW3bxCTOainj46XjYUTv0HDfxlwKtPN2Hk8z0EZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz47dZPPYkuTtoHUyto2S8hS65qambVbFMJh1Jh+7VVb67aU4m/
	ZGtLB1FQ4FXLlG9Agyuohas1JHI7/i5rLhv8MNX7DgcUIkM+ORua7HnvLlphU3o=
X-Gm-Gg: ASbGncuB2q28laqatSBCGTdSBscdfp0FVSIzYhsfjIKI+hyYHJaGxzH8YRjNVXlpHqi
	/Jgie4MH3MlrtvX3M9wNfQZSJ2rJWqekfS5MkW765ahotrMzAH2ejW7klE8jTFQit5FvKuj2Jps
	CRJAqBRbW1QSmdLKDP6eD+9SOzo2kapPKH9TGjDNpn0tvd8vjtaUfGst/VLcF7bpNBB/M1Tw/rY
	3E6qEx+Q0SROBr8jQNG3lLJZxELP3KDFDDrSqizG0+Q2+1wYdMsDh1JPtZEpKYtmmAp3UikZKbQ
	eY0Q
X-Google-Smtp-Source: AGHT+IELdkb9VgbWna6PYl23bWFWfUd3eAdKBhP2Npnc5hMVxkmCo5Jj7RYV7B60b+Z1xMZOhizkGw==
X-Received: by 2002:a05:6000:2cd:b0:385:e877:c035 with SMTP id ffacd0b85a97d-3862b3f5655mr3678962f8f.53.1733506161291;
        Fri, 06 Dec 2024 09:29:21 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386221a5eadsm4984212f8f.104.2024.12.06.09.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 09:29:20 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-iio@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v6 06/10] iio: adc: ad_sigma_delta: Fix a race condition
Date: Fri,  6 Dec 2024 18:28:38 +0100
Message-ID:  <9e6def47e2e773e0e15b7a2c29d22629b53d91b1.1733504533.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
References: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5630; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=wqhe5Rwj9TC6MCUOJBh7AMTtx8QdT9Ts7NqxrVq4PY0=; b=owEBbAGT/pANAwAKAY+A+1h9Ev5OAcsmYgBnUzRS5xn9Gwm5T8IZ6HgIXOMQe/MHu9Bow/IcY enT+JMYo0+JATIEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ1M0UgAKCRCPgPtYfRL+ TsW9B/iTPlviCK8UZLd3+iNMXH+Zv6UchEQDH21S/KKeCXcjhhQ2NMRArS5drLmbAi3wV1WIVqT sr7FPCvBdN5vc+uKsArncTtAAo1f3yTsVY4c9Q8CO+nv5ZvWBd6x3+OuINZ7XdtPdPBl0trgiKM i/slHgCKfdHnkxAc1xYUR3CZG1DU4AZ7K63QzGl5AamJEeXEAz+WUguZMkzRft0x/lkl8FdPkXX Ejnf8U8dNbzsETLOiJFfxHO69t4DTVuI9bRVyNx1H9Ia1twTJ/yJ+3PvpmYZYU75nVhLqDmnW5Z g7EXYp6KDcdXrE2MpMZ5R2jqhSnDdE9xblx+bAOvdGOEZs4=
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The ad_sigma_delta driver helper uses irq_disable_nosync(). With that
one it is possible that the irq handler still runs after the
irq_disable_nosync() function call returns. Also to properly synchronize
irq disabling in the different threads proper locking is needed and
because it's unclear if the irq handler's irq_disable_nosync() call
comes first or the one in the enabler's error path, all code locations
that disable the irq must check for .irq_dis first to ensure there is
exactly one disable call per enable call.

So add a spinlock to the struct ad_sigma_delta and use it to synchronize
irq enabling and disabling. Also only act in the irq handler if the irq
is still enabled.

Fixes: af3008485ea0 ("iio:adc: Add common code for ADI Sigma Delta devices")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c       | 56 ++++++++++++++++----------
 include/linux/iio/adc/ad_sigma_delta.h |  1 +
 2 files changed, 36 insertions(+), 21 deletions(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index ff20fa61c293..a4c31baa9c9e 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -202,6 +202,27 @@ int ad_sd_reset(struct ad_sigma_delta *sigma_delta,
 }
 EXPORT_SYMBOL_NS_GPL(ad_sd_reset, IIO_AD_SIGMA_DELTA);
 
+static bool ad_sd_disable_irq(struct ad_sigma_delta *sigma_delta)
+{
+	guard(spinlock_irqsave)(&sigma_delta->irq_lock);
+
+	/* It's already off, return false to indicate nothing was changed */
+	if (sigma_delta->irq_dis)
+		return false;
+
+	sigma_delta->irq_dis = true;
+	disable_irq_nosync(sigma_delta->irq_line);
+	return true;
+}
+
+static void ad_sd_enable_irq(struct ad_sigma_delta *sigma_delta)
+{
+	guard(spinlock_irqsave)(&sigma_delta->irq_lock);
+
+	sigma_delta->irq_dis = false;
+	enable_irq(sigma_delta->irq_line);
+}
+
 int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 	unsigned int mode, unsigned int channel)
 {
@@ -221,12 +242,10 @@ int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 	if (ret < 0)
 		goto out;
 
-	sigma_delta->irq_dis = false;
-	enable_irq(sigma_delta->irq_line);
+	ad_sd_enable_irq(sigma_delta);
 	time_left = wait_for_completion_timeout(&sigma_delta->completion, 2 * HZ);
 	if (time_left == 0) {
-		sigma_delta->irq_dis = true;
-		disable_irq_nosync(sigma_delta->irq_line);
+		ad_sd_disable_irq(sigma_delta);
 		ret = -EIO;
 	} else {
 		ret = 0;
@@ -294,8 +313,7 @@ int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 
 	ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_SINGLE);
 
-	sigma_delta->irq_dis = false;
-	enable_irq(sigma_delta->irq_line);
+	ad_sd_enable_irq(sigma_delta);
 	ret = wait_for_completion_interruptible_timeout(
 			&sigma_delta->completion, HZ);
 
@@ -314,10 +332,7 @@ int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 		&raw_sample);
 
 out:
-	if (!sigma_delta->irq_dis) {
-		disable_irq_nosync(sigma_delta->irq_line);
-		sigma_delta->irq_dis = true;
-	}
+	ad_sd_disable_irq(sigma_delta);
 
 	sigma_delta->keep_cs_asserted = false;
 	ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_IDLE);
@@ -396,8 +411,7 @@ static int ad_sd_buffer_postenable(struct iio_dev *indio_dev)
 	if (ret)
 		goto err_unlock;
 
-	sigma_delta->irq_dis = false;
-	enable_irq(sigma_delta->irq_line);
+	ad_sd_enable_irq(sigma_delta);
 
 	return 0;
 
@@ -414,10 +428,7 @@ static int ad_sd_buffer_postdisable(struct iio_dev *indio_dev)
 	reinit_completion(&sigma_delta->completion);
 	wait_for_completion_timeout(&sigma_delta->completion, HZ);
 
-	if (!sigma_delta->irq_dis) {
-		disable_irq_nosync(sigma_delta->irq_line);
-		sigma_delta->irq_dis = true;
-	}
+	ad_sd_disable_irq(sigma_delta);
 
 	sigma_delta->keep_cs_asserted = false;
 	ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_IDLE);
@@ -516,8 +527,7 @@ static irqreturn_t ad_sd_trigger_handler(int irq, void *p)
 
 irq_handled:
 	iio_trigger_notify_done(indio_dev->trig);
-	sigma_delta->irq_dis = false;
-	enable_irq(sigma_delta->irq_line);
+	ad_sd_enable_irq(sigma_delta);
 
 	return IRQ_HANDLED;
 }
@@ -551,11 +561,13 @@ static irqreturn_t ad_sd_data_rdy_trig_poll(int irq, void *private)
 	 * So read the MOSI line as GPIO (if available) and only trigger the irq
 	 * if the line is active. Without such a GPIO assume this is a valid
 	 * interrupt.
+	 *
+	 * Also as disable_irq_nosync() is used to disable the irq, only act if
+	 * the irq wasn't disabled before.
 	 */
-	if (!sigma_delta->rdy_gpiod || gpiod_get_value(sigma_delta->rdy_gpiod)) {
+	if ((!sigma_delta->rdy_gpiod || gpiod_get_value(sigma_delta->rdy_gpiod)) &&
+	    ad_sd_disable_irq(sigma_delta)) {
 		complete(&sigma_delta->completion);
-		disable_irq_nosync(irq);
-		sigma_delta->irq_dis = true;
 		iio_trigger_poll(sigma_delta->trig);
 
 		return IRQ_HANDLED;
@@ -691,6 +703,8 @@ int ad_sd_init(struct ad_sigma_delta *sigma_delta, struct iio_dev *indio_dev,
 		}
 	}
 
+	spin_lock_init(&sigma_delta->irq_lock);
+
 	if (info->irq_line)
 		sigma_delta->irq_line = info->irq_line;
 	else
diff --git a/include/linux/iio/adc/ad_sigma_delta.h b/include/linux/iio/adc/ad_sigma_delta.h
index 126b187d70e9..f86eca6126b4 100644
--- a/include/linux/iio/adc/ad_sigma_delta.h
+++ b/include/linux/iio/adc/ad_sigma_delta.h
@@ -86,6 +86,7 @@ struct ad_sigma_delta {
 
 /* private: */
 	struct completion	completion;
+	spinlock_t		irq_lock; /* protects .irq_dis and irq en/disable state */
 	bool			irq_dis;
 
 	bool			bus_locked;
-- 
2.45.2


