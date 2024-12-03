Return-Path: <devicetree+bounces-126548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC119E1C0A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:23:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BE5CB43223
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF471E6316;
	Tue,  3 Dec 2024 11:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Z+2gqJEx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2AB1E5711
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224424; cv=none; b=HROdjXBCBfJrWbQnDI9nO0u3P8gnvhvSfKclWiMqUcvfStStLNW86RoWwqbXIlKY1gIzKs/ayOzD3ngFB9rTD9gUQExTp629ngeEoBhficQ+ObtZbZJ9o9ygiYHztrla9jJE4XbjJldu4yb0ZjfrRpFJFPsxIILbBUo2UmaN/5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224424; c=relaxed/simple;
	bh=dJ66VqH1lPKbG1vJ5uyMkdnhCZK/cj9xWl8VrZo+eZw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nx4hFSPB5XgXCI8B7bxfmN/IrPuq2Ser25hFo8a1+PNZuW+7wMF9DZPtlRHGuXSaderSBh7ro3/ZI1JwiOJTkKPaGab65DwtnU9GanVqk7oOEjOhZctvxmuo/xs4sFbyi2apzUnkDeC0PhthcaWVqNQDZT7NHiJENlbetyqEUdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Z+2gqJEx; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a736518eso66708985e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224421; x=1733829221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGjJNxAUoLlbHeze5dKZ8rYLCdUS04mEhaX4QA4tgNs=;
        b=Z+2gqJExQdzuRiPv9DPdYMSZwZ5IdAbriIf91XWR916L8+vIxd4nR6+x5WeJtL9BuV
         bGQzsrLyFcBToFHCiOHVrC+16vXjoVi5XiodBOLM4KyEdUa7bujkBN2liLc9GjE3+Sh/
         NMER/kcmbuI17iMa32Pq4r0H+TI3Q1kEd3qFvU9YEB524KuuWy7VisMkdIGaof+t3FOi
         Qrp8o79MZu69kJ6XgUpamlAJqPWpcCwQxi7bgfS845vRXOD92ujjh41zbUULSNO3S7Et
         +7BDQnnQBXx4ZjWIUN4ABT6PeJrpyw9dg4QerBeYSZcFsCer9HWVnnQpRmnyya1/4VvK
         pC0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224421; x=1733829221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JGjJNxAUoLlbHeze5dKZ8rYLCdUS04mEhaX4QA4tgNs=;
        b=nbD5/bM2OE/Ar3z9ou3A0VHLjtk95LHWlSoEceN8n+p6Unh7vTal1wTJ8ksJ6gG/i5
         p5jGoJRsxiX55PUoGrdA+l2MnWBeuKOV5oBRiJwxYASdbyq7bbe4P5qSCVVM1GUSSlTG
         4BSqagLxCzcJbxmJ7sBs+o0KK4MbA/SlGRiPMVixiBEu9O9BQkHksueMTOmuFi8cu1l7
         OaCQ7oyc2mdXNGR8034+76uYOluLyuUryPP3yNLiBiDkkJE401Qujv56XIdFU0KQpOVo
         AIys1/eN/09mEzAes2+LmRiyWmulkW/XcdsDTOJhGN5Pss9MMsa1lxSjNeXjF52/qBHw
         ZlPA==
X-Forwarded-Encrypted: i=1; AJvYcCV1M7f+qkxPjOdcxX0+bjPE8hXyh7z89/ovviSl0PhoszbA+vQDYOjsHyma3Q14J1+HmFX3YpxYELJL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw95tWzZLysg7o2t+yt8WtbWQS8FmBh/2+Wt0ksJpRQsVOPvWNX
	NJGOsRSocRDg8nF3mTNvrZB5PZP9PMWRvbcGdpgMhbqsjMsMav9eyw+dLRiNx0w=
X-Gm-Gg: ASbGncuooRhgBRw9W735EbDT9t5Ihyv1hu3JLntrOxfcPxvO42kI+MTdSBdrE6PoZ/E
	7XNXeaCN4ZCprKcLMZKQU5xOSfT4boYgOORoqu1ZlEtHr59bhNHbNLxWEeCnRJxKmISnpFzS0Jw
	Jj6nibsXe6oUCpXgLKMWvL4j3K9uB4kq+/Ji+ry+pClo3yAcHSswK6v8OGV/B2xr8llbxlIzUxY
	j7JGwWPOBICNrFWIdML8lWnOD/80Jo5i0Xo4wUG5BX3wd/T8dt1P8g4CSfNSYlzBHv/dJDMt+Qd
	TOyv
X-Google-Smtp-Source: AGHT+IE+s1yoVLBzbwgkBBIAjbk6p+3eCyfk26hAJKZF4jfFJbnwH4ZzJ60DDcfVvJaXNdjv9UMOjA==
X-Received: by 2002:a05:600c:138a:b0:434:a684:984 with SMTP id 5b1f17b1804b1-434d09b2f31mr20189215e9.4.1733224420880;
        Tue, 03 Dec 2024 03:13:40 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:40 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 06/14] iio: adc: rzg2l_adc: Simplify the locking scheme in rzg2l_adc_read_raw()
Date: Tue,  3 Dec 2024 13:13:06 +0200
Message-Id: <20241203111314.2420473-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Simplify the locking scheme in rzg2l_adc_read_raw() by saving the converted
value only if the rzg2l_adc_conversion() returns success. The approach
simplifies the addition of thermal sensor support (that will be done in the
next commits). The downside is that the ret variable need to be checked
twice.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/iio/adc/rzg2l_adc.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 62932f9295b6..eed2944bd98d 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -227,14 +227,11 @@ static int rzg2l_adc_read_raw(struct iio_dev *indio_dev,
 		mutex_lock(&adc->lock);
 		ch = chan->channel & RZG2L_ADC_CHN_MASK;
 		ret = rzg2l_adc_conversion(indio_dev, adc, ch);
-		if (ret) {
-			mutex_unlock(&adc->lock);
-			return ret;
-		}
-		*val = adc->last_val[ch];
+		if (!ret)
+			*val = adc->last_val[ch];
 		mutex_unlock(&adc->lock);
 
-		return IIO_VAL_INT;
+		return ret ? ret : IIO_VAL_INT;
 
 	default:
 		return -EINVAL;
-- 
2.39.2


