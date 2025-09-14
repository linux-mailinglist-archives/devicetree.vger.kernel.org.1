Return-Path: <devicetree+bounces-216930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C156CB568B6
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:42:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 741C73A3871
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9AB265CAB;
	Sun, 14 Sep 2025 12:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mPnGWKqi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528182594B7
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757853760; cv=none; b=YlQDenKLGn71I8ULSstfO3VFIOqMsJrJpLol6dI9BeZAkNEump0jfUyA7N/TL6yADoX+wR1mdgDiG1RPvs27EqPoEX/WHt9E09jB/l+7EorNhDvBUG3pV0JpyunCaOkDeghh7cOCIBf6VsRHNOB5incuqkcDtkEjxb1ukPpKiWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757853760; c=relaxed/simple;
	bh=a0DS+1ZMlf/0j8PrJ136z6bVlAIog4gQ8+ovr9ZcVgA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Q2xbbuFoVHmkrDnt4nNHYX4Qe+FPLzQh0VxfZiHM7KnWwlaBVucSYiWJQN0+CrpjAYSp6eLbX+Q/WbPZ0lkO2nDtetiqY1hdUQnefJrQBLRpV7qsNdgTFYt3J0cxV7q64JhOUbjNPK0kDNIh/peONVMA75V3krB7j0V2wAa0kcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mPnGWKqi; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45df0cde41bso25252385e9.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757853757; x=1758458557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kWkNgc7TTxage7dXNRfg4+5gf5ClKzMP0YRT5Au2R2c=;
        b=mPnGWKqiR75OXmA8flkhbvdmXevDvOJ585jiVFoHBqmGuEd/Sk7A24/8sfbZ/ReLKa
         Ui/If56b3x37Q+u4B71ebHek08VRoTyYThBqUNsLqd8frIYO0mSsmkmV8Ezc43IMdSmZ
         3wJgfu70KctsZSNXBfsslmWk5lBMM2OSLAZibJMN+c3h+JZ/vOdZSz/k3c/uHxFV7YVw
         xEa5jasI1z3Ult+eP5B0Ap19l/EcGGv9Q5xuxTKPLj5q6HjCMKndWamWW5B8DEzqJkow
         jnNxqblbjuCh0yWh149LRBS5IqymXlfweAYKRtez4i9ONcRLK2zyF3AzSdH90pB0fp5L
         jMlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757853757; x=1758458557;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kWkNgc7TTxage7dXNRfg4+5gf5ClKzMP0YRT5Au2R2c=;
        b=XbVUsqDMOZNsvROhi1D5OYNE5t8xfTZ3HxsTmtb7TRtOGNuOZHpd5ge4ZmeFUUIyd+
         t69g/SLJszhBqi3wcmZIL0OCNL78FQA4vcquqGhiYksH7wfiCTJ6lEKKciAdkiT5z/7a
         lN2ED7M8McdqxMTTAvfBJ9fMN9wF4+RywWhEO7pAIhcIe78txUydAva1A3gf4e96/+DW
         IucIZtff5LtarBlUnjQBA2TyIjwbGTCeHQ5+KEmocRVAWaA+kZRkKpfp/Vle+sWA/FD0
         KouiNXOb1ufuWeaxZ3/aCRsDWsSvdjkwJNMSsLzEHnbWTEBKyhMS/8boTQtXTHzBP/bt
         qVbw==
X-Forwarded-Encrypted: i=1; AJvYcCVeezfAsA6JmZ+k1NAe+tw9tXocm9zwNcwHFtBMfnAlNrwIdoAcOD7UTqGBzDfdF2rbiJzSdZf5SZM6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz85IQ1PkX86LiIWXfwGX6tO8KA61RekbKlf+KfSdOEYzr4xaCu
	gZGY5OY5iYlvojWAK3vqp9Fi7qc0l03dDDOr8faAEDyz3z+16cAVva+4
