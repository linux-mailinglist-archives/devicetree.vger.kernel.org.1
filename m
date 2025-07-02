Return-Path: <devicetree+bounces-192325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C82AF6424
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 23:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4964B3B6A72
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2AFE275855;
	Wed,  2 Jul 2025 21:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="TxhdGMI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C4F23C516
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 21:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492227; cv=none; b=oMWAO9Wr7xbVhOTFuBuj1ChVb8IO9WODJnzWpgZkqu7BBVpqnWjG0DnhRSKsctRk05UzWXcRyxf6JGAI7syL5FidRzZ/sV73rqOM1J75C5d/nFD8ouBApn4zTQbN8b5TH1phhmt0MNboLmRewoJA8ip2jL2gzQ2lk5yntMejAGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492227; c=relaxed/simple;
	bh=9zyhz4ntHJdI/jrj1j/VNTF3enbDJI0+6GNjK+mitZw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pinvr9yv1f7gFUkBCxOHxOygAeN7KfLXoUoS5uXjL4oTQoPZA9ujWaXZo54d+1GdaoTgw96/jVCsOpJZ/55hlK5BQNkxUFR8ieW/OSUsarYCG/o5IL/mCWwkdtg3zUy/SQSJ8suRT+uTe/FmV8KC4+Q3nSnJ3EhyHr58Je8X/u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=TxhdGMI5; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6fafb6899c2so4701986d6.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 14:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751492224; x=1752097024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vCk4qTQ1xZrDDch6I+2pDpmgEt4recKLbuT/8JykNnk=;
        b=TxhdGMI5SA5WoOuL29Bg4AAlAotQznRWw/HxOybxM+P3WtbiJwnq9FJNF9T3YYKaEx
         qcK6vcU2Hwx7Qth2KaO4t/TC0MJB1sTZdTfJz70q8jZ5zYwCSQpOjsdCTvOYdF+M7wdf
         mNjzLTZ3pJu3lHe8f1v4OKNa2Ss4scIlZO8kNosJd/fMA1dSgTrqou4GbvugG3t1oXQW
         BA6TXlUXlkMvcMSTIggB/T1i7xgfhGXOCUMMaTlm3DfY2xIu/W9AJM4yurBWGmay1LAE
         4n2CtHPuGt4Oeo7wujteUdLaByK8MZ0AswD16E9JnVJ/X6VK/iLjTcToZx37TuUPjPqE
         Ed1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751492224; x=1752097024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vCk4qTQ1xZrDDch6I+2pDpmgEt4recKLbuT/8JykNnk=;
        b=h3Hn1YbqKbtB93pp8dpXmioAwnqwn/SIWfw+K3HcwIPxPRNDRI9mKrXqSINWAKqXfX
         rL1OgGOMDaJSA7Cbs0HRgqVFRyLG05NMj34vExhs5b8AzSavxouuvW/6Dj7AvYP3Ml+9
         hqQE+6s0kHImeLOBnwQD2NyN31zilnmLEX81avPNoXjT9QLHrl//tHI1ksVAMlQH/qh5
         N9ySn1F0xBGSBisuODqdrQczuSZ3ifarYJpAtu6Mqd+6nSX38oQkAps5ckRQHMProUEX
         pct0TPEr1mUGCdO6Lo+QgW7YbtfAXcNNQJwpeEifcnSepuxpNto6oL44CkRn+LQtF4Qe
         6knQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzGIG1kAOW2BRUsbFgg/FGAA9ScPjHIHy+R9PEOiGruVpriP02nZGaNCz8Fopp8aMLo52lviK6dPFu@vger.kernel.org
X-Gm-Message-State: AOJu0YzGjFogwFv4DngllrW4ukU0DF4JHSRFgdnscyJB7Q0plGTN6Fel
	0enF4wGOjfMIUguu55PFUK47DC0rj3qS7dxNOlNu7hMJFl8PgWNkXoapb6qVuRmwR2s=
