Return-Path: <devicetree+bounces-154940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6008AA55076
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 17:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D48733ADC00
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B31212FBC;
	Thu,  6 Mar 2025 16:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="mmDdAd9K"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8704EC2;
	Thu,  6 Mar 2025 16:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741278219; cv=none; b=TdtMF1JLwU9eRESSO18vbTaBEs3+grh/Ft0qBqGXGArKNoh7ntfPWIMTXaP2s/yhB/xmVtVmhIOO6Gw9aV/HA+54MS4f/4TphS++wARpkWUj7DcnYvcvILX3nGDWzn1oH8EJdbI8F+6UO/omOXvSb5RviSWN9lddh5H7qLJ6BzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741278219; c=relaxed/simple;
	bh=bbklhI3aQ73zd287vaasvsj4pDf8CW/6eLem5wZ2qBA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BugX8PIsx+AHbum7zOMeWxGReE3hZFUYNmEuRP1I4whF1eiCi14Q8Zk36S7Ge1kw94FzgLLstDU1vpmXjO5Yqnwha5VVWCaMUw6gaMWAptReb4ulhdN7jyc6dPfoS+MTm041g5vK+eCkS8C2YLfL+SnGa5JHpPz1JzT1YmFMjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=mmDdAd9K; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9E5CD44409;
	Thu,  6 Mar 2025 16:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1741278214;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=si5Dfu8yQaBDrNM5uyIEeL+Od5jYUbAwYxzy5yMhdw0=;
	b=mmDdAd9KBQJHq9RDUfSsMLBDxEsAFPwZTh0vwsvDGtmT6PsicV5qzmrqvtEL/9awTfzya9
	naH8YtZot6ok8fMeTtj/uyCunSescSdtOi4j3RxoL0mb4sIjKa7LSnHeKP8VXPl7pPEgSz
	g+7lxV3GRo1SH+2ecQuQ6O+TyAcWFTXTrJdj3CNoQYtYUuuCI4MaDyUkpxoFRC+ZWxgNLW
	aYic6k98UB0x2YZUK4604B94lErw6AaPCdRdz8X8lBg2Uypkakc6jfUrd7NafQEDw5vwXy
	g7kSyvsHCc7F7JGSJFnnVPQahoczrXl+i5jcodsLRZqxKGTyWt3N48vv1ZhS0Q==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH v9 0/9] misc: Support TI FPC202 dual-port controller
Date: Thu, 06 Mar 2025 17:23:21 +0100
Message-Id: <20250306-fpc202-v9-0-2779af6780f6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPrLyWcC/2XRzW7DIAwH8FepOC8TGPPhnfYe0w5AYEXakiqpo
 k1V3n1OpybRcsOI3x+Db2LMQ82jeDndxJCnOta+44KeTiKdQ/eRm9pyLUACKqlcUy6J140tMjp
 NvHZe8OHLkEv9vge9vXN9ruO1H37uuZNadv8ilPSPiEk1sikZIVnyMRG8xr6/ftbuOfVfYgmZY
 AfVBoGhQ8xYFEGA9gj1DoJZoWaoMXsbUzTR2CPEDYKWK8TlRqsikGu5XXeE5gGN3L/RMAyoKUQ
 iak04QruDamvVMmzRBY2e/9joI3QbBIkrdEurPmL0QZtU1BH6HYR1opNnGB0Rf5krMf8bxzzPv
 1QmFE4tAgAA
X-Change-ID: 20241017-fpc202-6f0b739c2078
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, 
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Kory Maincent <kory.maincent@bootlin.com>, 
 Cosmin Tanislav <demonsingur@gmail.com>, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddutdekvdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhufffkfggtgfgvfevofesthejredtredtjeenucfhrhhomheptfhomhgrihhnucfirghnthhoihhsuceorhhomhgrihhnrdhgrghnthhoihhssegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeekgeeggeehffeufeeivefffeelueeigeevjefhieduleekgeelleegudevfeekueenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopegludelvddrudeikedrtddrudefngdpmhgrihhlfhhrohhmpehrohhmrghinhdrghgrnhhtohhishessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepvdegpdhrtghpthhtoheprghnughirdhshhihthhisehkvghrnhgvlhdrohhrghdprhgtphhtthhopehluhgtrgdrtggvrhgvshholhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtohepthhhohhmrghsrdhpvghtrgiiiihonhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtoheprghrnhgusegrrhhnuggsrdguvgdprhgtphhtt
 hhopeguvghmohhnshhinhhguhhrsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqghhpihhosehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhomhgrihhnrdhgrghnthhoihhssegsohhothhlihhnrdgtohhmpdhrtghpthhtohepghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhg
X-GND-Sasl: romain.gantois@bootlin.com

Hello everyone,

