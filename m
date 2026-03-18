Return-Path: <devicetree+bounces-277488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8J9kEEMfu2lofQIAu9opvQ
	(envelope-from <devicetree+bounces-277488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:55:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B545A2C329D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:55:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C05A3025C42
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEA1349B06;
	Wed, 18 Mar 2026 21:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kY00CY0Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EA8314B82
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773870909; cv=none; b=N39ODzZv5ZENcRFD8V79uM9hhfKUkSoPneGNRF78jyz1Zslqok3MQ3wqh75c3ROAMhA97w4DA29KqoFbhm9pA4jdTRKTsYrQ5YGz1UePQ0TWUP04rVWCA+MbwshfXECv1hL2Tfw9f609ePf3G4vG6BA/iRG5tmFmIcB403rv9cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773870909; c=relaxed/simple;
	bh=QmcOfkhfSsLU4S/VvGM77VIx0T2jRNrl/jOzKKqaU38=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KECMmn2Zv+jxkx5SZWws/KQV993OH95t++HaXFZgUUu8tQ/rvBsLIhJ4r+0EkyQTYd1Z9MkM6+OoLF323KU++4W/rWgCb4w/xFzLyf31PHzEdRc6hF3nzPIc7lpu9G9276SLH889yFQOGADnLVFhbSusSqAgscrz4bX6s07xMHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kY00CY0Z; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48540355459so2977035e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773870906; x=1774475706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oixn8B5pbJ+8tHwNArodaWGUazeHm6IYAHzfGZRGgA4=;
        b=kY00CY0ZGNiJGTpawwXEgmMMOIT4/cT1BALhHjsWis3B+5nbl5RJy80Ez/t+QYvj22
         dOC5YrHr2uzKd1GzEEPFwQwSSvkb/6FADQKVmg92V3WQqm57kZVdQIX50DIIl5wIgyEX
         ALfRz1/5Bk0Ypg9dWQWCug+kzLXGGAbxKcmG0ZJBZqNSv7nGc/R69JTHLlyTuQ7ldCBG
         de33d0olXmxUEh7vtmaV2vl894TIW7AfXfInOgPr3Z50iRux6PFz1920RCKJSCNh/CeC
         mIOkvZMzkfo/+Q4sUcuhIa6+HocoE3MUpMfPK7cee/fCNFOpT4rwv41UPNORi0iA0ti1
         J/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773870906; x=1774475706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oixn8B5pbJ+8tHwNArodaWGUazeHm6IYAHzfGZRGgA4=;
        b=sGbGP7vihrPnn/Q1GVw26EHh8bjSDjQkbXPr2MVxSG+cj4B2V7V9nGf1JlvEudASUT
         O1sOu+2p3rIASf9rCIH4zIDV/TOGPrRWuBv8ycL49J01AY1nAHmpppcUGlYP2Ik8SS+z
         CJWnYq6zY8COGUll37f43gEdeclr6FTcLZutUputNi1Bmsd6vYgc6q7sr906sWK2D4oN
         jRuPvmYvaqOyka/hJCFqIj+GSftE15aClkpRU+jdzyRVFwRmfO9UOQMmjDvyaiQCRs+7
         CWSPtHLRieA8TF2T/rMZ5oud7etqog+MHUk9exxkKZam7mkfa2QIEHFA3fnEs60ZcT3+
         X8Dg==
X-Forwarded-Encrypted: i=1; AJvYcCVYK+AVcurSmRucmuDGFSDuRF9m98c2GCWgx3VzqmxOcvExyeP15zIYR3YZsnvcBpm/z1q7SpDlZZTN@vger.kernel.org
X-Gm-Message-State: AOJu0YwTCrSbDipt6hMSo2SupgmALuOWcjIJeOAFW5worQ11k9uHWTom
	Wf/CmIorKo9AqXVz2+osDpO91mAEVvG4gkcEaE4JuGJrPO7ZRdMUU67/
X-Gm-Gg: ATEYQzyj9jMTYQM9HMrggP7gG4DuZdR20KmjsjHeJyplMAtc2mv2DGwQG5jUZvFB/O0
	k6rIDbKiid4CkeaPOKKXWnmWi3Xv2DWLRcEkEtk4hH7cQ92vJpznlmYs+iYCD+6rIMCBCestSli
	V7vJAZQlLm3dDc6NZ8uf2jiAfHrSfz8yDpCJavqrzbB14g/rG0phXZfkSkUCUBrKhG8BiwnGO6J
	1DH3anJmdGAReRaGfr9NEdi97LTIb5nw/S9pp3zIG35SC0yNRaZGrqw69FJ/hEVArj2ODTe7Wza
	PrTXFpYhKaDBauYOR/690A64jQ7U1zajMB85QCrt2luenn6ng3wHbYowe6JQpnvWMEfPMnw9t/L
	jE39v5yO+83gMsH0ncNrJB8t+7d3FgdwwhCidXszXCJ1dmMFLzOGQ6pKo6ZAj5NQR5yJnP/ZPih
	Jl3kE9TZQqFXIh6n/1k5xfee0=
X-Received: by 2002:a05:600d:103:b0:485:4388:3492 with SMTP id 5b1f17b1804b1-486f443d53amr52250145e9.11.1773870905553;
        Wed, 18 Mar 2026 14:55:05 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e10:c662:37ff:fe09:94df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8c292e2sm19373735e9.2.2026.03.18.14.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 14:55:05 -0700 (PDT)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH net-next v9 0/4] net: phy: realtek: pair order and polarity
Date: Wed, 18 Mar 2026 22:54:57 +0100
Message-ID: <20260318215502.106528-1-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277488-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.776];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B545A2C329D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The RTL8224 PHY gives the manufacturer some flexbility with the pair
order and polarity to ease the wiring on the PCB. Then the correct pair
order and pair polarity must be provided to the PHY to function
properly. This series adds the support to configure the pair order and
the pair polarity to the Realtek PHY driver.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
Changes in v9:
 - drivers/net/phy/realtek/realtek_main.c: support CONFIG_OF=n correctly when
   calling of_property_read_u32 in patches 2/4 and 4/4.
Changes in v8:
 - drivers/net/phy/realtek/realtek_main.c: introduce the common helper
   in patch 2/4 instead of 4/4.
Changes in v7:
 - drivers/net/phy/realtek/realtek_main.c: factor out a common helper
   for package bit modifications.

Damien Dejean (4):
  dt-bindings: net: ethernet-phy: add property enet-phy-pair-order
  net: phy: realtek: add RTL8224 pair order support
  dt-bindings: net: ethernet-phy: add property enet-phy-pair-polarity
  net: phy: realtek: add RTL8224 polarity support

 .../devicetree/bindings/net/ethernet-phy.yaml | 14 +++
 drivers/net/phy/realtek/Kconfig               |  1 +
 drivers/net/phy/realtek/realtek_main.c        | 96 +++++++++++++++++++
 3 files changed, 111 insertions(+)

-- 
2.47.3


