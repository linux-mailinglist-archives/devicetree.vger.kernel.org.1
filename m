Return-Path: <devicetree+bounces-299546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEklIkk9C2oJFAUAu9opvQ
	(envelope-from <devicetree+bounces-299546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:24:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24169570D5C
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 454693067EE3
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6965148AE2B;
	Mon, 18 May 2026 16:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b="Hrtet+1N"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576812FD7D3;
	Mon, 18 May 2026 16:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779120634; cv=none; b=IQLDS4Buj4O1VdLHsYHt1BPwnh5z35WAkTM5r/Ep3PFnQH5dUUCZrAlvGIkpLiycwJgMh/t1iO+2VLC+49n1mLe4Lc9RwltKjW9M8ifIse0YvoytBysxo8ZE4zJrblZey7aJRrLqmHwCYccctOltwcQnB9l1Ev4ABy4ViSVYoP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779120634; c=relaxed/simple;
	bh=gD3z1sdfee64tePk0882qvLJEXTIHSa9t8cloxgUgtU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=q1B9qm8DAM4mSTpJo3MClEoI5gBdgIZ/S6nDjgQDZaO5UV+/UC/31GsM7MDOOun0FYW4fqI/XEkqM5uXCfyZxIHIMJG6zPofoDQaLMmBXw40Mfy89hlwVi/Bi6TsX6wQqJZiuLLhPVGDGx8Tj0NLJimtHMCyCxam3moDn+KCI+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=Hrtet+1N; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cde7:e200:dd31:dcff:5f50:b86f])
	by srv01.abscue.de (Postfix) with ESMTPSA id 7D2A31C4105;
	Mon, 18 May 2026 18:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1779120083;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vEoPLbKeyEXaXOQBddMjjDyqnXLFr/mMV4i4HbxG3HY=;
	b=Hrtet+1NXaWw2P3VNdrMEv6qKISRDe14S5TIaLHGtXrn+dobw+qo0BUktgIny2lw+F7a8e
	0XqJJVZXq/5Od9tPy8CcFWCkvoXTI8sGc0eMbiJcokdtEQNRRHZo2D07rT4OED3SI0qxHf
	myJL4K5xz+qnBkA4Be6bzZoPgL1cjzlcZWPsD+HCuS/wM/VA35Dqyb4+5uB244lRwyjGnB
	fd8ACk2PBflPoi7b6cZY3YDNs90s/CBcXfTThpgMwgrSOvrBS9ZoltrlFTR9mgQi4XgNfv
	SEGH+DGjBH6iAg9U/XLolXScmxdKf65RZOgj6Nps7zve9AnLUnEIuSfGMbPQwQ==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH v2 0/3] regulator: Add support for Unisoc SC2730 PMIC
 regulators
Date: Mon, 18 May 2026 17:59:46 +0200
Message-Id: <20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHI3C2oC/22NwQ6CMBBEf4Xs2ZruloB44j8Mh7Ys0MSA6UqjI
 fy7lXj0+CYzbzYQjoEFrsUGkVOQsMwZ6FSAn+w8sgp9ZiBNlSaslHiqjVaRx/Vun0sUhcbZ+tJ
 UJdoS8u4ReQivw3nrMk9Bcu99XCT8pj8b6T+2hEorM5BzvmE/YNlaJ37lc8/Q7fv+AYRb9riyA
 AAA
X-Change-ID: 20260216-sc2730-regulators-13ba789641a4
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Zhongfa Wang <zhongfa.wang@unisoc.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299546-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[abscue.de:email,abscue.de:mid,abscue.de:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 24169570D5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree bindings and a driver for the regulators found in the
Spreadtrum/Unisoc SC2730 PMIC.

The second patch in this series depends on the first patch.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
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
 .../bindings/regulator/sprd,sc2730-regulator.yaml  |  51 +++
 drivers/regulator/Kconfig                          |   7 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/sc2730-regulator.c               | 413 +++++++++++++++++++++
 5 files changed, 475 insertions(+), 1 deletion(-)
---
base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
change-id: 20260216-sc2730-regulators-13ba789641a4

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


