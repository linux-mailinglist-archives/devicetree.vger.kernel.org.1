Return-Path: <devicetree+bounces-310915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qQfxJab3K2rvIgQAu9opvQ
	(envelope-from <devicetree+bounces-310915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:12:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE4367945C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:12:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ViG6q725;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310915-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310915-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FC5C303D710
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8515B3C6608;
	Fri, 12 Jun 2026 12:09:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2B53939D3;
	Fri, 12 Jun 2026 12:09:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781266143; cv=none; b=eEMukn0k20Q2teerYVmTYlnXOexZgwh0/qdStGenkGoV7XjHnfE9vCES85aSTdoHmuqjq8JR+kjbsb06ULHkPAhUfmWY+lc+RaIm92CMKHbNwIz6gsALWfe/7NUrVHI36kuVckrHMBO3lTdQUTX8Ja3UDgGHobmUnCH+uBzq8dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781266143; c=relaxed/simple;
	bh=vZZNBZpg03GZePM1XbLyw8Yb8fwx8AAwujKOdt6HkaA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dM27pVIpD07RtwOhBnm/WQJpzdBYScFwdNNLGR7CrehAuHsaOyQ3fph0m+qZMWcEKwWS4E1kZ4akqgPf8la6Pu2NZCkG+B/LElbDIimxPJVqnHlk49+3ekKGZiSQKm3yX22WVdk9Po1PRcvLpoOCgTPeSu5Hm3Hk4JsH5YFwHy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViG6q725; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE211F000E9;
	Fri, 12 Jun 2026 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781266141;
	bh=WeMOrZ4SCOH4b+m2tEvM5n7H/P3euN/Cv5XE6OOLeBc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ViG6q725UvxzEJHZHIs/m3ST1Kafxg/biCMKmSuBF1MU4BPsZacwDaiS0MhCju1k0
	 0d05Zc7pHuEReClK2EONKFPrMLZhBrN0TOoIOnwOltd3hq63uWA5xO35JDHYhuw+FU
	 WMUGPUG1e9+Ev5YkVtkWkg8Uq3nKROWWMf0tyM26fQMVVazAA3kY3FldkbPobf65OV
	 RbVBPsqxFN7ZEtYzi4t0J+v12XxqjiFYph0xa9u1t1e1g0EvGQ75umfBUGTlr9jM7q
	 V0kiC1qikDAeyP3E4N68bc4/sQ5SX6kWxIN0nGNWj/1BU1CixyXc1NBO5UsP36gy1G
	 86aluM9YjzanQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 3/9] drm/bridge: fsl-ldb: Add support for i.MX94
Reply-To: sashiko-reviews@lists.linux.dev
To: "Laurentiu Palcu" <laurentiu.palcu@oss.nxp.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260612-dcif-upstreaming-v9-3-8d0ff89aa3c5@oss.nxp.com>
References: <20260612-dcif-upstreaming-v9-3-8d0ff89aa3c5@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 12:09:00 +0000
Message-Id: <20260612120900.AEE211F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310915-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:laurentiu.palcu@oss.nxp.com,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DAE4367945C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Pre-existing use of usleep_range() in an atomic commit callback (f=
sl_ldb_atomic_enable).
--

commit e14b3dd6d0171a77b5885d6c520dacd31270636e
Author: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>

drm/bridge: fsl-ldb: Add support for i.MX94

i.MX94 series LDB controller shares the same LDB and LVDS control
registers as i.MX8MP and i.MX93 but supports a higher maximum clock
frequency.

Add a 'max_clk_khz' member to the fsl_ldb_devdata structure in order to
be able to set different max frequencies for other platforms.

> diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fs=
l-ldb.c
> index bd03c36ee696c..b4959f654f2ac 100644
> --- a/drivers/gpu/drm/bridge/fsl-ldb.c
> +++ b/drivers/gpu/drm/bridge/fsl-ldb.c

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but I noticed a pre-existing
issue in fsl_ldb_atomic_enable() which executes as part of the atomic commit
modeset phase:

drivers/gpu/drm/bridge/fsl-ldb.c:fsl_ldb_atomic_enable() {
    ...
	if (fsl_ldb->use_termination_resistor)
		reg |=3D LVDS_CTRL_HS_EN;
	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, reg);

	/* Wait for VBG to stabilize. */
	usleep_range(15, 20);

	reg |=3D	(fsl_ldb->ch0_enabled ? LVDS_CTRL_CH0_EN : 0) |
		(fsl_ldb->ch1_enabled ? LVDS_CTRL_CH1_EN : 0);
    ...
}

Are sleeping functions permitted in this context?

Because fsl_ldb_atomic_enable() acts as an encoder atomic enable callback,
it runs in an atomic context where sleeping delays like usleep_range()
are forbidden.

Could this lead to kernel warnings, system instability, or deadlocks?

Should this be replaced with a non-sleeping delay like udelay()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-dcif-upstr=
eaming-v9-0-8d0ff89aa3c5@oss.nxp.com?part=3D3

