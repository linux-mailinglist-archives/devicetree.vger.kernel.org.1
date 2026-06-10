Return-Path: <devicetree+bounces-309938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id da/GDJ+OKWreZQMAu9opvQ
	(envelope-from <devicetree+bounces-309938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:19:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5D866B541
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:19:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=HveuUbzh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309938-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309938-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8A96305493E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1447425CCE;
	Wed, 10 Jun 2026 16:08:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832F042189F
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:08:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781107704; cv=none; b=FwEAPra447464l6+z7xDUssnygwUlA6F/zIg8s5i4xQBYY48eC1CUWQffgDKCMZagy4BsgkzbXkdsSaZS5GU9ylthVVInNyBcON6E/UAKqIMsZOmLpG6ODNSWCqaaAadqTIh1TVho1IZQxOVPGUftJceXcd0jw2MXJvRmOJdqSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781107704; c=relaxed/simple;
	bh=LrW+pTRNMbczLrfM04TBaRG1iBt7Bav3Cqo5oUAdgJ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iJfFJmfBW+RSyAJ1MudRvf8qrAfavwP77z1lJCG2EwP8PLNYa88zZ1R+/vaY8omrMM6c4SE9ZNPk6tlUtGPgY+XzIp/P+iy+YdVX3O5mw6qxW7j72NCL5tCFmcAm6JK6qeEVn1lQB2X6wKKTMVeXL5MEgocsTt80jF8b4o/YeCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HveuUbzh; arc=none smtp.client-ip=209.85.218.48
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-beb8a08a6c8so1012823266b.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781107702; x=1781712502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=87qOkU8oqq1VUwaehKFFwgiT8WrliwcwSFGHfQj5ht0=;
        b=HveuUbzhR94i8pMVZ9m37NdNHHNi7YeR+zLDKTTU56N8TLv+QIK5PGuDLdqptvb0m5
         nb8BfWQ6BpsfsBgeVx0IPd1TyyeCFDCmn0WGOgaC0BvwPcQ3NC6GPTdx633i705NViDB
         vvkLnbMD4fGcg0vJecGK/aKQASHf5i9F9pMluEiPSe4i19hfe7zXcRgvrmAj/Zetr1sB
         AbuEAy4vTXap4HiQB0JqN/ecmCVVCPv+ugfIHoFtVaqlxZgPkah8vC9WeyXOuocG7nkV
         Iv+Cz3b/Vr6Y4wQ9gfcd3A4ujkKFKxA1GlkPy8/b2IbCSjjwwHde1prCnFDZSMNZkHHc
         PQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781107702; x=1781712502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87qOkU8oqq1VUwaehKFFwgiT8WrliwcwSFGHfQj5ht0=;
        b=J6yh7rDL41+5ysG4Dj2tLqundQrC/ggtDcRF7UC1wY+mRE1JzSLUwVVLavH/hTzK59
         uJDxkLPBYqWTp2Pz02iVeVEkD462Z4m5yNZX7ItDmFcuuRibHjL3MiBQkGLrhYNmyqQQ
         2zxYc5tVq6YmaAMa53fBkUTO4CYAhqTSFQhoOo4UwLBPsn6tByTk2yDI34mDU6tEECNn
         hN+EBloTYD1caHN7RCxDffAl392D51HVRAolphvsuxW481cQodI81uhaZE8sheIWcy9B
         VUsrrLxV+VsloWkrUGyyM6ZvMJeleu2uz0sMKG1MmDLUOTforCqRkaZlkSeNGbe5lx+s
         R9kw==
X-Forwarded-Encrypted: i=1; AFNElJ/m6RcDklIngJU2MM9bCZ918R2lIK9GY7R+v889BjWWowGSJcFuFmwOl5jTwZvxCnYs8NYp54etF10o@vger.kernel.org
X-Gm-Message-State: AOJu0YzVvrdsDKiZohK8oFrTJBPs7f5Na7tK7SepbDTg256oBjzL6AgW
	Ck2Yr/nI8R8dvCHlnj9O5/OqMeZp/MSSXsQawe2+yIQQcw0B756R6pKt
X-Gm-Gg: Acq92OEWHqNrr4YtSrrXJOA7aZODU+gK7aksIcE6RvuMOCIShctehWoZ2tqukHrzT6d
	tnqubA8yMlhs9RIJZhmhdzB30n6hFEH5rX6DcrGTyS6fc3qq2Q+SD3JHNOSWF3p97FV0mRm8JgC
	LfgMsjq+3bVqxaoW8Q+Xay79I6Puvr9dysqNW2TLqnUZYmmOTUB5BsGWVmsOWNA5jLTISl93bBh
	/6X4xBSa5fke6A+cXBuui9miKnBtcNg43Z45mbw90td63PnoC1GVh52QtYCGAZebsJnjUO42ujU
	j2lCoprImLFlIrPzpLMeE0waEtvcVD8N5x9WkJ8j4LYcdR74RLRL/cshqm+E+V5YgYfUbSeGlyy
	/TbAxZ4dXieIMCYFs9etGA58q6WgY+M4FdFoXP2KCUui6MMFMsWL/OluCDBYq+liijU5CfBKVVN
	05zxzXbRY4gGzKJRCuZ1z8aQ6+a0ypgKFPkHQlFNuoUVf9
X-Received: by 2002:a17:907:1c85:b0:bcb:d9c7:c6f with SMTP id a640c23a62f3a-bf371360f21mr1366420466b.7.1781107701795;
        Wed, 10 Jun 2026 09:08:21 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf055305d40sm1188524466b.45.2026.06.10.09.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 09:08:21 -0700 (PDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com
Subject: [PATCH v4 0/3] arm64: dts: nuvoton: add NPCM845 SoC and EVB support
Date: Wed, 10 Jun 2026 19:08:13 +0300
Message-Id: <20260610160816.2828713-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309938-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ozlabs.org:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE5D866B541

This series fix warnings and adds device tree support for peripherals on
the Nuvoton NPCM845 SoC and its Evaluation Board (EVB).
The first patch fix warning and arrange node order.
The second patch introduces peripheral nodes for Ethernet, MMC, SPI, USB,
RNG, ADC, PWM-FAN, I2C, and OP-TEE firmware in the NPCM845 SoC device tree.
The third patch enables these peripherals for the NPCM845-EVB, adding
MDIO nodes, reserved memory, aliases, and board-specific configurations
like PHY modes and SPI flash partitions.

The NPCM8XX device tree tested on NPCM845 evaluation board.

This series depends on:
https://lore.kernel.org/all/20260610121822.2524634-2-tmaimon77@gmail.com/
https://lore.kernel.org/all/20260610121822.2524634-3-tmaimon77@gmail.com/
https://lore.kernel.org/all/20260610121822.2524634-4-tmaimon77@gmail.com/

Addressed comments from:
	- Rob Herring: https://patchwork.ozlabs.org/project/openbmc/cover/20250925200625.573902-1-tmaimon77@gmail.com/#3588084

Changes since version 3:
        - reomve tmp100.

Changes since version 2:
        - Fix dts warning
        - Arrange node order by ascending unit address.

Changes since version 1:
        - Fix commit message
        - Fix dtbs_check warnings.

Tomer Maimon (3):
  arm64: dts: nuvoton: npcm845: Reorder timer0 and PECI nodes
  arm64: dts: nuvoton: npcm845: Add peripheral nodes
  arm64: dts: nuvoton: npcm845-evb: Add peripheral nodes

 .../dts/nuvoton/nuvoton-common-npcm8xx.dtsi   | 726 +++++++++++++++++-
 .../boot/dts/nuvoton/nuvoton-npcm845-evb.dts  | 413 ++++++++++
 .../boot/dts/nuvoton/nuvoton-npcm845.dtsi     |  11 +-
 3 files changed, 1130 insertions(+), 20 deletions(-)

-- 
2.34.1

