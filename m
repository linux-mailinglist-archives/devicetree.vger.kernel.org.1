Return-Path: <devicetree+bounces-272162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBoXF5/mqmlgYAEAu9opvQ
	(envelope-from <devicetree+bounces-272162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:37:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F47222CAD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05A4A3144F31
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D91363C74;
	Fri,  6 Mar 2026 14:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="JvuDaMDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C398F34C9AD
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807595; cv=none; b=cO7F1n2PA5cyumRvmh9vmkxCzOaMgAsTmJWQ9iWhze1ke0nkIJhRJ7M7TdwS2c+0CVOWYiT2aE16KcUhDEMxNisZqhiAhtrkw+5nd7itTFecDt49fRDSCODXE/PgkI9QBG9nRDB2P18PCMacedQ0gZ0eWmibpEB/pKpc41DjuOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807595; c=relaxed/simple;
	bh=V5+a72ZC6NLwNlJPuRbxmZ4cdjnC0AK1Zw75NzX2EUE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ff2lwWSJEmBaLtaHR0OEtQh/2Q+YZzrTYdPprKG8HftuWsPD00+oUMaed+nAxN0Do4j8kMIBfGwM4qpd2E12EgIt88YH41LlD7rSYU55Hk6gdzrik0cRwbr26ny8gtEj5ZrgIlYugKK/ZwqkhnxKeWtgJwaKBQ9I+t4JyasIApY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=JvuDaMDY; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b94a19fdso5319057f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807591; x=1773412391; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AMFiA7z3ai1QGEzG7JWM4eDTrrfS1PgbZ2wKh/4AWAw=;
        b=JvuDaMDY4+QQYN8MpK7ZnPuHjigbI0jyrWMDZ+prCp4CrQ2FkuEIOsDwCMqUQT1QTI
         BQxMODtWcwnsefOmT6hhFvIw8vid1vHZ1F2v/go21iucry+YhK0yvCVDqLWSgcUeDDfO
         BvCqKM6O1Tv0jn8yNA1ZEmuSBfRXbekvsrtp+kurE+KFQepBeIqVEwUi1ee5Kq84Oqt2
         iad7Jmmetefa2ZeVkyP7x27F6Bsudxk9ZMJ8wWogI49oZniX4LX/2NQ74B4JgjQkHo1z
         Q2SKxgN22qFQ7A7N4cCCdF5vtRaFWmllSBLsIVcb+EAEOfOuNJG5OAH+6omP04uqdLcw
         942Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807591; x=1773412391;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMFiA7z3ai1QGEzG7JWM4eDTrrfS1PgbZ2wKh/4AWAw=;
        b=T3nvXBe9XlqKq1REqCszkuXzE9W+7nOtNGYM5CYZz3mI0z/pcQKSH53AB2b/jeCHLg
         yQPwD4azv7c/qg5mhb03EAO1QHuDM9bT+5sn/E1Pj8wFOuQSK9BmRkFYHu8Ob3W3MbaD
         pjGK1wMUY00xya8/5NpSY6Y7L7wG5GGkb6ZQe9m8K0w3kwpWgBu5YwiSDwdcIYa3YXd+
         h3REIogJxGaAD6hu0urBbyFO//TbvkQ+3nk2y0RsAG5pSPH3GAAZh/8GDvAakOrhE5gy
         oFLtu8xQJwDc6MU7Pudl7sEwRKQ405t+iyzS9uFZjXYZZB5xT7LNpQ013JoUrYAZ/kDi
         BgMw==
X-Gm-Message-State: AOJu0Yy9EaNL7PhPnviM5NKixDUx0SGpxxfw8R7Mm3Ab0/LoPRmHT5IZ
	Le61XmJv5dYqUxCDrXhliYLT/F9DPgT7G/UAHZibXGf5xiYnkXAGyKdXyRY1LmRfYyE=
X-Gm-Gg: ATEYQzywhURoHZPLBcTjGmskQKWjwrglfY7/KfokuzbjUH9V0E+cEHqDbxpQuDECI1X
	LXegwt7eJZ5vomOm6TpxQNRy7ob/qXn5X8WO0Py9KLzajY47m2onqmLTGzudefe6Bks7jt9jYkU
	i43fKrP76PanLYdJjYuDjYLKcf+SmKq+ZKI/62pnxwgu7CVEQpsDdth56sTsKGY7cQY7hc6rGHJ
	Nmo3SgD40tYc0t5GQSJc+gV4LytsXCEhhunYuA+VE7kA/74eAPR9lgCeLn3gn4wm0N6xq93ohwg
	QyCwn5CzgDhvmggbv32aS2xE39BeeLg2HWV+pTr3QlqWqXlgbjlaAjIDG9AIyqKqBw0os87JVs8
	ehMgzr2kq3j0u9IZXiJy5smse9Xq9f81LK8y4cyhOIf3SKs87a1asr2e6De013tPD4ucI7yz9Dq
	KzSUXp5/5C/t4N6Mu3rL5r0kIyakrkt57n7uZRXhxhjb4YBLmUZrL9MQj1echvU3n13XRGk6rYV
	c4wNQ==
X-Received: by 2002:a05:6000:144e:b0:439:d8cc:3628 with SMTP id ffacd0b85a97d-439da89d71bmr3657783f8f.49.1772807591084;
        Fri, 06 Mar 2026 06:33:11 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:10 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 00/11] Add support for the TI BQ25792 battery charger
