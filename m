Return-Path: <devicetree+bounces-269950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGg7GsR3pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:43:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C299C1D7B0C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2CF7307455B
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB4B36308C;
	Mon,  2 Mar 2026 11:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="lKvN0TzU"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867A135A3B8;
	Mon,  2 Mar 2026 11:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451606; cv=none; b=RqJj8vpiLciu9dIB71Lqb2J8UTggWJpdA31axaW1SSmzRVmA+jq1JHnUDRoPbI/RRKhV1qUi68DwjBGLVNuO6WJ2gNqcHLLGfZsUbeZwjXP6eIg77gEiIIWEbsieKtfBvhijMj2EFoQJ05NSte3YVxAAV0AZuGZurSClmuGvKpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451606; c=relaxed/simple;
	bh=ILd3c3bq4qGeTlM9APZF9BYg/xFIlrN7rr1R7c/7o2w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lu6s3yEIkJOVpiQVgYrStZ7izX1xWAjj2r9oDX/y/4oQSRLKq9JxEMPh5v1JQSgrcS3hZXVBpKWwvMyNzyhqhyRUKT3zqv6G1QSKBBZvAdz6aucwGaXdN8WvKygiSRcS/dvSgQ9jlrMWHzjEusBxT+rzScuDDdSE7zgW7oZ+46Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=lKvN0TzU; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ro28tFWp3ykREphV4fjVk0Rx6JwVw+kWCf3UD7u3IBo=; b=lKvN0TzUR5Z/X2H+jShf7SgsRa
	p1jrUAN3j+PzIKw7FFNsyUgAQBD1ZJyDkraIl+Yzq/Yn/Vn7v3F6JXy5tuqQOUCs22RJgYAWT9tVA
	1ppS/wOSA2W0NZA+GtlXIz7iX2FJWl04H3iBahP0FL9MHRrnD/j84gdnOnr86/lqdUntyysR3vQ7w
	+z80jlpjJOF7KmXB0UQ9EqgPPk1V9+Z5BJZtsGgo1UmvASaAicuLXpIDuE8BkdDfUrPnDXzPeyadg
	2CV3ctGI/vmkR2no6lTAT9wbOxabIiKrFa2ugShXjLCMBr6CqYUaCOBVTV+HgCA1jBAsxZM3W6P+6
	MhezPKlA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix RTC compatible on rk3288-phycore-rdk
Date: Mon,  2 Mar 2026 12:39:54 +0100
Message-ID: <177245158236.769695.8825364259579491695.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260301124156.473862-1-festevam@gmail.com>
References: <20260301124156.473862-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269950-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:mid,sntech.de:dkim,sntech.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C299C1D7B0C
X-Rspamd-Action: no action


On Sun, 01 Mar 2026 09:41:56 -0300, Fabio Estevam wrote:
> According to st,m41t80.yaml, the correct compatible for the RV4162 RTC
> is "microcrystal,rv4162".
> 
> Fix it accordingly.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Fix RTC compatible on rk3288-phycore-rdk
      commit: 9a2337d87dc5b4e2441be51906659068b15ce3a9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

