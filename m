Return-Path: <devicetree+bounces-264715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNzYG/NUjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B82123281
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82A60301829E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20AB4366DC3;
	Wed, 11 Feb 2026 10:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LWzuU0Br"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5CF3559EC
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804441; cv=none; b=EGG7G738k7taeANY2ioVwFEPMWPWPIX0YbqG1AMRk+rrCn6lEA1dFpsuHOaQbGjaBtCNjr3dbb7QPgMzV73D20IcKRTjH2HXYSn0mXJZ19nEEmIQ4jFjKEIXzS9vWtWdTTd1juije0/Cmq9wht+cz5xYFXQhpan5RPCb1WYGAkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804441; c=relaxed/simple;
	bh=5l89L1ul8yQIPOLJ2ih74T807RtJjfRQ3fbLN4OtxQQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Gxq9DUbnY8BlUg9D3tJVf/7MhNwtRSlzyzBUh+1hg8mf3vfiFaugTOHk8YyP21ahoCOKewjNfktelcFD4xICAhDQjLhmXIY3lV5I/T/sz+Dwa0Zcc+7h532J1+UIDn8A+YfdnDveca1znWmD06u+sBFtQom+ZzUFba46F+GyDao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LWzuU0Br; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a7bced39cfso18895135ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770804439; x=1771409239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KciIN1xTZfLpfJqvrrNWWVt3Y9r9TXbxsa4mxWX9G/c=;
        b=LWzuU0BrphaI/OEHY/vjKwa7PX5GTIl4mCnRD1ALEkIiIyR6ErWmXFculZ7Zjq5IFY
         9wRedYNMwOYwLWzUIx2ULUfmz2nJNHGzssx4RyVigacF75fnr0b6KmICqe1d6AjF/zox
         zUKI9e/ZJQyQejPQ1i33LEdlzf2gNETU2XM+OKf+y4HMC3aBF+ziZRvR2RjbdxT93Le2
         II9j8f5Wo2cu4i6NtxFqqfRC+oEGV6/1h/z+LEsBA6QsizBVhnc4BIcdxdeYf2KzaQIM
         OfhYDV+GK226oc2N1fUuNFEosCN9JhcGNMzijkZT+C0UY4jwe4BhO+PPyiNrvdrvxkBH
         hcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804439; x=1771409239;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KciIN1xTZfLpfJqvrrNWWVt3Y9r9TXbxsa4mxWX9G/c=;
        b=hl6/N0fcwbDt5VJwdiKyB/Yvo9NmmvSdMN782QAlFhjOSlGjhwNoxdWdpus5XLnX29
         cRixt1excGy4I/4gmiOyaGW6OFGaEiyKC4qa52DOShmZT/W2jDYjRL7Wol5J2BX3ixVC
         BxWZM8Wppq7dlsEw47VpdRCzCiQzvO2So9SvM+heO952A9B40R5nSjcrCwlhI0yfADpp
         E9yJ6lMdnxWUbt+4MBjEd/CwDyMaeYRAdqirIkDl/1KUUFtU4HFTNf8MWUXIXyawoLil
         FfGoBGAKFYijsbuWmgeC1OR9/SKvV6sKG6LsIZuGfI/idfzC2l4PehI1M0j/fw/YtYBS
         F16g==
X-Forwarded-Encrypted: i=1; AJvYcCUluwha92YDqNczwP6gIr/E8zOWovLN4h/DcsNA2y1zrnZDun8HsdGu4x1JqSOllrq5YKGUBMPhvcEM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9mgGHvVqva8Y55KNhZmU3EOXzz6DgTDV2eWozPlU7MwGkxcHR
	zY4qVJ68tEK4vr07o7Y9wK6smjjsV26byo+Q4gwIrNV9vyyh7UBsxK3a
