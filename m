Return-Path: <devicetree+bounces-209141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F68B34F3C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 00:55:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B41418863E9
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 22:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769142C027F;
	Mon, 25 Aug 2025 22:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="glXsLktQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5F6284B36
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756162543; cv=none; b=Vin9IGtIiBrOFVtZPA3D4tLJvc/GZW3WwEjp02QDrmKZhCn6I+pw/pDnMfnCfqnz3K8bpLdHmWyclQkn1REIngF8VwB4AAPczruw1w+1/iI3934QVdMUfQ/k7tLfCsQHxHrmI25kz65WWUD3gPpm0S0XjH9knkfZMiIpws0VP2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756162543; c=relaxed/simple;
	bh=CZtdnoVEalHzWzYLwK7E8e1YLjYq1SDqTbG5ZdQs84Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=glnNSO68y2dh6Pe+ebfEc7G7AUd6w2Nan+m/nr7jbx4VyRe/TK0lPLZYSxRQZOrybk6YOXHOfFK29KLF20B3EY1sbK856HidKjEexmeDnwmwvOo5MMterteNLcnpWPVe1OAg6RynFqS2wgdCDWwC200q4RhBtFO8lBu3+I/ck4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=glXsLktQ; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-74382048b8cso3034271a34.3
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 15:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756162540; x=1756767340; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rCS6DLcEySz3olHWHzOFv+Ewqrwb+xd07eC1nN6zlK4=;
        b=glXsLktQ2OC6IuGFyCpiPX/xmMrOhTnN0m2w3e3WQ+MjshJ/2nVety7CVneQCizArq
         2xA+QkQ/g3t8OVxYxd1+WlFXIwn4hyEzAXWVPYO0RJWUXloUo5XocYW2tMQVePooBe3V
         DiT4JtIiU0qe9i7T4lELLyLExRaoIdYUuJHA5sql/9QwLTqt1Y+/ab5bwKeB3SmbGD0V
         gj4ZqLhUUu3utM/eYRVzDCZERgL4jy5qorOHuRn4SztH8YNmI5tnpl2gxJfEBYxzRzA9
         5B4saiOrggDQGW8p9cMaptO2/Ea2x/+XuOHChRMOR7zn7XL/u3MRYRzIjcdkRCK1QNCY
         fT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756162540; x=1756767340;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCS6DLcEySz3olHWHzOFv+Ewqrwb+xd07eC1nN6zlK4=;
        b=GoC6iHe0E+zi2gY4ZGZ38dxwbRvhs3k1tsqTAZanfLt5vuOHVeDrf04RRSQN6/FGF0
         wSoHKTSImKJlBO53JywGi5KwPAfU5o0elCLeH3gVDt5xAljizldDT26oUFWggZJekH86
         pWkJl5fmEZZG4M68mNf24Pubv+VFk8be7g8fBz1tiEho6ZLPflui2ormvwTDfwZu1goW
         yOGa80mfhAjoH8Krl9+nbkZHtXSaLMZg8kOJsNrL9yYBS3WUMCiyDwIRWgxxHtFRwxe9
         lY+5Rl+o+r6Mu0TFwPjFQ143glqLKU9E/+pxcLf+i8uqYN0IWsAnFRM8Jwequlg8pId+
         nd1g==
X-Forwarded-Encrypted: i=1; AJvYcCXm3zpueIAti1iv65j3Glpf0VOXewH2hXaGov25PbzUANvVsALJKiuxA6PeUItfqfUY0KnfSuRFJ86g@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk+ZERt/VKQ01SSC+zpV4hMBYGII6qld3QHpy5mJS389rFMxGP
	3aUnmbEM0rAa7zwnCXIRpa1Gu6yhfqsH8SjTS7wR6fykbBzuoPjKyBxQBF/PtJQBV0s=
