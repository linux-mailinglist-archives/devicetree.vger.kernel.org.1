Return-Path: <devicetree+bounces-310339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZgNlIKiNKmoksQMAu9opvQ
	(envelope-from <devicetree+bounces-310339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:27:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D30A9670D8A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:27:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gvt5C1f3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310339-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310339-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 716AB315DA2F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033673C9EE8;
	Thu, 11 Jun 2026 10:26:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53E5367B83
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 10:26:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781173562; cv=none; b=UEtlWy0qn1/YysTPNt5wx66LtLexhUJa2OrHnrPOpjU8S7BKRHhSFOTRj5lK/YJ4FwBs0rT+Fa03gUt9Z8uQe+64EZ+0zc5ZEVT7UFQ3TItyfrBHXpFYrneaFacXH7U0wZOJaBrayCuDZJnMJw5MBFO5Wip/obru/440fMWs8yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781173562; c=relaxed/simple;
	bh=pZctcd1PryL5EoGrIsJlimGfwsmgSofeJNhNJtnB8tY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dKr+Xp2dXRzaZHEpacUfkPSKNoIytoD0gyTmdv9QyPKZ7oDm2UlLAG45ldZUfEDVbR40GRTDXV5lBHdt3g7Djk2kBTO3Lho3owfayafAMQx2pM4omKyvK3+fmaQFCBKfD3GV8DVPV+bnFW0zLJ3rkqW3Ulx0tooRSBrr90d1lA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gvt5C1f3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B1BC1F00893;
	Thu, 11 Jun 2026 10:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781173561;
	bh=a/SrpuYXNyYDR1KM8nnrUZSMl5wTcZFs+3TBeQ7esaU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gvt5C1f3ZDTEqURxJhCItJnyECHLmbwgMDxdyN9q37coHLmiw31JuDOFS53B33uGg
	 pp9Yy4hjpHddmXFbBbFgt9G8IdpLvUkOPgbguo3mAxIVpp3/IPHZ5jT2KthL5fquMB
	 UGIOuTCarapFAPUf/Bbf+PhNlc5RqwXEdgw3x1+MOOhJ1VOigXMPMaF73NQLaCiksX
	 mSiw1JAuOpJcNuVMISpRZD27ColRa5xtW5lDHptUG2YvNwodEZzc5Y9m3TK+PfRpPB
	 LhAf6dLN136zBJqbUU09tmK4RHV5l3RR8H7JCi7O9KsAmE/phFImmWikkCG6tEaGj5
	 F4wE/HM012t7A==
From: sashiko-bot@kernel.org
Subject: Re: [net-next 1/9] net: ethernet: ravb: Remove gPTP control from
 WoL setup and restore
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260610102432.3538432-2-niklas.soderlund+renesas@ragnatech.se>
References: <20260610102432.3538432-2-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 10:26:00 +0000
Message-Id: <20260611102601.2B1BC1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310339-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,ragnatech.se:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:niklas.soderlund@ragnatech.se,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D30A9670D8A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unchecked return value of ptp_clock_register() leads to a kernel p=
anic in ravb_ptp_stop() on failure.
--

commit 4d5ada4dabf46fceeae07f219f72c4daaba09e17
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

net: ethernet: ravb: Remove gPTP control from WoL setup and restore

This commit removes the explicit stopping and starting of the gPTP clock
during Wake-on-LAN (WoL) setup and restore. This is because the ndev is
always closed and re-opened during system suspend and resume, which handles
the clock state automatically.

> diff --git a/drivers/net/ethernet/renesas/ravb_main.c b/drivers/net/ether=
net/renesas/ravb_main.c
> index 5f88733094d0f..77c0645a1c4d3 100644
> --- a/drivers/net/ethernet/renesas/ravb_main.c
> +++ b/drivers/net/ethernet/renesas/ravb_main.c
[ ... ]
> @@ -3201,9 +3198,6 @@ static int ravb_wol_restore(struct net_device *ndev)
>  	if (error)
>  		return error;
> =20
> -	if (priv->info->ccc_gac)
> -		ravb_ptp_init(ndev, priv->pdev);
> -

[Severity: High]
This is a pre-existing issue, but since this patch involves the usage of
ravb_ptp_init() and ravb_ptp_stop(), does ravb_ptp_init() need to check
the return value of ptp_clock_register()?

In drivers/net/ethernet/renesas/ravb_ptp.c:ravb_ptp_init(), the return value
is assigned directly without using IS_ERR():

    priv->ptp.clock =3D ptp_clock_register(&priv->ptp.info, &pdev->dev);

If ptp_clock_register() fails and returns an error pointer like
ERR_PTR(-ENOMEM), priv->ptp.clock will hold this error pointer instead of
a valid clock or NULL.

Later, when ravb_ptp_stop() is unconditionally called during teardown or
driver removal, it executes:

    ptp_clock_unregister(priv->ptp.clock);

Could this cause a kernel panic when ptp_clock_unregister() dereferences
the error pointer (e.g., when locking the internal mutex via
ptp_vclock_in_use)?

>  	if (info->nc_queues)
>  		napi_enable(&priv->napi[RAVB_NC]);
>  	napi_enable(&priv->napi[RAVB_BE]);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610102432.3538=
432-2-niklas.soderlund+renesas@ragnatech.se?part=3D1

