Return-Path: <devicetree+bounces-286124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN3KHDqQ12kaPwgAu9opvQ
	(envelope-from <devicetree+bounces-286124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 13:40:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D28693C9BC4
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 13:40:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 074893019922
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 11:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 971373BFE26;
	Thu,  9 Apr 2026 11:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nyfAzlH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9973B8949
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 11:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775734837; cv=none; b=oOl6tib3Fwnzqz56jJW8Moqeog1F7H0xPAGYc+DtiDZ44muJtUGBCY0PZ90vyMoj68pimFci7wZ7SdG4XirgKvgYBciT1dSkoWpsPDKY4gd+imL8XFvw6b6GY88vDHhV0THqmMfYqS5ov/BvW5YNOFFKG9j0wdbTNUBioL8AMrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775734837; c=relaxed/simple;
	bh=Pg8rh/1N06LCkEAo+E/4op/VQofrZ3aTQo3V3dPJNZc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=To7Y4PgtuCe5lci0Ssmet75sj+xoEZjknJPPOFIhxH+mng19u3WTgydcPf6Q3dGFTiZxMbFjfcXcn6qPHHqQiGXAAEqqULdOuq+1CD9g8YCyduSmdAY6HSgdWOjw1DxVLaosD0uXGyW09CiLB9R3qXm2WOW1j36o0sQlocEs678=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nyfAzlH7; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso329765a12.3
        for <devicetree@vger.kernel.org>; Thu, 09 Apr 2026 04:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775734836; x=1776339636; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zh5N/EtZAnkI3b3uPP4/1FdnrHwMSkE/EVd51eSrmB0=;
        b=nyfAzlH7XF4ZfAu6RCizKWTIUOZCuVFnyAokqTffk21+pkEBd6cnWnxmPhGrr8bRDU
         2JxbKsPsydjxphDSilOoc63YAQ2MjUnDxJQtrAf2BMegE8OmvvD9m5zkSS36g3pAXBPL
         qN85YlTB6cYB6C1Xpd4M7Cyi4A7/srENCY8QqKW5zU4phiIoD5tGN05uGEttxM4ePioX
         qEgw7fSgpB7eZMT7foutq97JzkihKUWJquyw4fc7XxuyhmTsP9QeGJSaUzDoFvvverV6
         V/hPt4m5BXocqbQJMCl1SYyDuKFTBO/fGYFzyByfWCpnsm+ewaXemYp2OBfg1YWckaLe
         VY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775734836; x=1776339636;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zh5N/EtZAnkI3b3uPP4/1FdnrHwMSkE/EVd51eSrmB0=;
        b=fA/TRWasBjZKcVcC2HcQA/Nqx6El5QfB6PloONK4e1ZVOu2CEBWKeiUT7OasiTtr/i
         n7uKJeh3+dzg9FIBMn7sQyjQfwCmELmTUbSGAYy5OD9r+mPnsaIfbRhl6MHpvUMnKLYS
         8N3lER2jRv2tsFiBiGzEOvxBRcVxM2tkwVkPPKb0xTNz9ya0alV8nRaA311fTwsa/tXy
         jAYHWXallkd1xKJshvUbjWaCLyOvHj+RPsq1TttrIf5U5gzb00iP1CO3Elf53K80km4Z
         nMOeHeWK53KHesYWtRnkAeQoj56cYwWC3CczrBXbJLkVQG8H2HABnrjTrAGqRVtuZEQU
         xGiw==
X-Gm-Message-State: AOJu0Ywn2APdlSHFPmI/vcFtNnYecsD/wHt/2gB5NFjrsnRvyNZGsJNw
	Jb3aW9cREqFEcjgZ0YPhrN9lO6FxGQ/ASGf85LhupY1mRTyPQJhJnvURTX8prtTT
X-Gm-Gg: AeBDiesTliMbIp/VdZGrRF+3TSK40orHSTXRH3/8M2YVgYI0KRKi9+n0+/nxovvAL0a
	8yxXA+fZdBiT4A85YFKqzeCn3jOoOAIxIMXlYIg0hoN/BELXChXR0hQypEHenAL19vzmPMgDU37
	hiPL7dIgniqkm22opBQDdVCX3Vbgy/Elutg4PCSiFV1HrXM91yUKJ0FwmbfSgc7546rVdwebzob
	61gzYd87sTMt0S9BdF08vAtwe/Z/TkMUJGnBeWuNuI1Jnze9RucSLyIgI7uHTixw26udswXQuKk
	q003zH5elhEd1Zz1En5O6AK51GVqfc4EuOI6GfNi0VJgjS2wQvC+Cpt737vnBUKlVWkzrMBy+RW
	nhu1CfU2qrofZvtxcEqZ7DSUxxhnxgmPztuHRx9a5mautuE0XhlPwkoupVB20/4AIxS8fjusAp9
	F1LlqYbWEPJ2xS0vQB5m4OAJ29AdKWUQ==
X-Received: by 2002:a05:6a20:5493:b0:398:7b1d:87ce with SMTP id adf61e73a8af0-39f2eff45fbmr25361404637.20.1775734835570;
        Thu, 09 Apr 2026 04:40:35 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c76c659a218sm22438545a12.29.2026.04.09.04.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 04:40:35 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Subject: [PATCH v2 0/3] ARM: dts: aspeed: anacapa: restructure devicetree
 for development-phase
Date: Thu, 09 Apr 2026 19:40:25 +0800
Message-Id: <20260409-anacapa-devlop-phase-devicetree-v2-0-68f328671653@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACmQ12kC/43NTQqDMBCG4atI1k3Jjyh21XsUF9PJqANqQiKhR
 bx7oyfo8vkW37uLRJEpiUe1i0iZE/u1wNwqgROsI0l2xcIo06hatRJWQAggHeXZBxkmSHSCkbZ
 IJGuttLOD1QaVKC8h0sCfq/DqiydOm4/fK5j1uf7/nbVUsmvfXWObFgHtc1yA5zv6RfTHcfwAy
 0ahMM4AAAA=
X-Change-ID: 20260407-anacapa-devlop-phase-devicetree-4101d3f312c0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 colin.huang2@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775734833; l=1564;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=Pg8rh/1N06LCkEAo+E/4op/VQofrZ3aTQo3V3dPJNZc=;
 b=IhfZ12vZLAF4bC9lCx0x1Ypn7QQfx+MuRC+ef3Vi5brqRtnqHUJXPpV1nC9g/X36yTWADDrqd
 DP1N+M7USURC/AICWLXes8L8FVHTvX4yVtfqSgm9OjpLf8eYCe5aE/L
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286124-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.992];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D28693C9BC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series refactors the Anacapa BMC devicetree layout to better support
development-phase hardware revisions (EVT1/EVT2) while keeping a platform
entrypoint.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
Changes in v2:
- Fix dtbs_check fail.
  Validated by following command:
    make dt_binding_check DT_SCHEMA_FILES=arm/aspeed/aspeed.yaml
    make CHECK_DTBS=y DT_SCHEMA_FILES=arm/aspeed/aspeed.yaml aspeed/aspeed-bmc-facebook-anacapa.dtb
    make CHECK_DTBS=y DT_SCHEMA_FILES=arm/aspeed/aspeed.yaml aspeed/aspeed-bmc-facebook-anacapa-evt1.dtb
    make CHECK_DTBS=y DT_SCHEMA_FILES=arm/aspeed/aspeed.yaml aspeed/aspeed-bmc-facebook-anacapa-evt2.dtb
- Link to v1: https://lore.kernel.org/r/20260407-anacapa-devlop-phase-devicetree-v1-0-97b96367cac3@gmail.com

---
Colin Huang (3):
      dt-bindings: arm: aspeed: add Anacapa EVT1 EVT2 board
      ARM: dts: aspeed: anacapa: add EVT1 devicetree and point wrapper to it
      ARM: dts: aspeed: anacapa: add EVT2 devicetree and update wrapper

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    2 +
 .../aspeed/aspeed-bmc-facebook-anacapa-evt1.dts    | 1067 +++++++++++++++++++
 .../aspeed/aspeed-bmc-facebook-anacapa-evt2.dts    | 1123 ++++++++++++++++++++
 .../dts/aspeed/aspeed-bmc-facebook-anacapa.dts     | 1064 +------------------
 4 files changed, 2193 insertions(+), 1063 deletions(-)
---
base-commit: cd44dc5ead3042f2873244b0598e39a16dc7b940
change-id: 20260407-anacapa-devlop-phase-devicetree-4101d3f312c0

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


