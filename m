Return-Path: <devicetree+bounces-117973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABCD9B8A73
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 06:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE4492832FF
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 05:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC451494BB;
	Fri,  1 Nov 2024 05:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qr38qwD/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC97E132122
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 05:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730439119; cv=none; b=jspEEY2zOqkCrojqcT1PNYUkbOVfm7Oev2tkRFO47nJF2zjH303BImnBoGkdd8n1m4pVALTX3tL5lU1kJD0aTheQ8jFAOCoBl7MaBlM/9Pi4Ar5dUObjWyovTwO5UOG2k7SCgYdOTlrEkqai7Tt0nyv+R/NwCERp8cVICgaka8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730439119; c=relaxed/simple;
	bh=f1RmulpmUSMqzKAwuIYtW6IAIRiLTRg9tNshHqQ3298=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uPiGMGsejEkmc6HXedmU0qGILaBN1Arb1EBgv2ab9r8af5Zq0R07DUUTI+4tZsIDAILAMMpIf+IHw+uxKAZvj9gopDs4DK89pOA3iD17LswGtMN2ckLWv6V9zKoqYscjmSw5B9dwbbSdbizGfdKgJfXGajNwEenBZphLdwPT2Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qr38qwD/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so13391215e9.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 22:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730439116; x=1731043916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J3MWPpUlrtWjiJFYp3qiFYtsvVqLXH1zB5HEmfy78o0=;
        b=Qr38qwD/exjABP2O+EsTPDuL7Q8ZRXbCnrQtNWiNMO0QvXz6LfBeyLz+hFWafWRHIV
         8pIYd5bhM7L/s8XWMA1itQZ2tXH0Gp3rkSB1l3dDXhwrWuoLWRSAqBN5HzbEvSqhaN+H
         5D/Qru15rWp/Ef58jODoBOox/KBibRVQCFj6YLruw8SOpcLYRdzbLAN600fuWLEy7uVs
         VyaZxsn3QuZRAolsPyTOVaUfPx2J74TPJ/lbhXkTsiV/fEjEE1YVYWJDqfQLp9DV4cOn
         PNSwD5swi3el2iZsLitzNyjBBxlaZvi/HnYVP9z7dIAxD6stqHNFbkJWM/slkrh+haqo
         t6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730439116; x=1731043916;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J3MWPpUlrtWjiJFYp3qiFYtsvVqLXH1zB5HEmfy78o0=;
        b=F6fpM5pkdDfofpc0e26i7aRUB0J/q6kXdniAHrCPsD9tdLapBXuuO6Znram+iKxcc+
         QIdVV59bc1fkgs204HlIPhw+ZIsxB29T8mlQIt8u22m/F6VzUvCTTSaBz4/Wb4sgTsrt
         tQLQtxPfKDNJ+LNL7lyKrmidLOy8YLTqF7MJ7uHbVT2QhMN967HWaMz/c5LnbfulfG/q
         3dqU5yud8tW1grI4PhXcY7lqDQ0RiwkRC7mUeud0KDq84IBKCIjnecDXKXjCAjJhTm3M
         3wqVO0G+wIpvZ7T6xZsggVw4M/APX7CuMN1UkwS4vohZvUkvtyb5qtP9NAG7Ydc1fYGF
         i8Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWCCqto1NO3WVynZvl7oJXMGTX76zdv9XiIPeZCi93LlZld3MDamZDbjcSE/ZZfBVueZPgtrY4Y7IBK@vger.kernel.org
X-Gm-Message-State: AOJu0YxwQjrJgexP10IH6EnuLYBcvGCkWXhoJFitHFXbX0gsxgV+Uk6i
	+pZKVgZWFHj6icb02njyyFH7MQFm+09TUQGaoQ2ue1ZwH7nDG4LjpYgyEPU5H0f6k2tk2UxrvFo
	PJhY=
X-Google-Smtp-Source: AGHT+IEcTAMe1fJt4ESug+3wnBEMPewCh8Gb8+NM5JQNsU5wQ0NYYJmDobVmWnU4wn8oMQGHgcaQ7w==
X-Received: by 2002:a05:600c:470b:b0:42c:b750:1a1e with SMTP id 5b1f17b1804b1-4319ab94b8fmr186458175e9.0.1730439115963;
        Thu, 31 Oct 2024 22:31:55 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6852fdsm46960505e9.34.2024.10.31.22.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 22:31:55 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 00/10] qrb4210-rb2: add wsa/wcd audio playback support
Date: Fri,  1 Nov 2024 05:31:44 +0000
Message-ID: <20241101053154.497550-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is basically RFC, REVIEW or v1. At least to understand if splitting
wsa881x is a right direction and also it is not clear to me what should
be done to force mono output (to mix two channels together).

Unfortunately, only one amplifier is wired in hence only single speaker.
There is no support for capture, visense, reading wsa temperature yet.

This implements the playback via the following path:
RX1 from DSP is connected to rxmacro which communicates with wcd codec
using soundwire. This goes into AUX input of wcd.
wcd codec outputs analog audio into wsa amplifier which can, surprisingly,
amplify the signal.

Special thanks to Srini. Without his help and support this patchset
wouldn't be here.

This series depends on:
 -- HDMI audio playback
https://lore.kernel.org/linux-sound/20241101005925.186696-1-alexey.klimov@linaro.org/
 -- and on LPASS clock controller
https://lore.kernel.org/linux-clk/20241101012247.216825-1-alexey.klimov@linaro.org/

The other bits like fixes for rxmacro and wcd937x codecs were accepted
as far as I understand.

Alexey Klimov (10):
  arm64: dts: qcom: sm6115: add LPASS devices
  arm64: dts: qcom: sm4250: add description of soundwire pins
  arm64: dts: qcom: qrb4210-rb2: add wcd937x codec support
  ASoC: codecs: wsa881x: split into common and soundwire drivers
  dt-bindings: arm: qcom-soc: extend pattern matching for
    QRB4210/QRB2210 SoCs
  ASoC: dt-bindings: add wsa881x-i2c binding for analog mode
  ASoC: codecs: add wsa881x-i2c amplifier codec driver
  arm64: dts: qcom: qrb4210-rb2: enable wsa881x amplifier
  arm64: dts: qcom: qrb4210-rb2: add WSA audio playback support
  ASoC: qcom: sm8250: force single channel via RX_1 output

 .../devicetree/bindings/arm/qcom-soc.yaml     |    4 +-
 .../bindings/sound/qcom,wsa881x-i2c.yaml      |  103 ++
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts      |  120 +-
 arch/arm64/boot/dts/qcom/sm4250.dtsi          |   46 +
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  132 ++
 sound/soc/codecs/Kconfig                      |   15 +
 sound/soc/codecs/Makefile                     |    4 +
 sound/soc/codecs/wsa881x-common.c             |  123 ++
 sound/soc/codecs/wsa881x-common.h             |  425 +++++
 sound/soc/codecs/wsa881x-i2c.c                | 1454 +++++++++++++++++
 sound/soc/codecs/wsa881x.c                    |  493 +-----
 sound/soc/qcom/sm8250.c                       |   10 +
 12 files changed, 2445 insertions(+), 484 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x-i2c.yaml
 create mode 100644 sound/soc/codecs/wsa881x-common.c
 create mode 100644 sound/soc/codecs/wsa881x-common.h
 create mode 100644 sound/soc/codecs/wsa881x-i2c.c

-- 
2.45.2


