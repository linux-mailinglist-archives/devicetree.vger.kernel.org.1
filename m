Return-Path: <devicetree+bounces-326857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pit0CopoV2rYMAEAu9opvQ
	(envelope-from <devicetree+bounces-326857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:01:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E91875D2B7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:01:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=KxeTQpPb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326857-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326857-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79F983014363
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308303546FA;
	Wed, 15 Jul 2026 11:01:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47E1323416
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 11:01:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784113282; cv=none; b=p4aRfsGN1E3VPYBes4rouwS6tpp0DK7RLq6/aOBfBZjYHGVecjFhGXe46XrGNAgNN36Uqop4luZGN5zoGodocjtDICStLRBzliE+MALj64DekQCwKHXn6ePX/Ob8spgR0JXH7FSp5161NAx99o/Q+jkVNGMgia1O3CglqjmweEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784113282; c=relaxed/simple;
	bh=bFCp9CMHCHsdHnu03audrknBr9ukhd5xWk99ialwlfA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ida4IIMXuKmg+wW8XR19BVg0AiUBCGmtZqeEFCRI5D4IguCY9T3hoJlUPR/xLywNs+AacSVbuXVSSugVG4E7aLPnludBaCTfR8XPXsDNMhfhygDgwzBN5XDmOgvzJnZjiHwcpM1rRFHhS22RjFMa/QChYlw0IgDIbc2X4G9y5zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KxeTQpPb; arc=none smtp.client-ip=74.125.224.50
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-667f0cfb2bfso813269d50.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 04:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784113280; x=1784718080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ba8rcUXQdsLarFisL+/pK+7ENc59ySEgz7MRaAReypc=;
        b=KxeTQpPb6+ZoXDtmcV0TfbO6FLYSLzGxfYShg/9+E6rxyYTeI0ajVejTvzugHcj+eO
         VzyeTaiAiJC9H4/jv6+dS81zu0rN2HZ6V/1SE4smL6ydnqPimJNJA5jM2PFNo6XP5quC
         wpYEYRmPm7JMiwddox4/JV8zLGQZ7KmnsBAUmGhZpoA/xao75n7LNN/P9j29FUVfo4ke
         GMIY/3A3xxPVmux2AY/9cvgVqOE4R/MxWmDvWLAGKTKCqzWwkC3tkEl4QcszL2HRBpSY
         xx+nQAUdIIa5UWyIbMPSkxkdLY4FycXh7Se0d8ACJYftiIN2psHAEqHwaAG2fjxBehq4
         PEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784113280; x=1784718080;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ba8rcUXQdsLarFisL+/pK+7ENc59ySEgz7MRaAReypc=;
        b=run/NVnHx0m+Nd2rHgFwH3ZMBPmkgj5izNstlP/516YZBelSgAvERuvJVpMJmiPBpr
         ArKt4Bo+8zEExIPS4rudGwfg7NPOmN5szSsFh6vAnaswHfmhlz9TwIfd6iANOJQPaoAk
         HYhJJDDxUg4Pt2Jf8mi9NifacFL/ay3hR8oFZoydtFGsx/MNgew5QvhVswFiBzpD43hw
         EAvYXLVrqDG/RL1R6um+xdSNruhiZnpX8Ebqe1mH8E//mdxQ/BiFAaFSoA0slwtZudoT
         Kg24HTruqm6QWNJRRd+DyGxj61DOkRD0/SSMNrjSOoYw29MppFkGTheCbAUecrM+gIJ1
         z+Hw==
X-Forwarded-Encrypted: i=1; AHgh+RpG3VuckubW3fsZB3RNVFtrhLuD6XSpUYvQNr7xCCnFGRXSJIEG4yYpN4TOAgLL1duXjg8rdNm2v61N@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy1fDI6dSRyZNSpAy5IFrkTv9N+ovwLLnp0MA8TPPGF0/5lc5I
	QmsjqwgRmb8Ger4MF7fvbRulZlTEXA9dSFgL8Hl+vTQIHkfC0g3Ev8E0
X-Gm-Gg: AfdE7ckcuBuwJ0HpZpzDPHF50xJa7Voc82yExrv5P0ga7zieuJhQNxn1B26LiN5e7An
	ndE4+13hclJLnf29xrXmPQ4Fz3aqmjcVJmuTP4BGVK2uEElUwMs6ks/JU1ApfN6eHqHEzJPJpCd
	sCOL/VQ0SQmRcXlpoddvdavlbvWp5EiTTf4pVfygy2LlANqVOF/pRtvQK+/2mCWTTqQOGrdDlYk
	vy3aHFvrP1d8rYm4xuuiOEEz+u2f2pKhWAjg4K/4vmb9aEBNnslw0etjDmYNkS9tZIHqCT+dbPn
	NGdHJ1gSwH/0EHWStwxuw8IEHMXW5zJ80y/ha3OA27QZQAHQppblEDKlMriYRyC/AQWJAjrEiN2
	NJx1BwBZacZGwBEvUN/W28WKmxc+6pTZByC7idDkzXR/9NU+ZT5Sz8b0zEt8NR+u+4EMJ1+5CZI
	YVmirWNr5OhSzu4dP86REl
X-Received: by 2002:a53:b118:0:b0:667:8b90:2e5a with SMTP id 956f58d0204a3-668078c895bmr3427781d50.102.1784113279355;
        Wed, 15 Jul 2026 04:01:19 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6681fbd8c5esm59066d50.3.2026.07.15.04.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 04:01:18 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 0/2] nvmem: rockchip-efuse: add RK3399 OTP write support
Date: Wed, 15 Jul 2026 16:31:05 +0530
Message-ID: <20260715110107.409204-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,vger.kernel.org,lists.infradead.org,gmail.com];
	URIBL_MULTI_FAIL(0.00)[sto.lore.kernel.org:server fail,vger.kernel.org:server fail];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-326857-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hrushirajg23@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[hrushirajg23@gmail.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E91875D2B7

This series adds write (OTP programming) support for the RK3399 eFuse
controller, gated behind an explicit devicetree opt-in property.

eFuse bits are one-time-programmable (OTP): once set, they cannot be
cleared. Enabling write access unconditionally for any board using the
rockchip,rk3399-efuse compatible would be a significant safety risk.
This series therefore:

  1. Adds a new boolean DT property, rockchip,efuse-write-enable, which
     must be explicitly declared in the board's device tree to enable
     OTP programming from userspace.

  2. Implements rockchip_rk3399_efuse_write() using the Array Program
     Mode (A_PGM) as described in the RK3399 TRM section 21. Each bit
     is programmed individually using a software-controlled STROBE
     pulse of 15 us. The SoC-specific callbacks are managed via a new
     struct rockchip_efuse_soc_data, and nvmem_config is moved to the
     probe stack so read_only can be set per-device.

Hardware precondition: The VQPS programming supply (1.8V to 1.98V per
RK3399 TRM) must be present and correctly sequenced during writes. The
driver assumes the board power design guarantees this when the DT
property is present. Future work may add an optional regulator reference
to enforce this in software.

Tested on RK3399 board with rockchip,efuse-write-enable set
in the device tree. Read-back after programming confirmed correct bit
patterns.

Hrushiraj Gandhi (2):
  dt-bindings: nvmem: rockchip-efuse: add rockchip,efuse-write-enable
    property
  nvmem: rockchip-efuse: add write support for RK3399

 .../bindings/nvmem/rockchip-efuse.yaml        |  11 ++
 drivers/nvmem/rockchip-efuse.c                | 152 +++++++++++++++---
 2 files changed, 138 insertions(+), 25 deletions(-)


-- 
2.47.3


