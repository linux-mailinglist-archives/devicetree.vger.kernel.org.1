Return-Path: <devicetree+bounces-310806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xh5YKQbNK2oZFQQAu9opvQ
	(envelope-from <devicetree+bounces-310806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:10:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9775C67816B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:10:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YjjksfCu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310806-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310806-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A78E0300532F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B066362152;
	Fri, 12 Jun 2026 09:10:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7722F7EF9;
	Fri, 12 Jun 2026 09:10:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255423; cv=none; b=svaYC5oaTTKhA2wdUu/AUitcy5vByQ+3cEtcVqt616lpsFW5QB2QtVKv91vZ/LU4KyxYCkjMUDzRsUys7VT+pdmL/KjDjU/XhVZz+3sSu8lvoUDxyLYZ7ujhtKyd8Qt3OQjCde9CsXhWXiNFRymq3QBYenw9o9tQxUywufvdrvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255423; c=relaxed/simple;
	bh=izuWVILo6Sdebuw2iX/sfQUD9kqWjeoTvfhVvOCVE5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNDsUrvgE7O6cd9REzNh+KxiOIjGznLpqJV43pDePej0iZrj87pe1rV/iU3kSdQRP52W20VJ0L0J7h1TFSQ6bnCtzYslCgKUAJ6yKBK99SYg8e/nU7WHW7qQS+R49ABNEwE6OK/yUfnXv8hO8ZtrEkAh+s1sC/l+nDkJqQxJwMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjjksfCu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4167D1F00A3A;
	Fri, 12 Jun 2026 09:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781255421;
	bh=DezVWNKSu/AY5pSw4ed9TOXCTrXmewc1pizcle6oTuA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YjjksfCuVY/uTQjzwARxqlczXYB0pU0icuSYdxSxqgsJGsWeN0f29Z+QIEE9y0uYU
	 OH1nUOXZ7OSxmRudhj5tNaXjKpLuLIfTTdG7vQICbj/HdcxNg5Aj1MEExe0RQSPLHT
	 rS/DVoyk47mDXqi94m33CghvsiK1XmAK1H2cZdh0B9vm59HvzXM+6z8mJiZ1fd6Akp
	 Zr6hkeR1WZHTiWJ4JC/M/h//a5Azc81pmSqWEffPVyPf+4wNry3rebs23ovTIS9fcg
	 RvkzJATG3dQFEaZ8YLzW+3GIdGkc9E6N2hauzVGk38vmwti/UdUyWu5+BU3DB7Hl/S
	 221Z92roiDjrg==
Date: Fri, 12 Jun 2026 11:10:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linusw@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: iio: accel: convert lis302 binding
 to YAML schema (v2)
Message-ID: <20260612-fuzzy-quartz-tench-c2f915@quoll>
References: <20260611154105.3727-1-shofiqtest@gmail.com>
 <20260611154105.3727-4-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260611154105.3727-4-shofiqtest@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-310806-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9775C67816B

On Thu, Jun 11, 2026 at 06:41:05PM +0300, Md Shofiqul Islam wrote:
> Replace the plain text lis302.txt with a YAML schema for the
> LIS302DL/LIS3LV02D accelerometer family.

There is no "YAML schema". There is DT schema. See submitting patches
doc in DT dir.

...

> +description: |
> +  WARNING: This is a legacy binding for hardware that predates modern DT
> +  practices. It is documented as-found in upstream board files. Do NOT use
> +  this as a template for new drivers or bindings.
> +
> +  The driver lives in drivers/misc/lis3lv02d, not in IIO. Many properties
> +  listed here represent run-time driver configuration that would normally not
> +  appear in device tree. They are documented here only because existing
> +  upstream board DTS files use them.
> +
> +  Compatibles st,lis302dl-spi and st,lis3lv02d were previously listed as
> +  deprecated in st,st-sensors.yaml. They are moved here with their actual
> +  hardware configuration so validation works correctly.
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: I2C variant (original part)
> +        const: st,lis302dl

This wasn't in the old binding. You need to explain in the commit msg
changes done to the binding during conversion.

> +      - description: I2C variant (larger range)
> +        const: st,lis3lv02d
> +      - description: SPI variant; including the bus type in the compatible
> +          string is a legacy naming error, do not copy for new bindings
> +        const: st,lis302dl-spi

Best regards,
Krzysztof


