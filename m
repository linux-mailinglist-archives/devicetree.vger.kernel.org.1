Return-Path: <devicetree+bounces-68585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF448CCD7E
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 09:58:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09368B21A4C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 07:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 831EA13CF92;
	Thu, 23 May 2024 07:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pfhp84pK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03C413BAC6
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 07:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451109; cv=none; b=ZawCROoJ6F3W+923ZmuA2TZWAFHH8ZSvZwpjN3VrQ6DP6NnDu48YqNUvjeN5n0DMMpEpuNgWWoJpHg1S04ZMXQldXRFZ3JeE/0jbdW9mjETPubFYeGWe9ywiL2i70yINBGA3gx/6tIsGxrTCXkBcwrz3KYvX02EJGtHN5Vk8czg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451109; c=relaxed/simple;
	bh=pWvlBUsTahE00BJX6As7h5+KeekjrqWMB+YQjnR50/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MDHIiT4n4hbr5ihtY9klw7wDJTMCypaV4N6bXizIntWaD04HQVBDenjOhk5HEmR4xbkWOIGd5prcMKO0SFN0UJGymw/yzsjPYe8z6KTpYYKlNE2Tvz0nSDrABTZT7eB9+86X9J4cqiGxc553fb7XOolELvHhe85Hf3ufTuNcQ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pfhp84pK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42011507a4eso14765015e9.0
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 00:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716451106; x=1717055906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ufllGCwa6G4RtEd5vl28DPHk2z3wosI7B9qfMgMUop8=;
        b=pfhp84pKqyDiJ8h+fhVs1mXGPfuSk3Z4+Q7tqYRoTxQnVRpQSxC3DlHjcLyX8blDE3
         IblQuAjRV6PglPK6yof1Qolx/+/Vj2I0f/D324cjex+fBIN+gT/6WI6/V4IJ6Xox8Tcp
         4OMj2xNCTdO1+A0Kg+QHqMC0J7XfgLXRoE5JBvxc8IOGN0YF3Oc50sHVP7TXl1W81VHx
         ZPoqED82PAZpkUygRfdXwpgMjGzWiCIirAqOBOv/Ky6obP5haRiQXi6tRFUuvDkCvjp7
         8v8Gd+WeIxTQMv+vRxqta3NfXZWgI0zhZD5ZzNdxD3oc1uoS8yZ0uYSbxgqxz3AJrJ2W
         nUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451106; x=1717055906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ufllGCwa6G4RtEd5vl28DPHk2z3wosI7B9qfMgMUop8=;
        b=EgKge+fgsQxJXHYs9K1ckV3pRV7uMDCnv02mjulHxzZUNegOx5SGTjm+y8UZ/HJc0a
         wp+7CVGPNMuJwRZQBithP33ZRYUSnNn8ig78q4fBoTefAbMFO29xH21Gci5xbwzmdtb1
         NVaAo+WqiL8w+knhRksc6Pt0yR24m/CYk61S2ZSHdDSZFHyL+wgU0y0EOYPu2+HjlzGr
         1K2DZZgxitBUBpFRFH4RoEBue6PPC5aq1R3BO4tdxqORk4exhA6M8+2a4BK0AP1YMnsK
         IFPjJLLw41WCyEVFqiMIAY2SYwTwPcPlmnYd/o2bDeVJErKkLyBujl2XMFGd99u61E4Q
         jQ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVkbg/MrWOBoviCNNdcWW3w4l923UJK0XQ5RLA+k92bgbKKNjTYCrRuFwGdUG/Hrl1Jw2hGHwfPmXmnoQLdtS5qD+oFdkj9xpFkPA==
X-Gm-Message-State: AOJu0YxFm/hcRqyE0X0hA95TiBIKdFynwNNhWdQmgbwHvrK/jGqajJHI
	9x4zuHStxTlKGC749K+p2eE97sTu706LZ4C8bzXEBt4gN+uYuxEAGrUnV8smijA=
X-Google-Smtp-Source: AGHT+IFxvRFLirejbb1KOGhY+jxFHdcXdR1VdijnYqXfBvsYXq1FJc2+tHan1bu4JGQuKKYxchl8nA==
X-Received: by 2002:a05:600c:3b8d:b0:418:6138:6777 with SMTP id 5b1f17b1804b1-420fd339b22mr30829365e9.31.1716451106146;
        Thu, 23 May 2024 00:58:26 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f01d7fsm17359125e9.1.2024.05.23.00.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:58:25 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	John Ogness <john.ogness@linutronix.de>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Ronald Wahl <ronald.wahl@raritan.com>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/5] serial: 8250: omap: Add am62 wakeup support
Date: Thu, 23 May 2024 09:58:14 +0200
Message-ID: <20240523075819.1285554-1-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

to support wakeup from Partial-IO using serial pins of mcu_uart0 and
wkup_uart0, this series adds a new pinctrl state 'wakeup' in which
specific wakeup flags are set on these pins. Partial-IO is a poweroff
state of the SoC in which only a few pingroups are partly powered.

If the user enabled wakeup from the serial port, the pinctrl state is
selected on shutdown. For another deep sleep state, which is comparable
with suspend to memory, the same pinctrl state is selected on suspend as
well.

The series is based on v6.9-rc1.

This series is part of a bigger topic to support Partial-IO on am62,
am62a and am62p. Partial-IO is a poweroff state in which some pins are
able to wakeup the SoC. In detail MCU m_can and two serial port pins can
trigger the wakeup.

These two other series are relevant for the support of Partial-IO:

 - firmware: ti_sci: Partial-IO support
 - can: m_can: Add am62 wakeup support

A test branch is available that includes all patches required to test
Partial-IO:

https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62-lp-sk-partialio/v6.9?ref_type=heads

After enabling Wake-on-LAN the system can be powered off and will enter
the Partial-IO state in which it can be woken up by activity on the
specific pins:
    ethtool -s can0 wol p
    ethtool -s can1 wol p
    poweroff

I tested these patches on am62-lp-sk.

Best,
Markus

Markus Schneider-Pargmann (5):
  dt-bindings: serial: 8250_omap: Add wakeup pinctrl state
  serial: 8250: omap: Remove unused wakeups_enabled
  serial: 8250: omap: Set wakeup capable, do not enable
  serial: 8250: omap: Support wakeup pinctrl state
  serial: 8250: omap: Set wakeup pinctrl on suspend

 .../devicetree/bindings/serial/8250_omap.yaml | 16 ++++++
 drivers/tty/serial/8250/8250_omap.c           | 56 ++++++++++++++++++-
 2 files changed, 70 insertions(+), 2 deletions(-)

-- 
2.43.0