X-Gm-Gg: AZuq6aIvLBgyant4R5yZWHOvIDQsKf05jQUzlJbtA/ObbzZIQFpIVx79fSIgs7sdpGt
	vC4DCicpksrNMkFdgYjHULnKrIh5Px5cmKIM14zbxXeVVQ0/cKriPd1/fbTPzjNl9F7b0iASeqe
	r7Fe/QtZYynmGAf2T6HydeeVO+jSXZsfP/xgXwX7y2J7cdbpW6/7ecCEll+UPyrHpJ282VBgmiU
	L2fMw7E7DIR6q5lAb/HtBH4NjVWEIjISBdl33IW1a4cAXzFLHVWw3wzmK7j67Np8OQ1IO2wI2mn
	WpvBGwDhFH3KCWBgPgHBO1kDgq/5rCbwsuEhVJqDDbV/eZA/coz9Ia2O6P/hIt9DklyOKAq0liX
	ZDXXyKPn9Y25YFi5skykHh+Tp1eoBIiSXQ/Ajd6l5ypBnjSviPd47IHdKBm+abAzHlBUkrk/dEa
	zf38+NDivayPFa6NoF1/ZMzQPdFfDJxQQj6HP0b1S08krLAA==
X-Received: by 2002:a17:902:d588:b0:295:96bc:8699 with SMTP id d9443c01a7336-2a9516c84b4mr160482535ad.20.1770804439178;
        Wed, 11 Feb 2026 02:07:19 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2997bc2fsm18729385ad.76.2026.02.11.02.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:07:18 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id E128A4136071;
	Wed, 11 Feb 2026 18:07:16 +0800 (CST)
From: Cheng Ming Lin <linchengming884@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Pablo Martin-Gomez <pmartin-gomez@freebox.fr>,
	Tianling Shen <cnsztl@gmail.com>,
	Pratyush Yadav <pratyush@kernel.org>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alvinzhou@mxic.com.tw,
	Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: [PATCH v5 0/3] mtd: spi-nand: Add support for randomizer feature
Date: Wed, 11 Feb 2026 18:05:50 +0800
Message-Id: <20260211100553.907585-1-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-264715-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C6B82123281
X-Rspamd-Action: no action

From: Cheng Ming Lin <chengminglin@mxic.com.tw>

This patch series introduces randomizer support for SPI NAND devices.

- Patch 1: add the nand-randomizer-enable and nand-randomizer-disable
           boolean properties to the generic nand-chip.yaml bindings.
- Patch 2: add the initialization logic and the set_randomizer callback
           to the core framework. The core will now parse the device tree
           properties and enable or disable the randomizer accordingly
           during spinand_init.
- Patch 3: implement the set_randomizer callback specifically for Macronix
           chips (MX35LF/UF series) to handle the vendor-specific register
           operations.

v5:
* Promoted the randomizer configuration to use generic NAND properties
  (nand-randomizer-enable and nand-randomizer-disable) instead of
  vendor-specific bindings.
* Refactored the initialization architecture in core.c. The core framework
  is now responsible for parsing the device tree properties and deciding
  whether to enable or disable the randomizer.

v4:
* Fix a build error in spinand_randomizer_init() where a value was
  returned from a void function. (Reported by kernel test robot)
* Update the return type to int.

v3:
* Revert the device tree property to the vendor-specific
  "mxic,randomizer-enable" to strictly follow vendor-specific bindings.

* Update the 'set_randomizer' callback signature to accept a boolean
  'enable' argument, allowing the feature to be explicitly enabled or
  disabled.

* Switch the implementation to use the standard SET_FEATURE command
  to modify the Configuration Register (0x10), replacing the previous
  special program command method.

v2:
* Create a global NAND DT property
Cheng Ming Lin (3):
  dt-bindings: mtd: spinand: Add randomizer enable/disable properties
  mtd: spi-nand: Add support for randomizer
  mtd: spi-nand: macronix: Enable randomizer support

 .../devicetree/bindings/mtd/nand-chip.yaml    |  8 ++++
 drivers/mtd/nand/spi/core.c                   | 27 +++++++++++
 drivers/mtd/nand/spi/macronix.c               | 46 ++++++++++++++-----
 include/linux/mtd/spinand.h                   |  9 ++++
 4 files changed, 79 insertions(+), 11 deletions(-)

-- 
2.25.1


