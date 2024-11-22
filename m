Return-Path: <devicetree+bounces-123754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A40D9D5E24
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1ED38B24F2E
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049041D86E8;
	Fri, 22 Nov 2024 11:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SvPHPxmm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E4C1DDC39
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 11:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275241; cv=none; b=ps6sLrOf0aSi33Vh3to+BiEWltOlT0lUxilZGJyhvS8lJzoiC184RAFIZFY2wDbUiQZjgM9pvadHs/vfHuUdvCzikGyFrI65NsEW5dv8VwdjUZYKPRGxaik8jQdf+lsTa4K1JjWD22ZSc+FeAaUNiUf7BRCtONNQ8jLEU8ko5I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275241; c=relaxed/simple;
	bh=K8244BlpuE1UxIqFDVc+hYBv1bGXc3RX3JCLj8a4P5E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=UtDhNC0Kb5L2e/OciRMWB2CRIGbV9wDhtrP0xhDvkJRjemvKq/5qt6YHWbrChEOh4foGPkpohrKmzDAzC++LDjRFBeQXuAnKNo1zTXPJLEn1XO+vnahNq83GlfNonxWHCag4J4IEF1WrPoqZTSpwwDgX1/qtUekm5uVqQwMowAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SvPHPxmm; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53da22c5863so2397309e87.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732275236; x=1732880036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eC7wSQ5qZRQ0okPROjPMRjeCy4sMO/ysbqaTf/vCEA0=;
        b=SvPHPxmmVyK9Wwb8Bx+6LYjsfgPeoO1kUjcDfH0ruQi3eUUi8ljKuF8ovgru7yT3Bw
         oddYrmn/y3c8G0tQwa5vDF87PtOQbjL/rFYwxIZU18Yeq+mM6Wce/rksDwKpFRNfflkj
         8vhTHle4osJOZYzDDTJijZL0ZZAh0mjZRFJZRt38gkDMb3lCiFW3xBrU1Ay1hLPSbZPr
         /XTlz5TOgLEZ4KXXHG563p/Z5qGj2LrJKPX03ykddf425Zi2gOl6dhtBP+mla07dGp+S
         Zgqi8ZtstsVakeHlZbUBvB6qZGKdpMhZzW4KtRa5AVRIQXVuUTyNS7K1ELupWCcrtoy0
         4J4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732275236; x=1732880036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eC7wSQ5qZRQ0okPROjPMRjeCy4sMO/ysbqaTf/vCEA0=;
        b=YjXR3xOOJX6rO8VmPrYItQRw9/NfbJGyhhTQsUdrEfiIsYqyFAgGLNa/dg7Af13kE5
         CXTYJgCh25wfyn22sLBZNZMOQ1Qglq4plBRFTrw0HGrr4IiJ0GI3LmIP8ZqjxgbRwtvm
         M6piOqestLWhb/Aafd6dSLpMvRGCesyqEd9LJDA0zG3ThWM5Uo1JmMe4+jL07D405n5Y
         HEskHGPVbYxH2WUHRr5HC3tHhmnYE00PdKD6YGZvxIV8cKiaR8uqgJfdFyZpeBbz7Q30
         vUWdtGwd+R5iyNvefPvhMz9qaYMnUq0smvVWQ4gy/20uZ7yURqqPVtyZG8Y7PRaIh9/3
         83yA==
X-Forwarded-Encrypted: i=1; AJvYcCXpUBistfdrWuubV0jdhsfszvf6eI8KUC1JxvV5lsvHkTRDPieOBHDXVWcgC9v1fbu8pTXPQHtMb5bV@vger.kernel.org
X-Gm-Message-State: AOJu0YwqYzXA4cYsaxqmN4cawR1eLv/fdCGacKeZkunIy9obAEF0bQxu
	9p2wsRc8edhku8cf7Xev9mQRCzbtgJd9s3vy7KQaQ8F4rYQyOFI5R/Vg/cNkUt8=