This is version nine of my series which adds support for the TI FPC202
dual-port controller. This is an unusual kind of device which is used as a
low-speed signal aggregator for various types of SFP-like hardware ports.

The FPC202 exposes an I2C, or SPI (not supported in this series) control
interface, which can be used to access two downstream I2C busses, along
with a set of low-speed GPIO signals for each port. It also has I2C address
translation (ATR) features, which allow multiple I2C devices with the same
address (e.g. SFP EEPROMs at address 0x50) to be accessed from the upstream
control interface on different addresses.

I've chosen to add this driver to the misc subsystem, as it doesn't
strictly belong in either the i2c or gpio sybsystem, and as far as I know
it is the first device of its kind to be added to the kernel.

Along with the FPC202 driver itself, this series also adds support for
dynamic address translation to the i2c-atr module. This allows I2C address
translators to update their translation table on-the-fly when they receive
transactions to unmapped clients. This feature is needed by the FPC202
driver to access up to three logical I2C devices per-port, given that the
FPC202 address translation table only has two address slots.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Changes in v9:
- Fix unmet dependency for I2C_ATR
- Fix locking issue in i2c_atr_detach_addr()
- Link to v8: https://lore.kernel.org/r/20250227-fpc202-v8-0-b7994117fbe2@bootlin.com

Changes in v8:
- Changed from a "depends on I2C_ATR" to a "select I2C_ATR"
- Link to v7: https://lore.kernel.org/r/20250204-fpc202-v7-0-78b4b8a35cf1@bootlin.com

Changes in v7:
- Removed a superfluous log message
- Link to v6: https://lore.kernel.org/r/20250115-fpc202-v6-0-d47a34820753@bootlin.com

Changes in v6:
- Replaced spaces with tabs in misc Makefile
- Link to v5: https://lore.kernel.org/r/20250108-fpc202-v5-0-a439ab999d5a@bootlin.com

Changes in v5:
- Used mutex guards in ub960 and fpc202 drivers
- Changed wording of some i2c-atr logs
- Link to v4: https://lore.kernel.org/r/20241230-fpc202-v4-0-761b297dc697@bootlin.com

Changes in v4:
- Fixed unbalanced refcounting in FPC202 port probing path
- Fixed KASAN bug by setting alias_pool "shared" flag properly
- Dropped requirement for both FPC202 ports to be described in the DT
- Enabled dynamic translation by default, dropped support for non dynamic translation
- Used aliased_addrs list instead of insufficient bitmap in ub960 driver
- Added i2c_atr_destroy_c2a() function matching i2c_atr_create_c2a()
- Fixed list corruption bug in dynamic address translation
- Indented Kconfig entry with tabs instead of spaces
- Link to v3: https://lore.kernel.org/r/20241125-fpc202-v3-0-34e86bcb5b56@bootlin.com

Changes in v3:
- Described the "reg" property of downstream ports in the FPC202 bindings
- Link to v2: https://lore.kernel.org/r/20241118-fpc202-v2-0-744e4f192a2d@bootlin.com

Changes in v2:
- Renamed port nodes to match i2c adapter bindings.
- Declared atr ops struct as static const.
- Free downstream ports during FPC202 removal.
- Link to v1: https://lore.kernel.org/r/20241108-fpc202-v1-0-fe42c698bc92@bootlin.com

---
Romain Gantois (9):
      dt-bindings: misc: Describe TI FPC202 dual port controller
      media: i2c: ds90ub960: Replace aliased clients list with address list
      media: i2c: ds90ub960: Protect alias_use_mask with a mutex
      i2c: use client addresses directly in ATR interface
      i2c: move ATR alias pool to a separate struct
      i2c: rename field 'alias_list' of struct i2c_atr_chan to 'alias_pairs'
      i2c: support per-channel ATR alias pools
      i2c: Support dynamic address translation
      misc: add FPC202 dual port controller driver

 .../devicetree/bindings/misc/ti,fpc202.yaml        |  94 ++++
 MAINTAINERS                                        |   7 +
 drivers/i2c/i2c-atr.c                              | 483 ++++++++++++++-------
 drivers/media/i2c/ds90ub913.c                      |   9 +-
 drivers/media/i2c/ds90ub953.c                      |   9 +-
 drivers/media/i2c/ds90ub960.c                      |  49 ++-
 drivers/misc/Kconfig                               |  12 +
 drivers/misc/Makefile                              |   1 +
 drivers/misc/ti_fpc202.c                           | 438 +++++++++++++++++++
 include/linux/i2c-atr.h                            |  54 ++-
 10 files changed, 965 insertions(+), 191 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20241017-fpc202-6f0b739c2078

Best regards,
-- 
Romain Gantois <romain.gantois@bootlin.com>


