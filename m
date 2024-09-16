Return-Path: <devicetree+bounces-103327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C497A630
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 18:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF1CB1C22423
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 16:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D02158545;
	Mon, 16 Sep 2024 16:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wW6rEssc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AE513D508
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 16:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726505337; cv=none; b=dzsluVdgbWWYe71Mm5vu7IelMxPsI2otDs9h/mNVgRaUzfu0aUcP1J1SSeAexc5/OrIETxtr30FbduPcaWtIrrFM1A+ygqNtl/imamkv94g5mD9Z/iV/EjHEaP4O7lUSwFPaC0qL8bO2xk35aoaFqcfaL+Q43Fx1tEOudP5Ohtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726505337; c=relaxed/simple;
	bh=ZK7sqJr8NcDUHcp7FZOuCpBb5P00C2gK2vJfUtbCOn0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VdIO0kllNA5SjMSs3RTpw23Lv9m8nReoGKdfQNW6+1rGRbvPZFbm5jjaCUBywImdpTt1/oL3LltD1gXuKQQXc/J4S9bap9qAa89WYDdHQY+b1yXqHC3zO35C13b2hb5rNFdaRtkUyPf/v4yzQ03QIiqII1GwgnOE9xDnJQJwnno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wW6rEssc; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5356bb55224so5118960e87.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 09:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726505334; x=1727110134; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F15L5sDZTfwEc9RAj8yhE3XIY+T49hF6lgJGnbIKVdw=;
        b=wW6rEsscx0toIXmX/DtCyJpvEq48jmP0WcpKdJpLMBORaNd2xcbBrmPY+b83YFdO9L
         uVQVy5MjLanz8CEWQBp5fuR1U8jZW+5sokfrreU0VPNhoOJMR7UyTMLLXzAf+l1DvIM3
         tsTvumIMzL48hTBNaoyIkrpktKCZuyXAB9V/GjF5sXUVK9TMSAv6Vy379rP6zbU9R5gZ
         h5wRRLujfVaaIoK2XWsQp6+3/N4nbzWmmhPZw6uukZ0XAWUexqwLXzaFHtU7nVNLBZnK
         elu/ahTAu8bR3hzAMvziSZcqgzOZ1OMiYpLxiArJldQWQVErjfl1xwZ51CrHOHdJ2bOL
         wBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726505334; x=1727110134;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F15L5sDZTfwEc9RAj8yhE3XIY+T49hF6lgJGnbIKVdw=;
        b=Lxqwb4bKex/hfIEXMe+TpRndgfX0XmIFYDoJVQSdoAhyZQHnY0ryZlyd+mLjEB9IcM
         JmxO2Mx5yU7EmUqYQ76Dt3q3A4vHA2A7+eIEI/ozKDk8/lSTklIIe8POfbRHaE4Fqypg
         MCv67sa3O/OkindfC5NKsyLfzN8i5Z0z0zbFyEq85xHk5DbtOFwLQtaZ0hl2O1bv2pKE
         CxchlbTBVbDVdaZ7/ljPmfObre/e0IXDfK0zHcxVRxxrB6HallMnuthuL3oD0U8wFXhf
         nixAYFMGGAOpw8B+auq99BAktcuwR7NUEMx1/YPF4Pch/4jr2B03VbobSDbVKs3Wb9IW
         +cvA==
X-Forwarded-Encrypted: i=1; AJvYcCXoaxU5Vg0L7J5p2feBWCSd3WpgofEJcGP5Ur+jvVlaJLoRYAzjUailzrayu8FiV7IY+C6nwrN+Whjh@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ3tftJ3dx42YLRRH2J4Q4EyMhDsMMbcT7U66YSMoCsMdCDcaZ
	qtytZJMR899K0gQerGWQkjOWHbTsXemH9wxnBqgT9ku7HVhGU2nzu03Z63qvpZg=
X-Google-Smtp-Source: AGHT+IHz+qezdwfuu94yhBUfln+iTrPQxkTSgA2b4+1vLWDitTSUfus/P4ggUv1myKAravzKQRg0VA==
X-Received: by 2002:a05:651c:2211:b0:2f7:4ccd:8918 with SMTP id 38308e7fff4ca-2f787f4f467mr84462051fa.43.1726505333061;
        Mon, 16 Sep 2024 09:48:53 -0700 (PDT)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c42bb492a1sm2798145a12.8.2024.09.16.09.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 09:48:52 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/2] Maxim MAX20339 regulator driver
Date: Mon, 16 Sep 2024 17:48:51 +0100
Message-Id: <20240916-max20339-v1-0-b04ce8e8c471@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHNh6GYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDS0Nj3dzECiMDY2NLXQPjNEMTM7NEw1RzcyWg8oKi1LTMCrBR0bG1tQC
 S0KvFWgAAAA==
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michael Walle <mwalle@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series adds a regulator driver for the Maxim MAX20339 overvoltage
protector with load switches.

The MAX20339 is an overvoltage protection (OVP) device with integrated
load switches and ESD Protection for USB Type-C applications. It
protects low voltage systems against voltage faults and surges. It also
integrates two load switches with current limiting, configurable by
hard- and software.

It is used on the Google Pixel 6 (oriole).

To make maintainers' work easier, the relevant DTS and defconfig
changes will be sent via a different series.

Cheers,
Andre

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (2):
      dt-bindings: regulator: add max20339 binding
      regulator: max20339: add Maxim MAX20339 regulator driver

 .../bindings/regulator/maxim,max20339.yaml         | 171 ++++
 MAINTAINERS                                        |   7 +
 drivers/regulator/Kconfig                          |  12 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/max20339-regulator.c             | 912 +++++++++++++++++++++
 5 files changed, 1103 insertions(+)
---
base-commit: 7083504315d64199a329de322fce989e1e10f4f7
change-id: 20240913-max20339-03f1466a1e77

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


