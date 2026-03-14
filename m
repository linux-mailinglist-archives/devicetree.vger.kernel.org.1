Return-Path: <devicetree+bounces-275623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hsLkMVkTtWnuwAAAu9opvQ
	(envelope-from <devicetree+bounces-275623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:50:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E47C28BFA1
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C1827301283B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 07:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD0C30F7F2;
	Sat, 14 Mar 2026 07:50:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F14303A12;
	Sat, 14 Mar 2026 07:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773474644; cv=none; b=QXaOhhzw/xZPVWW1FX7++PfdD01L7O+Tnd5Dvo07GMIatLxToDO+ujkTcGrox8uacwzXkzNPVRG/mReMRJwYz9Lx/1Tmo9iu5r5nX8MYcSMCwH2TqHACJy3pqdR6W+QDA38vMlej0DmbAxa6ZfMuWDWQOVMQNL9J3swr3cRBWtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773474644; c=relaxed/simple;
	bh=gLkElNC3ATunKczn+tZS/GDOLAtWDHExal+eSc9uxDM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HmsXUbBnUtsBLc0JqP/HwWC/ZpbnDfUnLKX4MjBLbfmjixyP2UbiDB5hHaPSptJzLD5UsRUF2OCzpnVY5QLHEPgifepH07CrVBDgUBRmF2irG+jhdxvjKzWwOTOk1WHhb9QbKOPny9NiPZhenv1scDKC4+rdLu6iLGw0l/VyZI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.lan (unknown [116.25.94.199])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36eefd4f7;
	Sat, 14 Mar 2026 15:50:36 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: dlan@kernel.org
Cc: alex@ghiti.fr,
	amadeus@jmu.edu.cn,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	gaohan@iscas.ac.cn,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	rabenda.cn@gmail.com,
	robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 7/7] riscv: dts: spacemit: PCIe and PHY-related updates for OrangePi RV2
Date: Sat, 14 Mar 2026 15:50:28 +0800
Message-Id: <20260314075028.2571780-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310090359-GKF302167@kernel.org>
References: <20260310090359-GKF302167@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ceb53613803a2kunmc0b324c6729e4
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTUxKVhkYGkpLSkseTkwfQlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VSkJCWVdZFhoPEhUdFFlBWU9LSFVKS0hJTU9CVUpLS1VKQk
	tLWQY+
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275623-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ghiti.fr,jmu.edu.cn,eecs.berkeley.edu,kernel.org,vger.kernel.org,gentoo.org,iscas.ac.cn,lists.infradead.org,dabbelt.com,gmail.com,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,jmu.edu.cn:mid]
X-Rspamd-Queue-Id: 8E47C28BFA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

> I agree, if the phy is used for USB, the pinctrl info can be dropped
> Do you want to submit a patch for this?

I will submit a patch to drop the pinctrl.

Thanks,
Chukun

