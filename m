Return-Path: <devicetree+bounces-210208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DA2B3AD0B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 23:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82455567EC1
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 21:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688F42BE7C3;
	Thu, 28 Aug 2025 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XdrKrUeC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDED6284880
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 21:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756418133; cv=none; b=I9VLBTe7sheyKkVegGnQZ+Pzka6FSYF/S+BC2vWGXV1FWSC4BPqePUt8BGWLohL8yW3i/EPwpeBtwmc54kmlneSVzAjZQrVyNGWJBh4UFdU4va4dEx1JRbbZM1cUOIyzU86NFfHT0//5mPGXW1z83tsgtvmwp420fpUGtX/a1dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756418133; c=relaxed/simple;
	bh=nxi+An4/A0ZCcQ5dW8sc/ikKMdLvt7njVMGP00aQVeQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dNnD8KEBPVJlem2oIjgYevV9wTRMUOFmAZqjz6mKw/vxrmXB0KUyBXVnssRZTomK8gKWYorRctqMfAHe822QER+wmMor+1cqyOlVbdVZkfKzxu64iudiJcUov79XnuP47IbErMjWKA0LkfyN4vn6WIKgXSNKr/Qq9RWb3F2o6Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XdrKrUeC; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-61bd4ad64c7so523229eaf.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756418130; x=1757022930; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hcr4BkxRn85jyEUc38hv805cvGNHKaquY+c7WmCuf9Q=;
        b=XdrKrUeCReXiAJn5WEYn9VNJoW1IY0UOP4KBbO2bHzs8t7KtdvVX5yBImm8MyRre4w
         77/RVgnauIw8TBeMyDDefECEAwCokKMn/Y0sju8m8roMuPp+BNRGo86J08eS0VLTlwls
         8JUNnDuVPqQLKOwa8T0jH4gd+3Jdea9O7r0j1WWlHHpKhk3XxSMIp7eCAcnGe/KowDbL
         KbSSxO+BwTJo7KEj5B//H/aMnYDmqNs4MboyPboTFvqXSqHJCvmDFjZLX045FAa5izS5
         Kc8kffmWGDpeTHDEqOOnxf1LlsmdbBnWcGaNjwBie7wMxG624CSFGd74HdOeauOixleQ
         flIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756418130; x=1757022930;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hcr4BkxRn85jyEUc38hv805cvGNHKaquY+c7WmCuf9Q=;
        b=mW3o0V84NbH+nld5vu3153NRVL6sNBU2OVQdX4abdP7/XVWyw4fHeQ6slaMdW0prsw
         S7jarK6HmVBTxkduvy3LSurUPiuQfyNT6Hq6hbQCIGszFaxZS/8Mba4r7py5Qo8zo/jy
         itXgUpWooSf5EkLkhK6W4mrqBo6ncOp3X7lHBcWKRVBLFCkHhxTWNbYOnDNWNdzyvbQ2
         Jmoq4y5WP8WneIWCTfCjd+Ko1jLmZU5NQEjdyp9/U85/2fc2IUoD9rHVNAqqDShApzAn
         kMBHyWLy2Y2ZqIKl8TuqgqqPdGUvMoKRGbCQzZSvwxbohwLcGq2GZAJto8igo50wcOc+
         hnwg==
X-Forwarded-Encrypted: i=1; AJvYcCX9SWNPT+gIvadnz5MH8DrUUGFtidwXeLFkzaqObqUUQKmo+fsHKCVxYI8fdx+NlmXkQNFrLHS5eebA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywahvg0ekA3wg1fGlRZcyFZRKsfn/TeqoWBxGR0j0o+hhjpfhuJ
	2N/Pm+SNBHpd1SzIHdnu+/DWW12t2CgglPJkHHt9XBinBcdSKtFtiezSPayUmmdL/5U=
X-Gm-Gg: ASbGnctcWtknzXG27yyj2oI5osHpdLaEMfvB9f4TS7ebxueHD8OLldcb7nL8lOLyNMH
	oHpAo1L+Wo/ISDpPnY8qA5ueZA9jG66/wzbhcT63Kb30WDrzUGjBdFrhiN2KJ3T7yR53+x4hAVR
	Q983Kz0iC2QJqGNuN7xBqec83/oxkMmoijrdnDKMXheQ7K+A3hSGmtscfsl0rdEdBEB8aTVbKen
	vVtC32c5hQR5mHEMheYX5Mit+ui2m8odNWTXcrs5A+obsLTn6Nmet/Olm2fie+5YxU4Hd0g28Vg
	ChrCUW3cL3+vzKOAo+oQHMvp7wcjMNy2K3DxrKLYAcdO1GORK8Ifp+1pJ3IVmwFQvKkOU92ZaZi
	ciinJJUruAvhq6lsYzTt+94+ak9xzb4OboxK2qVk=