Date: Fri, 06 Mar 2026 18:33:00 +0400
Message-Id: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJzlqmkC/2XMQQ7CIBCF4as0sxYzQEF05T1MF7Wd2kkMRWiIp
 uHuYrcu/5eXb4NEkSnBpdkgUubEi6+hDg0Mc+8fJHisDQqVRY1a3F/KnM5KoNSqH5x1rR2hvkO
 kid+7dOtqz5zWJX52OMvf+m9kKVCQJUOIWrfGXacnh0Dx6GmFrpTyBbO2JJegAAAA
X-Change-ID: 20260303-bq25792-0132ac86846d
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2808; i=alchark@flipper.net;
 h=from:subject:message-id; bh=V5+a72ZC6NLwNlJPuRbxmZ4cdjnC0AK1Zw75NzX2EUE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuerr4XrRZXd4t/c4DBdMKF78/KlCg+ElWsUU1u6Aq7
 8AukY57HRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEz1ui8M/+M2HKnQ/5y6kGfH8i3qEkckg/97Pd1rMe+N7AmHWiuWLWKMDIeM1Et
 3vs6+cGyC0MtQwycazkq2a3uZp9bsKTm1zojHgBsA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: D0F47222CAD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272162-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Action: no action

This adds support for the TI BQ25792 battery charger, which is similar in
overall logic to the BQ25703A, but has a different register layout and
slightly different lower-level programming logic.

The series is organized as follows:
- Patch 1 adds the new variant to the existing DT binding, including the
  changes in electrical characteristics
- Patches 2-4 are minor cleanups to the existing BQ25703A OTG regulator
  driver, slimming down the code and making it more reusable for the new
  BQ25792 variant
- Patch 5 is a logical fix to the BQ25703A clamping logic for VSYSMIN
  (this is a standalone fix which can be applied independently and may be
  backported to stable)
- Patches 6-8 are slight refactoring of the existing BQ25703A charger
  driver to make it more reusable for the new BQ25792 variant
- Patch 9 adds platform data to distinguish between the two variants in
  the parent MFD driver, and binds it to the new compatible string
- Patches 10-11 add variant-specific code to support the new BQ25792
  variant in the regulator part and the charger part respectively,
  selected by the platform data added in patch 9

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v2:
- Fix an error in DT schema (thanks Rob's bot)
- Ensure the broadest constraints for all variants remain in the common
  part of the schema, per writing-schema doc (thanks Krzysztof)
- Link to v1: https://lore.kernel.org/r/20260303-bq25792-v1-0-e6e5e0033458@flipper.net

---
Alexey Charkov (11):
      dt-bindings: mfd: ti,bq25703a: Expand to include BQ25792
      regulator: bq257xx: Remove reference to the parent MFD's dev
      regulator: bq257xx: Drop the regulator_dev from the driver data
      regulator: bq257xx: Make OTG enable GPIO really optional
      power: supply: bq257xx: Fix VSYSMIN clamping logic
      power: supply: bq257xx: Make the default current limit a per-chip attribute
      power: supply: bq257xx: Consistently use indirect get/set helpers
      power: supply: bq257xx: Add fields for 'charging' and 'overvoltage' states
      mfd: bq257xx: Add BQ25792 support
      regulator: bq257xx: Add support for BQ25792
      power: supply: bq257xx: Add support for BQ25792

 .../devicetree/bindings/mfd/ti,bq25703a.yaml       |  73 ++-
 drivers/mfd/bq257xx.c                              |  60 ++-
 drivers/power/supply/bq257xx_charger.c             | 534 ++++++++++++++++++++-
 drivers/regulator/bq257xx-regulator.c              | 123 ++++-
 include/linux/mfd/bq257xx.h                        | 415 ++++++++++++++++
 5 files changed, 1164 insertions(+), 41 deletions(-)
---
base-commit: d517cb8cea012f43b069617fc8179b45404f8018
change-id: 20260303-bq25792-0132ac86846d

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


