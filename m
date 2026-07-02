Return-Path: <devicetree+bounces-319464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tEXWHc2LRmo/YQsAu9opvQ
	(envelope-from <devicetree+bounces-319464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 18:03:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C33A6F9DC7
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 18:03:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dm7T739l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319464-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319464-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C6793076F1D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 16:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56F1C30D415;
	Thu,  2 Jul 2026 16:01:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFC130C366
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 16:01:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783008087; cv=none; b=a10cx9usgCo5DoBzColoqu1jrRqL0JlBAQ2HIA9u9iiNOouGe7gk41SHEFh3iDtenJcV+zDaJJdxe9TM28senhF9dzu9nUMeQl/Kv8nMVQWWRY/epu1JgdG+Na9+psoPBtD65Q8utpV64oRQ2NkcQJnwfJVGY4ePtDgPou+ph78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783008087; c=relaxed/simple;
	bh=qSp5Q5OyVyajKFtOemZd+j76NjNMqVhPJ66/XfYRPlI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jrUI72R/esAUgSmrlgIP8rbyM3/dkjezrYPKqp8Nw4vJ6eiq0asbiBOtME5w/r5lWuYDsLDTquJbPIsO0LvS7emQoYkYBiaIqEtCcfgsd7sjSA4lIN4HeFp+lU0PgUVK0QFdUnwcvsYOxG0PT6pnQXeL3NOnP6MVI7BW4oYujpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm7T739l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BA2D1F00A3A;
	Thu,  2 Jul 2026 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783008085;
	bh=qSp5Q5OyVyajKFtOemZd+j76NjNMqVhPJ66/XfYRPlI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dm7T739lZr/AgDDIRfK6m4APMd3+COpQXeWgXtR1p/uXZCKe9zDlln87DJtLjXVkM
	 tNfQL2QKWtD4xsbcfCMQTTUidie5GeYhfan74aSN/JYGj2Ow8RwqLvgBpG6yhRJfMq
	 ImiB1qU03xzzDJmZnu1OaJw68dZnnnDEQzFbAaqUX7vG/LVn9nFKAdcjQ3o+STywps
	 meNWfji7oy+w9sdY9B+ub4MWNxmTrMLO1ZvNuXd7Hr04vMXyPMt2KmDQrhFw+52iSy
	 HYOjL2aam+1yYwuxBYrOQhzAb+JCzSa1t+2jr9YNKah2N8NvRH/xbhd0I/ZkH4sMv1
	 MFSEnIYntqqng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/9] block: implement NVMEM provider
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701-block-as-nvmem-v7-5-3fe8205ef0a8@oss.qualcomm.com>
References: <20260701-block-as-nvmem-v7-0-3fe8205ef0a8@oss.qualcomm.com>
 <20260701-block-as-nvmem-v7-5-3fe8205ef0a8@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 16:01:25 +0000
Message-Id: <20260702160125.7BA2D1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319464-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,makrotopia.org:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C33A6F9DC7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unhandled error pointer leads to kernel crash during device teardo=
wn.
--

Note: The format of this review is altered to provide a free-form summary of
the findings rather than inline patch quotes, due to code recitation
restrictions.

commit 14d86ba6622184a8e17868cd135ba0bd9e1e05b2
Author: Daniel Golle <daniel@makrotopia.org>
Subject: block: implement NVMEM provider

This patch allows block devices or partitions to act as NVMEM providers.
It registers an NVMEM device based on the block device's OF node layout.
It hooks into the disk addition and deletion paths to register and
unregister the NVMEM device.

[Severity: High]
In block/blk-nvmem.c:blk_nvmem_add(), if nvmem_register() fails, it returns=
 an
error pointer which is directly assigned to bdev->bd_nvmem. The function
then returns the error code via dev_err_probe() but leaves bdev->bd_nvmem
holding the error pointer instead of resetting it to NULL.

Since add_disk_final() in block/genhd.c calls blk_nvmem_add() without
checking its return value, the disk is successfully added even if the NVMEM
registration fails.

Later, when the disk is removed, __del_gendisk() calls blk_nvmem_del(),
which passes bdev->bd_nvmem to nvmem_unregister(). Because
nvmem_unregister() only checks if the pointer is NULL and not if it is an
error pointer, won't this result in a kernel panic when it attempts to
dereference the invalid error pointer?

Could this be avoided by explicitly setting bdev->bd_nvmem to NULL on the
failure path inside blk_nvmem_add() before returning?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-block-as-n=
vmem-v7-0-3fe8205ef0a8@oss.qualcomm.com?part=3D5

