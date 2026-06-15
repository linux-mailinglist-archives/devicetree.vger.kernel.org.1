Return-Path: <devicetree+bounces-311641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id crnlBDOVL2pxCwUAu9opvQ
	(envelope-from <devicetree+bounces-311641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:01:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E3C683A0F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:01:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Bnc8UmTL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311641-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311641-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5C10300CBCD
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C9BB3AEF44;
	Mon, 15 Jun 2026 05:59:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E8C27E049
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 05:59:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503184; cv=none; b=euaV3RL2O9osjjwdtLIS1hlMTQqDLVs/UkXmRhHtRRxAhRFhWAvvHhDEnIQX4HJsFF2ekGHTABtJuF+Htjtz6QeonVb2PpYml2GniJPDyts/GZP5RYAA9/ZDtnFt7yulU2XoZmnzTM4a0p+GRdTJlxwHAAfHEwPu874Rjs/meyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503184; c=relaxed/simple;
	bh=csc0pUoCgDvL3B/Dm8XBXIENIuZCDAoGPkZAJJwRulQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WW64lEP6HKUeuisN+fkPAfO4z3gJGPto51hC/eAEB4fFftlnU6CvXWTCnJzjc2LxzujHIJXROt6ZwQbA415xaRA4X8zJgrUL/5p5EDDlgLpx0emUyuR35InbHTvq2IsCAaiQiZvBPxADTyLuqwFgjLkKxnctu3w9qfTcdyiMgUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bnc8UmTL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A19B1F000E9;
	Mon, 15 Jun 2026 05:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781503182;
	bh=S+lqH2ziGyzPodMSHpNvr3CtKx5so0cg6Gjuioczo1g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bnc8UmTLk++wiCN1G4UP+PFh5F1QSXIGsCpYNRkel1z3WQZyxR0M8fzWuOWM+sBl+
	 EaSzb03XSbOBhgDPZs7zeDPMZlWoE6BruFZyZoeOPS1LgJv5Xe0xUeWx8cGLtZvAWZ
	 8wmQVD26oGlSZWJZUpDfo27az/BnuctpWLFILxjN0rAjc6JkkIJ/oqoFT8VMQQuaEF
	 qvdrTeSnJb+5kgGwqOePb2+b739KblAbQbBaNrUZuOjRSCP5EuWrmOb+eNYMzmxlw2
	 4BPKD74MIe5y2XAZhfKUMcyQqYwVmu4xO1g/NIdUNtonrWPfE9MSKX2e3Xkb3HRPh8
	 VnA6Gwz8BrM9w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to dual-port
 with OTG support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260615054911.48821-4-a0987203069@gmail.com>
References: <20260615054911.48821-4-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 05:59:42 +0000
Message-Id: <20260615055942.8A19B1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311641-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,vger.kernel.org,lists.infradead.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64E3C683A0F

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Missing cleanup of the USB role switch on the probe error path lea=
ds to a memory leak and a triggerable use-after-free vulnerability.
- [Medium] Missing bounds check on `args_count` in `ma35_usb_phy_xlate` lea=
ds to an uninitialized stack memory read and potential out-of-bounds access.
- [Medium] Unchecked return values of `regmap_read()` lead to the use of un=
initialized stack variables.
- [Medium] Failure to explicitly clear `MISCFCR0_UHOVRCURH` when `nuvoton,o=
c-active-high` is absent allows bootloader state to bleed over.
--

commit c78d99f91b7305f8a53b899cb3cb3fa45c43c783
Author: Joey Lu <a0987203069@gmail.com>

phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

The existing driver handled only PHY0 in device mode (DWC2 gadget). Extend =
it
to manage both PHY ports and integrate OTG support, per reviewer suggestion=
 to
reuse the existing driver rather than add a separate one.

> diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/=
phy-ma35d1-usb2.c
> index 9a459b700ed48..336680161104f 100644
> --- a/drivers/phy/nuvoton/phy-ma35d1-usb2.c
> +++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c

[ ... ]

> +static int ma35_usb_phy_init(struct phy *phy)
>  {
> -	struct ma35_usb_phy *p_phy =3D phy_get_drvdata(phy);
> +	struct ma35_phy_port *port =3D phy_get_drvdata(phy);
> +	struct ma35_usb_phy *p =3D container_of(port - port->idx,
> +					      struct ma35_usb_phy, port[0]);
> +	unsigned int n =3D port->idx;
>  	unsigned int val;
>  	int ret;
> =20
> -	ret =3D clk_prepare_enable(p_phy->clk);
> -	if (ret < 0) {
> -		dev_err(p_phy->dev, "Failed to enable PHY clock: %d\n", ret);
> -		return ret;
> -	}
> +	regmap_read(p->sysreg, MA35_SYS_USBPMISCR, &val);

[Severity: Medium]
Could this leave val uninitialized if regmap_read() fails?

If regmap_read() fails (e.g. due to a bus error), val remains uninitialized.
Evaluating it in the next line could lead to skipping the PHY initialization
incorrectly.

> +	if (val & USBPMISCR_PHY_SUSPEND(n))
> +		return 0;

[ ... ]

> +static enum usb_role ma35_role_sw_get(struct usb_role_switch *sw)
> +{
> +	struct ma35_usb_phy *p =3D usb_role_switch_get_drvdata(sw);
> +	u32 val;
> +
> +	regmap_read(p->sysreg, MA35_SYS_PWRONOTP, &val);
> +
> +	return (val & PWRONOTP_USBP0ID) ? USB_ROLE_HOST : USB_ROLE_DEVICE;

[Severity: Medium]
Does this code return an unpredictable role if regmap_read() fails?

If regmap_read() encounters an error, val will remain uninitialized, which
could lead to nondeterministic driver behavior when evaluated for the retur=
ned
role.

> +}

[ ... ]

> +static struct phy *ma35_usb_phy_xlate(struct device *dev,
> +				      const struct of_phandle_args *args)
> +{
> +	struct ma35_usb_phy *p =3D dev_get_drvdata(dev);
> +
> +	if (args->args[0] >=3D MA35_PHY_NUM)

[Severity: Medium]
Can this code access uninitialized memory if args->args_count is 0?

If the device tree incorrectly specifies #phy-cells =3D <0>, args_count will
be 0 and the args->args array (allocated on the caller's stack) might be
uninitialized. Could we add a bounds check for args->args_count >=3D 1 befo=
re
accessing args->args[0]?

> +		return ERR_PTR(-EINVAL);
> +
> +	return p->port[args->args[0]].phy;
> +}

[ ... ]

>  static int ma35_usb_phy_probe(struct platform_device *pdev)
>  {

[ ... ]

> +	if (of_property_read_bool(pdev->dev.of_node, "nuvoton,oc-active-high"))
> +		regmap_update_bits(p->sysreg, MA35_SYS_MISCFCR0,
> +				   MISCFCR0_UHOVRCURH, MISCFCR0_UHOVRCURH);

[Severity: Medium]
Does this code fail to clear MISCFCR0_UHOVRCURH when "nuvoton,oc-active-hig=
h"
is absent?

If a bootloader previously set this bit to active-high, Linux will fail to
clear it upon boot when active-low is expected, potentially breaking USB
functionality.

> +
> +	for (n =3D 0; n < MA35_PHY_NUM; n++) {

[ ... ]

> +	ret =3D ma35_role_switch_init(pdev, p);
> +	if (ret)
> +		return ret;
> =20
> -	provider =3D devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xl=
ate);
> +	provider =3D devm_of_phy_provider_register(&pdev->dev, ma35_usb_phy_xla=
te);
>  	if (IS_ERR(provider))
>  		return dev_err_probe(&pdev->dev, PTR_ERR(provider),
> -				     "Failed to register PHY provider\n");
> +				     "failed to register PHY provider\n");

[Severity: High]
Does this error path leak the USB role switch created by
ma35_role_switch_init()?

If devm_of_phy_provider_register() fails, the function returns immediately
without unregistering the role switch.

The driver core will then free the devm-allocated memory (including the
struct ma35_usb_phy *p passed as driver data). Since the role switch remains
registered, any later interaction with it (e.g. from sysfs) will invoke
ma35_role_sw_get():

static enum usb_role ma35_role_sw_get(struct usb_role_switch *sw)
{
	struct ma35_usb_phy *p =3D usb_role_switch_get_drvdata(sw);
	u32 val;

	regmap_read(p->sysreg, MA35_SYS_PWRONOTP, &val);

This dereferences the freed p pointer, causing a Use-After-Free.

> +
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615054911.4882=
1-1-a0987203069@gmail.com?part=3D3

