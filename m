Return-Path: <devicetree+bounces-261149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMSzN26DfGmBNgIAu9opvQ
	(envelope-from <devicetree+bounces-261149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:09:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B68B938A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 998773004DC3
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7974C33F36B;
	Fri, 30 Jan 2026 10:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="UMuHSfAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49201.qiye.163.com (mail-m49201.qiye.163.com [45.254.49.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5332326E16C;
	Fri, 30 Jan 2026 10:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769767788; cv=none; b=WkfT8oXsGWQBaznBdN4NN3OYMJsRDTnas1Yr7LhahU0JaO0cLOVnffUfRWuKH91G/29yNgwO73ruKUlc6eg2FI8DYZ0AssncAElM6wthFGwAUUz/UKvotdcC6ILM/h6wA+zTGcBino+cdP13rEcmQAblnBT5Uy66ISvYKpy3nTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769767788; c=relaxed/simple;
	bh=n1wZiyfMx8IVzYEySroLrCqNqngfCfq32/pkqb6D23M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bIOt1dtD6XpeA2IJ58U3HhosAmW8FsNlYmCeH5/DqXuJiAloEMd9hbBxORvmgJBKTZJJWE4n9jNR5CZzl9Atd71/QrUSP27s+9UgVmKtCnXNsRDbh5gRfCrzLpB/MCO8mm5liJRC3x6xe2Xgc6j30uGdd3AXlj0ush78Ef1xW/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=UMuHSfAk; arc=none smtp.client-ip=45.254.49.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 328f6f4d9;
	Fri, 30 Jan 2026 17:54:18 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ge Gordon <gordon.ge@bst.ai>,
	Arnd Bergmann <arnd@arndb.de>,
	BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] mmc: add support for BST C1200 SDHCI controller
Date: Fri, 30 Jan 2026 17:54:17 +0800
Message-ID: <20260130095417.2113714-1-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <CAPDyKFroOi-7Dir_H2fPX9Ne6zFeM4=XD0eMMrX+iJ_si1n2sA@mail.gmail.com>
References: <CAPDyKFroOi-7Dir_H2fPX9Ne6zFeM4=XD0eMMrX+iJ_si1n2sA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c0e532e3809cckunmaa8a7f704391b3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTxgdVh0ZTRpMGh9MHk9MSVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0
	tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=UMuHSfAk0aAdu1IEeRFzrjjsTO4tF2s6Mr3JysqxA/5Ua77xzrxshI/989J05RQqEDYScm/hFW4VTh+7jyioRGcQlAJ+TYZOBw5ogjv928dHxWM/zucPPjTafXmgM36L3kuhspp6+cAyIfXeLKSydnQdMZ0A7yE/0g+104mgxXw=; s=default; c=relaxed/relaxed; d=thundersoft.com; v=1;
	bh=n1wZiyfMx8IVzYEySroLrCqNqngfCfq32/pkqb6D23M=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-261149-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,thundersoft.com:mid,thundersoft.com:dkim]
X-Rspamd-Queue-Id: 41B68B938A
X-Rspamd-Action: no action

Hi Ulf,

On Tue, 27 Jan 2026 at 12:01, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Patch 1 to 3 and patch 6 applied for next, thanks!
>
> The DTS patches (patch 4 and patch 5) should be picked up by the SoC maintainer.

Thank you for the review!

I will send the DTS and defconfig patches (original v5 patches 4 and 5)
separately to the SoC maintainers as a v6 series.

Best regards,
Albert