X-Gm-Gg: ASbGncvo4JQqFZDGlwEaVRqQ5RlKS4FzMA27go0O86finCqnqgu+da3/f/sZgW48sFu
	h3aM668JQJ8UhX2CvQ+3IJU4+yTytk8/nTTVN9B6hI1O7lDTwNlpnM8nNvKPgCmeXfZItL0hT+A
	/VYib4WZzp0bpmUaCqOmsu04ADX5tYWZyzCFbL9oP8uNhi1ogOHK5AZ2ML8/VNkhTpTQbsjAvjd
	YSDxKkdiuHNjClREWPAbeWw5j6fNcc6zDwhQXHLePoFCOsOO1oXVzJlh7GIUbRZMbwaUQnsV2eE
	0v5x4/Yt+o/zGm9iUExjgOucqleRh+DdozKCKsk0i2Uy9Ie5ZaMm85RX5ZW8XF7JWZokOzAriSc
	6SZ/wdkxu+Po3PXG1pqZUaQS07ruAex2VUgo=
X-Google-Smtp-Source: AGHT+IHErTJvMvE1TJ0g2EYv2CvrFgib6KyBFStvjCoRfS+zf5ffaS+AtP1I5+t4S6JkJyQfcGlk2A==
X-Received: by 2002:a05:6214:4107:b0:6fa:fc4b:8ea7 with SMTP id 6a1803df08f44-702bc4a73acmr16126856d6.21.1751492223736;
        Wed, 02 Jul 2025 14:37:03 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd771bc01bsm105691746d6.40.2025.07.02.14.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 14:37:03 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/8] spacemit: introduce P1 PMIC support
Date: Wed,  2 Jul 2025 16:36:49 -0500
Message-ID: <20250702213658.545163-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements 6 buck
converters and 12 LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as well
as drivers for its regulators and RTC.

In v6, a new patch was added to change the simple MFD driver to
allow the regmap max_register value in the simple MFD configuration.
However it also removed the option of specifying a "full" regmap
configuration, and that was not what Lee Jones actually wanted.

This version adds the max_register option, but also retains the
ability to supply a full regmap config.  (If both are specified,
the max_register value is ignored.)

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v7

Between version 5 and version 6:
  - Revise patch 2 to preserve the option to provide a full regmap config

Here is version 6 of this series:
  https://lore.kernel.org/lkml/20250627142309.1444135-1-elder@riscstar.com/

Between version 5 and version 6:
  - Added Rob Herring's reviewed-by to patch 1
  - Add the simple MFD functionality suggested by Lee Jones
  - Update patch 3 (previously 2) accordingly

Here is version 5 of this series:
  https://lore.kernel.org/lkml/20250625164119.1068842-1-elder@riscstar.com/

Between version 4 and version 5:
  - Only check the seconds register for change when looping on read
  - Return without re-enabling the RTC if writing registers fails
  - If the RTC is disabled when reading, return an error

Here is version 4 of this series:
  https://lore.kernel.org/lkml/20250625164119.1068842-1-elder@riscstar.com/

More complete history is available at that link.

Alex Elder (8):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: simple-mfd-i2c: specify max_register
  mfd: simple-mfd-i2c: add SpacemiT P1 support
  regulator: spacemit: support SpacemiT P1 regulators
  rtc: spacemit: support the SpacemiT P1 RTC
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 +++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 138 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  11 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |  27 ++-
 drivers/mfd/simple-mfd-i2c.h                  |   1 +
 drivers/regulator/Kconfig                     |  12 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++
 drivers/rtc/Kconfig                           |  10 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-spacemit-p1.c                 | 167 ++++++++++++++++++
 13 files changed, 626 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/regulator/spacemit-p1.c
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c


base-commit: 50c8770a42faf8b1c7abe93e7c114337f580a97d
-- 
2.45.2


