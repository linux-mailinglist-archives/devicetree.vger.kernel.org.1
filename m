Return-Path: <devicetree+bounces-325156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UJ+bMsRAVGp9jwMAu9opvQ
	(envelope-from <devicetree+bounces-325156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 03:35:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BA774675A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 03:34:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=f+8IIBgN;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325156-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325156-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EC98C3001CD8
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 01:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADB2261B8A;
	Mon, 13 Jul 2026 01:34:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1B223A564;
	Mon, 13 Jul 2026 01:34:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783906493; cv=none; b=sAS5r5Wc4llOGAMyrKH6wkzHFWrkYu6r/GdU6ygExI6j2msEyfjY0Zvk/pc/NEJgDYWYbd8tBmfojzDzrDvmjjR8TmnzWyeHKc2AJRCjzKLrZcXuWTrx44B0xHsM5on3q2/r2kwVxXEB17J/IdYae6d4HPupwTVSOPILO2QDSwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783906493; c=relaxed/simple;
	bh=WNMMz5K7EryQ6DHQAMS+LxuZaLeFySnj5mDADFRl5J0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SNDPZ2+Y10VJ0jqxUVhyAJp7aMELZuAUIVB76yJVuuvuki3LmN7fxbgfUUTC4jeHWLFojlTAfzTuc9L/4azLIG0l8LeVoJ+TTuNw+gx5oOLZm26pwIlfQUHv8elRWN6PSaQeXYk1xZ06jcPHB8IUPCetfvZQAIzWxNvugl8bOyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+8IIBgN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E6EA1F000E9;
	Mon, 13 Jul 2026 01:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783906492;
	bh=WrGLb51pjDFZSWge3h1JanVeqwUGG+vdXRljL6THa/w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=f+8IIBgNRCHGVh9RkX54n7DxO+9nzUe33sf09fMolNOJX5NfYFR1lXdeZ8pYG1Wyn
	 urb/GRQu3DqOibYPZyQR1t3c0gO8sBIOEcCSN+i8Hg6EYoHMi9x7BTt/+1uCI7WyMI
	 wXhjb+v3FWbdfOr2LqT7RrEPYtYEu0HnwBkMq8yd2wwycxrfl93DoStNCGncYTXVwI
	 iyZ1KXtyJSoOSc5RAswQoXUcCLaLouc7D81S7PMEoioAYXH3mXzaS/5Yco+3iocRz5
	 rbyieOpVwIictdtSt6FbUWdd/wRfz3Pd3Gi6Hyex/1X8vvIFXv/KhkbK7A3a1wWZko
	 M0WYLIBXPqbcg==
Date: Mon, 13 Jul 2026 02:34:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "David Lechner (TI)" <dlechner@baylibre.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chris Hall
 <c-hall@ti.com>, Patrick Edwards <pedwards@ti.com>, Kurt Borja
 <kuurtb@gmail.com>, Nguyen Minh Tien <zizuzacker@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/8] dt-bindings: iio: adc: add input-chopping
 property
Message-ID: <20260713023443.1a7a9acb@jic23-huawei>
In-Reply-To: <20260710-iio-adc-ti-ads122c14-v3-4-746d52cbf1d0@baylibre.com>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
	<20260710-iio-adc-ti-ads122c14-v3-4-746d52cbf1d0@baylibre.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325156-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:email,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5BA774675A

On Fri, 10 Jul 2026 17:50:37 -0500
"David Lechner (TI)" <dlechner@baylibre.com> wrote:

> Add a generic input-chopping property to adc.yaml. This is a feature
> seen frequently in ADCs that are designed to measure resistive loads,
> such as RTDs and strain gauges. Enabling this can reduce offset errors
> by swapping the positive and negative input channels on every other
> conversion. This can have side-effects in timing and filter response, so
> it is not always desirable to enable this feature in some applications.
> Therefore, it is best to make this a property that can be enabled or
> disabled in the device tree.
> 
> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
> ---
> v3 changes:
> * Renamed property to input-chopping to reflect more common terminology.
> * Removed "allowed" from the description.
> * Extended description to explain when it should not be used.
> 
> v2 changes:
> * New patch.
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index 308857f11220..c408feebd46d 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -80,6 +80,14 @@ properties:
>        ADCs usually allow choosing between internal reference sources or a pair
>        of external pins.
>  
> +  input-chopping:
> +    type: boolean
> +    description:
> +      If set, the positive and negative input channels are swapped on every
> +      other conversion to reduce offset error. This generally comes at the
> +      expense of added settling time between conversions, so should be omitted
> +      on systems with high-frequency signals or high data rate requirements.

I'm lazy so I didn't check back, but in my mental model of this, the DT is simply
saying that the analog circuitry is suitable for doing chopping.  Driver decision
on whether to do it.  Perhaps we can reword it for that?
> +
>    excitation-channels:
>      $ref: /schemas/types.yaml#/definitions/uint32-array
>      description:
> 


