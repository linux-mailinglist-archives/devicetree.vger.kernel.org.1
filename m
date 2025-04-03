Return-Path: <devicetree+bounces-162974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55028A7A7D2
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 18:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 073F23B86EC
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 16:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085BF2512F4;
	Thu,  3 Apr 2025 16:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aN1cneoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1F71A23BA
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 16:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743697229; cv=none; b=sEVAk4DgRmWrj3Sd0TlUvDmvQoYcQTWqaHcLSQuFDMi28Z/4Tkfdb7e5Gq4hLQm+Su6REp0S9yijfgY/i2vIPZT/gfhuF+LqCE9RHozjF9R7mZhK3HyEkv5DUv+DiRhJWlgXF6uS2dL0aZK4IDx6G/lZ6al4AbElbd+fpy2BrE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743697229; c=relaxed/simple;
	bh=1iOywepJB9D1Cs5fFJUAHOEJHl07Klqnogg9LfO9XxY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aklFEvDKnArAY4/MRvOrQ7jtJH/DXLsXaaN4YmP/9aFTM7r33rYdbZ0bX5B2zep9G+a718q7IgGPBZxNtaMaN75afRA8yh0AQ9GFthmouqe20VFYAwwxSiFRaCdkVpcMsFXTHeRBkvUPDBaex/0cSJS6Otihdc4SMXP3bL0eE+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aN1cneoN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so7520445e9.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 09:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743697226; x=1744302026; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uBVhL7yTpzF4aCvVs+zDC3x7gXGoHrEnyJnBgzx0lPI=;
        b=aN1cneoN4fAGjeNete/43fsr05bCaB9UZ//8VKbsomTvqXPUU+ivTk6AnZXcw1KCFP
         askYWR7CGm8DFTPCSAxRiBCHPVK0ynEDymmz4hR3MkEVU36WYY7U9GYnBQV3okcHN+ho
         u/eqSR1dSWPmO95JK5D9lDOTAS6q6AxWwZKafvYP3o+iORT5OVKotQn3y3znQD0ZHB5j
         Uw2/EMugWItXYH55T48AUCBk0z44FHgnPD3NdUgaxK65n3EUAVRICeDrCktmbMKvST5O
         iThSNX13BaOmMiXn3Oj8ggclNyptogjmoM79YTNhttjwZJuI0m6HIMjSED4vWSo3wZDf
         Z8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743697226; x=1744302026;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uBVhL7yTpzF4aCvVs+zDC3x7gXGoHrEnyJnBgzx0lPI=;
        b=Ar7o5sYXT6oS2VcYO2KRJ3afW2A21O3tnTpFQh+225w7f8Lovtmx9dculr7WUt37nx
         Um2ft7ANpvdycRkST6FLcMZzyxtvKuSsu0l/r6VOia4p5N1f6NrS9/40SvdbQxVyXbrk
         Zg8hnznC6T+ySrfIfKe/kUDak40FXkOj97w1YFQMZOVGUR6GjqfrZ+nad03jjy7CpjkD
         EwNAn9GFE6q8UCXO4tWyLwQ3Gzqk5AwuvKLNbXvj4gBRd6yutgxV/C3QrgG3H2EB9R9L
         9xGSgwVBPgSCTG4HgdlLvcbyyXVWpnd1ewy/9kRkFuCovh9aM/zzWs4Xx7VLd23eTaqQ
         nc1w==
X-Forwarded-Encrypted: i=1; AJvYcCWNzyVo5oN/H1ukeMgYvGg3z5ZZIu45Dy8U4sA1racExybjQDuo9sWiAz2wpA6hyCk+H8bwcu2EbZtp@vger.kernel.org
X-Gm-Message-State: AOJu0YyIRcmWdlfum56lJjhV2AcabCKitQinTnqonHvI2rj2/QkpXxff
	S7xzpc1QtHKZRkPR9+KDEbRC84DeA1yBgsLaFo+8QFAD6eg0ZrQ3UAtWmT0OruQ=
