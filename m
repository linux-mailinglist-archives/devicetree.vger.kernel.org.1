Return-Path: <devicetree+bounces-77055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2093D90D4CB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4813C1C23385
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A4116EB65;
	Tue, 18 Jun 2024 14:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YquMQCKL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB8916C69B
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719359; cv=none; b=iqTctKW84tbdvGW3z0tL9iifPjsq2F9ScLAQkEwVPK+TFM90LDa8jAD4d3uOQ2zIozAIIjY+qtMiSzwA/MmNI5qiP5QLL9YiPO+pOPJYYWD7cWIP/Ri0Udx7go/2P0geoYU4TlQXZpQNTPq1bIun8ceUV0gebklFscC9nGj0nZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719359; c=relaxed/simple;
	bh=dQxXp9Op1zTGeFN8lKe401hgz5qSQTwXXD+bvc/TFcM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OzlDUOAkjH9QmBMrNJbundjBr2r+c5KPSaTdanYrJa+qva3w2Bx8txy/37CrVfMNm6UPpIvloBeX8xGt/RcArGO3ULeYT3fDSFcq4ItlgYbvsSX2cEm8d50OGeKz+64YEm8F+7cS1ck4v8psWdRqW+JxMHvJqgQZkGAKd3R8JCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YquMQCKL; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-362b32fbb3bso193606f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718719354; x=1719324154; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fySTWzP7+2Q4hnnSyXij3ZpjveKlFndsAqH5BZexb8w=;
        b=YquMQCKLSr+dQ5OqmcKk61B3NmSeoZK7G3VtifXDN/Yu5tfTV83njaPyt2wMIqyCo/
         gup6dqaL5rAGYWZjk5FoX5vyVaMtWh6cr9hNB5UjNj8qJerWZ+ln4Q0oIir5fMP4QQzi
         9IUu0KLtTPpBEr3ndc7PIRdLvtVuaDmqwrgrKi/NBo8RvSUYgD1M4rk/leAsM3T1ec3I
         cbjsTwsbuMYKfjUjc1svresGfHs1ovu0hxfU5+NjEMtOBTMUgOxqsxKSoCFq84xMo0v8
         zopspJRFb4ponLJ7xPfnypO39WxvcP4WJkbuIxrrMqDH8FoWjns19Kk04VHtbDRQJs4V
         QBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718719354; x=1719324154;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fySTWzP7+2Q4hnnSyXij3ZpjveKlFndsAqH5BZexb8w=;
        b=ciov/uO6nkMmNMku35fd9KNPc8NUA4eXru0SI7isPlMENAeXN/xgjzIzxlYiZIsKpk
         KBLbhv2KQn4i/mi2xqoiw9ZdU1NKiQvc57HCgL/i6Cd/R9YytoL978RhgBsJjWZYeFuL
         frA5XejXE7C9Nm4BzU6KMV8cIsR0WrdmWjGTBcmCLcVPqkkJR8Ec7UN80qRM3aVUZNWX
         1xW7ysQcZSqgMJTdcyVjpTAj4s2VsdqnkaJvp64gUCLt1VSH6LdBHq8V+bZu2q6jfl5n
         NVYx4atMt8uqd+HReyw1iC3p7bJ5KA/O0VbqY2icbzYorkYEmtj8wGlN00LMGFOP7pYr
         tHug==
X-Forwarded-Encrypted: i=1; AJvYcCWs0nDo/Cxf1BtyAlUhMxbLjinm+im9sbyMYaAb2ieg9pG1k2zwtVDX7Mlr8TyiswqGMPtfMr0K79ShJ3hYkb23zhIR5vRgoqAc+w==
X-Gm-Message-State: AOJu0Ywyoamj0aYdB8RpQ/DiHxKR38xgdRx+yJEMlQdShc12Cu0rE7Zm
	/j021d/VDPNYeTZsR9sRuDd2gLxD3eU2RH7JKpBtaoC89r6S5ek8cAeLOOjRisW7ut6G2zQh5AO
	Ty9o=
X-Google-Smtp-Source: AGHT+IFjv5B5zrwnrKG07bNRwmngFblZ30ls8fBQs0cX2uPWV+t6prLL9CNFqYpst13GA6h8bFeT5A==
X-Received: by 2002:a5d:550f:0:b0:362:fa8b:224b with SMTP id ffacd0b85a97d-362fa8b22c8mr15107f8f.47.1718719354290;
        Tue, 18 Jun 2024 07:02:34 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750f22absm14412546f8f.79.2024.06.18.07.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 07:02:33 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Subject: [PATCH 0/9] iio: adc: ad7606: Improvements
Date: Tue, 18 Jun 2024 14:02:32 +0000
Message-Id: <20240618-cleanup-ad7606-v1-0-f1854d5c779d@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHiTcWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDE0Mz3eSc1MS80gLdxBRzMwMzXUMzw1Sj1BRLC0OLJCWgpoKi1LTMCrC
 B0bG1tQDo3breYAAAAA==
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beniamin Bia <beniamin.bia@analog.com>, 
 Stefan Popa <stefan.popa@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com
X-Mailer: b4 0.14.0

This series adds the following improvements over the current AD7606's
driver implementation:

- Fix wrong usage of gpio array
- Fix standby that was documented as ACTIVE_LOW but handled in the
  driver as if it was ACTIVE_HIGH
- Improve dt-bindings documentation
- Switch mutex lock to scoped guard

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
Guillaume Stols (9):
      dt-bindings: iio: adc: adi,ad7606: add missing datasheet link
      dt-bindings: iio: adc: adi,ad7606: comment and sort the compatible names
      dt-bindings: iio: adc: adi,ad7606: improve descriptions
      dt-bindings: iio: adc: adi,ad7606: add supply properties
      dt-bindings: iio: adc: adi,ad7606: add conditions
      dt-bindings: iio: adc: adi,ad7606: fix example
      iio: adc: ad7606: switch mutexes to scoped_guard
      iio: adc: ad7606: fix oversampling gpio array
      iio: adc: ad7606: fix standby gpio state to match the documentation

 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 126 +++++++++++++++------
 drivers/iio/adc/ad7606.c                           |  79 ++++++-------
 drivers/iio/adc/ad7606_spi.c                       |   5 +-
 3 files changed, 134 insertions(+), 76 deletions(-)
---
base-commit: 07d4d0bb4a8ddcc463ed599b22f510d5926c2495
change-id: 20240416-cleanup-ad7606-161e2ed9818b

Best regards,
-- 
Guillaume Stols <gstols@baylibre.com>


