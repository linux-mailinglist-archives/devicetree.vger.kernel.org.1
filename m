Return-Path: <devicetree+bounces-89698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F21C942780
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5912A1C215A8
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 07:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF8B1A7F78;
	Wed, 31 Jul 2024 07:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EH0/0930"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80F21A76BF
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 07:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722409562; cv=none; b=C5iloA1YCMEsra9RUtfJMKRhcXJxllY9NuYQrRMFZMbgxE8ar6aDR3FZg69eqbDsTGsqca4f7izezHSbfjicIw61XrbBxTr2Tj38Gi/SpSQCI8LYb+OxR17J6aoh06JcnqJFUeSEP3uTxPyJ5gwfH6UkS1w3tINql+MZY2GylSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722409562; c=relaxed/simple;
	bh=7XD9EIzKfrzHxR8R1rUbV5Jj4bPwKwqrDZgXaJFs3os=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BmWhNFQXT000HTwgmYagJgI6jWj8goir0uyiSVKuUgCL9wJxWmSCEa6EDSlHafGJjT3OYIY94DkoNhRoIDxEUcG8pPJey4e+beQiqDLzyq23QMx1y4p4kIMLYwK6A4QuEIuUKHLM46aQzB6lGPaG/yXoqW3gEcxICBTKnkiiMfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EH0/0930; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42817bee9e8so31342425e9.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 00:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722409557; x=1723014357; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XWyBLNHlp9hCXozkWOndIbFuJnRj4rl0Qp1LlWnlIPI=;
        b=EH0/0930UrTTYLsNG8xu3L9fuVuRoKaUiyZsa88CzjEKYlGD2hr5T+oB/k+iBD5znM
         IDyuPgy1x4nFzsBFoY8cI1hhlQPa5kuOZX/ieA1Je3qKHoeAdUu9jJ02yJerpBHoWJFP
         TfnMkXjqt/K9k86cMdSRkpAn8e+Z40ypfBnVmpWTxv5GFPOOIshWD72kAlwkjYN+PKRs
         o1stTuJD3f8HZLmBXl1NGr5RVAAm8RZ1zQbvgo9rf/m7yjEJF+9kYO7ixdlqAZ7oKsZ0
         WM1pnXCO2r+XIYyn3sr3qFZCdNvIyZwmayGrotPCdL5x1Smpt/CarSXppFLX4kjEaLut
         dLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722409557; x=1723014357;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XWyBLNHlp9hCXozkWOndIbFuJnRj4rl0Qp1LlWnlIPI=;
        b=NyXH7U85XSfEikcoFIBni+VaQNxYZaiYevcwUsv6PQzWzBPutziQNb5GlSLaysKliE
         xjw2Ib2V78geN0Fs/ImrrURnArTsOtkRAE+ugls008y5SlEIVy6CRHe8/ydvtCBwmQbj
         BncKpmhNOlXQC6D58xM1oODBYakIA72S3z9wbzsU7js2Sj+OScyyaLIGTBUVYSr7Ca2Y
         X6GZHsrd3uo3BqHn0SvEXO3HO0xbOmehWYCJeTe7R/h9QuMqakNr/22y+Y9lgZZMXs8V
         L8RKzHhFeBb9LTOf4mFwDMsIExulNMVXg1rKyesBL4bNMOzCC5v9/xH6jPPV8xJGIgoL
         tWfA==
X-Forwarded-Encrypted: i=1; AJvYcCWV8o+vMT1hLct1t4bAMKoebfNZREMFhsMWZN4l9PRgoMsWYTUueydxfEZkZYy1QgUAr7AzFwwm1upOG4BBbR1QjmJze1RYrxRMmQ==
X-Gm-Message-State: AOJu0YwblJIXLuxwF8w0sGImc7z+7Dp5exEGGxkMovy4iWviu4VUVyA0
	DM4tg/LLJwFSGk/tSaXe1PsqIwzfxCaPxj7rYEyMbD8m+Qol3iffSkJ2+yiKpg0=
X-Google-Smtp-Source: AGHT+IH10sHLkGAMAl3Q8EfCabIQTlCzo//xvraMgc7zTKLTmSclsI3goKn7cG5tDtZ67xA9JkON9Q==
X-Received: by 2002:a05:600c:1da8:b0:426:6ead:5709 with SMTP id 5b1f17b1804b1-42811d8893fmr106640625e9.9.1722409557405;
        Wed, 31 Jul 2024 00:05:57 -0700 (PDT)
