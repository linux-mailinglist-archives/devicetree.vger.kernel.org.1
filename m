Return-Path: <devicetree+bounces-122603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E989F9D13B4
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 15:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B014D2834C7
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 14:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C15B1AA1C2;
	Mon, 18 Nov 2024 14:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="YM7I9hXY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904311A9B59
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 14:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731941698; cv=none; b=DII7KNotYOK5eQioKqSCdH9KyuWiSNrDFfMlZH6zb74HhNL9a3TBt1vPTk2hhcJXBzLVc6w4+W1JSmh7mZIawNLFTLHZUDF9TtnszQKEz7YypNoyC49n5VLwdl7NK6jBBDVc+7iI1wM7W1sM7lIHYdioGBuWBIMGP15aptqleUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731941698; c=relaxed/simple;
	bh=pX/kmk4dMi+me3Tj39icaG8AADaQ/icrVmhqYu7ELFQ=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=HFXwviyocIylUO6kSz1vSwZDqTmRVBcB1P9TG3L3SJFKBy+Xl8AQIx5nRo+h6MYUB44pGtEgNmFXvllG6UmRjckKJLLdfBYDAhdJyMJrW1tzAb1tdvmyR+DgiznMvgW3QjHm0/srGvDzw4gkLjq9UJLpXUwOfqn/t0QtV1Ungy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=YM7I9hXY; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a9a0ef5179dso831896666b.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 06:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1731941695; x=1732546495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rsuZnZU2NXOf5EqgKE4593+R4sGiA8pml1jXet44X9M=;
        b=YM7I9hXYSM0PPXUdSDRpu4tk9bs+YUTh3O3xq5ICnq917dEAa5QBAS+1hRMOSQdOQI
         X4c4qf/0lBhn1UXs1Zb0ayhu8vx55G2o4zpTy290KoNDbsU4/V0uOyoVcetHnNsDjkmR
         AjIkCzRhoM1yvq9o1TMshBbjoqfXYj+FvyWRuc24PvBiLRHQbpv/t1kGZEiG0Vzb9DYU
         PPso4cSItSyA91wX4TDYtR1o77IkjpgUNwpis79GU+jKgvVYqYAk8kkLWb2RoBvn8H1y
         kiWenoAZ4SL/30RPK4Qw5IpTZ2br/dLkTZ0kNV589qqgWK4ri2lnufz80wnbXj9lVFyr
         Ph6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731941695; x=1732546495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rsuZnZU2NXOf5EqgKE4593+R4sGiA8pml1jXet44X9M=;
        b=HBdbTJE5BDkLDRWvc22r+YBgm7vzXrXVFIaHsZ0E7GkByYZDxUDX3lTfcVHvXghvpO
         2aa4Wyt9CZWiz0SQhlwnA/M6Dg9qv5Qj7F5C5tmGcLKlNBJA9hZeCsr1vPwm4Y5vsaen
         a34Pi7KEIbFO48eTDz51BsSZpiFuXK7/0l6/Em1u901cMIvpNYgvaz+ti4D8XJpvOyNr
         ZEfRkZoJEUayVGYvzVHbV40PqCF/U+uZzHFE8Y7o/r3ae9R2K1hYOZzuGKlty9XUrKI2
         IphdVtbmnM9k+E0XmzQm2sirFUnw2okHjXjZf5LpCKtcnL2JOoQE/ODRXZkssKoVM11c
         Y+CA==
X-Forwarded-Encrypted: i=1; AJvYcCUhNDtrnLOj2JTTb+8mVsZAiRxGb5Yk/nbAc26IOb/kvtKhjB+P01gW7Myq52Gme0LYoHxWDQ7fz5Uj@vger.kernel.org
X-Gm-Message-State: AOJu0YzeZjERUev0beBzuGzwmmoUgZewp/TjNzaHtsBIpL34EoTd0QmQ
	UHSRiQum7M/PMi+b368rkrapVDg7zrA2BceA0RiHvjfsj/4Lz4ScCIRrJkzdPRYCALOSnjIZ1ZG
	M2ayvRz5VE7+tddXhMdCXjhmSXn498yX6d9Zly8X78W+lTD5r0xfL0uzDoL6ksKSV8Yt2BIid4g
	p149afsPyi2rcBsmtZHQ3esGOJ
X-Google-Smtp-Source: AGHT+IHCB4Wc32uEHZri4oww6OJhPXtytvSqmqVrU9ZKviS0h48ZGxo+7ifzbJmdixx5PpIWTHmi3w==
X-Received: by 2002:a17:906:dc8c:b0:a9e:c460:ef4e with SMTP id a640c23a62f3a-aa4834824b1mr1321963666b.32.1731941694872;
        Mon, 18 Nov 2024 06:54:54 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df1b642sm546125666b.40.2024.11.18.06.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 06:54:54 -0800 (PST)
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH v7 0/3] Add LED1202 LED Controller
Date: Mon, 18 Nov 2024 14:54:42 +0000
Message-Id: <20241118145449.7370-1-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LED1202 is a 12-channel low quiescent current LED driver with:
  * Supply range from 2.6 V to 5 V
  * 20 mA current capability per channel
  * 1.8 V compatible I2C control interface
  * 8-bit analog dimming individual control
  * 12-bit local PWM resolution
  * 8 programmable patterns

Internal volatile memory allows the user to store up to 8 different patterns,
each pattern is a particular output configuration in terms of PWM
duty-cycle (on 4096 steps). Analog dimming (on 256 steps) is per channel but
common to all patterns. Each device tree LED node will have a corresponding
entry in /sys/class/leds with the label name. The brightness property
corresponds to the per channel analog dimming, while the patterns[1-8] to the
PWM dimming control.  

Vicentiu Galanopulo (3):
  Documentation:leds: Add leds-st1202.rst
  dt-bindings: leds: Add LED1202 LED Controller
  leds: Add LED1202 I2C driver

 .../devicetree/bindings/leds/st,led1202.yaml  | 132 +++++
 Documentation/leds/index.rst                  |   1 +
 Documentation/leds/leds-st1202.rst            |  36 ++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-st1202.c                    | 510 ++++++++++++++++++
 6 files changed, 691 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yaml
 create mode 100644 Documentation/leds/leds-st1202.rst
 create mode 100644 drivers/leds/leds-st1202.c

-- 
2.39.3 (Apple Git-145)


