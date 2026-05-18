Return-Path: <devicetree+bounces-299345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMJ5NVr9CmqA+wQAu9opvQ
	(envelope-from <devicetree+bounces-299345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:51:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD5056BFBF
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:51:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B2EA63031CA7
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3037B35AC30;
	Mon, 18 May 2026 11:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxYsTR36"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9F8302756;
	Mon, 18 May 2026 11:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779104791; cv=none; b=olohMUdvKs06pVSHqoKvyCdK6GuX/qrKArbRnkEOp2OQ7MylSE/6WAVKTV5XPn5VO1IYE0drZnvwKEhO9IRKW5JGOxoOA3Y2EliIddltDqABA2E4fHOyj3TsRbOaLWv4H9EypSl7xQAngF40Ym+Kclv2VQvMleCBU0uJ/ML5SC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779104791; c=relaxed/simple;
	bh=ZMlGG9cxA94QPG5izYR+2kQmb7Q8ASK/3DrCVuEZQk8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ORLd4aw8veKKEtE9kGKKxRFRmv/qxUF27QJRx+attx75RU/l1cEb6WaHLsznBmcs2RjOrkWePD+tR4vBs41s3Fmqx4vz0UQlTtXr327w09PPGfx7+bmGAmnYG/d1R5rr61jZevmPna4EA9X6lo6VmW7EcPIH6Fu8ToVG19JX8FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxYsTR36; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 777A8C2BCB7;
	Mon, 18 May 2026 11:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779104790;
	bh=ZMlGG9cxA94QPG5izYR+2kQmb7Q8ASK/3DrCVuEZQk8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=oxYsTR366pXFD0GTvcn/DU34TV9Lo+cH+etVY36vtLHIwTw+UuFEd6rLGYy0QeZbL
	 jNq4qIa8IZy11Ok7eQSWVHEM5jcLsLBgEz7w90rAQmTXJ2wABdeYZJB7J4RAaIduAk
	 dfKRuluratdKRTIK4u62lOuS4FzhLm3wJUnC9yKNi4Vke7lEjL5GIo/R1tiEqF5Fh2
	 KymP/dPUd+/Lit+RS/nlnVbUG3QOHOJul2VmTgiJm/4DcW3RdzSDr+bljSZLBELBCN
	 bBgOB/nygYn7i+ikxwAYLb3e5g4OAxs3dqhwWfTOfEAj1H02A2z7l6V5skGxHE1t6i
	 pwoDYaw1FmqaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/7] input: keyboard: Add driver for ASUS Transformer
 dock multimedia keys
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: conor+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org
In-Reply-To: <20260518095907.36158-5-clamor95@gmail.com>
References: <20260518095907.36158-5-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 11:46:30 +0000
Message-Id: <20260518114630.777A8C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 5AD5056BFBF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299345-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,qmqm.pl:email,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Registering a statically allocated `struct input_handler` in the p=
er-device probe function violates the driver model and causes list corrupti=
on.
- [High] The input handler permanently opens all `EV_KEY` input devices in =
the system without declaring itself as a passive observer, preventing runti=
me suspend.
--

commit 3ac5537da45198a85ba82452de2c64484baeac36
Author: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>

input: keyboard: Add driver for ASUS Transformer dock multimedia keys

This adds support for the multimedia top button row of the ASUS Transformer
Mobile Dock keyboard. It defaults to function keys (F1-F12) and uses an inp=
ut
handler to monitor system-wide key events to switch to multimedia keys when
ScreenLock + AltGr are pressed.

> diff --git a/drivers/input/keyboard/asus-transformer-ec-keys.c b/drivers/=
input/keyboard/asus-transformer-ec-keys.c
> new file mode 100644
> index 0000000000000..d30d991773744
> --- /dev/null
> +++ b/drivers/input/keyboard/asus-transformer-ec-keys.c
[ ... ]
> +static int asus_ec_input_connect(struct input_handler *handler,
> +				 struct input_dev *dev,
> +				 const struct input_device_id *id)
> +{
> +	struct input_handle *handle;
> +	int error;
[ ... ]
> +	error =3D input_open_device(handle);
> +	if (error)
> +		goto err_unregister_handle;
> +
> +	return 0;

[ ... ]

> +static struct input_handler asus_ec_input_handler =3D {
> +	.name =3D	"asusec-media-handler",
> +	.event =3D asus_ec_input_event,
> +	.connect =3D asus_ec_input_connect,
> +	.disconnect =3D asus_ec_input_disconnect,
> +	.id_table =3D asus_ec_input_ids,
> +};

Because this handler connects to all EV_KEY devices and calls
input_open_device() without setting .passive_observer =3D true, will this
increment the dev->users count for every matching input device in the syste=
m?

Could this force all EV_KEY input devices to remain open and active
permanently, preventing them from entering runtime suspend?

[ ... ]

> +static int asus_ec_keys_probe(struct platform_device *pdev)
> +{
[ ... ]
> +	asus_ec_input_handler.private =3D priv;
> +	error =3D input_register_handler(&asus_ec_input_handler);
> +	if (error)
> +		return error;

Since asus_ec_input_handler is a static global structure, what happens if t=
his
driver is probed multiple times (for instance, via sysfs bind/unbind or
multiple ECs)?

If input_register_handler() is called a second time, it will re-initialize =
the
list head and add an already linked node. Could this corrupt the
input_handler_list?

Should the input_handler be dynamically allocated per-device or embedded wi=
thin
struct asus_ec_keys_data?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518095907.3615=
8-1-clamor95@gmail.com?part=3D4

