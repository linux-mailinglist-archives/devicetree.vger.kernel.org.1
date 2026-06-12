Return-Path: <devicetree+bounces-311176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YsYPJ6B3LGr0RAQAu9opvQ
	(envelope-from <devicetree+bounces-311176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:18:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE9367C7FB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:18:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Bblrr6VO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311176-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311176-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3F9DC301BBB0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 21:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25C938E8C1;
	Fri, 12 Jun 2026 21:18:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98E639A7F6
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 21:18:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781299089; cv=none; b=LPPIPV1OuAV0+/L3ckEDzlLxC4c6JwRjWZ83XLIZKQzKvdLwtLT5RI6oiQsko/CiQfqZyJ8ND01ZdlwPz3N31hsoB/PBpMTvhTfvbuMUEW/g9USBsb6wByYtNoEz0ldyRsGOddtt84JDNjipM4cX7LS3EUzHDLuk+wnK0y2J+Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781299089; c=relaxed/simple;
	bh=GexfY7151uEjpMET2EFfRky0wuACj3XS7YbZGBuwEoc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZvtJWqb93eOxaCOTsWaiRWOhgwQ6aNIhOuIlWl3piXwYPN02gAODbpKXGuj8392Xc68tfNW3foOjqFjqx5j5dArN2EtEfRGmJXGRG1qWlxmhW4owUjLDkpf2s/ndmTzbRE6iwxaaxS/79JyZLWUtuMHZDKY1u+AVHe7V2+UhO78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bblrr6VO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FC841F00A3F;
	Fri, 12 Jun 2026 21:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781299088;
	bh=B9RZRB9H4X0305K+mVhn7TcTK57e/5Xqb9XkO7I15M4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bblrr6VOswsvVqn1qBQ0cwJzZfEBA4MtnJUT+OJfShGt19Ax6AZE/MyHL1ImThnCV
	 8KQnvqJvcoXpwd6HsrNBkhUh7D54izrlt7Si4EFq5VPAYo/tXdhrvpV6WV/VHdba9t
	 ynEyCaY4sGVYw1bv8rtuNqg6QV2ZhCqHcy8jhhjPsB+wS3OnW1vRdT+UlhrHxfTMvQ
	 ndrUNVoul9H3rjKkVuPu8DeDKQw06QNyF8K6mmMDarjAF6vTOAsbgVffKGMZLl9pNv
	 4limAF/p7BAunrmo7vD2ZQZnxMJCpsA6uqlH+IkqCvrHWTzPYMQQlVYSXm5wGUFhox
	 rDDk/cH9uR5Ww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 2/8] soc: fsl: guts: add a global structure
 to hold state
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260612210859.266759-3-vladimir.oltean@nxp.com>
References: <20260612210859.266759-3-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 21:18:07 +0000
Message-Id: <20260612211808.1FC841F00A3F@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311176-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,kernel.org,vger.kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BE9367C7FB

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The global `soc.dcfg_ccsr` pointer is not cleared after being unma=
pped on the error path, resulting in a dangling pointer.
- [Medium] The globally mapped `soc.dcfg_ccsr` is leaked on multiple error =
paths during initialization.
--

commit 28927a6c50db9adc7ddb8b131d5e08a366298fb3
Author: Ioana Ciornei <ioana.ciornei@nxp.com>

soc: fsl: guts: add a global structure to hold state

Add the fsl_soc_guts structure in order to pass information like base
addresses, endianness etc between the init time and the runtime
operations. There is no point in mapping and unmapping the DCFG CCSR
space every time we need to make a read, just map it once and keep its
reference in this new global structure.

> diff --git a/drivers/soc/fsl/guts.c b/drivers/soc/fsl/guts.c
> index f87ee47c15035..a0a52a5603a5f 100644
> --- a/drivers/soc/fsl/guts.c
> +++ b/drivers/soc/fsl/guts.c

[ ... ]

> @@ -199,18 +202,17 @@ static int __init fsl_guts_init(void)
>  		return 0;
>  	soc_data =3D match->data;
> =20
> -	regs =3D of_iomap(np, DCFG_CCSR);
> -	if (!regs) {
> +	soc.dcfg_ccsr =3D of_iomap(np, DCFG_CCSR);
> +	if (!soc.dcfg_ccsr) {
>  		of_node_put(np);
>  		return -ENOMEM;
>  	}
> =20
> -	little_endian =3D of_property_read_bool(np, "little-endian");
> -	if (little_endian)
> -		svr =3D ioread32(&regs->svr);
> +	soc.little_endian =3D of_property_read_bool(np, "little-endian");
> +	if (soc.little_endian)
> +		svr =3D ioread32(&soc.dcfg_ccsr->svr);
>  	else
> -		svr =3D ioread32be(&regs->svr);
> -	iounmap(regs);
> +		svr =3D ioread32be(&soc.dcfg_ccsr->svr);
>  	of_node_put(np);
> =20
>  	/* Register soc device */

[Severity: Medium]
Since the iounmap() was removed here to keep soc.dcfg_ccsr mapped, what
happens if the subsequent soc_dev_attr allocation fails?

fsl_guts_init()
	/* Register soc device */
	soc_dev_attr =3D kzalloc_obj(*soc_dev_attr);
	if (!soc_dev_attr)
		return -ENOMEM;

Does this direct return leak the soc.dcfg_ccsr mapping?

Also, if soc_device_register() fails later in this function, the code does a
goto err:

	soc_dev =3D soc_device_register(soc_dev_attr);
	if (IS_ERR(soc_dev)) {
		ret =3D PTR_ERR(soc_dev);
		goto err;
	}

Because this bypasses the err_nomem label, does it also leak the
soc.dcfg_ccsr mapping?

> @@ -263,6 +265,8 @@ static int __init fsl_guts_init(void)
> =20
>  err_nomem:
>  	ret =3D -ENOMEM;
> +
> +	iounmap(soc.dcfg_ccsr);

[Severity: High]
Since soc is a static global structure, does calling iounmap() here leave
soc.dcfg_ccsr with a dangling, non-NULL pointer?

If a client driver later attempts to use the API and checks this pointer
after an initialization failure, could it lead to a kernel oops?

>  err:
>  	kfree(soc_dev_attr->family);
>  	kfree(soc_dev_attr->soc_id);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612210859.2667=
59-1-vladimir.oltean@nxp.com?part=3D2

