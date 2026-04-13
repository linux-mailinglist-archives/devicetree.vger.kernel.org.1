Return-Path: <devicetree+bounces-286940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OsDJTqv3GnfVAkAu9opvQ
	(envelope-from <devicetree+bounces-286940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:54:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F15893E9625
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4E1A300915D
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 08:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22523AC0E7;
	Mon, 13 Apr 2026 08:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="JZktgYiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49251.qiye.163.com (mail-m49251.qiye.163.com [45.254.49.251])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113DD3ACF18;
	Mon, 13 Apr 2026 08:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.251
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776070212; cv=none; b=FwyReRoiK+gNYWKBsUr6CHjYYfVACbAbZmjV6mBMnVswERyt48t115LNi6S/a++j7yhuaN4pmLrLyKlA9miq8irvfjOeYHTbki5LoACIPAdtlJDGey/IrTHNFdY+589OBA1iYsJ5RwMMgXl7Qq1v+jSW7DGDDdnLZU0y08aGRzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776070212; c=relaxed/simple;
	bh=a5cfvD79s13RodOBSnnS6MZy+PfOZ1JpGpK2+xNbky4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MKn5iNrxy/n+0917vW/v06US0w+j7r5Z7z9N9iaZTVn4DYv9+9qT32XA5R6ZhBBjPeHG/tC03hiEsNBvSTRW0XvmKb61nlO279lsggjiGWrsFHFGtPoOy4B6RZbYZ+AE2IrO3lskCqlJX1iX11NwI8wLQGV9ujy3JU5zGcryLAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=JZktgYiO; arc=none smtp.client-ip=45.254.49.251
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3a8013ec1;
	Mon, 13 Apr 2026 16:34:41 +0800 (GMT+08:00)
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
	yangzh0906@thundersoft.com
Subject: [PING] Re: [PATCH v7 0/2] arm64: dts/defconfig: enable BST C1200 eMMC
Date: Mon, 13 Apr 2026 16:34:41 +0800
Message-ID: <20260413083441.1758438-1-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260310091211.4171307-1-yangzh0906@thundersoft.com>
References: <20260310091211.4171307-1-yangzh0906@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d85fa86b809cckunmf74b8d5778cf66
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSE1MVkJKHR4eGB4eTk4YTlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0
	tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=JZktgYiOjdFMsJrxGJj2UQzex9sE2av8KIhm6YmDwj4Sp32hnsDurgnAodc8/nRAkMyd4qcUmCxdnUoxEylVWwzIeINsScDfCcxB99q9nMdBA8oJRS4afVj63efkiPZR0J8s0z5KqliwCz7vOph8io5yYdzsTe0DUoxIKsEqbqI=; s=default; c=relaxed/relaxed; d=thundersoft.com; v=1;
	bh=a5cfvD79s13RodOBSnnS6MZy+PfOZ1JpGpK2+xNbky4=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-286940-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,thundersoft.com:dkim,thundersoft.com:mid]
X-Rspamd-Queue-Id: F15893E9625
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof, Arnd, Rob, and Conor,

Gentle ping for this v7 series posted on 2026-03-10:
https://lore.kernel.org/lkml/20260310091211.4171307-1-yangzh0906@thundersoft.com/

This series only contains the remaining DTS + defconfig parts for BST C1200 eMMC:
- 1/2 arm64: dts: bst: enable eMMC controller in C1200 CDCU1.0 board
- 2/2 arm64: defconfig: enable BST SDHCI controller

The MMC driver-side patches were already applied in mmc-next, so this series is for
arm64/DT review and merge path.

No functional code changes since v7. If preferred, I can send a rebase/refresh (v8)
on top of current mainline immediately.

Could you please help review and let me know if any changes are still needed?

Thanks for your time.

Best regards,
Albert

