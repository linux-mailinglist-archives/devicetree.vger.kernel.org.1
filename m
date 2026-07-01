Return-Path: <devicetree+bounces-318866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x1maNHdvRWqzAAsAu9opvQ
	(envelope-from <devicetree+bounces-318866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 21:50:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 492FC6F1160
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 21:50:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TBFuOb0O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318866-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318866-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFCB5308C117
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 19:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38A5541226F;
	Wed,  1 Jul 2026 19:39:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C7B3AE6E4;
	Wed,  1 Jul 2026 19:39:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782934778; cv=none; b=C6YiHHzhPKxFHICTZPkUM7FJJ8AKF3+/h7Ifls4QmkjCNWC3ZD7S0wt59DsDK1EBFG3nUCyZFE5Ci08j4/AfojYPuzRmafVJtSo0Wmo1ZLwauzBykKmLL6OhHMQzYZRF1IJdeHMfknflOjchgyMj3+QCgUp6RBks4/yYw5D3QU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782934778; c=relaxed/simple;
	bh=Ir58o5d3aiQ1D+TysP++ASg5OFXwIwp8eXpHJRU75u8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=anUcBY231hx1+HVUEK+PTRdmLQgbCOkXBfVmSTZcvS9L0U9HSUaRHGrQbvhfZFpQDZ8Bs69N5B/HGR8Y2J9RGe2usJamNGmk7kDenmrCZOTQHHRgMyz50K375ZXKZPxM+hms6un07ek/cifvZXGfbui8ibvtb9EoLI8LJ/0S2zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBFuOb0O; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0AD11F000E9;
	Wed,  1 Jul 2026 19:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782934776;
	bh=jy5ObGLgOB0CshRS3p6Ild0t4meQ24n2gU34SJVTSw0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=TBFuOb0O/94MFU8S5lbwDjpIHvEal+YgKke9mcl7pft9sftg3eeiBwM2LZDOtoXza
	 H/ib9x1LjF9jrnZydEBtn64NDkAFCcrPfEKEy3OsvAn0jkoVzziNLylBrlUS2UaWzH
	 iSxrgLQU9EmWd3MYf0OVPjuQ9InhksCz0ekdUxdVxrfVqDpaS98j+2xmTqlSyQrgCK
	 nRoOEjmliT/z0cDvVBxCvSYdQ3UkmT8iKIz0o5zNaJ329nMGsEdolItd+hgLQ0Rj6U
	 YA4RyYMtpJKfHMF6r2RdGQxq1zLZMTpSZU6yQJgPLruVdovPQaAF8UXwiCU75DQmSN
	 yXNfnevqtZM1w==
Date: Wed, 1 Jul 2026 20:39:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chris Hall
 <c-hall@ti.com>, Patrick Edwards <pedwards@ti.com>, Kurt Borja
 <kuurtb@gmail.com>, Nguyen Minh Tien <zizuzacker@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: iio: adc: Add excitation current
 sources properties
Message-ID: <20260701203932.20e688db@jic23-huawei>
In-Reply-To: <20260625-iio-adc-ti-ads122c14-v2-2-ceb9b0b561cb@baylibre.com>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
	<20260625-iio-adc-ti-ads122c14-v2-2-ceb9b0b561cb@baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318866-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,jic23-huawei:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 492FC6F1160

On Thu, 25 Jun 2026 16:55:04 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: Kurt Borja <kuurtb@gmail.com>
> 
> Some ADCs incorporate current sources that provide excitation current to
> resistive temperature devices (RTDs), thermistors, diodes and other
> resistive sensors that require constant current biasing.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
> ---
> v2 changes (compared to Kurt's RFC v2):
> * Make units nanoamps instead of microamps to fit known devices.
> * Drop bit about allowing single value for multiple channels.
> * Add bit about semantics of the array index.
> ---
>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> index 12800737d4fb..860601ec5334 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> @@ -81,6 +81,26 @@ properties:
>        ADCs usually allow choosing between internal reference sources or a pair
>        of external pins.
>  
> +  excitation-channels:

How would this apply if a device provided excitation on pins that didn't correspond
to channels? i.e. some extra ones.  Perhaps such a device that also supports
configuration (rather than a static set up) would just need a different binding.
Feels like I'm creating a corner case we may never see :)

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Excitation current sources provide current to resistive temperature
> +      devices (RTDs), thermistors, diodes and other resistive sensors that
> +      require constant current biasing.
> +
> +      This array describes the mux configuration of the excitation current
> +      sources.
> +
> +  excitation-current-nanoamp:
> +    description:
> +      Excitation current sources provide current to resistive temperature
> +      devices (RTDs), thermistors, diodes and other resistive sensors that
> +      require constant current biasing.
> +
> +      This array describes the current configuration of the excitation current
> +      sources. The index in the array corresponds to the same index in the
> +      excitation-channels array.
> +
>  anyOf:
>    - oneOf:
>        - required:
> 


