Return-Path: <devicetree+bounces-88379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F364E93D5DC
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 17:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2168FB218D2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 15:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC1A17B51B;
	Fri, 26 Jul 2024 15:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vZeYDW9u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FB921103
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 15:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722007221; cv=none; b=k3bXGUPlIK3JLiBwpWZ2ihV1zTe7wXPciHBT28wuHZnUn575g/ccwDD+eKR1eEhBLqo/zIrRyF3Z9sKQouDWk2cI11KVrpLBujCzJQrk79MUtbGaEoyTmMtqQJ3mOVEzxgQlymXUMktrjAbihpxB88Lj0wPG7BTuvr3I6KKgHRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722007221; c=relaxed/simple;
	bh=CcSVrXgio5wQaIXNHB/uRRuS79CVZUk6owoeEqIgekE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oal3zbb0gP2nApG6sH41Tk74IWhFPlaQFm6b3gls9gRMkEPQvjezh8IkkY1oy/DHkx6d/a5mVpov8xOPcsqOiyy9vEvBkM2SUNQqlG1a3bmPebnVrZ49GLgN39voSFtL6jaR0Gu0wzDPdaO6ris6tM54dep7ntPJEMfQpNMQUn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vZeYDW9u; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3686b285969so1361365f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 08:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722007217; x=1722612017; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0AeN/4B/YnSfiF3EeOkW241sQaeu6ZqWm1AU0eyyb88=;
        b=vZeYDW9uhFs+a+Daq9vAcWiJqJDo4Igy3tE69f86ob8txGXgxIMfVtLoJHxLIvTcvK
         caRPcvMrAn0DiFRtDq+G5MF7s20bWJbumMUVCZwPb1AdkZS0zevCb7KtGxACxhRN/SxO
         ZtvpdssTuXXwkY8SkwZxWcQUzosd8gd5PQ2ynpTYfdFgmclq47tCDw5JqnseMXqNRsLA
         K/hMcVbcWbNLk3ghu0DINc6Qi19ojs36M1TpB4zpwxwvvfzT7Ezg4eqcgEaJlXVDkCXO
         oyw4sC+e3C1Obhtn57dAZ4CSxnJdFcZY/F7pWGTcO+xDLP8LE3T4wwOrIxFWtDaKDKpT
         bMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722007217; x=1722612017;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0AeN/4B/YnSfiF3EeOkW241sQaeu6ZqWm1AU0eyyb88=;
        b=AHuCtRDfqMIyyVxJM7zfcDlSKRzOPRdXcRRPx62h7cydYTRSTBA1bp/PMIyks815KU
         8PcqYZCvj/I+Ke8duBLVWgdJZScZONwJvS+I3GnkQyyXXFwYoU/5OohhXjElW3bDzFIL
         0Soo8pdGMSCjLtFc/Su1Cbr1McjvqZncJuIBge4Sj6d4hRJ5KYsH1NfHtj5nErk5tKW7
         jeRPUdj6tpc2mVNVoWJ6jkm+nNwCj5XZDM7+57MS7qoUqd6WCL7ntqLFHMyeawdWHhQ4
         PRND3xBPl3DcEl3wph4f9mAZubvtmcPJH1yS9XaQPwNeQ3zKPZgmqyN1igF3+7gYJKLq
         bP4w==
X-Forwarded-Encrypted: i=1; AJvYcCVVdSD9M7AojM352e9RtZdqvkfPbmFo/20AMZxEVlIjDmrHFE9t3nEt2i1X1Ab37dv4gCdABVM4Wk1Bvi9qFOlP2CCiDI1Tdrxg7w==
X-Gm-Message-State: AOJu0YwtUzVFZBbPpp9TM1KwMa6SnDu/bIfTrE6oP7KGwnaUQZT0mBw8
	sDaqOo3GlMzsvlq+5F5AKWH/Plq7MXflTd0MnfXdV9l4XUFqfcwIzDz4sPapNUU=
X-Google-Smtp-Source: AGHT+IF6BPwk3Uv31HZuM/iBo8zO292n3pIWNBgKAoH7EyLiUKyXSFwiCMisxHtFeKxAAj/I1gjaqw==
X-Received: by 2002:adf:e306:0:b0:366:ebd1:3bc1 with SMTP id ffacd0b85a97d-36b5cecf2abmr42532f8f.3.1722007216739;
        Fri, 26 Jul 2024 08:20:16 -0700 (PDT)
Received: from [192.168.1.61] (2a02-842a-d52e-6101-6f8f-5617-c4b6-8627.rev.sfr.net. [2a02:842a:d52e:6101:6f8f:5617:c4b6:8627])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367c0338sm5500985f8f.1.2024.07.26.08.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 08:20:16 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Subject: [PATCH 0/5] ad7380: add support for single-ended parts
Date: Fri, 26 Jul 2024 17:20:05 +0200
Message-Id: <20240726-ad7380-add-single-ended-chips-v1-0-2d628b60ccd1@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKW+o2YC/x3MMQqAMAxA0atIZgO1ii1eRRxsEzUgVRoQQby7x
 enzlv+AchZWGKoHMl+icqSCpq4gbnNaGYWKwRrbGWd7nMm13pQQqqR1Z+RETBg3ORVD1zpqYvT
 BByiPM/Mi9/8fp/f9AH7NTG1vAAAA
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

This series will add support for ad7386/7/8 (16/14/12 bits) unsigned,
dual simultaneous sampling, single-ended compatible parts, and the
corresponding ad7386-4/7-4/8-4 4 channels to ad7380 driver.

These parts have a 2:1 multiplexer in front of each ADC. They also include
additional configuration registers that allow for either manual selection
or automatic switching (sequencer mode), of the multiplexer inputs.

From an IIO point of view, all inputs are exported, i.e ad7386/7/8
export 4 channels and ad7386-4/7-4/8-4 export 8 channels.

Inputs AinX0 of multiplexers correspond to the first half of IIO channels
(i.e 0-1 or 0-3) and inputs AinX1 correspond to second half (i.e 2-3 or
4-7). Example for AD7386/7/8 (2 channels parts):

          IIO   | AD7386/7/8
                |         +----------------------------
                |         |     _____        ______
                |         |    |     |      |      |
       voltage0 | AinA0 --|--->|     |      |      |
                |         |    | mux |----->| ADCA |---
       voltage2 | AinA1 --|--->|     |      |      |
                |         |    |_____|      |_____ |
                |         |     _____        ______
                |         |    |     |      |      |
       voltage1 | AinB0 --|--->|     |      |      |
                |         |    | mux |----->| ADCB |---
       voltage3 | AinB1 --|--->|     |      |      |
                |         |    |_____|      |______|
                |         |
                |         +----------------------------

To ease the review, this series is split on several commits, in
particular, sequencer mode is added as an additional commit.

Cheers
Julien

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
Julien Stephan (5):
      dt-bindings: iio: adc: ad7380: add single-ended compatible parts
      ad7380: prepare driver for single-ended parts support
      ad7380: add support for single-ended parts
      ad7380: enable sequencer for single-ended parts
      docs: iio: ad7380: add support for single-ended parts

 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    |  13 +
 Documentation/iio/ad7380.rst                       |  42 ++
 drivers/iio/adc/ad7380.c                           | 511 +++++++++++++++++----
 3 files changed, 488 insertions(+), 78 deletions(-)
---
base-commit: 472438c7e0e2261c6737a8321f46ef176eef1c8f
change-id: 20240726-ad7380-add-single-ended-chips-b437d1cc8b8b

Best regards,
-- 
Julien Stephan <jstephan@baylibre.com>


