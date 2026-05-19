Return-Path: <devicetree+bounces-300088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Gh3IpRPDGqXegUAu9opvQ
	(envelope-from <devicetree+bounces-300088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:55:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 845B457E1DA
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:54:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 09DE7305360B
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074AF4968EA;
	Tue, 19 May 2026 11:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYAl/xqs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9947495523
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 11:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779190911; cv=none; b=mEDeFyC4QIgfBu3+MTsWkQjlxDvxPmOt7jGX7hUQ2PDubKQnW4yc7qYpWo1Be8uezsI9ODYVTURIIeeA1pDIY5uCSjaoAzS542zxhmp3U6ejurmR8kDf5mKLPrMJSzTr4FEQt18hclwtOMN2zlX1NwuvBMRaLN4k4ENwcXkN5Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779190911; c=relaxed/simple;
	bh=I/UIGNMO8EpW4rq9Hh0hRnsArLscyklt2gqBX4RPIwA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BGPe97z4wRZ2my0UANeHqz/fG+jk227vUTpdFybAquX7L0edDr4M9Osz8Z4iidvea1RRFkTG/HTXKtg3j+2ALSnAn2gkdSfiMf4Z60jf4aY0gTFQ4k/88vhTMuOfUsKm+6PoAPL8hY4oy1ZQoTLXR92WI59pkYI5FZKaLKcQZR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYAl/xqs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53782C2BCB3;
	Tue, 19 May 2026 11:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779190911;
	bh=I/UIGNMO8EpW4rq9Hh0hRnsArLscyklt2gqBX4RPIwA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gYAl/xqs2RAx/XYQni4XTEQ+aWaT4z1foon9P4UrGZGVupHp3L8EGLCrjw3FoLxc3
	 iZyUVKGm5tiIzOSmGQGrPmMjbps+7c8yFoYd5+4wIu0vTFOvwY8r6fHl1DMTKPcnzf
	 2SHd3BX9siWiElkRnjP/AKBaFTHmwVTGgOIeIdTaNvM9X1OdXT04vlMgBHKdmxfwP2
	 FaUJQhbVwUZ4Q0rl4xKnLs49iUrExtnsBFTZbKsoA9dNHCjWGDWPXRJmPw1PgcxCIF
	 TqVRpiw+5XtOLQkE1hAuLUiIcP+zJ+4WSckbM/ZwQeRpFqw5+K89WeMIjv3P902oaF
	 WP8gF4tFFU/6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/3] pinctrl: aspeed: Add AST2700 SoC1 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Billy Tsai" <billy_tsai@aspeedtech.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519-pinctrl-single-bit-v4-3-5fe568a8ffde@aspeedtech.com>
References: <20260519-pinctrl-single-bit-v4-3-5fe568a8ffde@aspeedtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 11:41:49 +0000
Message-Id: <20260519114151.53782C2BCB3@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300088-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 845B457E1DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] `ASPEED_G7_SOC1_MUX_FUNC_MASK` only masks 3 bits for a 4-bit mul=
ti-function field.
- [Medium] Semantic mismatch: explicit bias pull direction requests (`PIN_C=
ONFIG_BIAS_PULL_DOWN` / `PIN_CONFIG_BIAS_PULL_UP`) are blindly mapped to a =
generic enable.
- [Low] Unnecessary code duplication of `pinctrl_generic_get_group_pins()`.
--

commit d9ccdda23e8e031171910f04fde503376a58dffc
Author: Billy Tsai <billy_tsai@aspeedtech.com>

pinctrl: aspeed: Add AST2700 SoC1 support

This commit adds support for the AST2700 SoC1 pin controller. It implements
pin multiplexing and configuration using static SoC data tables via the
generic pinctrl, pinmux, and pinconf frameworks.

> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g7-soc1.c b/drivers/pi=
nctrl/aspeed/pinctrl-aspeed-g7-soc1.c
> new file mode 100644
> index 0000000000000..400fdcf7b4d18
> --- /dev/null
> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g7-soc1.c

[ ... ]

> +#define ASPEED_G7_SOC1_MUX_BASE          0x400
> +#define ASPEED_G7_SOC1_BIAS_BASE         0x480
> +#define ASPEED_G7_SOC1_DRV_BASE          0x4C0
> +#define ASPEED_G7_SOC1_PCIE_REG          0x908
> +#define ASPEED_G7_SOC1_USB_MODE_REG      0x3B0
> +#define ASPEED_G7_SOC1_SGMII_REG         0x47C
> +
> +#define ASPEED_G7_SOC1_MUX_FUNC_MASK 0x7
> +#define ASPEED_G7_SOC1_MUX_BITS_PER_PIN 4

Since ASPEED_G7_SOC1_MUX_BITS_PER_PIN is 4, should ASPEED_G7_SOC1_MUX_FUNC_=
MASK
be 0xF instead of 0x7? If the most significant bit (bit 3) is set by the
bootloader and is part of the mux configuration, the driver might fail to c=
lear
it when updating the register via regmap_update_bits().

[ ... ]

> +static int aspeed_g7_soc1_pin_config_set(struct pinctrl_dev *pctldev,
> +					 unsigned int pin,
> +					 unsigned long *configs,
> +					 unsigned int num_configs)
> +{
> +	struct aspeed_g7_soc1_pinctrl *pctl =3D pinctrl_dev_get_drvdata(pctldev=
);
> +	struct aspeed_g7_field field;
> +	enum pin_config_param param;
> +	int i, ret, ds_idx;
> +	unsigned int val;
> +	u32 arg;
> +
> +	if (pin > AC24)
> +		return -EINVAL;
> +
> +	for (i =3D 0; i < num_configs; i++) {
> +		param =3D pinconf_to_config_param(configs[i]);
> +		arg =3D pinconf_to_config_argument(configs[i]);
> +
> +		switch (param) {
> +		case PIN_CONFIG_BIAS_PULL_DOWN:
> +		case PIN_CONFIG_BIAS_PULL_UP:
> +		case PIN_CONFIG_BIAS_DISABLE:
> +			field =3D aspeed_g7_soc1_bias_field_from_pin(pin);
> +			val =3D (param =3D=3D PIN_CONFIG_BIAS_DISABLE) ? 1 : 0;
> +			break;

Is it safe to blindly map PIN_CONFIG_BIAS_PULL_DOWN and PIN_CONFIG_BIAS_PUL=
L_UP
to a generic enable (val =3D 0)? As noted in aspeed_g7_soc1_pin_config_get(=
), the
hardware pull direction is fixed in silicon. If a device tree requests a
pull-down on a pin with a fixed pull-up, it will silently receive inverted
hardware logic. Should the driver reject explicit direction requests it can=
not
guarantee and instead support PIN_CONFIG_BIAS_PULL_PIN_DEFAULT?

[ ... ]

> +static int aspeed_g7_soc1_get_group_pins(struct pinctrl_dev *pctldev,
> +					 unsigned int selector,
> +					 const unsigned int **pins,
> +					 unsigned int *npins)
> +{
> +	struct group_desc *group;
> +
> +	group =3D pinctrl_generic_get_group(pctldev, selector);
> +	if (!group)
> +		return -EINVAL;
> +
> +	if (!group->grp.npins)
> +		return -ENODEV;
> +
> +	*pins =3D group->grp.pins;
> +	*npins =3D group->grp.npins;
> +
> +	return 0;
> +}

Is there a reason to implement this local helper instead of directly using =
the
exported pinctrl_generic_get_group_pins()? The local function seems to
identically mimic the core function's behavior.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-pinctrl-si=
ngle-bit-v4-0-5fe568a8ffde@aspeedtech.com?part=3D3

