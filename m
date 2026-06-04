Return-Path: <devicetree+bounces-306601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6VKaJu0VIWoV/AAAu9opvQ
	(envelope-from <devicetree+bounces-306601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:06:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E10D463D24A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:06:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H2q79PpH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306601-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306601-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2CD23005D1B
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 06:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBE23D47AC;
	Thu,  4 Jun 2026 06:01:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7103BFAE7
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 06:01:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780552886; cv=none; b=GrS8mXiDXqZktV5bltCXcuvIrT9ytVS0uKghyJQPLisovgRnbI/x4J3StADcMhzryhNRfFET56Iuq1sA7Kg7s/clfYUEqFoxiSuMYMex2K8E0n/uatnpaAefZql7lN9GRZIeyNgWtGrZbfIdPGT6uRLI+2Rj80TD8OgXcYVwCqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780552886; c=relaxed/simple;
	bh=qPheofKixSze/Y0mOV6JporlRTlqKhJXcmprfr6C63k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ig/PjZw4RsuGCHagMYZa0FPQQqhbg5UrjqA9TU/CNlG6DdS5V4nt/0pjMYY9ceaknaxz05OGsV+WNI4xhYMwiNF9RolWXidZ9hAhs4uWPRn5G07JB+LlncA+vNqFkqRaQIC919dIzIhjXshH7jl6t6UE3cSBpTMp/PoUmTOxGFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2q79PpH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACAD11F00893;
	Thu,  4 Jun 2026 06:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780552884;
	bh=yCg1xI6zGA/m0FPAvLZV/At+1tbXAGnTcZSD7P2FA9c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H2q79PpHAUNQ0JAJVC53AZaPTgCyHRugHrUbyLNkjNnHxOgiwSdjY7xjTmFxPP28n
	 24Ep2rYC2Hup27NIy+uX1nvR++dKo/zP5ICM0vlcptNiqvMnoV4JrpVBn64urOjyP6
	 1Ts1yLLmHm8AxwVXqNQV0He3VEU/zvHChosptHI4P1iBCBOGE7z5fmdrAp9l0JHePd
	 2mGxynyc5P/hebbqbS4BgC4uP6BtJY4188gjsshTXAxU+hGFK3Vx12NESGnj1koXPc
	 4nP0u95BcFuHYiFDficL+xkCyMXgHjTQ6/NErJ8KRbe+63RmtXlF46uXGiM7FfnMbv
	 cqTqrzh1HdU4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v9 2/6] net: airoha: Remove private net_device
 pointer in airoha_gdm_dev struct
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lorenzo Bianconi" <lorenzo@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260603-airoha-eth-multi-serdes-v9-2-5d476bc2f426@kernel.org>
References: <20260603-airoha-eth-multi-serdes-v9-2-5d476bc2f426@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 06:01:24 +0000
Message-Id: <20260604060124.ACAD11F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-306601-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E10D463D24A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Potential deadlock in airoha_update_hw_stats() due to use of spin_=
lock() instead of spin_lock_bh().
--

commit d33fdec52e6f77bf6de4ab248729e1a868e78dc6
Author: Lorenzo Bianconi <lorenzo@kernel.org>

net: airoha: Remove private net_device pointer in airoha_gdm_dev struct

This commit removes the redundant net_device pointer from the
airoha_gdm_dev struct. The code now relies on the netdev_from_priv()
routine to retrieve the net_device pointer. This is a refactoring change
with no logical modifications.

> diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ether=
net/airoha/airoha_eth.c
> index 6574901ebd19b..57a16de0a2ec7 100644
> --- a/drivers/net/ethernet/airoha/airoha_eth.c
> +++ b/drivers/net/ethernet/airoha/airoha_eth.c

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but I noticed a potential
deadlock in airoha_update_hw_stats():

drivers/net/ethernet/airoha/airoha_eth.c:airoha_update_hw_stats() {
	...
	spin_lock(&port->stats.lock);
	...
}

Does this code risk a deadlock? The ndo_get_stats64 callback
(airoha_dev_get_stats64) can be executed in softirq context, while this
lock is also acquired from process context (e.g., via ethtool) without
disabling softirqs.

If a softirq interrupts the process context reader holding the lock on the
same CPU, wouldn't it spin forever trying to acquire the same lock? Should
spin_lock_bh() be used here instead to prevent this?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-airoha-eth=
-multi-serdes-v9-0-5d476bc2f426@kernel.org?part=3D2

