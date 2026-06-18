Return-Path: <devicetree+bounces-313336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8t5yGTK5M2ryFQYAu9opvQ
	(envelope-from <devicetree+bounces-313336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:24:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B46E969ED51
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:24:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BUBHclHT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313336-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313336-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1E5A3023DDC
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24FAE364933;
	Thu, 18 Jun 2026 09:20:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6453C5DA1
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 09:20:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781774439; cv=none; b=llUnczDuRJy5o0/DQ8TjajAhlAgM8k/NUlIYgTlnA8sxTHkrgIwL1KJLvLjm6c84sGbJUcNnrkfE2BUHYdIAWb19g8rGoiav9w+dRl5rqSH4PHL68TCZnCgwAQTYm/fuY+XhDg6Mn1ICZcqNxOk9EJ+33jim0uWJk6eLaHUbf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781774439; c=relaxed/simple;
	bh=7smML9Vc6YpfDvSpzbfSTTrpQeYp5UB/6AeWkoTZv50=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Nmu5amjHdCS5JIDs85Egyqe32V8gwXbHX/UbyHNFgIpB52kjVj+n7cI8DMrjLYE51jtdTascKDMHy94mEcEM3AfuNVIN8wFrhdFKre/rHg8uHQ82E6S/KjLmE2DUSZrt48OB/jA1nzOPuTnwCHra7aANM2ykfaDkLoYltnWDdt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUBHclHT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E14AF1F00A3A;
	Thu, 18 Jun 2026 09:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781774437;
	bh=cJz0SJtZXdsf1GrxBCFRMa395UmybfHcXqZDwsAKp60=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BUBHclHTP3N/M/R6nRS4K54CmrIRr6GRAPqstl/i9gzPYm+QaenSIpZY2tCXAp2mS
	 7up/PxaE7xvc5hmTmXIULSPpYlw8SNqXPdPzxlYbYe5znyhkWbjvFojK+owT76JwG6
	 JLf7eWkvFDL9w3KrNgl3NznTZU3SZiHM6u2w0hV231W6Xs2rDfNp13k/X9cZk0J6GT
	 bCcA6LMQ6xdqPccv2NBX/wnhvBKd19/CmPF84QQogwSaaxMfZ2z4UmWHucHQEIZeMA
	 y6ew1HxjbfyM/EX/uqgs87xpIJuET9L38/QNqDUKOZcdZb9exATpm/UwmtDgCuPxoL
	 0cBM88wJJHnWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] spi: qcom-geni: Use geni_se_resources_init() for
 resource initialization
Reply-To: sashiko-reviews@lists.linux.dev
To: "Praveen Talari" <praveen.talari@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260618-enable-spi-on-sa8255p-v4-2-f5b5067e7e1e@oss.qualcomm.com>
References: <20260618-enable-spi-on-sa8255p-v4-0-f5b5067e7e1e@oss.qualcomm.com>
 <20260618-enable-spi-on-sa8255p-v4-2-f5b5067e7e1e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 09:20:36 +0000
Message-Id: <20260618092036.E14AF1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313336-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:praveen.talari@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B46E969ED51

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Low] The `geni_se_resources_init()` function is missing from the kernel =
tree.

Pre-existing issues:
- [High] Asynchronous `pm_runtime_put()` is used on error paths that immedi=
ately call `pm_runtime_disable()`, risking the hardware being left in an in=
valid active state.
--

commit e8e291bf8f15d73b4da4bf256d08b86fec92a093
Author: Praveen Talari <praveen.talari@oss.qualcomm.com>
spi: qcom-geni: Use geni_se_resources_init() for resource initialization

This commit replaces individual resource initializations such as clocks, ICC
paths, and OPP tables with a common geni_se_resources_init() function. This
aims to reduce code duplication and ensure consistent resource management
across GENI SE drivers.

> diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
> index 26e723cfea61e..09feb6577efcb 100644
> --- a/drivers/spi/spi-geni-qcom.c
> +++ b/drivers/spi/spi-geni-qcom.c

[ ... ]

> @@ -1079,17 +1074,10 @@ static int spi_geni_probe(struct platform_device =
*pdev)
>  	mas->se.dev =3D dev;
>  	mas->se.wrapper =3D dev_get_drvdata(dev->parent);
>  	mas->se.base =3D base;
> -	mas->se.clk =3D clk;
> =20
> -	ret =3D devm_pm_opp_set_clkname(&pdev->dev, "se");
> +	ret =3D geni_se_resources_init(&mas->se);

[Severity: Low]
Is this function defined anywhere in the kernel tree?

It doesn't appear to be declared or defined in this commit or the existing
codebase, which results in an implicit declaration error and linker failure.

>  	if (ret)
>  		return ret;

[ ... ]

> @@ -1115,24 +1103,12 @@ static int spi_geni_probe(struct platform_device =
*pdev)
>  	if (spi->target)
>  		spi->target_abort =3D spi_geni_target_abort;
> =20
> -	ret =3D geni_icc_get(&mas->se, NULL);
> -	if (ret)
> -		return ret;
> -
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  	pm_runtime_set_autosuspend_delay(&pdev->dev, 250);
>  	ret =3D devm_pm_runtime_enable(dev);

[Severity: High]
This is a pre-existing issue, but I noticed a potential resource leak relat=
ed
to how runtime PM is disabled.

If probe fails later on, the devres framework will immediately call
pm_runtime_disable() to undo devm_pm_runtime_enable().

Does this cause the asynchronous pm_runtime_put() called inside
spi_geni_init() to have its queued idle/suspend work cancelled? This could
leave the device permanently powered on after a probe failure.

>  	if (ret)
>  		return ret;

[ ... ]

>  	ret =3D spi_geni_init(mas);
>  	if (ret)
>  		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-enable-spi=
-on-sa8255p-v4-0-f5b5067e7e1e@oss.qualcomm.com?part=3D2