X-Gm-Gg: ASbGncuifzdUaKo8TJWEcwy9o5BPwy+08i/i84H/Qoj0dOeVO+mlDRphbOrq2YivUOi
	kweVrZmS/UtVHfUd0ZKogQr2Yu6/e+6tmhrhcIzNq0jZOl0VNehdHJzFy7tKMOwOxDyEK38NPKg
	0luGQKpHcdqe+EenRpAWlR68GxExP6vIXWv0RPPbCM6kc+QIYH/mTzDEYEl0nOyJERYSKgkD13Q
	mMhEBCl0fw0bFb9QHRwI2YK20X5R4pxiRRXDL3QL6HsLwUTn16tepKMF3mbGCKbDj2u+1l9lcYP
	7LtOPW39mcKZF8yHcdxYD/Srr8iuImpFY/4AzBlFcd5n24nnZpj3gVL3yEBl7pb+7KEA/CdcU3l
	5oK53JDzapjk0wjz5awK6GXsFpyRCKDINeozDY6hEtl/X0TssgyG8XS3/YPOTE8z5K9nQik7zQL
	i8v6p16OU5
X-Google-Smtp-Source: AGHT+IFD1dzVaPjd75ZW6xF7NbuDRvrlMisxkkeIZupeaMoc65Ne74ve/Yf/Aq5gRDwhZi8axs3xXg==
X-Received: by 2002:a05:600c:468a:b0:458:be62:dcd3 with SMTP id 5b1f17b1804b1-45f211f2eb5mr109286965e9.17.1757853756463;
        Sun, 14 Sep 2025 05:42:36 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9511abbccsm3727773f8f.9.2025.09.14.05.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:42:36 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/7] mfd: sec: add support for s2mps16 pmic
Date: Sun, 14 Sep 2025 15:42:20 +0300
Message-ID: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds support for the s2mps16 pmic, used on devices like
the Samsung Galaxy S7, S7 edge and the Note 7. It is still wired over
I2C, unlike newer exynoses, but also can be communicated with via APM,
support for which is not done (and probably will never be, as it's
pretty much useless).

The order of patches is important, hence why I've not split it into
subsystems. Patch 1/7 should go before patch 2/7, as 2/7 includes the
file made at 1/7. The rest can be applied without a specific order.
Thanks!

Best regards,
Ivaylo

Ivaylo Ivanov (7):
  regulator: dt-bindings: add documentation for s2mps16-pmic regulators
  dt-bindings: mfd: samsung,s2mps11: add compatible for s2mps16-pmic
  dt-bindings: clock: samsung,s2mps11: document the S2MPS16 compatible
  mfd: sec: add support for s2mps16 pmic
  clk: s2mps11: add the support for S2MPS16 PMIC clock
  rtc: s5m: add support for S2MPS16 RTC
  regulator: s2mps11: add support for S2MPS16 regulators

 .../bindings/clock/samsung,s2mps11.yaml       |   3 +-
 .../bindings/mfd/samsung,s2mps11.yaml         |  17 +-
 .../bindings/regulator/samsung,s2mps16.yaml   |  50 +++++
 drivers/clk/clk-s2mps11.c                     |   8 +
 drivers/mfd/sec-common.c                      |  10 +
 drivers/mfd/sec-i2c.c                         |  16 ++
 drivers/mfd/sec-irq.c                         |  46 +++++
 drivers/regulator/Kconfig                     |   4 +-
 drivers/regulator/s2mps11.c                   | 147 +++++++++++++
 drivers/rtc/rtc-s5m.c                         |  16 ++
 include/linux/mfd/samsung/core.h              |   1 +
 include/linux/mfd/samsung/irq.h               |  66 ++++++
 include/linux/mfd/samsung/s2mps16.h           | 195 ++++++++++++++++++
 13 files changed, 574 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps16.yaml
 create mode 100644 include/linux/mfd/samsung/s2mps16.h

-- 
2.43.0


