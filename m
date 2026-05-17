Return-Path: <devicetree+bounces-298834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBlfDN1oCWouYwQAu9opvQ
	(envelope-from <devicetree+bounces-298834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 09:06:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F2355F989
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 09:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43713300B041
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 07:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDF1307481;
	Sun, 17 May 2026 07:05:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BA62FE56F;
	Sun, 17 May 2026 07:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779001531; cv=none; b=hzqYO8+bZITprb3/qfmHhAx6yRPXCPQMnZiIrr9uML/psPRRZZAlSkmbGHvoTBjyK4ulftE616WlR43GdAeWtmyxoQCtTYiD9EsuNWtR8iWO2n0YGHtU3dtBeSNONnwipoB6jmyYO2+aSz8tVbYefpDjMaJZn1UABPStzOMtTho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779001531; c=relaxed/simple;
	bh=pShye0OKl2FKUITelBTK/F1J9muALv+vuqGujMe/U2A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QZ884+gSIm9i+xo2cnZO/0jbUvl5n/Eqmi0UrsjNfJ8xzANKZ+N9w/qNjyI+Ihmxl77sKcgpDfcC5waacyVa36vyfxvPRqCOWXuGIcVWUGrzDzxBh5bIkSRbsHNwGhgM/e2GkAY2dUiv4LNwZJcACo1csdK2zE6Q7GGPzltrE0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.. (unknown [119.122.215.211])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3eb40bc05;
	Sun, 17 May 2026 15:00:14 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: dlan@kernel.org
Cc: alex@ghiti.fr,
	amadeus@jmu.edu.cn,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: enable QSPI for OrangePi RV2
Date: Sun, 17 May 2026 15:00:06 +0800
Message-Id: <20260517070006.1836396-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <177893657188.2456968.7429508961699495905.b4-ty@b4>
References: <177893657188.2456968.7429508961699495905.b4-ty@b4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e34bc44fe03a2kunm6878ac1010c8b4
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTRhOVkkZGh4dGhgYS0gaSlYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVJSkpZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JNS0pVSktLVUtZBg++
X-Rspamd-Queue-Id: B4F2355F989
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298834-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jmu.edu.cn:mid,a0000:email,a00000:email]
X-Rspamd-Action: no action

Hi,

> Applied, thanks!

Wow, you're so fast!
The robot report has one typo:

> +			uboot@a00000 {
> +				reg = <0xa0000 0x760000>;
> +			};

This should be:
```
			uboot@a0000 {
```

Could you fix it? Or I can send the v2 patch.

Thanks,
Chukun

