Return-Path: <devicetree+bounces-317307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xuXgGVHxQmpTJQoAu9opvQ
	(envelope-from <devicetree+bounces-317307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:27:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4056DF07B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:27:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LVmt0ruy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317307-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317307-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 60093300DEE7
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6E138655C;
	Mon, 29 Jun 2026 22:27:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9B3358360
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 22:27:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782772047; cv=none; b=MXjFII4ef4GqlzmNJhTJ9lmuPXSIwgYIs+xGS42cigMwfuPSGOiJV/1M9nI8GA7bUc7Ba08iw/szw/m4f1gPvfIzsHJOjoFbrt6k4BPCEvJ5f5kq14cfZhZK5v3/JbbKKTxP3qjkZLGPlEu8ZxnAJUiywNiykkIajbXgIjchv3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782772047; c=relaxed/simple;
	bh=oBUfxKQSOoqc3F1m++J4pP30DGvBdHoCOJwpaLicfqk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NPV2kXT/cO9ab6m+OW4C2VI30ayItbZdMFRl8DED8ECM+4bBoU/jngyXUR4BGf/XXcEWmXcPx1ZUluiuduDsY56AHxTkc/mtD2oOp1UePKPO3kr4+R/h2S0mEsQuLeNy5LDqnhen3Sk1zSMJNrx/MDDAk/4JEPTtKfKmpAiJ23w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVmt0ruy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00C801F000E9;
	Mon, 29 Jun 2026 22:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782772046;
	bh=1cI6rcjZoaklNTXCMoDFVhT5gu3S/3sxs54Xma7nZgo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LVmt0ruylRc+aDA/PK33rM6S6PnGN3PD47bMYlJBSsSZ2Ul49RFFUgp5EpViGKnVL
	 YGrqEAjSyHWTKEXQx/d9+ok4s2bTK8V0OzFCaQlLqvF0xruEKdYhY0+rEh4YRTtva/
	 8Wyc9QF5z5VlFMlS7uRUrX/ayI7/wk2NQP1G1dGZzbsEQwlEeXn5ewd03UP4afmuBb
	 k0GdU0tBRuW98xdWKJ/YGSer2IGpHGHaD6TeByr9eyPZmxK/VYCzSRzYQMkZcw8QlD
	 MvmtMWA9ZDrhsz0aS0U9PJT3+I+Rkd0JOdJVMmdLQxKFdWIV2sTeBavbsGT/Az83Xm
	 6RmpfCtAh9R2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 2/2] net: pse-pd: add Realtek/Broadcom PSE
 MCU driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jonas Jelonek" <jelonek.jonas@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260628222705.4052815-3-jelonek.jonas@gmail.com>
References: <20260628222705.4052815-1-jelonek.jonas@gmail.com>
 <20260628222705.4052815-3-jelonek.jonas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 22:27:25 +0000
Message-Id: <20260629222726.00C801F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317307-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jelonek.jonas@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:jelonekjonas@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA4056DF07B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Incorrect module owner assignment in `rtpse_mcu_register` allows t=
he transport module to be unloaded while active, leading to Use-After-Free.
--

commit 7bb530c7721986789a60e3b5029b0d7f2ddc58d4
Author: Jonas Jelonek <jelonek.jonas@gmail.com>

net: pse-pd: add Realtek/Broadcom PSE MCU driver

This commit adds a driver for the microcontroller that fronts Realtek and
Broadcom PSE chips. It splits the implementation into a shared core module
and separate I2C and UART transport modules.

> diff --git a/drivers/net/pse-pd/realtek-pse-mcu-core.c b/drivers/net/pse-=
pd/realtek-pse-mcu-core.c
> new file mode 100644
> index 0000000000000..718788d13d90e
> --- /dev/null
> +++ b/drivers/net/pse-pd/realtek-pse-mcu-core.c

[ ... ]

> +int rtpse_mcu_register(struct rtpse_mcu_ctrl *pse)
> +{

[ ... ]

> +	/*
> +	 * Depending on the MCU firmware configuration (which might be different
> +	 * for every board), it isn't known whether the PoE subsystem is active=
 or
> +	 * inactive by default. At this stage, the PSE chips might already deli=
ver
> +	 * power to PDs without any explicit enable.
> +	 */
> +
> +	pse->pcdev.owner    =3D THIS_MODULE;
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

[Severity: High]
Does this assign the core module as the owner instead of the calling transp=
ort
module? Since this executes in realtek-pse-mcu-core.c, THIS_MODULE resolves
to the core module, leaving the transport module (e.g., realtek-pse-mcu-i2c)
unpinned.

When a consumer gets a reference to the PSE controller, it pins the core
module, but an administrator can still unload the active transport module.
Unloading the transport module triggers device unbinding and devm resource
cleanup, which frees the pse structure while it is still active, leading to
a use-after-free on subsequent PSE operations.

> +	pse->pcdev.ops      =3D &rtpse_mcu_ops;
> +	pse->pcdev.dev      =3D pse->dev;
> +	pse->pcdev.types    =3D ETHTOOL_PSE_C33;
> +	pse->pcdev.nr_lines =3D info.max_ports;
> +	pse->pcdev.pis_prio_max =3D RTPSE_MCU_PORT_MAX_PRIORITY;
> +	pse->pcdev.supp_budget_eval_strategies =3D PSE_BUDGET_EVAL_STRAT_DYNAMI=
C;
> +
> +	return devm_pse_controller_register(pse->dev, &pse->pcdev);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628222705.4052=
815-1-jelonek.jonas@gmail.com?part=3D2

