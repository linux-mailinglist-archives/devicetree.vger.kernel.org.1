Return-Path: <devicetree+bounces-101018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7990F970067
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 08:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EACA1F23739
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 06:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4157C14AD2B;
	Sat,  7 Sep 2024 06:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3aMGbeMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1391494BB
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 06:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725691857; cv=none; b=qDCVesTHhDZAvRWI7n0nRFrAwrJ0621tE+fj+D3Uf8nbbYT2u52b5RgP8yuIAoYM8+D2bB5rZBOFsjOFsxZp92klp6EdcnWs2idVC4BL3r2b03vzMoAV17DO6sx3OF6xH/Oxau+IBm2UbK5B+XqWXd9YsEO06BfuB6YeVclEi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725691857; c=relaxed/simple;
	bh=ReX1tcN+8IqMEgTbR3kytKFtMyNG7SXasp/uFdZgMvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z7w0eETFr6y2YxQmLRKyPmW2ilXNygEIPwGH5PT3lLRjPaBYnfiyYiRR/06EkOQ1yDbBQoG2cXsN9iUHAmNmZ5s92YxxNdIUt2auLoajENSKAk+eIxzHg3iDAO50UCFijJzXjw4/Nh1EepAi7GVTfZ1sc7cG638f799aV1/LrIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3aMGbeMX; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5c25554ec1eso3082136a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 23:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725691854; x=1726296654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IhYVin5vQT0MSKwrGG9FGK6a0HpbK2VnCXypCXGshr0=;
        b=3aMGbeMXzkQDBQlQO6DsjXHymz2qROUIG8V3jkjnzUx1THGI9nA5+ZcPYy+ZNAjlBT
         6U03LTRliHFQyXNtk9W49WM6Eq4B33q3rVZxPpO8T+6XCA5pZthZsAiT+SO33deiYaZ6
         O2ANYUNMplR8sgcc6t4HwZ9yAWxomVlql529T1NBSuecYIlhG4/bC/Qf7vzMX7lsFqCF
         2btdP3zadYIZa7Z3LVSKSNsEGJj5bwzt67nDpBMJc21l0BpWIZ10KA//dTADuTcYK2V1
         ncKtAcKBmE/GV7m3zZ/s6/GH50Xoahbsa6TXHTsQjXKoaAKiiOFRhdZBtG8RbJGYn/Yo
         IJnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725691854; x=1726296654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IhYVin5vQT0MSKwrGG9FGK6a0HpbK2VnCXypCXGshr0=;
        b=lJOJCpYCh4VbGolZ/JJ8oFm9+1PJHmrFivfCsH3AtQhgQfhHF3xQfCED6jTuuzU/rb
         trafFwTcc2Kjlfnrf+QzoBQAOhaYqelG19u0lELnvVVP+ob0KDGU+LtDkUgdRf3ngmva
         lF/OsX0gZOjPTHPCHWHf8/umSEtCAefxWnRSp33rnl/u3h4lNcLATDjS1yi9N3uskjYd
         i2+/7GUMf6JBsqmT3RfRcqwClq1xUAauzoyNc0fzccnGz+SsyatW61ZpXIiJOkoOkwdU
         bwS36BL4Gk6Gdnk/JqEGVBdA+WOZQjWPoTwqYuj6Ak5DdjxXq3+6vA/h9IxIVMOaILg1
         8/LA==
X-Forwarded-Encrypted: i=1; AJvYcCW78rLmpCAUW0zc04IfdEe7dvhuN8MkvyK8KkptgwLLXMUnFur5PxdCbTi/YVf49MDh9SagNVTS68pu@vger.kernel.org
X-Gm-Message-State: AOJu0YyLoCmhRnpZARlyeY9DgXhRgOBCM5PZcHlBeURkjg01vi4Iyxdp
	MT/52LsWcHwPdqn9hUnBIkbqQ+p4dEMOpCjg6jdQ1imbksYPKu+wjEDYMq3Iyeg=
X-Google-Smtp-Source: AGHT+IHoPfEDsWIq0u4z+PJUMCGdKNmjGDdO9gTrnoCfWIHbvrCb+iCAjNF8nE/gdzLtc4wDz3CPAw==
X-Received: by 2002:a17:907:3e1f:b0:a86:79a2:ab12 with SMTP id a640c23a62f3a-a8d1c4d7748mr148169166b.38.1725691853607;
        Fri, 06 Sep 2024 23:50:53 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25835a76sm36539266b.39.2024.09.06.23.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 23:50:53 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v5 3/9] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Sat,  7 Sep 2024 09:50:36 +0300
Message-ID: <20240907065043.771364-4-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240907065043.771364-1-aardelean@baylibre.com>
References: <20240907065043.771364-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ad7606_scan_direct() function returns 'int', which is fine for 16-bit
samples.
But when going to 18-bit samples, these need to be implemented as 32-bit
(or int) type.

In that case when getting samples (which can be negative), we'd get random
error codes.
So, the easiest thing is to just move the 'val' pointer to
'ad7606_scan_direct()'. This doesn't qualify as a fix, it's just a
preparation for 18-bit ADCs (of the AD7606 family).

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 8ebfe8abc3f4..fec728f5b3e9 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -114,7 +114,8 @@ static irqreturn_t ad7606_trigger_handler(int irq, void *p)
 	return IRQ_HANDLED;
 }
 
-static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
+static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
+			      int *val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int ret;
@@ -129,7 +130,7 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
 
 	ret = ad7606_read_samples(st);
 	if (ret == 0)
-		ret = st->data[ch];
+		*val = sign_extend32(st->data[ch], 15);
 
 error_ret:
 	gpiod_set_value(st->gpio_convst, 0);
@@ -149,10 +150,9 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 	switch (m) {
 	case IIO_CHAN_INFO_RAW:
 		iio_device_claim_direct_scoped(return -EBUSY, indio_dev) {
-			ret = ad7606_scan_direct(indio_dev, chan->address);
+			ret = ad7606_scan_direct(indio_dev, chan->address, val);
 			if (ret < 0)
 				return ret;
-			*val = (short) ret;
 			return IIO_VAL_INT;
 		}
 		unreachable();
-- 
2.46.0


