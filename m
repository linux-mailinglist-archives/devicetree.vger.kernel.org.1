Return-Path: <devicetree+bounces-317522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iYCFNFKLQ2rFawoAu9opvQ
	(envelope-from <devicetree+bounces-317522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8CA6E21BE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ey4GOTrF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317522-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317522-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26CFC3064736
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01013537F9;
	Tue, 30 Jun 2026 09:18:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD8025C818;
	Tue, 30 Jun 2026 09:18:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811121; cv=none; b=XEObJikis+p4EY20U2xdp6I7VvzKAKJDRJ/lsAU+pwJUojbIs6TDR05p3GlYltQZRoe00Gk3hcv53gcahuaiS1w58k6DEQXwi8a2ZXM5jQUTsc3Fb9OA3kjzWtR7wrBipTOwsKuoeEijlkj5/d5vEWo2l6gZTGV1UNMrSRJGzNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811121; c=relaxed/simple;
	bh=f56rXfbtlVzEHM4+oUx700EHMEXeB9DGFwASXTEQSrU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jEIoJ7YI4wbxqIxW+B3xDXWoFdHC8Hq/IUkf7VMWE9Lr3P69JUziFTIjwffZw3MNKwknrGP1RNVfazKTlZFVJ9m/k3HVwQ0eGFDPQ8EMLhdXzvnU9DL4jvBAVr/g3Nvw9vaWylI0PBSexME2gbR7PbmupP/XHpuL9xfXrIDTpN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey4GOTrF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 013AA1F00A3A;
	Tue, 30 Jun 2026 09:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811120;
	bh=/sckeJZcNQD0sYt7C1pNbjU0qMEki24aBgd1V8kmJ1g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ey4GOTrFLtGfWLYRdGZZ+9PbzDM92QkzPkfx5HAwEW56NkF1edDxE3hPHA60S++Pl
	 SRTejMZfMl5FA7CT+YfDD7N1GRnhiGgPswsnz1lWicb36Z7Aa9vQtWyDdna8ReuyZf
	 C2gG30E99oiUbM7uFAYqQu0NHXm/NmHIhS2udOZkTedFL8cz6qFiRAnG2QFY1uTp0L
	 OumB5DtbmQwzuSEgjE++QMTVCjgo/93H8ehCcVZ/gmkowoH9nICHcndTohNvY2YNaD
	 vQGSKkOuA8Wnfe1McRj20rpgTq5G+K7DZFn+8s3x+M/u55OeezjebVJJQHRM3ijooh
	 TTCyFbblQNc6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/19] pmdomain: imx: use
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: Frank.Li@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260629-pdev-fwnode-ref-v2-10-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-10-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:39 +0000
Message-Id: <20260630091840.013AA1F00A3A@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317522-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:Frank.Li@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,qualcomm.com:email,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B8CA6E21BE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] OF node reference leak introduced by replacing direct assignment=
 with platform_device_set_of_node().

Pre-existing issues:
- [High] Missing cleanup of dynamically allocated child platform devices ca=
uses Use-After-Free on probe error and remove paths.
--

commit f80cbf40e80bb2e67469b487f2abcc9652b28cb1
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

pmdomain: imx: use platform_device_set_of_node()

Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the OF node for dynamically allocated
platform devices with the provided helper.

> diff --git a/drivers/pmdomain/imx/gpc.c b/drivers/pmdomain/imx/gpc.c
> index 42e50c9b4fb9f..abca5f449a226 100644
> --- a/drivers/pmdomain/imx/gpc.c
> +++ b/drivers/pmdomain/imx/gpc.c
> @@ -487,8 +487,7 @@ static int imx_gpc_probe(struct platform_device *pdev)
>  			domain->ipg_rate_mhz =3D ipg_rate_mhz;
> =20
>  			pd_pdev->dev.parent =3D &pdev->dev;
> -			pd_pdev->dev.of_node =3D of_node_get(np);
> -			pd_pdev->dev.fwnode =3D of_fwnode_handle(np);
> +			platform_device_set_of_node(pd_pdev, np);

[Severity: Medium]
Does replacing direct assignment with platform_device_set_of_node()
introduce an OF node reference leak?

In drivers/i2c/busses/i2c-pxa-pci.c:add_i2c_device(), the function acquires
an OF node reference via the for_each_child_of_node iterator and then calls
platform_device_set_of_node(pdev, child) on success.

Before this patch series, pdev->dev.of_node =3D child directly transferred
ownership of the reference to the platform device, which released it upon
destruction. Because the new helper platform_device_set_of_node()
explicitly increments the reference count internally, and there is no
of_node_put(child) added after the helper call, does this permanently leak
the original iterator reference on both success and error paths?

> =20
>  			ret =3D platform_device_add(pd_pdev);
>  			if (ret) {

[Severity: High]
This is a pre-existing issue, but does the missing cleanup of dynamically
allocated child platform devices cause a use-after-free on probe error and
remove paths?

In imx_gpc_probe(), child devices (pd_pdev) are dynamically allocated and
registered in a loop. If a subsequent iteration fails and returns here,
the function returns immediately without unregistering the previously added
children.

Furthermore, in imx_gpc_remove(), when using the new device tree binding
(pgc_node is present), it exits without unregistering any child devices.

Since the child devices remain registered, their bound drivers (imx-pgc-pd)
stay active. When the parent devres cleanup frees the regmap, won't any
subsequent power state transition by the active child domains dereference
the freed domain->regmap, resulting in a use-after-free crash?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D10

