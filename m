Return-Path: <devicetree+bounces-323224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hx8AJJPQTmqPUgIAu9opvQ
	(envelope-from <devicetree+bounces-323224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:34:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4056972AE6D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:34:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="SrNLo3O/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323224-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323224-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 17374302F410
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10B73FF891;
	Wed,  8 Jul 2026 22:34:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1223381B1A
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:34:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550095; cv=none; b=d0uOWf4T7IgYNOB/nRrSWhPLgjXD1s1CD3wqyH1E/IlhhBkWUXOZSS+XMURH/kQIc0lK/SCP8TUOw5Sh3dRKJDE6ce5dPbwWPzsv+thym0GA80jfK5KwvO2jrssNBxlsGpCEk7T3TqiGYc8lsAbXpoA3TSfIEri4EWQAobndPzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550095; c=relaxed/simple;
	bh=WpytCOxf4euG87PaAFuXEuUjF01KiszumN6wnCnpyPY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Wb66lphKZu2JADQlvL2cwLKnaPuzUc2IB65z+0eD5U/APlbNctSmDcFU2TwkUmbNBHxo86TNvFsTsp+c3J5BmwSVzOvEVf4BqfdhXiTiMOc71vnCMblF+tlSMokQleSKop/zb7wrfojn3P7UJgffup8MUHtEjhtoa6vgkO2UAGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrNLo3O/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ADE71F00A3A;
	Wed,  8 Jul 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783550094;
	bh=O3AghSw3Dxi9go50hkWyLWPozj3un4PEFhkVxnq3zUI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SrNLo3O/0VoH0kP8ag8fTgMXZr0OYty+5e6vdr3E+deHEi00Eq41TfzVOu1+4pVOX
	 Us4dDewbwfu7A+nKmrnNgM8wz+f0ONfsIg8aEjS6XRWwmLHtqaNnpRp8jHayjkbKJJ
	 dFDaIu2SAp6CnT3SPae/wvPErZbX6l63dXhoImiZ3cP9JC8Y6aFDfPXiU9csITqQSY
	 why7otT4S6QEWcFrj1XrXMbSSPKknRR7g9JliO9x3kT5ln0QgP1GIfTQ8j7u+d1Coa
	 j02zN2cxKCY13YS5x8BcOO954MfK9LUWNGSRMqwr9q2UjkExI519a04MU6JD2JoV6g
	 f3RBUPH/fpJzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 05/13] net: ethernet: oa_tc6: Export
 standard defined registers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus" <ciprian.regus@analog.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-adin1140-driver-v5-5-4aca7b51a58b@analog.com>
References: <20260708-adin1140-driver-v5-0-4aca7b51a58b@analog.com>
 <20260708-adin1140-driver-v5-5-4aca7b51a58b@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:34:53 +0000
Message-Id: <20260708223454.0ADE71F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323224-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ciprian.regus@analog.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4056972AE6D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Exporting generic macro names (e.g., `CONFIG0_SYNC`, `RESET_SWRESET=
`) to a global header without a subsystem prefix pollutes the global namesp=
ace and risks macro collisions.
--

--- Patch [5]: [PATCH net-next v5 05/13] net: ethernet: oa_tc6: Export stan=
dard defined registers ---
commit 4ff73c98efb9b6327cdf6a32eb7febe13e03abfa
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Export standard defined registers

This commit moves definitions for standard Open Alliance TC6 register
addresses and subfields from the driver into the include/linux/oa_tc6.h
header. This allows other ethernet drivers that rely on oa_tc6 to use
them directly.

[ ... ]

> diff --git a/include/linux/oa_tc6.h b/include/linux/oa_tc6.h
> index 2660eefa35043..d99e0f79af84b 100644
> --- a/include/linux/oa_tc6.h
> +++ b/include/linux/oa_tc6.h
> @@ -10,6 +10,56 @@
>  #include <linux/etherdevice.h>
>  #include <linux/spi/spi.h>
> =20
> +/* OPEN Alliance TC6 registers */
> +/* Standard Capabilities Register */
> +#define OA_TC6_REG_STDCAP			0x0002
> +#define STDCAP_DIRECT_PHY_REG_ACCESS		BIT(8)
> +
> +/* Reset Control and Status Register */
> +#define OA_TC6_REG_RESET			0x0003
> +#define RESET_SWRESET				BIT(0)	/* Software Reset */
> +
> +/* Configuration Register #0 */
> +#define OA_TC6_REG_CONFIG0			0x0004
> +#define CONFIG0_SYNC				BIT(15)
> +#define CONFIG0_ZARFE_ENABLE			BIT(12)
> +#define CONFIG0_PROTE				BIT(5)

[Severity: Low]
Is it safe to export generic macro names like CONFIG0_SYNC and
RESET_SWRESET to a global header without a subsystem prefix? Could this
pollute the global namespace and cause macro collisions with other drivers?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-adin1140-d=
river-v5-0-4aca7b51a58b@analog.com?part=3D5

