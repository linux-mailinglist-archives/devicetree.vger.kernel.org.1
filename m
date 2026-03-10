Return-Path: <devicetree+bounces-273384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFLxFi3hr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:15:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 535EB2481AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE3E4303AB64
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D4043CECE;
	Tue, 10 Mar 2026 09:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="iMpASpCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49244.qiye.163.com (mail-m49244.qiye.163.com [45.254.49.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781C443C049;
	Tue, 10 Mar 2026 09:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133940; cv=none; b=BTGqHTTNqkOM2fHvBJY1ApQCXbGjcE++EP0xC8zq4aOkEQxHifS1TkFKSRVa9yyjqGFGtyfMCzsFNDjZ2iSippgszsGTzmOk0eQwDopSksO1ZK1wdUe0RJWlO/7GS8x1BVA2S1oumVGIMqqr+1FrnXTGA09iOYZfo1c/OIJDxX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133940; c=relaxed/simple;
	bh=HojLkhjf1HWChZFT93c6uRaoSfcpQdYztOTxDiK1Zgo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VtgZKT9VG6SSn+84Is/U/QtCNFFQ5Qm99+LfQLb4PeDTqFzDHk2hBrZDsUnxrrzP5nWbfeanP9z6UEOdHH9pZELJJ3lhkm9ZUpwuMNXIqyaBLOdVKiGQGLPHHsv9xPaS6x7Nr99KTfSepiAS0MavNW5VsAT94YE+1ecMEF4ghSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=iMpASpCt; arc=none smtp.client-ip=45.254.49.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36651043c;
	Tue, 10 Mar 2026 17:12:14 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: krzk@kernel.org,
	arnd@arndb.de
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	gordon.ge@bst.ai,
	bst-upstream@bstai.top,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Albert Yang <yangzh0906@thundersoft.com>
Subject: [PATCH v7 0/2] arm64: dts/defconfig: enable BST C1200 eMMC
Date: Tue, 10 Mar 2026 17:12:09 +0800
Message-ID: <20260310091211.4171307-1-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cd704afaf09cckunmb723260ce6e85
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGRkdVkhOSU9PT0tISB9KTFYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0
	tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=iMpASpCtPY97574A6yd6P0Pdv10PXJBVhUFbslof1TKyhdIC/y/3HCODVLL7MVsMBOBoegXb6R2jLprpsDS7h5g7ZT6VqhXEDPDG4yZCjkr6vy4bYNPVaRufAMNOQUd4vHn9wlAzgcyv+C+YKaqshJRSOmZOozn3esfAWSoo0ow=; c=relaxed/relaxed; s=default; d=thundersoft.com; v=1;
	bh=C4auocGsq6h1s0B01awTJE/9wuwQhaFwfnc5Akdl9jE=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 535EB2481AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-273384-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,thundersoft.com:dkim,thundersoft.com:mid]
X-Rspamd-Action: no action

This series adds DTS and defconfig support for the eMMC controller
on Black Sesame Technologies C1200 SoC, split from the v5 MMC series [1].

The MMC driver patches (dt-bindings, sdhci bounce buffer, BST SDHCI driver,
and MAINTAINERS update) have been applied to mmc-next by Ulf Hansson [2].
These remaining DTS and defconfig patches are submitted for review on the
mailing lists first, per Krzysztof's feedback on v6 [3].

Changes since v6:
- No code changes. Resend with corrected recipients: send to mailing
  lists for review first, not directly to soc@ (BST has a platform
  maintainer in MAINTAINERS).

Changes since v5:
- Patch 2 (defconfig): fix CONFIG_MMC_SDHCI_BST ordering to match Kconfig
  position (between CONFIG_MMC_SDHCI_TEGRA and CONFIG_MMC_SDHCI_F_SDH30),
  as pointed out by Krzysztof Kozlowski. Confirmed via savedefconfig.

[1] https://lore.kernel.org/lkml/20260123095342.272505-1-yangzh0906@thundersoft.com/
[2] https://lore.kernel.org/lkml/CAPDyKFrcXFAiYouOpjDx3NN-xWACU9jAzEfTU2m_-yvQ9SpC_A@mail.gmail.com/
[3] https://lore.kernel.org/lkml/12058c14-67c7-4b43-bbbc-ef0ccb813e61@kernel.org/

Albert Yang (2):
  arm64: dts: bst: enable eMMC controller in C1200 CDCU1.0 board
  arm64: defconfig: enable BST SDHCI controller

 .../dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts    | 19 +++++++++++++++++++
 arch/arm64/boot/dts/bst/bstc1200.dtsi         | 18 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |  1 +
 3 files changed, 38 insertions(+)


base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
-- 
2.43.0


