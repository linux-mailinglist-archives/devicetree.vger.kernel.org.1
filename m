Return-Path: <devicetree+bounces-271383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MhqFvAtqWlN2wAAu9opvQ
	(envelope-from <devicetree+bounces-271383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:17:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EAA20C771
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:17:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8229E305E8EE
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 07:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FBA932F75B;
	Thu,  5 Mar 2026 07:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f6otFqRK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BFE32AAC6
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 07:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772694776; cv=none; b=DxAG5enetusKlL2bojhUvkzp0Bp5r6leV9cN5K7pfN3uTPdWe7PFuqlpiNs1SRi9JZFkuvmE6mTZdI85engKY44NTpt0rPfKtvRczGCm4ysNjYUtm5gmgNIWYKtUoIGOyBDwMLqrEtZSeHGA3fZ5JNQW/C4Bq5csuHJNss/ynyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772694776; c=relaxed/simple;
	bh=HwsQEiu17VuA3xIRJOPgmGo8ZEG64SFKUPK3RyCa3Tc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fiYfMQO+H9LETddo0ilvAn2zHF2OHvjfLxRNYgEzXM/FMwmYnMnrspPqC0WS8gLJ24EvspJPrCNgVa81Zf5loHBebpgF57iPGQ9obKjkBvTfGyDmEqMWRBwlfiDbRc6TdTqRkYSB7SDOMUiAvvZFcE8GMK+nJ06cgtVLZVxC/js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f6otFqRK; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso2626932a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 23:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772694774; x=1773299574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N5f4RqYhIr8SlZiekPT6yrIR6+52GHg/ZPht85pzRuw=;
        b=f6otFqRKsweSCbQ94nmpryk5FNBOaJaTGO7gQ8DfK+Utcg6oB5RvJ798xZ2Vk4MeBv
         eOQoluuumg+fBNsxdZjtEv8pkrE9A+ZlOSB6skVx4zM4awINzgg/9YQfv8H8Na2fHO0f
         W4JrD/9phNVERt/FA8/5ZdKL5vzzOn00S3bBnxDFHy4Q+8WCeCmdt284wPVO0f9Qvz8P
         c27qmZ9NLV5AqJYtKaPuyYklg3LWVGolWLoNSZmbcOT/qQslbA4uT63TIHclNO8daxx4
         lJxt1G384/P7+SGoneGqVFT4E14sJg7Hlf8ZSC33o1q0QpL2XHpTEcFaQsYI+giJMuG/
         DXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772694774; x=1773299574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N5f4RqYhIr8SlZiekPT6yrIR6+52GHg/ZPht85pzRuw=;
        b=aAUulJa6rceWsV+fABq+qwtazGG4Snus5MCatK1fzAJppJ153ngR8nWBMWT1eX3x+R
         QTHY3elgSymVOR2fLBvmZJlLwiFlmPwDZw6BxdhY7Y/aCH0UcUqWBLSQk7qUWYHdqFjt
         m77Hr1o2FKGtFwqWSyVe9CtRQIef6ccLkAduh69GYT+6Jqao7oCV0nUQpFFcJY9ie7bc
         PXcETDPXm+/bZxaV4frBxW6SkfAPWANAZBoxdLZRp4mY7DQKAV8krghzRGDeNWCevuu3
         1eTrBEZykaHym++4OjRodUueGi7ho4tre+B55YK2DYS1AeHfLZFD27VfDp2ZG4r99QEW
         RT8g==
X-Forwarded-Encrypted: i=1; AJvYcCXsowWIp6QoWCCMKdk5+rQy8Fa4o0hCQ2qHw/i5NKd14kkpNe8A4eZhtk8Db618fJlpH8oX6dbo6MSH@vger.kernel.org
X-Gm-Message-State: AOJu0Yznyb5HJz56y5aStNS6043Abn0mLcQOeO+1tOg1B9Sv4rVAOnVc
	K5ynKi0f3SjvCIGL123sIWXxuz3JYoAl4jSxpV91gqddSphVr1jqGcLW
X-Gm-Gg: ATEYQzyJXlrnwxg3IzUQaju0IxvlsADUgEHJAr/Wqqri3Khg7xuLKf81ldcgKX26D29
	cpuAOy09q2Sz+dny1tf2L7vQjCZ4Ma9sif1oZtyifTiKWJPyTNtjFLTp6J7ZP+iquPyGcUNEiot
	ya5+TkbvztDtS11yD1coyKce1U/7uCsc8WAhqbYXMgZY57EreOXEg/vgMgQyRwVTiT/6C4fJkiD
	Zvu/tKNv6vsPvdHke9qb4nGlbinHFas7l19KlK+RakZr8RDcgUlDk+1RYjrGWnjqHerdQSTsHrF
	9lIEmzxANtbWb0efeUPPlWxJRIrfE2c3rTyysi5MDjec9c24W96s/4lCsBjTvbq+jSPHAXxp29o
	wITBD/b3h35AVbNMmiqBm2fEXTHaUJPb0r40pZVsQPlITS7hFu5RwUlOvDwZ8uQeaqK5qiXqbTg
	ptH366M/L1DuRNC1G8ImhmLPwgtVdlbwqb5wEXsJeNh3spIA==
X-Received: by 2002:a17:90b:2252:b0:354:999f:1b22 with SMTP id 98e67ed59e1d1-359a6a7cacamr4099055a91.32.1772694774083;
        Wed, 04 Mar 2026 23:12:54 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2d6ee67sm992920a91.14.2026.03.04.23.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 23:12:53 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id B2CB14163B63;
	Thu,  5 Mar 2026 15:12:50 +0800 (CST)
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
Subject: [PATCH v8 0/3] mtd: spi-nand: Add support for randomizer feature
Date: Thu,  5 Mar 2026 15:10:39 +0800
Message-Id: <20260305071042.1193522-1-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 97EAA20C771
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-271383-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
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

v8:
* dt-bindings: spi-nand: macronix: Remove the chip-specific Application
  Note link from the commit message to keep the binding generic.
* mtd: spi-nand: macronix: Update the broken Application Note link and
  move it here from the dt-binding patch per Miquel's suggestion.

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


