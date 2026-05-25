Return-Path: <devicetree+bounces-302642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHkcIMMuFGqUKgcAu9opvQ
	(envelope-from <devicetree+bounces-302642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:13:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FEB5C9C73
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1A1DF3016DB0
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A194037D128;
	Mon, 25 May 2026 11:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6lFtM0t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9F037CD35
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779707430; cv=none; b=NMhenHUIpnjO1xQD1lsszFUK2ixiSb0dBMb31pfY59XvCxuGwdSmpyI58YPFX7/Hf56+2PZjUC3hOMEGxangOA8PpYLkVw3tj2GnBttdH+InvyP7CpZxWmUc+zYW3FoSdOnwzkhts+3kUDFFgVadlf/3P7hAsqPMWlFPlwfzd1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779707430; c=relaxed/simple;
	bh=MOhtNKjDc/Vxe3r6No+fZ0B5nETkIcv1QJ0xK2KYCuU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dGyJ2s39iZ4JmWCgrfUq/STyLi0Fw6NSMP70xPBNb3TkrIgr8B7dVv287kVjN+8kVUCObVlA1hq28q0cHF1cnfoT0kbrlBOzqivHZKUE8dlnEtDL65kiuyS+eobQSRYIm00vv4vam+f6nMmUSQz5UmTaEaNimuzC1pd4StnrXd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6lFtM0t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAFA01F000E9;
	Mon, 25 May 2026 11:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779707429;
	bh=ucpOVWJuh8E74EsWEL+J/zkJkxM52IzPzhYviiznmGs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g6lFtM0to+eLUBARMj7XyoRvh1Kgc8XjpgUHWf+1lynDHejPgOpnzUADp2/GTyK/L
	 1zyAc4xsUWmyvBxZtGq/pbCj+cKrpxKOecZ+Z08i08VLtjA19w8W42ZXExtUDuFFwZ
	 W8NU+G8XfaOkaql/mjxV4dgBOrWvNJDPmu3zjFovKOU9IhITq0zo2rOhVdaWekm5hy
	 XCUw4FuyuRvXwY/RklYUAB5SAmsfQFYaFwRepeEIGoIn4LguK957M9HmzlbZDOrxSJ
	 oQL4SyJ5o5Z02vmGc8QcclMiTLFwoUTqH8MkQsJ9H2ghucb9cVVkU62tF15lr8BOeB
	 6mMYMXn+jAzjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 07/11] iio: adc: hx711: pass trailing pulse count
 into hx711_read
Reply-To: sashiko-reviews@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260525105127.180156-8-piyushpatle228@gmail.com>
References: <20260525105127.180156-8-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:10:28 +0000
Message-Id: <20260525111028.CAFA01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302642-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 84FEB5C9C73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The driver calls `gpiod_set_value()` inside a `local_irq_save()` b=
lock in `hx711_cycle()`. If the provided GPIO is on a sleeping bus (like an=
 I2C or SPI expander), this will attempt to sleep with interrupts disabled,=
 leading to a system panic or deadlock.
--

commit 06c110d4ea7407a2f984ef3a29933a8a8f62d351
Author: Piyush Patle <piyushpatle228@gmail.com>
Subject: iio: adc: hx711: pass trailing pulse count into hx711_read

This commit modifies hx711_read() to accept the number of trailing pulses
as a parameter. It moves the selection of trailing pulses from the read
function to its callers, preparing the driver for variant-specific code
without needing a separate read path.

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 062d6860da7d6..a18ac3ecf2c59 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c
> @@ -155,7 +155,7 @@ static int hx711_cycle(struct hx711_data *hx711_data)
>  	return gpiod_get_value(hx711_data->gpiod_dout);
>  }
> =20
> -static int hx711_read(struct hx711_data *hx711_data)
> +static int hx711_read(struct hx711_data *hx711_data, int trailing_pulses)
>  {

[ ... ]

> -	for (i =3D 0; i < hx711_get_gain_to_pulse(hx711_data->gain_set); i++)
> +	for (i =3D 0; i < trailing_pulses; i++)
>  		hx711_cycle(hx711_data);

[Severity: High]
This is a pre-existing issue, but does this driver ensure the requested
GPIOs are not on a sleeping bus?

Looking at hx711_cycle(), the driver disables interrupts via
local_irq_save() to meet strict timing constraints, and then calls
gpiod_set_value() inside that atomic block:

hx711_cycle()
    local_irq_save(flags);
    gpiod_set_value(hx711_data->gpiod_pd_sck, 1);

If a user wires the HX711 to a GPIO controller on a sleeping bus (like
an I2C or SPI expander), calling gpiod_set_value() will trigger the
underlying controller's set operation, which might attempt to acquire a
mutex or wait for I/O completion.

Could this attempt to sleep inside an atomic context and trigger a
"scheduling while atomic" panic or deadlock?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525105127.1801=
56-1-piyushpatle228@gmail.com?part=3D7