X-Gm-Gg: ASbGnct+PdLWiLu2iiWUker4AObmZsf4z6sXiI4xohbW3VvCBxiq7PBlOJVn3TUXNbZ
	8ntGSbYn/Km2f3e65x8gQzlK972zw/aexeYtJuo0Lna2Jp8isozczemT3IWX6WtG33iveOmXQV0
	cPb5earIUv6n9InBsSBZnksWY9ZBJTmcf4ud2nOhQjaMa1f0lR+cwLPIJAXr7cWh9yv/q62k76f
	zlDNY0sMMOmuNkJkGjxNbVSqdM42EL0CDCRO6c8zRfd6yC+eSqumbaeXzrPuSI9JE8ANcIYhZjj
	vBY=
X-Google-Smtp-Source: AGHT+IFr0FtKdnOyiyOwwMnMuL5sw15aKhg1F46ai0A6UI47JjLVf87j6mCe9BpqUrR904H0AkELlw==
X-Received: by 2002:a05:6512:1095:b0:539:f961:f485 with SMTP id 2adb3069b0e04-53dd399271fmr1080672e87.29.1732275236034;
        Fri, 22 Nov 2024 03:33:56 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b463ab6csm90663655e9.35.2024.11.22.03.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 03:33:55 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 00/10] iio: adc: ad7124: Various fixes
Date: Fri, 22 Nov 2024 12:33:19 +0100
Message-ID: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5689; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=K8244BlpuE1UxIqFDVc+hYBv1bGXc3RX3JCLj8a4P5E=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnQGwCS5fQmfujOnaNg9d9nTXWjQ85/l/cLCLEE s7hPEuJZWSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0BsAgAKCRCPgPtYfRL+ Tv4dB/9ewjqBqt+d8khlL4i9iZFmSsjjhnYGUr7F4wzmWxENJG4KBk4xAfiEr60rVeQdySyZUn1 l+0bBjY+Q996mTZhzBzbKwtSeyWTXkM98S/230DqdPcDEz3+sjJz3cpZ3F166HeBQWM/jxVoErc XMWhH+Js4YswvJ0/hdKL1mPZCpIxd650Bn3AY5A/f7ulkpwUPgd+x5QeDPNbIIgMGDPFG9sAE9z MxGGg6n+VU4ds7++elELatNDfQL22qfpChBCfFGzGA0a/YR3JBEFm5U9CVv8KmKacH71W0/7ohq VIZR8uJ9aevooWeMD2J6dRhWo3GE2k9+OW7X69fV5n8Yh1hy
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this series contains all the yet unapplied patches I created to improve
support for the ad7124. I hope collecting them all in a single series is
fine and simplifies application. It superseeds the following series:

	https://lore.kernel.org/linux-iio/cover.1731404695.git.u.kleine-koenig@baylibre.com
	https://lore.kernel.org/linux-iio/20241119183611.56820-2-u.kleine-koenig@baylibre.com
	https://lore.kernel.org/linux-iio/20241028160748.489596-6-u.kleine-koenig@baylibre.com

It also benefits the other ADCs making use of the ad_sigma_delta
helpers. v6.12 is used as a base plus a fix that is already in next as
64612ec9b909b699293b7220c634f67a9fc12e06.

Changes since the previous submissions:

 - Rebase to v6.12 (was v6.12-rc1 before)
 - Rewording of some commit logs to match the actual changes
 - The last five patches are new.

The rdy-gpio patch was discussed controversially before, but I'm still
convinced that it's correct to do it this way. IMHO this is also
confirmed in the discussion with tglx at
https://lore.kernel.org/all/io53lznz3qp3jd5rohqsjhosnmdzd6d44sdbwu5jcfrs3rz2a2@orquwgflrtyc/
. Also while this fix doesn't work on all platforms (because not all irq
controllers can expose the DOUT/̅R̅D̅Y line as a GPIO in addition to
triggering the irq), it is definitively useful on the platforms where it
does work. The alternative is polling instead of using the irq which I'm
sure comes at a performance cost. (And even for polling, having the GPIO
reading the DOUT/̅R̅D̅Y line is beneficial as polling a GPIO is easier and
cheaper than polling a register bit via spi.)

