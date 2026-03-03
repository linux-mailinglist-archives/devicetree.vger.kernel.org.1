Return-Path: <devicetree+bounces-270595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UO2rDMoAp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:39:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D18B51F2CE5
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E371310968B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A1748AE3D;
	Tue,  3 Mar 2026 15:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="hxuIy/qv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F7B3750DD
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551981; cv=none; b=K2D2BiYpoaCO5LZqHlOFEuaLQ1ZB4oN/yuEJvkuQDP2rFPOYIYNzj81eunSldaDbSMlwPmO5gC7Jn7Z1xFQrVXeetOtUceyEinCO9OCUyrjabUlugT43nF7KbtQ4/foca23luH9loFi+ztjiVaqDew8YLtKsgvrhtJeWXAASQMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551981; c=relaxed/simple;
	bh=qiMt4AKxRW6uzIHaOc4XWX09wGEBsrHpnjGhmEeRg3U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VvI2C2/1rKVFNh9DPO69k2DbCxxmcfTouKUeo5ugKYdDrAIKfaXqR0mpNAGf6Az4xO3oBRSdHDDExPz+U8BSKfTQlYGGBidgIJF+tuPkyVUJj/Hr7B0vzYyaeduQfoWeXn78cCrh9XaBCxWzWEME2RFUcq91VfsQdhaA4fqgVwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=hxuIy/qv; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso62037465e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772551978; x=1773156778; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lR9itk2uXqg3duC81sXm2F1W0Z/G0NBQ0f28RHZQOcc=;
        b=hxuIy/qvmAKWUHq4TrmjnNtynVs8ldsC1Vw2u0WBoZD0J46NJnuuj42aqSuH/dHhDd
         8uogG7FO9WXA+HrcLOgSGYAFh0DcKGaB/lheN0i7glbpmBESLAC3VQkoZpg7xTdfk0Fz
         1UqmMBXzeiR5IHKAWwSWQfedIUKbvJh2s7DU83tB0mcmlv803P7TtqXIpc4pRpzsymLJ
         yqe6v9HhTK6rE4Kc9ScK3Cx4Go0pxZPBJcVD/cobnRRgK+2SFNpwbe6jMXcnTa34+NQQ
         fWGm0TK6RaZ8JFK7W0QCwKa6wcBTGAaGQWSOuqgdFEKdU1xFgGldHI5Rqe+gNhEwB+wb
         LP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551978; x=1773156778;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lR9itk2uXqg3duC81sXm2F1W0Z/G0NBQ0f28RHZQOcc=;
        b=LnyN2e1y+ca22yhExtyoq6TWIB2ljFPH2TmEIdRMg1vfWPfYKv7oAKrOFvaiI4T1cJ
         1U6QXyfqMEyLr1nVG9Q5G+QaQ8t1PXRb1tc2s317lER8nmT6Au/MyaFl9hmgohEWL460
         2g5/kl48j6tv0NEqkYZvRfOQqH+BE2o3H9nwELXXGmTxeawb/LHNJeI7yqrJwUxBsVGi
         +NkULqjJMcHs4uLymxaxdSJuCcWA9wIaQgdJJKyyVkzdJ797HCcOybV1gsw6Pcdj+Nlc
         7qI9kvCD8G1R4WzMKyB1LAMQvKnpn/Ds1IbprrHGwQ7ThiFHhEbGJN6aMcBRV/S5bVj9
         2xgA==
X-Gm-Message-State: AOJu0YxysT2Yq+KvldzCe943bS/+/fQH1NAZwps3yMg/RdsPn0e3T5lB
	LxENfE+ez7gKAotNH1JTTqlIfXpswEDfS6oiF0VbLoaW4BgWhBZ576uMRBAIJJdFPXM=
X-Gm-Gg: ATEYQzwUw6MVzW9uslxgmsGYeyqvKrj7kCAlcaZ92FGmW20BLvovbky7Ajk1R32jMBH
	to4E/XYwl31mzhtSq+bsQjceLg7BFVjRWl3Z1Fs1JDCxqf4aeUczUq9XUPtnti3KGTtJacgTNsb
	RnHzOGzkHy/dsS671KFEt1NmhoJuSbE/jOSe1wt/NHncEI+1SUqUXg8ac3WJGnDaFszrAMzuKCK
	6cmF9tyR5nJ0jv9WLvm+WXq2c4TBUGrI0P/3f2W/42Vl3XPL+5Ys1uAJzolZv2M8XXpyR3WKeE2
	9joA37ftGXmBIj2LwtJFQ+ERM3rAnO1EtWdNshM5qTVVgQRLEyGRwvcLm17PGqQpu2T634wWtPZ
	jfGhbR6wa2y4T8KxmG18E8M+pVAA00d/n2FCNZLLbUcDI6dYIO4PIBqgI/RK1e7X7AqAVnDlOHs
	JrpMzoozwbW9oCC+s4WTtiwB+OhEwwCYPXYsBRoZfOPbiV3rrQ5IdEv8cdnRGYH2dSCuug00+Te
	tY=
X-Received: by 2002:a05:600c:4e8e:b0:483:a922:2e8d with SMTP id 5b1f17b1804b1-483c9b97198mr270143195e9.4.1772551977423;
        Tue, 03 Mar 2026 07:32:57 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b55d15besm19799447f8f.30.2026.03.03.07.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:32:57 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 00/11] Add support for the TI BQ25792 battery charger
Date: Tue, 03 Mar 2026 19:32:45 +0400
Message-Id: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB3/pmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwNj3aRCI1NzSyNdA0Njo8RkCzMLE7MUJaDqgqLUtMwKsEnRsbW1ADj
 AvYlZAAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2511; i=alchark@flipper.net;
 h=from:subject:message-id; bh=qiMt4AKxRW6uzIHaOc4XWX09wGEBsrHpnjGhmEeRg3U=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQu+6/mWnhU/Y7Xn+AVIvuyS2cvyzFoy4q7t2r2Dr1jP
 1ZfkE9N75jIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCq/x1lZJiXfbXzS8ZWe/Oy+HsGD7bqn6qwP/6/qUetd0/hzI1v3VUY/ocECfW
 8W/HavEx1IkOk/fcPDnmctWE/Kg2zPJ1/W12dxwgA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: D18B51F2CE5
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
	TAGGED_FROM(0.00)[bounces-270595-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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

 .../devicetree/bindings/mfd/ti,bq25703a.yaml       |  79 ++-
 drivers/mfd/bq257xx.c                              |  60 ++-
 drivers/power/supply/bq257xx_charger.c             | 534 ++++++++++++++++++++-
 drivers/regulator/bq257xx-regulator.c              | 123 ++++-
 include/linux/mfd/bq257xx.h                        | 415 ++++++++++++++++
 5 files changed, 1163 insertions(+), 48 deletions(-)
---
base-commit: d517cb8cea012f43b069617fc8179b45404f8018
change-id: 20260303-bq25792-0132ac86846d

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


