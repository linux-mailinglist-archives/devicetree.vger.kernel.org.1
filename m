Return-Path: <devicetree+bounces-302129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8B5FOMlzEWpKmQYAu9opvQ
	(envelope-from <devicetree+bounces-302129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 11:30:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4041B5BE35C
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 11:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BC253013487
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 09:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397CC387594;
	Sat, 23 May 2026 09:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btFJHcAx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742FB38735E
	for <devicetree@vger.kernel.org>; Sat, 23 May 2026 09:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779528644; cv=none; b=X17CiOKK9lYqGL68up8PR7ub7F8kFL8oaGim7G4RsmIlgJWl0TaXBgkTVXg5mjj6R9FM68IV6OM7CbVpReDwYLTZKLyMk1NY0V1c0aQsyC+j8e29nz9YYz8dsZBjsMeydLO27jQIbuIu0n8o0hVBhXqmoH7C3iZfkAjnO+tXuCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779528644; c=relaxed/simple;
	bh=ex4rlx4VJGbTdpP85z+YNQ+zNn4iSqORvoLW5OjquF8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JPNCjEqD6miItFfiKOTcvcR2qr9K8rxokHYxCKH0F+UmwZ5i9XWLjs95xH+vNWzHXEsnkZJNzy2f4RRhwVbb9MToun0aVjIrHthWWuGUcvYyxHAGbrsc+YG9CaEX3D03ndXScQK7dVakD4mGQL9TeSZAtJ033O9hmUQcq57JUPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btFJHcAx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D7501F000E9;
	Sat, 23 May 2026 09:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779528641;
	bh=f4SXn25s6cUs/tOLoD0oeHzUgr4Jmv29VZUffZ/IcQg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=btFJHcAxsv6sBNWLfOwZOpGLig0g2OeXos7JfmvIlBPVjOAXjkCaWCsJSN2p/W8Sx
	 eIZWs5kc3W6zcJvOl8+YB3uuXB19pQABvWgJcbfh4KkSvH3klm1uoNt8YgBmlqPi67
	 z5xTdMvT19k21r/fT4djyIFIPPIW2oVc0KBn6SaTXgqQAfqWuJSume8fjyfIF7ngEF
	 CXhubSAUi/tT00jvqlBjZh5mD/tMGPyj7fkbma+Yctkun02Jkfa4VViKr5tq5x66Jz
	 vGHXtPoHCzFr5kTyKxxc8b8EpPmbqXyykvVOnPcyjWrU20PrsFgV1GDFJP6rEOCV8t
	 FnTv6hqkcaeAQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] power: sequencing: Add support for Nvidia Tegra
 modem pwrseq
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260523085102.51000-3-clamor95@gmail.com>
References: <20260523085102.51000-3-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 23 May 2026 09:30:40 +0000
Message-Id: <20260523093041.4D7501F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302129-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 4041B5BE35C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] Hijacking and modifying the private state of the `tegra-usb` drive=
r causes resource conflicts, memory leaks, and double-frees.
- [High] Missing device link allows the provider driver to unbind, leaving =
a dangling pointer.
- [High] Storing an `ERR_PTR` in `usb->dev` guarantees a crash during devic=
e removal.
- [High] Blindly casting driver data of an arbitrary platform device to `st=
ruct tegra_usb *` without validating the device type.
- [Low] Dereferencing incomplete type `struct tegra_usb` causes a compilati=
on error.
- [Low] The Kconfig symbol depends on a non-existent symbol `USB_NET_XMM626=
0`.
--

commit 5c2fd594a3aa6ab625a68ba4bb3f25750e538e63
Author: Svyatoslav Ryhel <clamor95@gmail.com>

power: sequencing: Add support for Nvidia Tegra modem pwrseq

Nvidia Tegra modem power sequence is a set of configurations used in Tegra
SoCs to provide proper interaction between the application processor and
the modem, as well as control over one of the SoC's USB lines for the
modem.

> diff --git a/drivers/power/sequencing/Kconfig b/drivers/power/sequencing/=
Kconfig
> index 1c5f5820f5b76..e04a6bacb476f 100644
> --- a/drivers/power/sequencing/Kconfig
> +++ b/drivers/power/sequencing/Kconfig
> @@ -46,4 +46,16 @@ config POWER_SEQUENCING_PCIE_M2
>  	  connectors. This driver handles the power sequencing for the M.2
>  	  connectors exposing multiple interfaces like PCIe, SATA, UART, etc...
> =20
> +config POWER_SEQUENCING_TEGRA_MODEM
> +	tristate "NVIDIA Tegra modem power sequencing driver"
> +	depends on ARCH_TEGRA && USB_NET_XMM6260 && USB_SUPPORT

[Severity: Low]
Does the USB_NET_XMM6260 config symbol exist in the kernel tree? If this
symbol is not present, this driver will be permanently disabled due to an
unsatisfied dependency.

> +	help
> +	  Enable this to support power sequence for XMM6260 modem found in
> +	  various Tegra devices with cellular capabilities, like
> +	  LG Optimus 4X P880, LG Optimus Vu P895, Google Nexus 7 (2012) 3G
> +	  and ASUS Transformer Pad 3G TF300TG.

[ ... ]

> diff --git a/drivers/power/sequencing/pwrseq-tegra-modem.c b/drivers/powe=
r/sequencing/pwrseq-tegra-modem.c
> new file mode 100644
> index 0000000000000..0b212ec8b643e
> --- /dev/null
> +++ b/drivers/power/sequencing/pwrseq-tegra-modem.c
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/delay.h>
> +#include <linux/device.h>

