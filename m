Return-Path: <devicetree+bounces-267235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGzRK8vxm2kI+AMAu9opvQ
	(envelope-from <devicetree+bounces-267235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:20:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF5172108
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17E873027077
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DDCA3469FC;
	Mon, 23 Feb 2026 06:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RWjIybV2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C5A345734
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771827581; cv=none; b=icACxn84lZYNi3d9quu6p8ZRL8CofL+rN9nL3HSuUkgl4vhSSijna/tmy1gPhkzp8WAXCbtsKVg2LR5w6oweR6f5z2GuuQDx05E4JSaY5xzITq7GoCZMCKDq+6FTtSe5fhjdBh4g+GMcHimb2OvsoeFUMtx93sykGx+5i31z9+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771827581; c=relaxed/simple;
	bh=jjRh3yXZpGz8SjMVYKgRmafAfSReX4s1S+W76Y2xJzA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kCJqLoLSFswPDnNiMYn2xdCcOFU9hNxr03IhNVNtcqtQqD5TCJsC36xWRoZTHvzAE9v5CYbioHnDyUrIWlO1IDLQ91O/ny4fzCyiOgvu9ZAaf39UCqiPFi0+lYTg/mymCEOstlSC8PZuOb5lvXg4viREy9L+Mi4mG/Sqzkn4CkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RWjIybV2; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-354c6619a07so1523643a91.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771827579; x=1772432379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tUDuyjYYyo0et9UR9kj7eT6N1xShJC+WOFmEXeoTNp4=;
        b=RWjIybV2XvfDiBwBhqhPlXx/fjzlf78waBNyytgl2W0wZqS/Aw9gOb53YGQhj6ivzK
         LFxl9du0Yi2GOxxoy/44mqsgq332iFvScQuvhuI9fo3rtwH7zrBKHi3bubqXkfZ5AXOq
         x1toA2SMlqCKw6hAXMQSxg99I5N9rE4RHrecFWjrZBKV4M47/ENBZ27w8bV8R5Cm2FJU
         UjgRKTQFFVQPdsSDxylqEWoDrGr3gVIbhnfGDXLJQnXLi6A4gFXyfGij679DdulTj1nl
         DLBuTfSqWwOb7pQpY7Y+Y1jUHpN+asvHH1HjMwzUH4TAWjqpDnMFDgqGfFEkyrc5rSrn
         YKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771827579; x=1772432379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUDuyjYYyo0et9UR9kj7eT6N1xShJC+WOFmEXeoTNp4=;
        b=BSZ1znRdHAPzTbRtF4Db+T7FPyzBSqPjtENBU70oGLkm9oAv1izYpFvfVHHP57gxkB
         ycNIN3QtM+D5ZCxjCv9wmY+rFYQx8GXeLwL2VxV3yOMjYRqyh3DlF5HwtMkhiCoS5bqT
         TciHrQj9yen65ly7an7uYGp/dVa6VoWTipNuvwOA/mka3jKuJFpj4EPkexKOT/xdnp3/
         nzHRy2L/74aZ94gEQTbsfacTNmdi1PBGY/hFaI+HxfNmuYP+L0ndWN7KEwJLiS+SUHi8
         eOzKEXarPHIR8g8a98AKQfEV6VgdgHE8Y87yry+JI8TTDjP1rOYlYm2zm7YC9YI9YKng
         pxvw==
X-Forwarded-Encrypted: i=1; AJvYcCUhtdegvCqrymHORuXO4qLs+pC+uf6CiAcrQhCtfK47M1/3/92mfq4PUTen7IsQgE9SzvXmeIv7tlmQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5O8+yd6zY7lcdyfyS6NoT4TcnECZl+5ydcCiizX1p5kgYPu+Q
	mz9tJ42y0Mzi9+8gEPt2f0ovuo4t/w/ypqLmmcTACxMhd0GpmOsdV81R
X-Gm-Gg: ATEYQzwHNyzmLV4EUvJare+wE6NJq3ULzG0Vrjcyk8UVr6NJzPJkHLWnRLFmVFtB1CF
	MfGYtmgjfRp2CHJR4W3NBPMhrxBxnkyJmUXSmOr/hS9IIZdFSDm4xdik3cLNTtLGx1C0ezh/qaz
	Ry/BV0MioC1eTces6fEBRohEOtt2i4KU+2x/WbKy/8bf1E5eLhH6smh7tQBOpfDV0dRd6Y6aizj
	uE80jtwwLciDa9PDodVwFLINn0fxpDxjtMfOLByRvz3jCzWK6AovHOUcKC+Ej9p5GlQ69kBIwJo
	6+9oz+KoLeVeVSiehb5SYaWisYKzeoo9XpcehuGh97dmdKRHZv8ShsPgZKWd1J0qsDOBte04VsR
	rKst2agkuIeDjJoiz8xJhIc3t81t8Adyax/VA+DZW5dSDP6MXhiGZAWw6L8sCJKMogI5hsGnqM4
	lmlgzV+kRp2q/d+BJ4sGCFP19pGrYgtevrmqqt3xZbG+nECA==
X-Received: by 2002:a17:90b:37ce:b0:34a:47d0:9a82 with SMTP id 98e67ed59e1d1-358ae8c12b7mr6448583a91.23.1771827579357;
        Sun, 22 Feb 2026 22:19:39 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a2af412bsm5694769a91.6.2026.02.22.22.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:19:38 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id C0F0F4136071;
	Mon, 23 Feb 2026 14:19:36 +0800 (CST)
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
Subject: [PATCH v6 0/3] mtd: spi-nand: Add support for randomizer feature
Date: Mon, 23 Feb 2026 14:17:03 +0800
Message-Id: <20260223061706.1027986-1-linchengming884@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-267235-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mxic.com.tw:email]
X-Rspamd-Queue-Id: 50BF5172108
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

 .../devicetree/bindings/mtd/nand-chip.yaml    | 18 ++++++++
 drivers/mtd/nand/spi/core.c                   | 27 ++++++++++++
 drivers/mtd/nand/spi/macronix.c               | 42 ++++++++++++++-----
 include/linux/mtd/spinand.h                   |  9 ++++
 4 files changed, 86 insertions(+), 10 deletions(-)

-- 
2.25.1


