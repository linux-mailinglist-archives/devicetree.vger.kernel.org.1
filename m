Return-Path: <devicetree+bounces-315148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qRzfOiyvO2ocbQgAu9opvQ
	(envelope-from <devicetree+bounces-315148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 12:19:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D436BD45E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 12:19:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=E9wqMxI9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315148-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315148-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF76330048CA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 10:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EEA818C332;
	Wed, 24 Jun 2026 10:18:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C88156F45
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 10:18:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782296291; cv=none; b=tw0TRnQoXaQ0Sy9bs7RLJbzP5PBYyEYG28WuN8DD+1eftNCROWZ11lI3kJXk3hoNZuSJITrw5PkiZE97agabFCmVfl2bB9AiiVqr+oZ+w0RLvHXX9MyGpWIhiJMbtZYecGTG9eLvnOXwDuPiVmRwZgORf/wOZqsp3pbBe9PKaX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782296291; c=relaxed/simple;
	bh=IWbCtGVDZuS6pPkrlxlzSjNW94v9BM6YmwNtUGFV2hs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=glD0NRrXYcKAPZTYXCE0wAduyTxf1O6rcx11ucx6Y31op5nbFVQ3aQcsEhtS7Okcs0VcidGHbtMbpuOO6CGQs060esCnlravLbDdFb9jY2doF8fEgBtxpPfEEpWFuQ+WH2cJ4RZhGvrVFesb6Jhtv1yZZWwk/eUrnbRDrxAuWF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9wqMxI9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA0691F000E9;
	Wed, 24 Jun 2026 10:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782296290;
	bh=IWbCtGVDZuS6pPkrlxlzSjNW94v9BM6YmwNtUGFV2hs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=E9wqMxI9T6vgPuvDd1T+WVEWN16asLbMiS7o8tuM69dzJH/5mk6+Pxqxn0YmT3Uqj
	 EGj77qF6xU7F7AY8boBeNbmbLW173w9/PjzJSd5/yISvwsrpGaBgC0nIa/Iy96bMjl
	 SBx4Ie0xrVZFwSj8dbOrpXbZKBx4pxqfp/r6aP7uNel3/6h37qSAikGtp4QLcnBbdq
	 QcyjLtGmJ7HuoDj5Q/0gnC3ZSdZf8OS4ipo8tbZfpWBFtY1w8zEy6tAMH+Jj4JKyTT
	 25I0bY7n+7MhJ8xE3BKA615OebJJiYxUaMs6twKjjfJu0ewE4CUXVYWTkBflwK8iMG
	 e49QG/6jzS8aQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: glymur: Add label properties to
 CoreSight devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624-add-label-node-for-glymur-v1-1-87576107b999@oss.qualcomm.com>
References: <20260624-add-label-node-for-glymur-v1-1-87576107b999@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 10:18:09 +0000
Message-Id: <20260624101809.CA0691F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315148-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38D436BD45E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message incorrectly references the 'hamoa' device tre=
e instead of 'glymur'.
--

commit 71aa487b99d4969110406291654e33f858011262
Author: Jie Gan <jie.gan@oss.qualcomm.com>

arm64: dts: qcom: glymur: Add label properties to CoreSight devices

This commit adds label properties to TPDM and CTI nodes to provide
human-readable identifiers for each CoreSight device.

> Add label properties to TPDM and CTI nodes in the hamoa device tree to
> provide human-readable identifiers for each CoreSight device. These
> labels allow userspace tools and the CoreSight framework to identify
> devices by name rather than by base address.

[Severity: Medium]
This isn't a bug, but the commit message explicitly states it is modifying
the "hamoa" device tree, while the patch subject and the actual modified
file (arch/arm64/boot/dts/qcom/glymur.dtsi) target "glymur". Could this
reference to "hamoa" be a copy-paste error from a similar patch?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-add-label-=
node-for-glymur-v1-1-87576107b999@oss.qualcomm.com?part=3D1

