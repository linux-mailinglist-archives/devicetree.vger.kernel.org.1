Return-Path: <devicetree+bounces-319290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 16geBbo8RmoZMgsAu9opvQ
	(envelope-from <devicetree+bounces-319290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:26:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0556F5DE0
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:26:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=If5odQ3Q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319290-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319290-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB2CF30B5007
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE43F38A70C;
	Thu,  2 Jul 2026 10:14:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7870B30F7EA
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 10:14:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782987271; cv=none; b=cTMr0E1Wmyr4SK4dVSaVSUBZGfpGJMEcFzge+6O1D2DQUfCq65124ywtdh9OaaHWdE6bK5doOEzc9ko3oGey3yxKjeFHYEnDFuhIYoFIlC1QIZikB2lBWQrOMO5TdQRFETQxbTAGQ3a1TqMwDFYKr+SVOPmP16q5NB1NFOow+jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782987271; c=relaxed/simple;
	bh=u6ETMTchOoN0b7cHQdwyqA+5c8Qn2b4VENKBRB4rEd8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LdoJx7oy5in40kg+bhhZj4taRSCoMjRL1A8MZx17LKNU/YNk9fIX4NfvvxhRloH5r+DIH/QOyvlzHjacXQm8hPSbW92541p7M6zyqgD9669z4mT3yi4wx3XYYGgsd6h19tkRqAnsWm+VpaNX/pdas3v6cmWbqBxIxSNPNDogzms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=If5odQ3Q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07141F00A3A;
	Thu,  2 Jul 2026 10:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782987270;
	bh=ZnQ3BPWD2sLXVOQ9o1oEN4tGqdYuwLCGKdjzo5zdpSo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=If5odQ3QTEH8iSDvU5xuZSbWJ3LaklsJwuaiOqATtdPZ7T0NexPW+19fxt4MW9Wvm
	 LhRVxNKzD7Nf03e8uM8LDyMhIXtQXokXjpDVtJiB5Zcd5GU9q2BPkMyu0euqUR0VVy
	 KEWNd6rmg4ZJ5rWAtCvKBwNPEvdO2M3+L3forR9a9cFA32B0xXsceov+aPkVprOYHh
	 lgvNgyuZnm7kFnbEeOktdqfVYbR0oz+nrgxt2Ttsn85ZzmXW3sMhwxt4Ax2CUXRjOh
	 iEhr+KVM5b5TeVRgqLeww8qB3QdrhGbV0La3vS/Cgc9L5Vq3hPqNpnuUQ+Ag5tcK0J
	 ny/vRZod48imA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 4/5] phy: move and rename Airoha PCIe PHY driver to
 dedicated directory
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260702093812.15918-5-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
 <20260702093812.15918-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 10:14:29 +0000
Message-Id: <20260702101429.B07141F00A3A@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319290-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org,linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,infradead.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A0556F5DE0

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Low] The driver Kconfig symbol, file names, and platform driver name are=
 incorrectly renamed using the 'AN7581' prefix instead of 'EN7581', creatin=
g a mismatch with the hardware name and device tree bindings.
- [Low] The include guard in `phy-an7581-pcie-regs.h` was not updated after=
 the file was renamed.
- [Low] Incorrect SPDX-License-Identifier comment style for a C header file.
- [Low] The newly added `Kconfig` and `Makefile` for the `drivers/phy/airoh=
a/` directory are missing from the `MAINTAINERS` file.
--

commit 6b7c73648fcebc4627d82c8ab33128623756a453
Author: Christian Marangi <ansuelsmth@gmail.com>

phy: move and rename Airoha PCIe PHY driver to dedicated directory

This commit moves the PCIe PHY driver for the Airoha AN7581 SoC to a dedica=
ted
directory to keep the generic PHY directory tidy. It also renames the driver
and files to include the specific SoC name in preparation for adding AN7583
support, and updates the Kconfig symbol accordingly.

> To keep the generic PHY directory tidy, move the PCIe PHY driver for
> Airoha AN7581 SoC to a dedicated directory.
>=20
> Also rename the driver and add the relevant SoC name to the .c and .h
> file in preparation for support of PCIe and USB PHY driver for Airoha
> AN7583 SoC

[Severity: Low]
This isn't a bug, but there might be a typo in the commit message. Is the
SoC name EN7581 instead of AN7581, given the existing device tree bindings
mention en7581?

> diff --git a/MAINTAINERS b/MAINTAINERS
> index cb7836a27b177..bbfaca572118c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -765,8 +765,8 @@ M:	Lorenzo Bianconi <lorenzo@kernel.org>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> -F:	drivers/phy/phy-airoha-pcie-regs.h
> -F:	drivers/phy/phy-airoha-pcie.c
> +F:	drivers/phy/airoha/phy-an7581-pcie-regs.h
> +F:	drivers/phy/airoha/phy-an7581-pcie.c

[Severity: Low]
By explicitly listing only the source files, the newly added Kconfig and
Makefile in the drivers/phy/airoha/ directory are left without a maintainer
mapping. Would it be better to use a directory wildcard like
F: drivers/phy/airoha/ to include the new build files?

> diff --git a/drivers/phy/airoha/Kconfig b/drivers/phy/airoha/Kconfig
> new file mode 100644
> index 0000000000000..9a1b625a77012
> --- /dev/null
> +++ b/drivers/phy/airoha/Kconfig
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Phy drivers for Airoha devices
> +#
> +config PHY_AIROHA_AN7581_PCIE
> +	tristate "Airoha AN7581 PCIe-PHY Driver"

[Severity: Low]
Does this Kconfig symbol and prompt incorrectly use the AN7581 prefix
despite the SoC hardware and device tree binding being named EN7581?

> diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/airoha/phy-=
an7581-pcie-regs.h
> similarity index 99%
> rename from drivers/phy/phy-airoha-pcie-regs.h
> rename to drivers/phy/airoha/phy-an7581-pcie-regs.h
> index 58572c7937223..b938a7b468fee 100644
> --- a/drivers/phy/phy-airoha-pcie-regs.h
> +++ b/drivers/phy/airoha/phy-an7581-pcie-regs.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> +// SPDX-License-Identifier: GPL-2.0-only

[Severity: Low]
Does this change to a C++ style line comment violate the kernel's SPDX
license identifier rules for C header files, which require the /* ... */
block comment style?

[Severity: Low]
Also, since this file was renamed, does the include guard further down in t=
he
file (currently #ifndef _PHY_AIROHA_PCIE_H) need to be updated to match the
new filename?

> diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/airoha/phy-an758=
1-pcie.c
> similarity index 99%
> rename from drivers/phy/phy-airoha-pcie.c
> rename to drivers/phy/airoha/phy-an7581-pcie.c
> index 56e9ade8a9fd3..81ddf0e7638b7 100644
> --- a/drivers/phy/phy-airoha-pcie.c
> +++ b/drivers/phy/airoha/phy-an7581-pcie.c

[ ... ]

> @@ -1279,12 +1279,12 @@ MODULE_DEVICE_TABLE(of, airoha_pcie_phy_of_match);
>  static struct platform_driver airoha_pcie_phy_driver =3D {
>  	.probe	=3D airoha_pcie_phy_probe,
>  	.driver	=3D {
> -		.name =3D "airoha-pcie-phy",
> +		.name =3D "airoha-an7581-pcie-phy",

[Severity: Low]
Does this platform driver name incorrectly use the misspelled an7581 prefix
instead of en7581?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093812.1591=
8-1-ansuelsmth@gmail.com?part=3D4

