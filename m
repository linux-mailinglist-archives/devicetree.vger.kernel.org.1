Return-Path: <devicetree+bounces-115542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 867569AFF45
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 12:00:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7C83B232D7
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC55C1DD0FD;
	Fri, 25 Oct 2024 09:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="X0cpvvEK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732101D968F
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729850395; cv=none; b=XdIIJY/+L0HBNhk5qy4fgNBob4Qv8L4kDk3oiJ+T3xGWEnUjFaUECZpBEF2bX83VwRx3llDlOYcT/5vMqwiSraDAakhW5SxKf3qG7o2LzQyqXBm/BCu6fEwQqBrdhgk6oyBajjzQk/lMmBIPHf2W97xgVnqN023bIEfQxhIqBGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729850395; c=relaxed/simple;
	bh=thXhUwQLx0ic152I/8ZIoekXqTF65zPinRE8fIvjkp4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MFCWamJTNrLFM6KG68t2IBeMSIKx1JcVmoNNsLDK8+sscHO7szxNXgdYQ3NgReRF71rhP0rL/iTQKNJhlXAZuh0U/g7aQMkrzggkgMrorqalKN+vPPOjtl/8WQ5wLiZ2v5wt78YcN/0nuD78k3qRNN08lszQ9hZPv0yYDANwKmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=X0cpvvEK; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9a0cee600aso235500566b.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 02:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729850392; x=1730455192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7eIz+/d8S1VI98YfeSXtMvF+ChCheDsXPx+QBArarYM=;
        b=X0cpvvEK0/v13/DGizmwZtwZcicFOzD0rJHXHZHBWGZSyvXXCrvHsQGeaVNvCHrd81
         k6XNZxFagWBk+yEvFrHPKdfkcIe/jLdkp29sXc3ixaZo8mF4FO/EyRRKROLbs+ALZtLO
         F8gzml1zdO8wjhCPFkXTF7mZSmEIrdTJCjpiAH32yCt1MUWuQVavTlEkeZDwrhOTo0Dm
         A0rUPePq4FjAUB3qWzjLU2wG4QKlG+vJx96Z68XyZ0dBWgp0IoQ/QhD6T+O6CJlws0Fj
         qhKa/D9QfXkMQ2Yw31SuxX58CyHTKkH5VoEgxJLp9BzR9q8HRaVu5blUTFOyjEX4zRWx
         YEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729850392; x=1730455192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7eIz+/d8S1VI98YfeSXtMvF+ChCheDsXPx+QBArarYM=;
        b=ovFqZqvlbPAk+duPrhG9cC7ueR9wdLfN+TaFan5Bx6IxLUaUxdj0QEYaS7sEFMPjcK
         gPau5jcEjVq16VV5R07mOsftt67ZxUBAlujyyI+nsdraTelpqTtGb9ON/QtuQYE3w3nT
         CEc1FuAC+LrkTxup66HR/TZIz4kCyP+gKSw9N4eB2MFI5F4kA/RCPlPy/V/NKbAahfTp
         8QK9vyZ+4kwFjwwu+C6RZTfSzvtSlpg4Qwexvbh8bghIMmN2+5ksgL5XrupCGCvFB7c5
         DfCbaBE8FggjsiLMaok54rhJ9z0VWGurt1//7SXB09C7Iu2LgX1O0GXhkABz5Sr7XupO
         nUJA==
X-Forwarded-Encrypted: i=1; AJvYcCX+5fB8B5smwYf7XJ/rEXcJlLko+rDHac0CAiz9+zRNWP6kbAavQ2lXJM+KDdFEM5GhBmvnIc6TOm24@vger.kernel.org
X-Gm-Message-State: AOJu0YzVrsNrH6RwOF3P8XQh+NUskZYe5a+5ZzC4FCEufPNfENbLzF3d
	5mPtsKpaq2a9mttiIap7lcHOMqOcDKBeLHCale8J92uvDxogAhD62EnY1NA/8Yo=
X-Google-Smtp-Source: AGHT+IF08eLYlnCW/ybZxW+hu8+oUE5zIA5uhxkWd2NWFN12lvQV4rLrwcF+j4/GG6fKFTUULtQzMA==
X-Received: by 2002:a17:906:7309:b0:a99:dde6:9f42 with SMTP id a640c23a62f3a-a9abf96ce04mr899693866b.47.1729850391685;
        Fri, 25 Oct 2024 02:59:51 -0700 (PDT)
Received: from localhost.localdomain ([188.27.128.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f02951esm51737266b.71.2024.10.25.02.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 02:59:51 -0700 (PDT)
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
	dlechner@baylibre.com,
	conor.dooley@microchip.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v2 2/5] iio: adc: ad7606: use realbits for sign-extending in scan_direct
Date: Fri, 25 Oct 2024 12:59:36 +0300
Message-ID: <20241025095939.271811-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241025095939.271811-1-aardelean@baylibre.com>
References: <20241025095939.271811-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently the 'ad7606' driver supports parts with 18 and 16 bits
resolutions.
But when adding support for AD7607 (which has a 14-bit resolution) we
should check for the 'realbits' field, to be able to sign-extend correctly.

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index ae49f4ba50d9..effb98b4dc77 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -568,7 +568,7 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
 			      int *val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
-	unsigned int storagebits = st->chip_info->channels[1].scan_type.storagebits;
+	unsigned int realbits = st->chip_info->channels[1].scan_type.realbits;
 	const struct iio_chan_spec *chan;
 	int ret;
 
@@ -603,15 +603,15 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
 
 	chan = &indio_dev->channels[ch + 1];
 	if (chan->scan_type.sign == 'u') {
-		if (storagebits > 16)
+		if (realbits > 16)
 			*val = st->data.buf32[ch];
 		else
 			*val = st->data.buf16[ch];
 	} else {
-		if (storagebits > 16)
-			*val = sign_extend32(st->data.buf32[ch], 17);
+		if (realbits > 16)
+			*val = sign_extend32(st->data.buf32[ch], realbits - 1);
 		else
-			*val = sign_extend32(st->data.buf16[ch], 15);
+			*val = sign_extend32(st->data.buf16[ch], realbits - 1);
 	}
 
 error_ret:
-- 
2.46.1


