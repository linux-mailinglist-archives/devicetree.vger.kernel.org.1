Return-Path: <devicetree+bounces-300100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJEbJnxVDGqUfgUAu9opvQ
	(envelope-from <devicetree+bounces-300100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E9657E8B0
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B1DC530622E5
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 118C14C042E;
	Tue, 19 May 2026 12:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b="BkvHVsOA"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE2F4A13AC;
	Tue, 19 May 2026 12:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779192465; cv=none; b=lIj3klCHgwbSEXEwEqh1NqLdlvYFGkP36BiJ0JixQDS4R9ahQiOAEIWgGA5VAVjh9IwwLDk21Z5BB4UnEtaI4BMyEsSN9IjQgLoHSMKzj0rjmSTbyqz1hfpioPnAL3vUKz4bDWj4DspWU0ZX4JrymMBUlXrVfrbzMAa1zLFkQ0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779192465; c=relaxed/simple;
	bh=sd+TTdU9tZwFAePEotvy/2HrQo6BTgRHQtOxKzTqyI4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=r3QyZgH4T7CMfK8oa/uU/ppWaNFYUQyGGD+AwvQAJYiCGzhGmSzBdwvTqVPj/mwNId3ScV4hJTc3x2+KZt9HR3bLnG0VVFJK3HTmUBZrqxmratL4ZKMm4PShFuDdyqoAC/UNLBlk6ID2J8VmCDd/XsPrO05I93a2+Hksno4GwCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=BkvHVsOA; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdf1:d100:2163:78fd:7eaf:4049])
	by srv01.abscue.de (Postfix) with ESMTPSA id B41291C6894;
	Tue, 19 May 2026 14:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1779192461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BnIxRm3iEUDX1hbZA18S7wzCqpobaH4MEenN8451RSU=;
	b=BkvHVsOA60b8ZkJQ1D44T39mrL9uQ8bEFeZ1BAPd0aYp7chJ9EwB6379c+lPZM2ox4jNvC
	A6w+uPaaTIegRbEC4uzDz3IF2jGfoSXfODdFycXEt3+up5NYZu8Z3sozU1Iu8dIZAG6VaJ
	tpbZV7Dy9yeUm3As5sLlw7JvFNv92LiBRiiheg2J3tPj1ab+8fq9QXdetTyav2jUy/eNoR
	dNFoHE4f2XhXfumOhJcAInBS/e9GB21obMT+C6UwdyCbwaydFrJRbP1XddSFICXK2vYzyV
	yQ4DbKANnhfqU1cak8t4g9m4on5f5WrkrgwLdOkUUCCgQvSV0flSHsReNwXUhw==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH v3 0/3] regulator: Add support for Unisoc SC2730 PMIC
 regulators
Date: Tue, 19 May 2026 14:06:10 +0200
Message-Id: <20260519-sc2730-regulators-v3-0-5bf0e02507e3@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADJSDGoC/23NzQrCMAzA8VeRnq00afdRT76HeGi7bCvIJq0ry
 ti72w1BDzv+Q/LLzCIFT5GdDzMLlHz045BDHg/M9WboiPsmN0OBpUAoeXRYScEDddPdPMcQOUh
 rqlqXCoxi+e4RqPWvzbzecvc+5r339iLBOv1qKHa0BFxw2aK1TpNrQV2MjW6iU0Ns1RL+hALqP
 QGzoE1hpakskNL/wrIsH7RD2Xr0AAAA
X-Change-ID: 20260216-sc2730-regulators-13ba789641a4
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Zhongfa Wang <zhongfa.wang@unisoc.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300100-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[abscue.de:email,abscue.de:mid,abscue.de:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: C0E9657E8B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree bindings and a driver for the regulators found in the
Spreadtrum/Unisoc SC2730 PMIC.

The second patch in this series depends on the first patch.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
Changes in v3:
- Drop compatible property
- Drop unused VDDSIM0 and VDDSIM1 IDs
- Link to v2: https://lore.kernel.org/r/20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de

Changes in v2:
- Use lowercase names without underscores for device tree nodes
- Use oneOf for binding reference instead of making it conditional
- Remove some excess line breaks
- Fix author name in driver and add original Signed-off-by
- Link to v1: https://lore.kernel.org/r/20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de

---
Otto Pflüger (3):
      regulator: dt-bindings: Add Unisoc SC2730 PMIC
      dt-bindings: mfd: sprd,sc2731: Include SC2730 regulator bindings
      regulator: Add regulator driver for Unisoc SC2730 PMIC

 .../devicetree/bindings/mfd/sprd,sc2731.yaml       |   4 +-
 .../bindings/regulator/sprd,sc2730-regulator.yaml  |  47 +++
 drivers/regulator/Kconfig                          |   7 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/sc2730-regulator.c               | 411 +++++++++++++++++++++
 5 files changed, 469 insertions(+), 1 deletion(-)
---
base-commit: 80dd246accce631c328ea43294e53b2b2dd2aa32
change-id: 20260216-sc2730-regulators-13ba789641a4

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