The patch "Fix a race condition" is supposed to cure the following
warning that triggered twice for me:

	[   86.807282] ------------[ cut here ]------------
	[   86.811902] WARNING: CPU: 1 PID: 291 at kernel/irq/manage.c:790 __enable_irq+0x68/0x8c
	[   86.819819] Unbalanced enable for IRQ 35
	[   86.823729] Modules linked in:
	[   86.826784] CPU: 1 UID: 0 PID: 291 Comm: iio_readdev Not tainted 6.12.0-rc1+ #63
	[   86.834158] Hardware name: Altera SOCFPGA
	[   86.838156] Call trace: 
	[   86.838166]  unwind_backtrace from show_stack+0x18/0x1c
	[   86.845924]  show_stack from dump_stack_lvl+0x54/0x68
	[   86.850985]  dump_stack_lvl from __warn+0x88/0x11c
	[   86.855792]  __warn from warn_slowpath_fmt+0x128/0x194
	[   86.860937]  warn_slowpath_fmt from __enable_irq+0x68/0x8c
	[   86.866430]  __enable_irq from enable_irq+0x54/0xac
	[   86.871313]  enable_irq from ad_sd_buffer_postenable+0x120/0x18c
	[   86.877321]  ad_sd_buffer_postenable from __iio_update_buffers+0x688/0xa24
	[   86.884187]  __iio_update_buffers from enable_store+0x8c/0xd4
	[   86.889925]  enable_store from kernfs_fop_write_iter+0x130/0x1fc
	[   86.895928]  kernfs_fop_write_iter from vfs_write+0x258/0x404
	[   86.901671]  vfs_write from ksys_write+0x78/0xfc
	[   86.906287]  ksys_write from ret_fast_syscall+0x0/0x1c
	[   86.911420] Exception stack(0xf0a45fa8 to 0xf0a45ff0)
	[   86.916460] 5fa0:                   00000002 00b98f80 00000005 00b98f80 00000002 00000000
	[   86.924611] 5fc0: 00000002 00b98f80 00000005 00000004 b6ee3b94 00b97960 00000002 bee7442c
	[   86.932758] 5fe0: 00000004 bee73f20 b6e613e9 b6dd2776
	[   86.937793] ---[ end trace 0000000000000000 ]---

While I didn't find a way to reproduce this problem, I'm convinced the
patch fixes real race conditions like the one above.

The patch "Check for previous ready signals" fixes a similar problem as
the rdy-gpios patch. In that case however the immediate irq is triggered
by a previous measurement that didn't complete in time (e.g. because the
sysfs read was Ctrl-C'd). This one cannot be detected with the rdy-gpio
approach because in this case the device actually reports a pending irq.

The last patch isn't a fix but provides (part of) the motivation for
this series. Adding temperature support in half a work day was my
initial plan, all the fixes were found while implementing and testing
that one on a de10-nano board.

I didn't mark the patches for application to stable, because I think
this should be a maintainer decision, but if you ask me: backport all
but the last one. (Patches 3 and 7 are not fixes, but prerequisites for
the following patches.)

Best regards
Uwe

Uwe Kleine-König (10):
  iio: adc: ad7124: Don't create more channels than the driver can handle
  iio: adc: ad7124: Refuse invalid input specifiers
  dt-bindings: iio: adc: adi,ad7124: Allow specifications of a gpio for irq line
  iio: adc: ad_sigma_delta: Add support for reading irq status using a GPIO
  iio: adc: ad_sigma_delta: Handle CS assertion as intended in ad_sd_read_reg_raw()
  iio: adc: ad_sigma_delta: Fix a race condition
  iio: adc: ad_sigma_delta: Store information about reset sequence length
  iio: adc: ad_sigma_delta: Check for previous ready signals
  iio: adc: ad7124: Add error reporting during probe
  iio: adc: ad7124: Implement temperature measurement

 .../bindings/iio/adc/adi,ad7124.yaml          |   8 +
 drivers/iio/adc/ad7124.c                      | 219 +++++++++++++-----
 drivers/iio/adc/ad7173.c                      |   1 +
 drivers/iio/adc/ad7192.c                      |   4 +-
 drivers/iio/adc/ad7791.c                      |   1 +
 drivers/iio/adc/ad7793.c                      |   3 +-
 drivers/iio/adc/ad_sigma_delta.c              | 184 ++++++++++++---
 include/linux/iio/adc/ad_sigma_delta.h        |   7 +-
 8 files changed, 338 insertions(+), 89 deletions(-)

base-commit: adc218676eef25575469234709c2d87185ca223a
prerequisite-patch-id: 617af17fc377a984762c61893b9f2a92ae62213a
-- 
2.45.2