Received: from [192.168.1.61] (2a02-842a-d52e-6101-6f8f-5617-c4b6-8627.rev.sfr.net. [2a02:842a:d52e:6101:6f8f:5617:c4b6:8627])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282b8a2593sm9953215e9.4.2024.07.31.00.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 00:05:57 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 31 Jul 2024 09:05:48 +0200
Subject: [PATCH v2 7/7] docs: iio: ad7380: add support for single-ended
 parts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240731-ad7380-add-single-ended-chips-v2-7-cd63bf05744c@baylibre.com>
References: <20240731-ad7380-add-single-ended-chips-v2-0-cd63bf05744c@baylibre.com>
In-Reply-To: <20240731-ad7380-add-single-ended-chips-v2-0-cd63bf05744c@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Lars-Peter Clausen <lars@metafoo.de>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.13.0

The AD7380 family has some compatible single-ended chips: AD7386/7/8(-4).
These single-ended chips have a  2:1 multiplexer in front of each ADC.
They also include additional configuration registers that allow for either
manual selection or automatic switching (sequencer mode), of the
multiplexer inputs. Add a section to describe this.

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 Documentation/iio/ad7380.rst | 42 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/iio/ad7380.rst b/Documentation/iio/ad7380.rst
index 061cd632b5df..9c784c1e652e 100644
--- a/Documentation/iio/ad7380.rst
+++ b/Documentation/iio/ad7380.rst
@@ -17,10 +17,16 @@ The following chips are supported by this driver:
 * `AD7381 <https://www.analog.com/en/products/ad7381.html>`_
 * `AD7383 <https://www.analog.com/en/products/ad7383.html>`_
 * `AD7384 <https://www.analog.com/en/products/ad7384.html>`_
+* `AD7386 <https://www.analog.com/en/products/ad7386.html>`_
+* `AD7387 <https://www.analog.com/en/products/ad7387.html>`_
+* `AD7388 <https://www.analog.com/en/products/ad7388.html>`_
 * `AD7380-4 <https://www.analog.com/en/products/ad7380-4.html>`_
 * `AD7381-4 <https://www.analog.com/en/products/ad7381-4.html>`_
 * `AD7383-4 <https://www.analog.com/en/products/ad7383-4.html>`_
 * `AD7384-4 <https://www.analog.com/en/products/ad7384-4.html>`_
+* `AD7386-4 <https://www.analog.com/en/products/ad7386-4.html>`_
+* `AD7387-4 <https://www.analog.com/en/products/ad7387-4.html>`_
+* `AD7388-4 <https://www.analog.com/en/products/ad7388-4.html>`_
 
 
 Supported features
@@ -69,6 +75,42 @@ must restart iiod using the following command:
 
 	root:~# systemctl restart iiod
 
+Channel selection and sequencer (single-end chips only)
+-------------------------------------------------------
+
+Single-ended chips of this family (ad7386/7/8(-4)) have a 2:1 multiplexer in
+front of each ADC. They also include additional configuration registers that
+allow for either manual selection or automatic switching (sequencer mode), of
+the multiplexer inputs.
+
+From an IIO point of view, all inputs are exported, i.e ad7386/7/8
+export 4 channels and ad7386-4/7-4/8-4 export 8 channels.
+
+Inputs ``AinX0`` of multiplexers correspond to the first half of IIO channels (i.e
+0-1 or 0-3) and inputs ``AinX1`` correspond to second half (i.e 2-3 or 4-7).
+Example for AD7386/7/8 (2 channels parts):
+
+.. code-block::
+
+	   IIO   | AD7386/7/8
+	         |         +----------------------------
+	         |         |     _____        ______
+	         |         |    |     |      |      |
+	voltage0 | AinA0 --|--->|     |      |      |
+	         |         |    | mux |----->| ADCA |---
+	voltage2 | AinA1 --|--->|     |      |      |
+	         |         |    |_____|      |_____ |
+	         |         |     _____        ______
+	         |         |    |     |      |      |
+	voltage1 | AinB0 --|--->|     |      |      |
+	         |         |    | mux |----->| ADCB |---
+	voltage3 | AinB1 --|--->|     |      |      |
+	         |         |    |_____|      |______|
+	         |         |
+	         |         +----------------------------
+
+
+When enabling sequencer mode, the effective sampling rate is divided by two.
 
 Unimplemented features
 ----------------------

-- 
2.45.1


