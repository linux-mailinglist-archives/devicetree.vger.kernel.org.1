Return-Path: <devicetree+bounces-126533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A1B9E1A2B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95841285519
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FEB21E47B4;
	Tue,  3 Dec 2024 11:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZhDj7tUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9531E3771
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223688; cv=none; b=XB8wIR1T9EXoxpZrkJxBaX8pE0J7dDhmfEB8PXE1rQKd+MVkfU5o7IG6tuLh1jm9dnFkyk/RfMT8KIJfSTrVNp75WzG1v+hQoVnJfUDvJ9fLXa5FwPGAmtBHsq9PgGCYO0JwuqJM7PWRuE+duifX7Skjt7icyGukYCh0ytF5Rr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223688; c=relaxed/simple;
	bh=/UtxUNcu7FlfgGbbbYqeI92ekworOfOuWxMulK9vmm4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=omRgVRCHYjiS2RAV+mVQrleVU1DW3A/02ZtB1OwUReZMtamRnvKARFwsSeF1Qs68A8bXLMA7Te/mDVN4uBhY1nfsQqhdAo44xbfGt0ZB4WICoBJsfljGpI5UL8bUc8I10pkfNuNloGlyPi+YN8pC3WSMnx2MGuEo2oXC0GdSag0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZhDj7tUD; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385e35912f1so2489175f8f.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223685; x=1733828485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aig5K0sssQgvPkFPKhN2zssbw+/Mz4FBnMCldVaVbqU=;
        b=ZhDj7tUD+zwGeqVqzGrsArYWIgT/aZT3dKVijX7C4WOEOvOzFp7yCe/ZG3yP3rRJ5W
         x1USeWknkR6eJ05b9uDhQ+wgT4Qk/cSSSS1wYtu5g8sFO/qC260GcnFEY41QjfTdqKJ7
         81Jlo5KGvBBMTjdwAVZV9Yw0/bW2f9hD/smpvKWV/LvONen7ADufeGjNyb0+d/2ChWwy
         GKdtNR0pBIHdjfJ4Uju6CNAQqao8nZrYbW8vJ8cK5KH4kkO73HT+4oWAK7EKRiGdooRA
         QcaKcUIJB71KSWg5ZSE07Z++aU8gsKKCfEJ4Hfq1aWAJH2z0aRXb85dt90btswTIRx+G
         YjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223685; x=1733828485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aig5K0sssQgvPkFPKhN2zssbw+/Mz4FBnMCldVaVbqU=;
        b=CHGiRWcgyLRNQgMkw5PTNYLaSNm8ipwzyCkIK200qOoej2Fa+HdUSEIC+d8j7sKxTz
         /oBtVGKYJ5tRJP/kf/tI4L3n8fVVIM8tN9+tL4LCG96TlzRKKZQs0PIbdZBVPvYJSC71
         pheOA/Hpvm9dmjUQLgasRoJb+I1ldEORJ8K7IJk7MppdqR0QVWMMqX+bFwvSrXomWIPD
         kL2VCNA4WH5rtnOQA+FAcgzfriRzrobeOfbZCwBu6dVNry03zCLCKtB2NDvE8S/D1x+x
         MWvd71ZdW8ZrqdaYetX2eLddFdXvEEdkbY2UPC+XgioXlECPJHlKSGoM6bU3X4pJ/OtJ
         asjA==
X-Forwarded-Encrypted: i=1; AJvYcCXIHSV8h32QJm03CDpSGsWqL9KMCDw6vhZzBKFsxGhuUsXqBm5BuOoyD+eXJCkPg6YmSnhQb7GQkcGU@vger.kernel.org
X-Gm-Message-State: AOJu0YyUmbpgeX039cB4x/97vxGkDHsW/KO/cH8+0A/ifL0m9r+5eTzf
	jQa591x6GW6iCGNxajuLRZVBZcnfKfmmo2IGangRUK0eKg5Nxu3hLDEE+eR+IOk=
X-Gm-Gg: ASbGncuMV5uwH+jpvMxzcFCsZDyAePBgqFi70c+KoLbFx+NW7G84gvTCjEpM94vtafw
	dHfg4S7krdZcOmZMNUCdb+e6AobZtuXp4KRFUZTZ3p0KuaQNlQr1lWSEKx0yF8TLZLUfn8IxVZr
	Ty3qHcwU/bnhcjmPZy5vk0GP45q0cU8izzxfxA3vuYtq4fxZ2yEh2JY/jxH/yp+pvwrZAeCISdE
	TIWVQM1aqB9NjmSMUycMgN1ja80u5M3I5QFdwE0HvqvesZQKEjFHv/W1T5kmM+7X8uU+/uvSrqc
	9+TT6Hh1LSbpAsvSWClkGwM+ssR0npX/C0ZsMxc=
X-Google-Smtp-Source: AGHT+IEflZ/bfJ7Yhpi3X7wclP9fPQc0soHAFLK8OtuTF11ung6XmDWNFqD7T93WlhYn3Rc6QlZuGw==
X-Received: by 2002:a5d:5f84:0:b0:382:3cc2:537c with SMTP id ffacd0b85a97d-385fd3eb66emr1795981f8f.26.1733223684816;
        Tue, 03 Dec 2024 03:01:24 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd3a522sm15094135f8f.52.2024.12.03.03.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:24 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 06/10] iio: adc: ad_sigma_delta: Fix a race condition
Date: Tue,  3 Dec 2024 12:00:26 +0100
Message-ID: <20241203110019.1520071-18-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
References: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5630; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=/UtxUNcu7FlfgGbbbYqeI92ekworOfOuWxMulK9vmm4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTXZ1jctnT359wUzbJNDXuiikKyGWIfPGgx0 Z+4vPzq9DCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07k1wAKCRCPgPtYfRL+ TurMCACwp77bmy+d6tT9ffLfcGgapofq3I0A69QQLgwSDQDkHV6DV6Ocn8b57sVXwxxOYdYTuVc i9D9DrnxW7F7VWt5FpvNE05FtiQT0cyCovcTw7Kdq7Roq3ohdg8OfM8VkuaohTHDsKrQmZKo5lx XtN3iculo8PK7W3XDDj5vf68YrE/N7DLFUp6JMo9UHkY6dh5IHj4B+Oadwj57S64GbhZL+r4O9l AN0ZfmzsS0aNVlJdcyreYGowxvfcs3ibawQyLvXdGoWOZYSNc7BzKvgYOOPHGcoyCNNKxHcKuzg VsrSWayXZGx70Z8RDeueIONdx4fTM1f8tRbG6Rlzns1H8Ll+
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
index a2efd2145373..9abde276cd17 100644
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