X-Google-Smtp-Source: AGHT+IFFjAU7kjcywaAzZknUOjVBjmrsfsAXnB28DcB8oKezuCy+v8KNFFfoJWLYYikzUmfGOB6QiQ==
X-Received: by 2002:a05:6870:9725:b0:30b:b90a:6b20 with SMTP id 586e51a60fabf-314dcd219c1mr12803248fac.23.1756418129684;
        Thu, 28 Aug 2025 14:55:29 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:aa84:2d2c:f28c:4102])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7455853804asm136084a34.33.2025.08.28.14.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 14:55:29 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 0/4] iio: adc: ad7124: proper clock support
Date: Thu, 28 Aug 2025 16:54:51 -0500
Message-Id: <20250828-iio-adc-ad7124-proper-clock-support-v3-0-0b317b4605e5@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACvQsGgC/42Q3W7CMAyFX6XK9bK2Tru2XO09Ji7y44A12oQkV
 CDEu8+Apkm74sKyji1/R8dXkTERZrGpriLhSpnCwkK9VcLu9bJDSY61gAb6ZgAliYLUznINLXQ
 yphAxSXsI9lvmU4whFTlANzUAelDdJJgUE3o6P1y+tqz3lEtIl4fp2t6nv/zuJf7aykaOo1e9M
 +Ct9p9GXw5kEr7bMIu7xQp/2BH617DA2M5Z7ydnPozq/2FvzygJjyf+U3nmEUZnlLyfqWwqDpr
 rhHPgbc2eNfdCy46Pbz/9dOfHbAEAAA==
X-Change-ID: 20250723-iio-adc-ad7124-proper-clock-support-7249022a7349
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2482; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=nxi+An4/A0ZCcQ5dW8sc/ikKMdLvt7njVMGP00aQVeQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBosNAvSQzFBqoOIaJtXUcHQPXzwTilekXbLU4di
 SXMQrQNDtOJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaLDQLwAKCRDCzCAB/wGP
 wLYyB/44txB1NWBfotRPjY+FW7l3OS/1/7pdpa+oTR4hMK1mBYielGMAAWUr3AiHn2bQFLsDPAs
 +uQ4eAuLslswcvrhNRDXbRvImcqohysjptDx2nk6eJqllc5myJ8mUfwRcIX/unqW71M+1a9KAcJ
 8v6kEHmIXvsCu8ua0yj7lnc5X1Pgfo9O1HIZiWkvfHYjfTQc0eNFsvUJuHCAMCSIQDHHE9SBfv9
 PmPLXA086U36vzqghUHv8pA3dGZUBjoWT7Uh05dUOsRCvqt70I2tRO4jBE4hJWUGFMJIpwZlAbT
 kZoAYiMjeqzzDyyHVLQ6iz0hJ9Gwd2ERnQ85gpn2S0m0+V4T
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

I started looking at adding some new features to the AD7124 driver and
noticed that the clock support was not quite right. The devicetree
bindings had a required "mclk" clock. MCLK is actually the name of an
internal counter in the ADC and also the name of the external clock
connection on the evaluation boards, so I guess it came from one or the
other of those. However, what the hardware actually has is a CLK pin
that can be wired up in one of three ways: not connected, input or
output. So the existing bindings making the clock required don't make
sense.

Furthermore, when looking at how this clock was being used in the
driver, I found that essentially this was being used as a way to
select the power mode of the ADC which is not at all how devicetree
bindings are supposed to work. The clock rate is fixed and the power
mode can change no matter what type of clock is being used. Again,
this just doesn't make sense.

So here is a series to fix the devicetree bindings and actually
implement proper clock support in the driver.

---
Changes in v3:
- Use %pfwP instead of %s.
- Add compile conditional to fix compiling when CONFIG_COMMON_CLK is not
  set.
- Fix conditional for enabling clock output.
- Include cleanup.h for __free().
- Add st->clk_hz and ad7124_get_fclk_hz() to handle external clock with
  rate not exactly the same as internal clock.
- Link to v2: https://lore.kernel.org/r/20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com

Changes in v2:
- Picked up review tag.
- Wrap some long lines and tweaked some other odd line wrapping.
- Dropped mention of "hack" from comments.
- Use __free() instead of devm_ to free temporary name variable earlier.
- Link to v1: https://lore.kernel.org/r/20250724-iio-adc-ad7124-proper-clock-support-v1-0-88f35db2fcaf@baylibre.com

---
David Lechner (4):
      dt-bindings: iio: adc: adi,ad7124: fix clocks properties
      iio: adc: ad7124: do not require mclk
      iio: adc: ad7124: add external clock support
      iio: adc: ad7124: add clock output support

 .../devicetree/bindings/iio/adc/adi,ad7124.yaml    |  21 ++-
 drivers/iio/adc/ad7124.c                           | 170 ++++++++++++++++++---
 2 files changed, 165 insertions(+), 26 deletions(-)
---
base-commit: 91812d3843409c235f336f32f1c37ddc790f1e03
change-id: 20250723-iio-adc-ad7124-proper-clock-support-7249022a7349

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


