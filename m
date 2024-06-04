Return-Path: <devicetree+bounces-72158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 572808FAFAB
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4B331F22F0C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 10:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029C0144D3C;
	Tue,  4 Jun 2024 10:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="USF08XlP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E391448EE
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 10:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717496104; cv=none; b=HOqZTuS51B9WhDdawuCoeJcsBQAjDIIgU3k+xfKNK8bDU/AuoOXs+JUmJY1NUS1XcGk3pwJdhtaaWl24raVmdWzbBvpxxDD4lvvw9fRIGhFpnBHidz8/2Ggr0ndx0QZ8CyuLVIJhVPgODs5zTsfjtwjsWf1Q2S8fDu4OnBr/InI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717496104; c=relaxed/simple;
	bh=TBP3XAt8f/B0YWeLvutIYFpDXuJxcaTXCpNfxe+lG9k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lSNN0XtuiACIE36ZHSEUyfYd63SNbFmGu5Bu+DebvEblSGZw4w4b9GRiUnC5pM2t60VcLnLkbMRC36rqucyieNvGPSSNi6wqCAlE4b0NFa55W005o80eFhapFUcTTfbPfNEoKeRpd5ZXzZ0fos7V6XLED9kjl/bq8P0g5g+dFuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=USF08XlP; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2eab0bc74caso16665701fa.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 03:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717496100; x=1718100900; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9Ht+EiAtrF4AVXMQ1X+eklfTvkAu69Zk/yp//UkEypI=;
        b=USF08XlPWRP9tX9u+dMfQJJvOn2xgvEd+k2IzpM+Cx3qatA1ol2q/Z5NWRO1ocJJWx
         YFq+X8FKqgMrNRuWEzjimU2HjPEApA8X8h3UPuVXkbkMsX1tTV+ijv3bLOLHiYiPZfsp
         tpSdrDhA/U6Cc1Ainuo2wfB5cjbk21KmDWpVz0tqr2gCekXySRn4Siq+XIMPJztCRny2
         SfG19EbLddG/EXooYr3gIfhghCB4Eu+T069B6qX2GUNkMjpYRM2nuEtHQHyqDb0RiJbg
         3QBygUR71FbUNZ7uoupjQnfjUoXCMj6IhgXLtJJNDmV7GMaZFtgce16b3cfEWMjhmUhI
         +/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717496100; x=1718100900;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Ht+EiAtrF4AVXMQ1X+eklfTvkAu69Zk/yp//UkEypI=;
        b=jsh9vMS/soeqxjXFhXNbjiK815PKJ0/0TXS7iGWSe3DRMxOIgq71cv/DF131nZvuFx
         6hrBe4Y/JTooWA1UM/tGcIqFBvFaRh6Fk+4CJVBy3yKP/Q5iFMVOLJ9vmtTszoPOcYfq
         nezxvUTtnRNnjKyd+DyJ129EyV+UbCVVKKckTYJcT7+8NgtD1wyqXu510ZNEmBTAB5Ra
         LHQSfvSsMHytKW+XpYXzU0alKVXWe2pImSU566DdR4WZmHhoTzas8g634I9887p2bxO9
         kt8GmKUBECOF0gXQHrJc1ouiv1oysW1cyb9XHOW/i6VqjS+Ju76Wk1+43Axrbsoc7m3w
         m4cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtrmoK58Da8ZRHuIXKZRygXAoHTxp8eB1fBYV1zf9fVVIy88IRyUOXJ6w9rXFOXPBetcxb4kYqNG753utoYaOYH4SNZbovsJ2Fcg==
X-Gm-Message-State: AOJu0Yw6zn4R0fHpuwvnQT97D6OxozWNxPp/WrYtwXHsDsJI2lnHmQma
	weC1+lGw+Iv3uLn7+/FvkLIE71BJoG9V8bpNu/+uXLP1oHloSqzdQkftI+ScTaw=
X-Google-Smtp-Source: AGHT+IGBCXH3o1Yg7+NSAzsL+koqZAOTwLk8Voa9V910zTvhBi4NfFOd0eN4WpGsU3Rb1VYGQo/zzg==
X-Received: by 2002:a2e:9989:0:b0:2e6:a1c4:4328 with SMTP id 38308e7fff4ca-2eabb7cdca7mr5931601fa.22.1717496099855;
        Tue, 04 Jun 2024 03:14:59 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91cf0bcdsm14715451fa.120.2024.06.04.03.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 03:14:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: switch RB1 and RB2 platforms to
 i2c2-gpio
Date: Tue, 04 Jun 2024 13:14:57 +0300
Message-Id: <20240604-rb12-i2c2g-pio-v1-0-f323907179d9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACHpXmYC/x3MMQqAMAxA0auUzAZirCJeRRxqTTWLSgsilN7d4
 viG/zMkiSoJJpMhyqNJr7OibQz4w527oG7VwMSWBrIY15ZR2fOOt14YBur64EYhZqjRHSXo+w/
 npZQP8Ui/sGAAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=976;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=TBP3XAt8f/B0YWeLvutIYFpDXuJxcaTXCpNfxe+lG9k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXukisXO3vbm0pfCpPJ61Mg2y6uzFMnI2pUjBW
 IJiswVMWIGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZl7pIgAKCRCLPIo+Aiko
 1UUECACQvw5fav6UuNnDUapKvkg1aEhaNCBbXyQePxk1nupXOy5RMtFlrDmbUEbCgp7zvdkQF4v
 t2x6wDaNlCW33c2uOlITq3ue2aAsGKmW55XICrvlrTvF9CdKGjFJ88zYyzRpDLNdi01dQwF/OG/
 Lx0fngDJF8kRR/6IjdGbV99MqxhQqw1id9RWYGFYCgk+c2RgvROMd1qVH18HkqgZR98pzG8Ie2P
 aj/hZEOVG3Jjrk8tZ2KCWu2qZjnq153P1Y4vwI3gXx0yYIueavaOQWK70kLH8jSzNcSKXtD2mHr
 7cOyUpbUtVe5xx9h7++cSuP/dQnYXU8RxwMuknAM6FjuOaHW
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On the Qualcomm RB1 and RB2 platforms the I2C bus connected to the
LT9611UXC bridge under some circumstances can go into a state when all
transfers timeout. This causes both issues with fetching of EDID and
with updating of the bridge's firmware.

While we are debugging the issue, switch corresponding I2C bus to use
i2c-gpio driver. While using i2c-gpio no communication issues are
observed.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (2):
      arm64: dts: qcom: qrb2210-rb1: switch I2C2 to i2c-gpio
      arm64: dts: qcom: qrb4210-rb2: switch I2C2 to i2c-gpio

 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 13 ++++++++++++-
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 13 ++++++++++++-
 2 files changed, 24 insertions(+), 2 deletions(-)
---
base-commit: 0e1980c40b6edfa68b6acf926bab22448a6e40c9
change-id: 20240604-rb12-i2c2g-pio-f6035fa8e022

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


