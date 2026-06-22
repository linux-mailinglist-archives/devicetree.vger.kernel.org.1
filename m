Return-Path: <devicetree+bounces-314221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XLzeCn7aOGpgjAcAu9opvQ
	(envelope-from <devicetree+bounces-314221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:47:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1B46AD01F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:47:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dEsWnSOd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314221-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314221-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C7E4302F983
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119E035F189;
	Mon, 22 Jun 2026 06:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038C435F179
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:44:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782110672; cv=none; b=cja5vmij+sjI1+mmbZ6lhzYI6wfW+wEuUcQjX5nCEqrzQAnCKOXwzEJ0OvLhIpS5ZscCF5erTwCu30GebB4gT8jG/1+C7G7cnsBpPugf+3MCpHfKnPsVqmFOwUGMIUescwW7XLXal0p/0WonTG0ZLTLfj2UjWTefy7S2fuGqmIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782110672; c=relaxed/simple;
	bh=OxEHUy5Ic1fu4YfX1SO8XomStbmjsfKgUH/Ujl5aiPs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qSR74HErY/jqcpb/MDJw9mI9SiD1HO36ts8fkSGUvE2EUc/CRUQiVIw4JK8Lb/oe19zqgpt5JS2ej9nL1ED+rJxa0pe6ET556yX/Nu6u42EzvcR+Xu/rr45asboEjX2Y/e/IfaoLHzMpR30PJMUQda1YF46dm6WreoXPVCaVg/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEsWnSOd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A34FA1F00A3A;
	Mon, 22 Jun 2026 06:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782110670;
	bh=WQtbgiZJGLXG47LaLFyvtVDRcLhjRjgon9OC9UTNq50=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dEsWnSOdIuT4JFWRYeRPmnZ6D5AxhcJOk1bFrZbfxLDDTjoLZMkjSOarY9cbaaxjC
	 JVSoS64b18wHqvnIGtYQruM5+i7wKqeJd48GdJi8UN3Rp0kkQ3BTJ6fHFJKro5rSYa
	 GmtGJigqX5IY7E7KxRCrHGvsyZgk+t9ctdN1R0McXx9rUC6T2Wp0Jm/8AtTvxTJVja
	 WenLnlI3X2GT6WWVmj02Q8FhOlb3wxvJAAM6YMPAJtIB7pk40FUmhYioRTJ0Bq1mUl
	 0mhJ2fJSyydjrDA8EcXyjsa8ZQkoHv2rRSVHpIzIsMFy1m3ZS5jb8mmAecDD2fFeiD
	 6zFHufqPbnS9g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] interconnect: qcom: add Maili interconnect
 provider driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Raviteja Laggyshetty" <raviteja.laggyshetty@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260622-maili_icc-v2-2-18b5ac08c04f@oss.qualcomm.com>
References: <20260622-maili_icc-v2-0-18b5ac08c04f@oss.qualcomm.com>
 <20260622-maili_icc-v2-2-18b5ac08c04f@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 06:44:30 +0000
Message-Id: <20260622064430.A34FA1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314221-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:raviteja.laggyshetty@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F1B46AD01F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free on driver unbind/rebind due to stale pointers in st=
atically allocated driver structures.
--

commit 9266119e904a5c675879f8849d752743c3590271
Author: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>

interconnect: qcom: add Maili interconnect provider driver
   =20
Add driver for the Qualcomm interconnect buses found in Maili
based platforms. The topology consists of several NoCs that are
controlled by a remote processor that collects the aggregated
bandwidth for each master-slave pairs.

> diff --git a/drivers/interconnect/qcom/maili.c b/drivers/interconnect/qco=
m/maili.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/interconnect/qcom/maili.c

[ ... ]

> +static struct platform_driver qnoc_driver =3D {
> +	.probe =3D qcom_icc_rpmh_probe,
> +	.remove =3D qcom_icc_rpmh_remove,

[Severity: High]
This isn't a bug introduced by this patch, but I noticed the framework
functions used here might leave dangling pointers in the static data struct=
ures
introduced by this patch.

During a driver unbind, qcom_icc_rpmh_remove() frees the dynamically alloca=
ted
nodes associated with the provider:

qcom_icc_rpmh_remove() {
    ...
    icc_nodes_remove(&qp->provider);
}

However, the qn->node pointers in the statically allocated driver structures
added in this patch are never cleared. If the driver is subsequently rebound
via sysfs, qcom_icc_rpmh_probe() sees the stale pointer and skips allocatio=
n:

qcom_icc_rpmh_probe() {
    ...
    if (!qn->node)
        qn->node =3D icc_node_create_dyn();
           =20
    node =3D qn->node;
    ...
}

Does this code result in a use-after-free when the freed node memory is
accessed during the rebind?

> +	.driver =3D {
> +		.name =3D "qnoc-maili",
> +		.of_match_table =3D qnoc_of_match,
> +		.sync_state =3D icc_sync_state,
> +	},
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-maili_icc-=
v2-0-18b5ac08c04f@oss.qualcomm.com?part=3D2

