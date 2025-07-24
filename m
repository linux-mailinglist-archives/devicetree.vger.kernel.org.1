Return-Path: <devicetree+bounces-199580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A15DB11470
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 01:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA5F5544F66
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 23:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14972417E6;
	Thu, 24 Jul 2025 23:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FgwimAvj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F9523F422
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 23:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753399562; cv=none; b=CjWtaBpPVPUgY9kQnxvjsB7X6KtDLT+oPBI94oF8an9wuXqtn/7Ejg9bWhP5K8QPKePI3VO9TBcLODtUXIaMNesnBHwEpRHgUAzUb/yAYZdwivVesas1twfhLEiXqAueaTxQmLVDcu17Y3joy822YIRr0xn6H0BgWp5lrEU0ybM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753399562; c=relaxed/simple;
	bh=4jW3pY7SqSVCQKiEBRKbOYXg71w2gZjpd/3XjgMbwLk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SAM4CsowtYO+qTj8iD3mMhlpOV9hdXi6/gw2G3qYjPzllrNqW81ghkbdbV4Mc3+D0aEzrAhqRmNs/rtv63SnXepbFmDEc+ZhuGyb4KSRencVfbaxUhWRiu2tymeQqtelB/Y6q+8aB4oJuvRntViVRyDlZL/f5STLnIWEZVjLGys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FgwimAvj; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-72c09f8369cso853096a34.3
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 16:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1753399559; x=1754004359; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8ZOxB7bA+7HYwUpTJ9kokJfmZhb06fFUHF38bYEOqBc=;
        b=FgwimAvja+5vtLrP03N1OCfFywKhzaDJqMppCHQGJjiRrlVSfovejo72CCMPQ33QdX
         klzAA6o0sMuT7eQkB2GqhCVZXamOH6x41Mub0k066TmDWmZi3iodzHnweTW1dRdssy+5
         mywHB5DjkpsSN46OeKf2Wx68q1K6bslRaRel9VPwELjrWx25QTPorIcbf734aVYZ0VRk
         yw+RlBVxYqHZ7W0vyzgWDzCxM67O2xwPHwF2SvfL4aC8jdgBqpRMgJAWX7QfFwtHqsS9
         ytvWy6G1/why78Ew6QmH1lb7OLPWL9982HKieAx7hUbhMK48aMh2XD4WLw08Li8RP1p0
         m4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753399559; x=1754004359;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ZOxB7bA+7HYwUpTJ9kokJfmZhb06fFUHF38bYEOqBc=;
        b=XFMaERzDQtPNS+en88fa/crDflgUUQep2VsquJLDbbrzFpPgWr/OoSLioKth28lyey
         NELKGfm9iyXMB9kwqLOGkXvHqicaUhekNTrRUyu8PuYZj/YD+PMVnC1AJr6r90WMc1YQ
         wcsgHhCsf1BCHzzq3zhSu0aczg9nXYDAE1s1IEtrFEjyc2XWCRKmhMmX0LTEHG7ioTcP
         +0H3Uq1s2RyiMPKgOJxByfazKxq8Y4p4wM0akiun12ILsmD7/r/5+VFD72tkbd09Vh1W
         rlCtP41Aem6xO9/bwdXkTgfwlM1Hd+9hPYBIJ+6Mw8ZE/drXWb9Zp22qgDRJfbwb0eBI
         ss5A==
X-Forwarded-Encrypted: i=1; AJvYcCVQwRc5cmCMejT/FwK99xPoMvRFpaqJ4HQ0ZJYluBNh6BV/Tp4E1dS4nC/h7pkyUtbtv4I1vxuG1aAS@vger.kernel.org
X-Gm-Message-State: AOJu0YyIc8aiPw2ApcEOP2xwgVGRx6SwZR+6fzE0ryW++GU5UiSezTxN
	kLiVSYbLx3APpoyIuZZqbkDWpAcLwJz9oPOaKzxNri4f0QOJobcBfkWC85gSUXbU0hc=
