Return-Path: <devicetree+bounces-273854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJZHEAEKsWnhpwIAu9opvQ
	(envelope-from <devicetree+bounces-273854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:21:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1625CC7B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45C24305E9C5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE8253644C1;
	Wed, 11 Mar 2026 06:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WvbNNZpw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFF63542DE
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773210109; cv=none; b=gpoLlECzlpZN1ThFHcsdR2PAPVrS5nA/Mk/JVoQunT9L1QhykGcpkXvCQxritxOYeQIPvSvXdK9YolskjyP6ANZuzSXE6Cb9c891LJymlqvdXEMuqoGdhQ9nTIqjUOZh/bKx1xCmaQlNKUkJq6Md2uidqTrBR+jj4kfpn6vN4yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773210109; c=relaxed/simple;
	bh=Axc+CcnQnnfpiP5A9auA1FuvVMCpTICZ4JkiYPK7KGI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lssQj9VtUMCHXtSNNsD+UCcMiVduHYINThF7y9yqhpzoT5CwxF/FjUut6/dDJXx+DOdyOEq762SaZDVpVExv+Y48CJ+5H55qfJMOfsiROonVbWEf9s0N1jFGeapobKF1XeStAnIte/UxnpXgY1uo24SXJcWwx4/FULDmrNN6RhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WvbNNZpw; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c6e2355739dso5576000a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 23:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773210108; x=1773814908; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aPRAl8XBEAVPedtuLZozkH/4zHuUY/9G55Jcjy2Q4hs=;
        b=WvbNNZpwI6j6cc0KeDT1BWf/aQ3QmGyLv4dis43Hk2jtx3QOQ/nlhgKDSsL4SbKbr4
         Zpw8NiBVTBNGRtXrOJxLrLaMmjOhdvCuDe3SzEgt054fwtKDMN9tiMpd2xfGNqJIjCbL
         1SySbSWrJBoD/V0qmnJgoCVkprJa7CORTqr2qIleKiXhV5peuBi08/GMIB/PxAVYwIV7
         npwUw4RWBJHLYDIJkpskfY5GEoP1JIvIBDdxu7frnWuY7xtbpItgFKZdWWneJlNK8PId
         lwazrussTjPa5PxYGM3bUav1LscN0pGk4BDpeKUE5/hGj1PoF6oEKFwAZALcA38qezbk
         z9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773210108; x=1773814908;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aPRAl8XBEAVPedtuLZozkH/4zHuUY/9G55Jcjy2Q4hs=;
        b=mMtEabGf7F0rgjPFZhMYW2x5pHvT0ZtLjAfcK1NUYmyGkuJNSGXZbXzBK6gLaTcOjk
         xwQ8FomVpdCC1Xvh8mPsKZ9y3hSmqi4KWuA7O7O5FS9FLIhBr8yq6mIqUokYYB0z1bZE
         OWzutoiMWFFJcAxBEMMspev5Gr0YG52ab+4SOZPQ8318G/7qqDL9eorD4H3J2QMsAT07
         +BAlH5v5SlGcdAHmYMNmntO9k/kHAyruyUKerOJ6IGk4uS5+hivFeJGQQ6OcJJUeu553
         cg6BRKKs4iTykBCW+n8HxxJtivmgywvRe7PtVR+eMnOpKovubMZWSqIsyE9xBIFbtuUf
         O84Q==
X-Gm-Message-State: AOJu0YwaSle2prxCnKZgbDJsjG05okk2cfRP1EC1lHqMhs1fHJubEju7
	vIdS0rK4KityN1wxbapte0hfJkbD9GjHSXGFPS+VDrjy4FTIgppYpOb3cvG+tg==
X-Gm-Gg: ATEYQzyNEcfiv65wzVB4CgmOmAiyMUPVFqdR+Rpb0DDwj2TBBKkO4gqc2k2OMjEIT2E
	bN1qygzcX/qYCEALCSD6BoAvvTewEGVbhzHBDUtc00Mxj39dBFGgNxZupwa/QDkdWSgOoHPZ5Jw
	CaZcU8cMGmLdv+UDLmpv2yo6NuhDjkufI5wCbJEvcQ31to6Jd9+9iq7SB6pIs2i3Wmr2BYHbkHy
	Ou5QmRsa7yrFEsWJidPg+xoQ+kfhut8NuWyhkVqKP2hXVzuNXH13Hg3W+EK/860+bL9lRK/Vrhr
	IzAUKzK3aUK73kFQrnqTH46Ac8fMB5t2p5YWuDWHv/RUb0MvuPEpY8xjJ4tFxt4G1AgMg3KcxT+
	qQC7/HbQqGKG8Mwsgz28pnfgumz/fTpakHi6pvqoI0LMpVLemUCHtP6uDqHkqxrF4dMG+37hk4n
	9wdgMaIkuROzHsoL2Hyymm8oC9n4DQUTRBcu/tAdiJ/hhX3VhqsHNqisj5m7XBK1JiAM1eo10lA
	zw=
X-Received: by 2002:a05:6a21:b90:b0:398:870f:d7b2 with SMTP id adf61e73a8af0-398c60e5943mr1266713637.33.1773210107749;
        Tue, 10 Mar 2026 23:21:47 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdfa9acbsm1008019a12.32.2026.03.10.23.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 23:21:47 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Subject: [PATCH v3 0/2] Add Meta (Facebook) SanMiguel BMC (AST2620)
Date: Wed, 11 Mar 2026 14:19:27 +0800
Message-Id: <20260311-sanmiguel_init_dts-v3-0-2b4d1ab7a8a1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHAJsWkC/33NwQ6CMAyA4VchOzszWkHw5HsYQ8Y2oQlsZsNFQ
 3h3BycOxkuTv0m/ziwYTyawSzYzbyIFcjYFHjKmemk7w0mnZiCgFGnwIO1I3csMDVmaGj0Ffq6
 VbhFVIXTB0uHTmwe9N/R2T91TmJz/bD9ivm7/cjHngishAKU55VVdX7tR0nBUbmQrF2FP4E8CE
 lHKoqxAIbRY7YllWb5b1+Ru9wAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>, Potin Lai <potin.lai.pt@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773210105; l=2198;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=Axc+CcnQnnfpiP5A9auA1FuvVMCpTICZ4JkiYPK7KGI=;
 b=AeS7rOHZELrxiBxvNyIsIKUOn+ZlPw6IOgK9gSv2u6Yil5P3iZUUoLV/vi4Yt/hjpiAducidT
 Ng5ObpGxUZwCQnBvBtvuUNWczv30czDnT5UwPYM3E3D8BuXjFkklacB
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Queue-Id: 9DD1625CC7B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com,microchip.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add Linux device tree entries for Meta (Facebook) SanMiguel specific
devices connected to the AST2620 BMC SoC.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Changes in v3:
- Update the model name to "Facebook SanMiguel BMC".
- Remove CP2112 and downstream IOEXP nodes as the upstream driver
  is not yet available.
- Remove the following EEPROM nodes until the bus numbers and
  addresses are confirmed:
  - 3-0051: HMC FRU EEPROM
  - 3-0052: HPM0 FRU EEPROM
  - 3-0053: HPM1 FRU EEPROM
- Change the compatible property of the following EEPROM nodes
  from 24c02 to 24c128:
  - 5-0050: SMM FRU EEPROM
  - 9-0050: PDB FRU EEPROM
  - 13-0055: SMM EXT FRU EEPROM
- Fix the smm_temp node address typo (0x4e -> 0x48).
- Remove nodes that no longer exist in the latest board design:
  - 19-006f: RTC (nct3018y)
  - 9-0075: IO expander (pca9555)
- Update linenames to match the reference design:
  - B0_M0_AIC_USB_EN-O -> B0_M0_CPU_L0_RST_IND_L-O
  - B0_M0_BRD_ID_2-I -> B0_M0_BMC_TO_GPU_MCU_I2C_EN-O
  - B1_M0_AIC_USB_EN-O -> B1_M0_CPU_L0_RST_IND_L-O
  - B1_M0_BRD_ID_2-I -> B1_M0_BMC_TO_GPU_MCU_I2C_EN-O
  - IOX_GPIO_P16_TP -> USB2_BMC_HUB2_RST_L-O
  - I2C_PDB_ALERT_L-I -> X86_TPM_RST_SEL_L-O
- Remove unexpected or unsupported properties from SSIF and IOEXP
  nodes.
- Change all status values from "ok" to "okay" for consistency.
- Link to v2: https://lore.kernel.org/r/20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com

Changes in v2:
- change mac0 phy-mode to rgmii-id
- remove max-speed attribute from mac0
- Link to v1: https://lore.kernel.org/r/20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com

---
Potin Lai (2):
      dt-bindings: arm: aspeed: add Meta SanMiguel BMC
      ARM: dts: aspeed: Add Meta SanMiguel BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |   1 +
 arch/arm/boot/dts/aspeed/Makefile                  |   1 +
 .../dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts   | 634 +++++++++++++++++++++
 3 files changed, 636 insertions(+)
---
base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
change-id: 20260202-sanmiguel_init_dts-79cdb33c50d5

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>


