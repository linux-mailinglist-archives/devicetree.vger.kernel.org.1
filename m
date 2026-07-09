Return-Path: <devicetree+bounces-323290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lUDHOPQeT2p8awIAu9opvQ
	(envelope-from <devicetree+bounces-323290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:09:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5024B72C841
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:09:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=o0C0Bv34;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323290-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323290-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F24C3017506
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 04:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642BF35DA40;
	Thu,  9 Jul 2026 04:09:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451FC2CCB9;
	Thu,  9 Jul 2026 04:09:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783570162; cv=none; b=riCz22H6pKV1F/JKkVrJUkihf2eSmeboHQBUe4MPOlq+KifB3gYj7zYfnrScNI+lS1oLYArNPaZkUFThW9rk2HjYvyXgm2aNohlH1qHqJioyvMsLU49zSBDiFr8rpC++00KZMJYg2po2qe3WnQlX6Ws4RuyKTaKaz5zg760LwrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783570162; c=relaxed/simple;
	bh=+Ij58jVtB8xdCF7LefR5qzBmW9KrvgeIanJ33hTlnc0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ejDk4x34ZPtA2JHBcAPkpDn/OGAhO6eREZvxEsNXJNWP4urWe/FD7T9rK6/RDb2MIoDjci1OhkBFiwEXvSf+HLnbYz3DwIGNflpyUsJwOEZykUUYZuf35ddzRgF6LADv8f30J1hrGXo7ZK33/4JsEVl59L1PPur2dsm5Av0+4S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0C0Bv34; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9835D1F000E9;
	Thu,  9 Jul 2026 04:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783570160;
	bh=Yv6iRH3+HOCGz9uAdwzduosd45Oq8qm61y0e6CpyxbU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=o0C0Bv341ZSlimrkvrGXOCnncYkfX08xAKyedAe3g4n/TuK8naOAQtqLlccNcGz/a
	 N3Yyw1s5Yaa4JJhVO5KjrAAcw+9cCfb6ZoeQqjsL16fhi5IyoUbEbsXVuhg54kLqKh
	 LiAHlkzifzw8ETn8yu5cbEGtSyr9rxOcryM8X6VEkFACMrTcshumo86hEID87AqvIi
	 kV/oTEIdVu+YQ8h2v9LTk/S5WuLuc7oDaLbu+45CdzXDRJkmI4CEyYGObwNxoRUuN3
	 NrxQbIvpr3OkdqoPGiZYwaEq5XxxoDFxzMRhjkOnr39HkBs/uUbp0orBZ0IIDARDD6
	 cC0XfPdmkCMYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/6] PCI: spacemit-k1: Add multiple PHY handles
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709040027.958400-3-inochiama@gmail.com>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-3-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 04:09:20 +0000
Message-Id: <20260709040920.9835D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323290-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5024B72C841

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] `k1_pcie_deinit()` tears down the PHY array in forward order instea=
d of the standard reverse order used in the initialization error path.
--

--- Patch [2]: [PATCH v4 2/6] PCI: spacemit-k1: Add multiple PHY handles su=
pport ---
commit afd1a474faf7e619be1db1da6684dbf945adb2fa
Author: Inochi Amaoto <inochiama@gmail.com>

PCI: spacemit-k1: Add multiple PHY handles support

This commit extends the Spacemit K3 PCIe controller driver to support
multiple PHY handles, as the hardware may use multiple PHYs simultaneously.
It replaces the single PHY reference with an array of PHYs and updates the
initialization and teardown paths to iterate over them.

> diff --git a/drivers/pci/controller/dwc/pcie-spacemit-k1.c b/drivers/pci/=
controller/dwc/pcie-spacemit-k1.c
> index f6ae8ff3589a9..e22ecbd095798 100644
> --- a/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> +++ b/drivers/pci/controller/dwc/pcie-spacemit-k1.c

[ ... ]

> @@ -194,12 +244,14 @@ static void k1_pcie_deinit(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci =3D to_dw_pcie_from_pp(pp);
>  	struct k1_pcie *k1 =3D to_k1_pcie(pci);
> +	int i;
> =20
>  	/* Assert fundamental reset (drive PERST# low) */
>  	regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
>  			PCIE_RC_PERST);
> =20
> -	phy_exit(k1->phy);
> +	for (i =3D 0; i < k1->phy_count; i++)
> +		phy_exit(k1->phy[i]);

[Severity: Low]
Does this code need to exit the PHYs in reverse order?

The k1_pcie_enable_phy() function cleans up in reverse order during an
initialization error:

err_phy:
	while (i--)
		phy_exit(k1->phy[i]);

Would it be safer to use reverse-order teardown here in k1_pcie_deinit()
as well to ensure consistency and avoid potential issues if the PHYs
have interdependencies?

> =20
>  	k1_pcie_disable_resources(k1);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709040027.9584=
00-1-inochiama@gmail.com?part=3D2

