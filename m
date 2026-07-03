Return-Path: <devicetree+bounces-320090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i62oJLumR2rMcwAAu9opvQ
	(envelope-from <devicetree+bounces-320090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:10:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E544B702371
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:10:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fQ338EAh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320090-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320090-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F30330137A8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F74C3C4B93;
	Fri,  3 Jul 2026 12:06:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677AE3C583A;
	Fri,  3 Jul 2026 12:06:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080361; cv=none; b=niwy6sFE/ARvV8VyGEkggnR+KPDSUN/nwShQsS6r4BBpNwPgOKR6dB+G4UMQQOprtwGLC0GQ/MV9Rdhggx3IaZyFoNGbbUTZv+d0Kcg4Phw4DAHKL+JsvwJ0L9NhgNEPxaIRtTPVvLJogMfvNDeMJYoHIh3mGm49tUy7yHkjb+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080361; c=relaxed/simple;
	bh=ecNoGTuJaMoBwHCZuQrn/eASuzubJTQ3SLfND8FALec=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YdEYxrEVD4X+3jO9ZK5Uz7hN59q7aaJjVMV4qoTCM1BTMooXqf1/0jtdmqHLjnOYfucyMGc4KbAjlClutAu2P161DqcZQ1uiivXQ5ClL5KnDcOd8+4VUiD/XaBkTEt4Xb06Z1bNLTK6z6LQJiMqjgZdO2IqbhsaxYX2invMXSe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ338EAh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACA4A1F000E9;
	Fri,  3 Jul 2026 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080360;
	bh=0KW2mMJdAopuesa3elPlR6E5tKntoEp/VP/IQiB3N8Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fQ338EAhtFmsGCnnbaXaN54cC12N189/qDJ6WtkOxEBKmNw3BspXjpeZ6W/+b/4Xl
	 GOuQzGIkW0kt571nelW3Sada2ZCSxOZEW+/XGwHHDlGWpi96nXlRczVuve7DP4ZMn9
	 kbOSshuqlbZSFKkWCFAL5kFPoduqeBokRZJ8Iz4NB0xtco95wQ5BniC6JoTqMybRof
	 O4118nzrJ7wCrZzXoHBl/aOQzME01za91XOonX/gVWxcOkWT4Xb9eWcvYSOmUklk6F
	 oyq46UBVyYwS8avp2RkQdX9cW2rKjnq7CYUPHecynnu6cvwrKVnQmnpIfjVYU6djRd
	 n/BtADjxaHX7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/7] i2c: of-prober: skip post-power-on delay if
 already powered on
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: conor+dt@kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260703115601.1323491-4-wenst@chromium.org>
References: <20260703115601.1323491-1-wenst@chromium.org>
 <20260703115601.1323491-4-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:05:57 +0000
Message-Id: <20260703120559.ACA4A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320090-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,chromium.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E544B702371

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] The integer return value of `regulator_is_enabled()` (which can be=
 a negative error code) is implicitly cast to or bitwise-ANDed with `bool` =
variables, leading to incorrect evaluations that inadvertently skip require=
d hardware power-on delays.
- [Medium] Shared regulator logic flaw and TOCTOU race allow skipping requi=
red power-on delays.

Pre-existing issues:
- [High] Optional regulator supplies missing from the device tree incorrect=
ly cause the prober to fail, contradicting the intended optional behavior.
--

commit 7072efff03a9502c14f9b2eb5a3863213e3992ef
Author: Chen-Yu Tsai <wenst@chromium.org>

i2c: of-prober: skip post-power-on delay if already powered on

This commit modifies the I2C OF prober to check if regulator supplies are
already enabled before applying a post-power-on delay. If the supply is
already active, it skips the delay to avoid unnecessary boot time penalties.

> diff --git a/drivers/i2c/i2c-core-of-prober.c b/drivers/i2c/i2c-core-of-p=
rober.c
> index 6a82b03809d4f..f274e260353cd 100644
> --- a/drivers/i2c/i2c-core-of-prober.c
> +++ b/drivers/i2c/i2c-core-of-prober.c

[ ... ]

> @@ -219,19 +220,25 @@ static void i2c_of_probe_simple_put_supply(struct i=
2c_of_probe_simple_ctx *ctx)
> =20
>  static int i2c_of_probe_simple_enable_regulator(struct device *dev, stru=
ct i2c_of_probe_simple_ctx *ctx)
>  {
> +	bool supply_was_on;
>  	int ret;
> =20
>  	if (!ctx->supply)
>  		return 0;
> =20
> -	dev_dbg(dev, "Enabling regulator supply \"%s\"\n", ctx->opts->supply_na=
me);
> +	supply_was_on =3D regulator_is_enabled(ctx->supply);

[Severity: High]
Could this introduce a regression by skipping required hardware power-on
delays if regulator_is_enabled() fails?

The integer return value of regulator_is_enabled() can be a negative error
code, but it is implicitly cast to the bool variable supply_was_on without
error checking. Any non-zero integer, including negative values, becomes tr=
ue.

If regulator_is_enabled() returns an error, the code will consider the supp=
ly
as already on, causing the device to skip the mandatory post-power-on delay
and fail to probe because it has not finished initializing.

I noticed similar patterns in other drivers:
- drivers/hid/i2c-hid/i2c-hid-of.c:i2c_hid_of_power_up()
- drivers/input/mouse/elan_i2c_core.c:elan_probe()
- drivers/input/mouse/elan_i2c_core.c:elan_resume()

[Severity: Medium]
Is there a potential regression here regarding a shared regulator TOCTOU ra=
ce
condition?

If two devices share a regulator and probe concurrently, Driver A might ena=
ble
the regulator. When Driver B checks regulator_is_enabled(), it returns true.
Driver B will then skip its required power-on delay and attempt to communic=
ate
with the device.

If Driver A enabled the regulator less than the required delay time ago,
Driver B will access its device before the hardware has initialized, leading
to probe failure or I2C communication errors.

> +
> +	dev_dbg(dev, "Enabling regulator supply \"%s\" (was %s)\n", ctx->opts->=
supply_name,
> +		str_on_off(supply_was_on));
> =20
>  	ret =3D regulator_enable(ctx->supply);
>  	if (ret)
>  		return ret;
> =20
> -	if (ctx->opts->post_power_on_delay_ms)
> +	if (!supply_was_on && ctx->opts->post_power_on_delay_ms) {
> +		dev_dbg(dev, "Waiting after enabling regulator\n");
>  		msleep(ctx->opts->post_power_on_delay_ms);
> +	}
> =20
>  	return 0;
>  }

[Severity: High]
This is a pre-existing issue, but I noticed optional regulator supplies mis=
sing
from the device tree incorrectly cause the prober to fail, contradicting the
intended optional behavior.

drivers/i2c/i2c-core-of-prober.c:i2c_of_probe_simple_get_supply() {
    ...
	supply =3D of_regulator_get_optional(dev, node, supply_name);
	if (IS_ERR(supply)) {
		return dev_err_probe(dev, PTR_ERR(supply),
				     "Failed to get regulator supply \"%s\" from %pOF\n",
				     supply_name, node);
	}
    ...
}

of_regulator_get_optional() returns -ENODEV when the supply is not in the
device tree. The function checks IS_ERR(supply) and propagates the error,
failing the probe unconditionally on hardware platforms where the device tr=
ee
omits the optional regulator.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703115601.1323=
491-1-wenst@chromium.org?part=3D3