X-Gm-Gg: ASbGncuRQK3qXF3ONC6NNG6hz0Gu8FrwI0XajDWNu+yIMnlagkmNzUi1uTclyoMO0fW
	21Un1IQ2vQOEjnuZyr8moXSgQnuypVJPCw5kJHDq6QnnOqf/pun70UDDYOoG+sfvqXH/dAaRPQb
	GCvMckNjaNDPKpdUzk/yPniossstW5b0CEeiPdpXtEA2Xj5y++RgQOwwXGE0KZKzyCw7yDNutth
	CY31P8uur38045Z6qvtBGH4Wkch/6/eqrMUElj/SQs6yoKsb4McOUxVS2HIhRrScueSiJZe+drP
	/YPcqvm3Uo9e7tGTChkCWrwd5EM+aCUYL1VcK1XvtCjdwCQ86g0so4wMxS+wC2c3twNO2ItwBkx
	Cs5aEa4apdkRsh5KcRg7oDg==
X-Google-Smtp-Source: AGHT+IGJDhMx8oCC7Tp11JFpxULIlT3VQCaTVwlQL+bVnYZZqD0E+NDnAZopToyMwMZDTLy+RipN5g==
X-Received: by 2002:a05:6000:402b:b0:391:ab2:9e71 with SMTP id ffacd0b85a97d-39c2975188dmr6368451f8f.20.1743697225664;
        Thu, 03 Apr 2025 09:20:25 -0700 (PDT)
Received: from [192.168.0.2] (host-79-30-116-65.retail.telecomitalia.it. [79.30.116.65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c3020d68esm2197657f8f.67.2025.04.03.09.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 09:20:25 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH 0/3] iio: ad7606: add SPI offload support
Date: Thu, 03 Apr 2025 18:19:03 +0200
Message-Id: <20250403-wip-bl-spi-offload-ad7606-v1-0-1b00cb638b12@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPe07mcC/x3MQQqDMBBA0avIrDuQRk1rryIuYmZiB4IJCagg3
 t3g8i3+P6FwFi7wa07IvEmRuFa8Xw24v10XRqFq0Er3qlMt7pJwDliSYPQ+REto6WOUQedpGDT
 pr7Ed1D5l9nI873G6rhsqmluEawAAAA==
X-Change-ID: 20250403-wip-bl-spi-offload-ad7606-cfd992d286a4
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 David Lechner <dlechner@baylibre.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=1iOywepJB9D1Cs5fFJUAHOEJHl07Klqnogg9LfO9XxY=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYkh/t5XxyIyq2Z9+3MsNaDwlUKCz5WuTZU6c5d+tlRu/W
 c34UfXMoqOUhUGMi0FWTJGlLjHCJPR2qJTyAsbZMHNYmUCGMHBxCsBE/EwY/tnq7rt2g8v7o9eW
 D3Psb20S0j39u/xx2oL1ATOCpxgzcS5k+Ct+VvX4JbVNfBoNVduPz2IrrFhqW3z0mnfw0qxzrH8
 /xrMCAA==
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

Add SPI offload support for the ad7606 ADC.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Angelo Dureghello (3):
      dt-bindings: iio: adc: adi,ad7606: add SPI offload properties
      doc: iio: ad7606: describe offload support
      iio: adc: ad7606: add SPI offload support

 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |   8 +
 Documentation/iio/ad7606.rst                       |  45 +++++
 drivers/iio/adc/Kconfig                            |   2 +
 drivers/iio/adc/ad7606.c                           |  50 ++++-
 drivers/iio/adc/ad7606.h                           |  12 ++
 drivers/iio/adc/ad7606_spi.c                       | 210 +++++++++++++++++++++
 include/dt-bindings/iio/adc/adi,ad7606.h           |   9 +
 7 files changed, 326 insertions(+), 10 deletions(-)
---
base-commit: 8f159ea5a253d40682e041daec007933d6caf01b
change-id: 20250403-wip-bl-spi-offload-ad7606-cfd992d286a4

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