X-Gm-Gg: ASbGncvcoSjrbNI8paR1Os03C169rm3GB4kFwb2zebWvMjaG42IlmYw+fWvsk2q1iX6
	T6LpT4wELlvyv0p4sjDMwdxAT2ZLxYVYF/9M+dUWloLZrMHcS7R58oCm72M2axENPXwM4Y+K6G+
	iq9G0eHHp6NkBp6PJsCV6+KgTlCWF16n7R5d/FsMNk3E6hW4RJucarBccma4ZYK6gcHORNTvmJn
	tVZKsUk+TeViF7sGyM/MRjIwEk0hHGJIwW+392pk6agTw+h4uQxkpdkS+5LUhOxlpYfmBXSW6O8
	V0R1ctU0rI8u5PEAw/a9Vbtg/orFBHyMqJZ1AS326aQSRmesmG4nNQQjIA2fuwT9/QaLCxuNRQa
	w7BTFjpJLGPBzpO2zZF5B9afNZg==
X-Google-Smtp-Source: AGHT+IFyQBU0YPkEhU7BAxUyYWNhtWpzvb8sHT0G4rkr83bULjkykMKjjpxSOQ3Vr0TrddZKjp2UoA==
X-Received: by 2002:a05:6870:8dc8:b0:2f5:2b87:416a with SMTP id 586e51a60fabf-306c73012e0mr5599518fac.37.1753399559500;
        Thu, 24 Jul 2025 16:25:59 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:337f:e3bf:e9d2:b3])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-306e3971332sm689626fac.0.2025.07.24.16.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 16:25:59 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH 0/4] iio: adc: ad7124: proper clock support
Date: Thu, 24 Jul 2025 18:25:21 -0500
Message-Id: <20250724-iio-adc-ad7124-proper-clock-support-v1-0-88f35db2fcaf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOHAgmgC/x2NMQrDMAwAvxI0V+AoDib9SulgHCUVLZGQ21II+
 XtNhhtuuduhsgtXuHY7OH+lim5N+ksH5ZG3lVHm5kCBxpBoQBHFPJdG6imiuRo7lpeWJ9aPmfo
 bE8UpEOU0xAlayZwX+Z2X2/04/voQIeR1AAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1687; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=4jW3pY7SqSVCQKiEBRKbOYXg71w2gZjpd/3XjgMbwLk=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBogsDk2kxGitwpoI2C5iNvXL99PNbs7kFU+B8Ot
 VhlwsArLSWJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaILA5AAKCRDCzCAB/wGP
 wOagB/49rZVzTf4m+GGTp4DeXvt5j9hJ3M1CgTw1y7lsMMM8JocMr3vBXacc3toQyb5NtV9Lgp8
 baSCYKGoAd/sP4pk+1b/vluEd2lmIVaxJ43nYvZxxcFIvCCqa55mIMbyLJSXrhBU34ApgBhwQiW
 VRckzCg81YFYuRGED2Vs2sxzsTOyWB2gFHqqZNe+OYA2Q9T6AEMgHi+M+vT8ekmfbvtMvUAavIw
 J12ilZbEn6mFZIOzoU+saRgC7kfPPg3hfPiZv40ckgfmqtNE8E1hpQynSCodKSmel5vF+5pQnbS
 P0ql0mGTM/5s3/YArwR9+xtwQVWYDd628697tUoizz5haQ+A
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
David Lechner (4):
      dt-bindings: iio: adc: adi,ad7124: fix clocks properties
      iio: adc: ad7124: do not require mclk
      iio: adc: ad7124: add external clock support
      iio: adc: ad7124: add clock output support

 .../devicetree/bindings/iio/adc/adi,ad7124.yaml    |  21 +++-
 drivers/iio/adc/ad7124.c                           | 134 +++++++++++++++++----
 2 files changed, 129 insertions(+), 26 deletions(-)
---
base-commit: ad59285dadaa0c0e54f5c30c7d0fb282b06e14a7
change-id: 20250723-iio-adc-ad7124-proper-clock-support-7249022a7349

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


