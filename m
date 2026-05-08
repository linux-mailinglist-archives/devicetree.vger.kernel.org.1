Return-Path: <devicetree+bounces-294707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHUvLZFX/mmupQAAu9opvQ
	(envelope-from <devicetree+bounces-294707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 23:37:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 616674FBFDD
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 23:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95688301F994
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 21:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065AA2F5474;
	Fri,  8 May 2026 21:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+x3ApsA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65202F12B3;
	Fri,  8 May 2026 21:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778276181; cv=none; b=H2N/Yg83AukQauJGnrIMXpEiZx/u3uw9VYzxf/h3JTaqdO4naPXWR4z8tUA+DuRlfYLKbYgoszXVlPJzhqNlk/dHvJTGsyG/2Zz3RMFvTtq4nmG1pxaRqZH3ZGaDovTymcvTFRcPTQf5Kv0VALgw1o+hlUZRhAdwhYBzCvEbTh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778276181; c=relaxed/simple;
	bh=QKkSFmJ43pWVZN55bbO0tUPPVmaGghyU5KTj2RxXGzo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=q6MWegFt/X+J/knIz7Pt2hvKoTxNq1P5uWDp8tiJPnjtH9I7ofDUcpcTj9uL9qlPavsopDOvHr5S4FW0SHdqEhwYVxxdQxIFop+4d+JZ4cgyCaYlUtqbOeRpyEmpIYbSgV5q4UbhvQqrnckJmV+4TNkcbJw7wXC1lrlGa8R3TN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+x3ApsA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E6B6C2BCB0;
	Fri,  8 May 2026 21:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778276181;
	bh=QKkSFmJ43pWVZN55bbO0tUPPVmaGghyU5KTj2RxXGzo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=H+x3ApsAeIh9z4CmnJmnH/F4ltP9A29tTOlprgNOLjV10Fx8iIEs3m3IlMvvGYI//
	 BOxVjYeAnASDreChZRoXCsph6m8P0RostE4nlsIyGRELUn8U+yWtnx2i2uAx/sVV67
	 obnLjaYF0glbaDRepJwFTZqfw5Fv9Obfu7DJGTyDFwKN6HI9H6V7kJmgrDGwyWHk9k
	 VyIuS2CIxLyDXUPI3Iz5DJ08polx8WTtAqC70A4z6SCnQCfURGAxlbW77PfFj6qvXs
	 pBKlEPBsRY4ilkqXUj/xT3rK+CT74vUo2pbzlId1GsBmAy0i8y2ZKQEtPD2hZOegvi
	 QwmyW2rFCpyLg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 3/4] Input: gpio-keys - add regulator to gpio_keys
Reply-To: sashiko@lists.linux.dev
To: "Griffin Kroah-Hartman" <griffin.kroah@fairphone.com>
Cc: linux-input@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, dmitry.torokhov@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260508-gpiokeys-vdd-supply-v1-3-0bb32e8e6428@fairphone.com>
References: <20260508-gpiokeys-vdd-supply-v1-3-0bb32e8e6428@fairphone.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 21:36:20 +0000
Message-Id: <20260508213621.2E6B6C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 616674FBFDD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294707-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Tying the regulator's power state to the input device's open()/clo=
se() lifecycle leaves interrupts active while the hardware is unpowered, ca=
using an interrupt storm.
- [Medium] System wakeup functionality is broken because regulators are dis=
abled if the input device is closed.
- [Medium] Unsafe hardware access during system resume causes spurious key =
events.
- [Medium] Missing pdata->disable() in the gpio_keys_open() error path lead=
s to a resource leak.
- [Low] Incorrect teardown order in gpio_keys_close() violates LIFO symmetr=
y.
--

commit d47e6012a488ac21d0005ba6dd4aa95a285831d3
Author: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>

Input: gpio-keys - add regulator to gpio_keys

This commit allows gpio-keys to have a vdd power supply managed through
regulators.

> diff --git a/drivers/input/keyboard/gpio_keys.c b/drivers/input/keyboard/=
gpio_keys.c
> index e196174856796..2199ce7455cfc 100644
> --- a/drivers/input/keyboard/gpio_keys.c
> +++ b/drivers/input/keyboard/gpio_keys.c

[ ... ]

> @@ -729,6 +730,7 @@ static int gpio_keys_open(struct input_dev *input)
>  	struct gpio_keys_drvdata *ddata =3D input_get_drvdata(input);
>  	const struct gpio_keys_platform_data *pdata =3D ddata->pdata;
>  	int error;
> +	int i;
> =20
>  	if (pdata->enable) {
>  		error =3D pdata->enable(input->dev.parent);
> @@ -736,19 +738,48 @@ static int gpio_keys_open(struct input_dev *input)
>  			return error;
>  	}
> =20
> +	for (i =3D 0; i < pdata->nbuttons; i++) {
> +		const struct gpio_keys_button *button =3D &pdata->buttons[i];
> +
> +		if (!button->regulator)
> +			continue;
> +		error =3D regulator_enable(button->regulator);
> +		if (error)
> +			goto reg_err;
> +	}

Because interrupts are requested unconditionally in gpio_keys_probe() and
remain unmasked, tying the regulator power state to the input device's
open()/close() lifecycle leaves the physical button unpowered when the devi=
ce
is closed. Could this allow the GPIO pin to float and trigger an interrupt
storm?

Also, if the input device is closed before suspend, the regulator remains
disabled. Does this prevent an unpowered physical button from generating the
electrical signal required to trigger a wakeup interrupt?

Additionally, gpio_keys_resume() unconditionally calls
gpio_keys_report_state(), which reads the current state of all GPIOs. If the
device is closed, the regulators are powered off. Can reading unpowered GPI=
Os
return floating states that inject spurious phantom key press events on eve=
ry
resume?

> +
>  	/* Report current state of buttons that are connected to GPIOs */
>  	gpio_keys_report_state(ddata);
> =20
>  	return 0;
> +
> +reg_err:
> +	for (--i; i >=3D 0; i--) {
> +		const struct gpio_keys_button *button =3D &pdata->buttons[i];
> +
> +		if (!button->regulator)
> +			continue;
> +		regulator_disable(button->regulator);
> +	}
> +	return error;

If regulator_enable() fails and we jump to reg_err, we return the error but
fail to call pdata->disable(). Does this leave the platform state permanent=
ly
active and leak resources since pdata->enable() was called earlier?

>  }
> =20
>  static void gpio_keys_close(struct input_dev *input)
>  {
>  	struct gpio_keys_drvdata *ddata =3D input_get_drvdata(input);
>  	const struct gpio_keys_platform_data *pdata =3D ddata->pdata;
> +	int i;
> =20
>  	if (pdata->disable)
>  		pdata->disable(input->dev.parent);
> +
> +	for (i =3D 0; i < pdata->nbuttons; i++) {
> +		const struct gpio_keys_button *button =3D &pdata->buttons[i];
> +
> +		if (!button->regulator)
> +			continue;
> +		regulator_disable(button->regulator);
> +	}
>  }

Is the teardown order correct here? In gpio_keys_open(), pdata->enable() is
called before the regulators are enabled. Should gpio_keys_close() reverse
this sequence by disabling the regulators before calling pdata->disable() to
maintain LIFO symmetry?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508-gpiokeys-v=
dd-supply-v1-0-0bb32e8e6428@fairphone.com?part=3D3