[ ... ]

> +struct pwrseq_tegra_modem_ctx {
> +	struct device *dev;
> +	struct pwrseq_device *pwrseq;
> +
> +	struct gpio_desc *enable_gpio;
> +	struct regulator *power_supply;
> +
> +	struct platform_device *usb_dev;
> +	struct tegra_usb *usb;
> +};

[ ... ]

> +static int pwrseq_tegra_modem_enable(struct pwrseq_device *pwrseq)
> +{
> +	struct pwrseq_tegra_modem_ctx *ctx =3D pwrseq_device_get_drvdata(pwrseq=
);
> +	struct tegra_usb *usb =3D ctx->usb;
> +	int ret;
> +
> +	/*
> +	 * USB controller registers shouldn't be touched before PHY is
> +	 * initialized, otherwise CPU will hang because clocks are gated.
> +	 * PHY driver controls gating of internal USB clocks on Tegra.
> +	 */
> +	ret =3D usb_phy_init(usb->phy);

[Severity: Low]
Is struct tegra_usb defined in a public header? It appears to be a private
structure defined only in drivers/usb/chipidea/ci_hdrc_tegra.c. Will access=
ing
usb->phy here cause a compilation error due to dereferencing an incomplete
type?

> +	if (ret) {
> +		dev_err(ctx->dev, "failed to init USB PHY\n");
> +		return ret;
> +	}
> +
> +	usb->dev =3D ci_hdrc_add_device(&ctx->usb_dev->dev,
> +				      ctx->usb_dev->resource,
> +				      ctx->usb_dev->num_resources,
> +				      &usb->data);

[Severity: High]
Does modifying the tegra-usb driver's private state directly create resource
conflicts?

If tegra_usb_probe() already initialized the PHY and registered a child
device, calling ci_hdrc_add_device() here and overwriting usb->dev could le=
ak
the originally registered device. Furthermore, if both drivers independently
attempt to call ci_hdrc_remove_device(usb->dev) during teardown, could this
lead to use-after-free and double-free bugs?

> +	if (IS_ERR(usb->dev)) {

[Severity: High]
If ci_hdrc_add_device() fails, usb->dev is left containing an ERR_PTR. If t=
he
tegra-usb driver is subsequently unbound, its remove path:

tegra_usb_remove()
   ci_hdrc_remove_device(usb->dev)

will unconditionally dereference this pointer since it expects a valid devi=
ce.
Could this lead to a fatal invalid pointer dereference?

> +		usb_phy_shutdown(usb->phy);
> +		dev_err(ctx->dev, "failed to register USB controller\n");
> +		return PTR_ERR(usb->dev);
> +	}
> +
> +	gpiod_set_value_cansleep(ctx->enable_gpio, 1);
> +
> +	return 0;
> +}

[ ... ]

> +static int pwrseq_tegra_modem_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct device_node *usb_node;
> +	struct pwrseq_tegra_modem_ctx *ctx;
> +	struct pwrseq_config config =3D { };
> +	int ret;
> +
> +	ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ctx->dev =3D dev;
> +
> +	ctx->enable_gpio =3D devm_gpiod_get_optional(dev, "enable",
> +						   GPIOD_OUT_LOW);
> +	if (IS_ERR(ctx->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->enable_gpio),
> +				     "failed to get enable GPIO\n");
> +
> +	ctx->power_supply =3D devm_regulator_get(dev, "power");
> +	if (IS_ERR(ctx->power_supply))
> +		return dev_err_probe(dev, PTR_ERR(ctx->power_supply),
> +				     "failed to get power supply\n");
> +
> +	usb_node =3D of_parse_phandle(dev->of_node, "nvidia,usb-bus", 0);
> +	if (!usb_node)
> +		return dev_err_probe(dev, -ENODEV,
> +				     "failed to parse modem USB bus\n");
> +
> +	ctx->usb_dev =3D of_find_device_by_node(usb_node);
> +	of_node_put(usb_node);
> +	if (!ctx->usb_dev)
> +		return -EPROBE_DEFER;
> +
> +	ret =3D devm_add_action_or_reset(dev, pwrseq_tegra_modem_put_device,
> +				       &ctx->usb_dev->dev);
> +	if (ret)
> +		return ret;
> +
> +	ctx->usb =3D platform_get_drvdata(ctx->usb_dev);

[Severity: High]
Is it safe to cast the driver data of this platform device to
struct tegra_usb * without first verifying the device type (for example, by
checking its compatible string)?

If the phandle incorrectly points to an unrelated device, ctx->usb will poi=
nt
to the wrong driver data. Could this cause type confusion and crashes when
fields like usb->phy are accessed later?

[Severity: High]
Should there be a device link established here using device_link_add() to
enforce a consumer-supplier relationship?

Without a device link, the tegra-usb driver can be unbound at any time.
If unbound, the devres-managed struct tegra_usb is freed. Would this leave
ctx->usb as a dangling pointer, leading to a use-after-free during subseque=
nt
power sequence operations?

> +	if (!ctx->usb)
> +		return -EPROBE_DEFER;
> +
> +	config.parent =3D dev;
> +	config.owner =3D THIS_MODULE;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260523085102.5100=
0-1-clamor95@gmail.com?part=3D2

