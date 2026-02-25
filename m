Return-Path: <devicetree+bounces-268255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHcxJojLnmm0XQQAu9opvQ
	(envelope-from <devicetree+bounces-268255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:14:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34755195986
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:14:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7D10430BB75A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8FBD38E5D5;
	Wed, 25 Feb 2026 10:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="JSEUhPBV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32108.qiye.163.com (mail-m32108.qiye.163.com [220.197.32.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6556C37D101;
	Wed, 25 Feb 2026 10:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772014295; cv=none; b=qfu6ltIQbJcqyQJ9Px64v8M7C933M6wuCWDi7DFzYPGCzIpR66CAHgd1uGZXxxlB/qRSCEMi03qe0h/wNk8WcOCQ1UiHqeHjNwqBxezzkd5x1VvpfGhAu63ZOyg2PCYEvHMNPXepOmnBuGcTaHpx7cs8X/hK1yvRKE/VUt0AJf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772014295; c=relaxed/simple;
	bh=BVUKL+BN7NEsCLdGXwuB+2FnZi956ubMkNari+yq+9s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BAm8Eqxnip9TTyjoD4ybibQcYnbNcT3ifdq3/K+4ZZ0EB6xzCDYmPaVwrhcbLiYDh2jyXYV3OFbIVKKne7t+u07pItsQduBqa1nudWB2wz5b33bzhvo2QDRZcin1Hy6Yzql09uT8+QjaQNCYynfFllGxHoyZYT9FOsRqWocBI/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=JSEUhPBV; arc=none smtp.client-ip=220.197.32.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 34ea9e547;
	Wed, 25 Feb 2026 18:06:20 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: arnd@arndb.de,
	soc@kernel.org,
	krzk@kernel.org
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	gordon.ge@bst.ai,
	bst-upstream@bstai.top,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	yangzh0906@thundersoft.com
Subject: [PATCH v6 2/2] arm64: defconfig: enable BST SDHCI controller
Date: Wed, 25 Feb 2026 18:06:13 +0800
Message-ID: <20260225100613.3791261-3-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260225100613.3791261-1-yangzh0906@thundersoft.com>
References: <20260225100613.3791261-1-yangzh0906@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c94438d3e09cckunm3fc0fc0ab1afef
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHU8dVhkZGE4dT0pJT05OS1YVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSktISkxDSlVKS0
	tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=JSEUhPBVD6hKkRnOG45ELt6vl7vdvQ3THFNVDWlYAwK3wmld7QAWCrGo2AKiHJjYRT2FGDCDDo6EKUi30aow1xtOBfp96UckMsSQSIOoy8y+PqrAf5i3+UWLlLdwQR7AWBxkW9e5pv2brM+HwATxfCbd2rmdid7AdDa2y9U+YH4=; s=default; c=relaxed/relaxed; d=thundersoft.com; v=1;
	bh=6i6YHWbS70atz74nPkc4FhQ7yekh7SIze6KRm1M4GHc=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268255-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[thundersoft.com:mid,thundersoft.com:dkim,thundersoft.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 34755195986
X-Rspamd-Action: no action

Enable CONFIG_MMC_SDHCI_BST to support eMMC on Black Sesame
Technologies C1200 boards.

Signed-off-by: Albert Yang <yangzh0906@thundersoft.com>

---
Changes for v6:
- Fix CONFIG_MMC_SDHCI_BST ordering to match Kconfig position
  (between CONFIG_MMC_SDHCI_TEGRA and CONFIG_MMC_SDHCI_F_SDH30)
  as pointed out by Krzysztof Kozlowski. Confirmed via savedefconfig.

Changes for v5:
- Split from platform series per Arnd's feedback

Changes for v4:
- Move CONFIG_MMC_SDHCI_BST before CONFIG_MMC_SDHCI_F_SDH30

Changes for v3:
- Split from arm64: dts patch

Changes for v2:
- Initial defconfig change included in DTS patch
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 45288ec9eaf7..7b054da42fa9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1230,6 +1230,7 @@ CONFIG_MMC_SDHCI_OF_SPARX5=y
 CONFIG_MMC_SDHCI_CADENCE=y
 CONFIG_MMC_SDHCI_ESDHC_IMX=y
 CONFIG_MMC_SDHCI_TEGRA=y
+CONFIG_MMC_SDHCI_BST=y
 CONFIG_MMC_SDHCI_F_SDH30=y
 CONFIG_MMC_MESON_GX=y
 CONFIG_MMC_SDHCI_MSM=y
-- 
2.43.0