X-Gm-Gg: ASbGncs+fAhojOlvTx5Z0OSQMmpVI3dBgps9k0WCebD/TS4K07Sxrv3DYNT+LQSNbAM
	JqPeJbBJJqcksxPSCnNb+66kqdLtuDZ9P4HrtF6WpTNEPns7Crp0CTMPQjPBTbrECaZOw5jVYKv
	JXt6D00cBWmZz+/51EXBrwfoMsceswDz7ag1IT5Y+O+NNhvnFNQxR8TodioVY+Xzecb8A2KANMR
	Mgnl+BPoxHifRwmKeMVf8i54JmpS1KJKYF1SQz42zZZsnT33HTP1Yn8/QzWnlJzIYiZ1pC3gB+w
	0Z4iEtzXGWW+IAtB1hZbZ3XP/jFgAjSbEbycu/QXqz4izS0fxzQ/3niVwIp+PT8vqVDjtxzOSi5
	lxhloOoajUOxDui0sm1F8zFGS4ldESaIkq1tR5XQ=
X-Google-Smtp-Source: AGHT+IESiJY5iqqsvItpm4Sh7rsORevtB2B5egj8A4x6z3Lz4XrFb1LlPBxzSpo81Oj8l1v30WNahQ==
X-Received: by 2002:a05:6830:2813:b0:72b:872f:efc8 with SMTP id 46e09a7af769-74500a70e38mr7712241a34.24.1756162539764;
        Mon, 25 Aug 2025 15:55:39 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:5075:40f3:ff25:c24c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7450e49d36esm1991747a34.40.2025.08.25.15.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 15:55:39 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 0/4] iio: adc: ad7124: proper clock support
Date: Mon, 25 Aug 2025 17:54:59 -0500
Message-Id: <20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMPprGgC/42PQQ6CQAxFr0JmbQUKBmXlPYyLYSjaKMzYGYnGe
 Herxr2Lpvn96X/tw0QSpmja7GGEZo7sJxW4yIw72ulAwL1qgwWuigYrYPZge6fVlFhDEB9IwJ2
 9O0G8huAlQYP1pkC0TVVvjCYFoYFvH8pur/rIMXm5f6Bz+Z7+8uu/8ucSClivh2rVdzg4O2w7e
 z9zJ7R0fjT755cpdLnqQ+kLNp2NBOqPnNpML4q50OjVzZWZa088HXT5+QJq5GcxFQEAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2036; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=CZtdnoVEalHzWzYLwK7E8e1YLjYq1SDqTbG5ZdQs84Q=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBorOnHIRZT3xyR6Lhb2S7qFJnWk7zLyV6iVl+UJ
 5p7FttrEJOJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaKzpxwAKCRDCzCAB/wGP
 wOsvCACTgIMTCTxzrWY1441pyDEnoRZbgmuc9aEK94TaP7Xs0zem878uOUld4R7OmpzNRoSWdPo
 QaAsjv8olnME3kr+8FK612SQFS1WJek5zS5Ekm+896DHLDEapWx0niiXLEuZpxFItYMmHmbedv/
 dsvn8W9x37uWl6712MatGiScSCms9rODDDfkb6xAyb0jF9I/HlQqNZxSSQ4uM+a68CsF7yDRbr/
 7kSNxcbMBPjWiUinQyieCtz/Kl/P6PKNy8WozTfwDYY2LTGCwZp4QsMfmSVcq7ByeJ7RGrz4wWl
 zwgN6w4S53gOHkyVyFI14JooSIhxIynuX3VtR2svpSY7RTnx
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

 .../devicetree/bindings/iio/adc/adi,ad7124.yaml    |  21 +++-
 drivers/iio/adc/ad7124.c                           | 139 +++++++++++++++++----
 2 files changed, 134 insertions(+), 26 deletions(-)
---
base-commit: 91812d3843409c235f336f32f1c37ddc790f1e03
change-id: 20250723-iio-adc-ad7124-proper-clock-support-7249022a7349

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


