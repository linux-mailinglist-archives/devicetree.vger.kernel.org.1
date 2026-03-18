Return-Path: <devicetree+bounces-277268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHf7IEOxumkVawIAu9opvQ
	(envelope-from <devicetree+bounces-277268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:05:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C3D2BC998
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D931830138AA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8748D3DA5AF;
	Wed, 18 Mar 2026 14:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pupin.rs header.i=@pupin.rs header.b="JxXP7nbE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.imp.bg.ac.rs (mail.imp.bg.ac.rs [147.91.50.100])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED4A63DA5A6;
	Wed, 18 Mar 2026 14:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=147.91.50.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773842749; cv=none; b=KAn/BTAWBjhqtpulrS1Ov877t1Xg42meXG2oA9vayh34XQ+TqVXdWsumfJFz2CmMq+iIraYKC2E2JoK6m2m37ssht+Yjkv14k2Qa7dOLGwIp9ajpm7hJ+2xUsxECXeaqJLRq0TYnKXSnUS7XwHAphuiirbAo6t3n8XYudxKErq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773842749; c=relaxed/simple;
	bh=nc2q8zauiXZJVUjBOyzmWU2sDJFqFeETXgsoMoIkzlc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cKyePgQeFlDyw4YsCx6gyDJH9KU39PcWESGUZchClml0uJhtCzSLpCmXBdd+J+kZCJlcyh2ltNIOyFD7KDi57a/I8wRs2B5b22J3ZpHuLPcHtli2JSunrn8USu/sFSTqQH21DPJ00g5XAvj+iJtUsBgb90380l0p8LOsm0frgB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pupin.rs; spf=pass smtp.mailfrom=pupin.rs; dkim=pass (1024-bit key) header.d=pupin.rs header.i=@pupin.rs header.b=JxXP7nbE; arc=none smtp.client-ip=147.91.50.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pupin.rs
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pupin.rs
Received: from localhost (localhost [127.0.0.1])
	by mail.imp.bg.ac.rs (Postfix) with ESMTP id AA8F6140C272C;
	Wed, 18 Mar 2026 14:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pupin.rs; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:date:subject:subject:from:from
	:received:received; s=dkim20260301; t=1773842267; bh=nc2q8zauiXZ
	JVUjBOyzmWU2sDJFqFeETXgsoMoIkzlc=; b=JxXP7nbEPEgz0pOtkEK+fQ1gj4q
	qXjK3JfOHL5NyWq9a0Dl3VomHjiYitKMQqF8nIzOIX+NZU8SnW/b1uAYQXiMoYn5
	83eLN2af6+i/MAYUH904bGvI6PKVb8IONoHdzh4TGAtTReB8l5zPpajE4XyU/WDU
	WgUhh7x8640C2dnc=
X-Virus-Scanned: amavis at imp.bg.ac.rs
Received: from mail.imp.bg.ac.rs ([127.0.0.1])
 by localhost (mail.imp.bg.ac.rs [127.0.0.1]) (amavis, port 10024) with LMTP
 id oXVziFM00TWn; Wed, 18 Mar 2026 14:57:47 +0100 (CET)
X-Comment: SPF check N/A for local connections - client-ip=147.91.52.78; helo=phyvm-virtualbox; envelope-from=david.marinovic@pupin.rs; receiver=jic23@kernel.org 
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.imp.bg.ac.rs 6106A140C271C
Received: from phyvm-VirtualBox (unknown [147.91.52.78])
	by mail.imp.bg.ac.rs (Postfix) with ESMTPS id 6106A140C271C;
	Wed, 18 Mar 2026 14:57:47 +0100 (CET)
From: =?UTF-8?q?David=20Marinovi=C4=87?= <david.marinovic@pupin.rs>
To: jic23@kernel.org
Cc: andriy.shevchenko@intel.com,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	michael.hennerich@analog.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	David Marinovic <david.marinovic@pupin.rs>
Subject: [PATCH v2 0/3] iio: dac: ltc2632: add support for LTC2654 DAC family
Date: Wed, 18 Mar 2026 14:57:29 +0100
Message-ID: <20260318135736.91564-1-david.marinovic@pupin.rs>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <5d4fb8998d9634c3e5a8ed17b80dae07@pupin.rs>
References: <5d4fb8998d9634c3e5a8ed17b80dae07@pupin.rs>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[pupin.rs,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[pupin.rs:s=dkim20260301];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277268-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[david.marinovic@pupin.rs,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[pupin.rs:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F2C3D2BC998
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: David Marinovic <david.marinovic@pupin.rs>

Greetings!

I have mangled the first cover letter which may have caused confusion.
It's my first time submitting a kernel patch so apologies in advanced.

This is v2 of the LTC2654 DAC support patch series, addressing
review feedback from Andy Shevchenko and Krzysztof Kozlowski.

The LTC2654 is a quad-channel, 16-/12-bit DAC with internal
reference voltage and SPI interface, sharing the same 24-bit
SPI protocol as the LTC2632/2634/2636 family.

The LTC2654L-16 variant has been tested on a Phytec phyCORE-STM32MP1
board with the DAC connected via SPI1. The driver probes successfully
and all 4 channels are accessible via the IIO sysfs interface.

Changes in v2:
- Added refactor patch dropping the enum and using individual
  chip_info objects as requested by Andy Shevchenko
- DT bindings patch now comes before the driver patch
- DT bindings commit message now describes hardware not driver
- DT bindings patch tested with make dt_binding_check and
  scripts/checkpatch.pl --strict with no errors or warnings

Question for Krzysztof Kozlowski. You mentioned "Several look compatible
to me, so express it with fallback and drop unneeded entries in the driver."
Does this mean a complete refactor of the existing entries?

David Marinovic (3):
  iio: dac: ltc2632: drop enum and use individual chip_info objects
  dt-bindings: iio: dac: ltc2632: add LTC2654 compatible strings
  iio: dac: ltc2632: add support for LTC2654 DAC family

 .../bindings/iio/dac/lltc,ltc2632.yaml        |  12 +-
 drivers/iio/dac/ltc2632.c                     | 367 +++++++++---------
 2 files changed, 188 insertions(+), 191 deletions(-)

-- 
2.50.1


