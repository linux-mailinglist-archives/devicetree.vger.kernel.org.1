Return-Path: <devicetree+bounces-268103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OxDJ51bnmlrUwQAu9opvQ
	(envelope-from <devicetree+bounces-268103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 03:17:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1947190CA3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 03:17:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E86F31632CF
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9A52652B7;
	Wed, 25 Feb 2026 01:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Oglb09DA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3282550D7
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771984746; cv=none; b=O13kmJA0fxweBaSzj/4J4yS52jzE32KhQx9UITEhG4DeXKgAKbl/8+O23xSRFAtqrqvf+ZNwF8iQsdSeMnWrSjwZ6YsFVcTAzqSWM87FslIe6r0IHw7jFrfkCzd1Jwif/iwHjP/+pJUd56exrtUH9ytcac3C3pv+w+bUpEi3h0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771984746; c=relaxed/simple;
	bh=W2KKtQ6U1y1uHnGI/uA+jFy7/QOEsOMRiGUqVPJW/vs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rM2fY5zBlG7XVoMOjUo9gfQoHNUPA6sDzQVJcrMwCDp7qhAYu2IrenTlGmj4HGYay5NeAwOH6+CHgP1aqPzlGF4/Sl6P26j07NHJeP9JtMGcFyxWEi99yINCFtA4+JucIkqSxXpxvfXUWR45HaX0mEdQruQagNqs1TqRx+WnaUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oglb09DA; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ad21f437eeso3156985ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771984745; x=1772589545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sFSQgKMpbT4Jja0uO7WjQXE+RhpLS+aEelpO+yxQLtk=;
        b=Oglb09DAEuvCJ/2h3W8nq0JVuXbX8nsUipifd9x4a7ZuaKPK42/uadnP3eU2PM240S
         kPWSRjP9sTzuLIGYgHCJyrLKGr4oQ71B8Di+KporcBm8TTKhDt8axAiuPHbZ+iGi4puX
         lpPbLYk4Ihl/TwtXaFYeuh2tRQ67DUI4xDFdkhXcxyoUtNsD6yy3BKbxXaX+/oLxbS2l
         dcEB1dmyJrCgzy8j93YfnN6kXBzdtQ0RMaYUxDiOwbJCVRHEvO6+JCKiAb+5gWSaRnyZ
         BWedLXDUiR4HdmyMtRh1+xhx7eQ/WZqogBzBKX4CDMlLv4yZCnf4G5NsLP8UTxXG3FVX
         vUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771984745; x=1772589545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFSQgKMpbT4Jja0uO7WjQXE+RhpLS+aEelpO+yxQLtk=;
        b=sjsQeNj6FSK8wIX1g5Z0Uem0nMp9vpEX43Rjj+EReeNfWBgSXohy6IomhnfOXtjLQm
         h1d8Z4dBiZgvt7nkejFJ8kTFXFI3u9y8LcaTbmjQoXPwPYVNjDR3pceEieX8AoQlXvk/
         ODNF8Q5nyFytLY8WSfN6EJUdnYSiE0FLyX5CagupHtSGCu55nS4nXarKjKLFOiNxY3yC
         HjCha05+VPoSflbR9D54DSrjsI88R6vw0x0ZTJYysOtJTTFiM3/GDKyR+iO6SIi4VqjI
         CrKdS7OZ71BSBhehullZKNbfvvunfWEBigl6CLFqY1JOjUG+RUHAqetO7vp2OBIF0Np4
         qiRA==
X-Forwarded-Encrypted: i=1; AJvYcCXt3FKMFx4ZIO5Cj4N4FwrdcRi1qZLKqb6LIVZH2jFkv8XTvcuVFaejLZdD1Uu7NORr/5hByaOeb0g6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7ZggOrEdFG8PDCAeYX7ztchbC44MBQwaKr7lmkgsrpS1rwDzi
	JbwnImVuht/rR2OmtGBtJhrurUE523yIMx93rUgpyF9zRwohLX7ncXNH
X-Gm-Gg: ATEYQzyT8N1iYOXLuGWvfrNFkmd6vSEGX1TtuCYlrNzWAZizkPXcDWqfifvvh1uGlmv
	mI4ilazPMHlbapLuhwfMZorE+6EFUy9BhjC+lPc0utt8qeOF3ZIzk8vGOxywqZqEMnmRHl6Sjzp
	fuUUx6y3G06ufNqPNcnutjBojFrhbtttzsoaxb4MiPxKIaGfxrBPhnnA8YbYwgFI6kZA7maOdvU
	32n7InqKYAOsQXJhkwcTexq0OeMw/X6NI3CzTQb45COMe36jrmwEAXK1tVkOOB3AVAP/TeMkPTN
	axqwruV4PiU26Jz5G6fJA4vP6vM/hfrsrN+fh//pVK3bGNW89lZHFPyj3U2swieQtX2yi7GGL8S
	HMcM2A2iusRkenWci7FySjIySa6Ap4Kxz9pcFbcFJZQtb8WPwFhETQfXDUJQB6qQv0U2AwVcz1O
	sUVwBQtIZjF3Fz3Z3CpKpOingJNjJtB+H82GX/dBbB1Pg2GA==
X-Received: by 2002:a17:903:46c6:b0:2aa:e9f0:146c with SMTP id d9443c01a7336-2adbde10d4amr18311745ad.29.1771984744657;
        Tue, 24 Feb 2026 17:59:04 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad75027affsm114744415ad.66.2026.02.24.17.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 17:59:04 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id 7B0A84136071;
	Wed, 25 Feb 2026 09:59:02 +0800 (CST)
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
Subject: [PATCH v7 0/3] mtd: spi-nand: Add support for randomizer feature
Date: Wed, 25 Feb 2026 09:57:02 +0800
Message-Id: <20260225015705.1113199-1-linchengming884@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-268103-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: F1947190CA3
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

v7:
* Directly return the result in macronix_set_randomizer()

v6:
* Added mutual-exclusive constraints using not with required for
  nand-randomizer-enable and nand-randomizer-disable properties based
  on Krzysztof's feedback.
* Simplified the return path in macronix_set_randomizer() to directly
  return ret; and dropped unrelated formatting changes.

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

 .../devicetree/bindings/mtd/nand-chip.yaml    | 18 +++++++++
 drivers/mtd/nand/spi/core.c                   | 27 +++++++++++++
 drivers/mtd/nand/spi/macronix.c               | 38 ++++++++++++++-----
 include/linux/mtd/spinand.h                   |  9 +++++
 4 files changed, 82 insertions(+), 10 deletions(-)

-- 
2.25.1


