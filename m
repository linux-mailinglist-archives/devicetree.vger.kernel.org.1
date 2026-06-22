Return-Path: <devicetree+bounces-314412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DPUNClMoOWprngcAu9opvQ
	(envelope-from <devicetree+bounces-314412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 14:19:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 844C96AF621
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 14:19:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S0FV+7Ak;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314412-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314412-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 547853028E9E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3AB3A16B6;
	Mon, 22 Jun 2026 12:19:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B1D2F3C07;
	Mon, 22 Jun 2026 12:19:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782130758; cv=none; b=BSH3p1Bb0KE36d5GK3eEYQVxx92+vxmwFCE8SyI5VykmNrviuMYSSrE4kWG60Yq0kYiNFLY0KRxxqYLubYDP5BZI4gb/qr04oZYDTb9Ht1njOBxLWzVjHkqhHzZEf60/qGHwZIR+T78qQJOUrk/z+d8XVqlcsj+8WnkRhcSsvLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782130758; c=relaxed/simple;
	bh=GSQJS/5P7iGlved2yF1ja5ZaVMETbSgVzHE90uU6zOA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b2TDdBRzKA+VySlyINCs3BySYs+HuVrivS5nda7nY05+r6zJUeLSDGtlFxEJzBkQH6n17oBi1GM8oVcKI+5tX3jGvs9ZsndfIDjmtNZRBoRtHGULiIrMwmk9zmQW8oMg1LhG8dJYzmKJvKgJXd43sHHZ9ES/i9si7zGhwLNGLT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0FV+7Ak; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 021801F000E9;
	Mon, 22 Jun 2026 12:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782130756;
	bh=jtLRWS7zAfZDZKvPkb155OJoQDLW3yKNTHEigh3sUtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=S0FV+7AkXRphHHiHwTjW0V3AMrubrwvOatVb7ulo/vG0ao0YrXRGQOQKjAS/eFwai
	 GHG9W63N6NmVeJtJNh7EUmPPP/ThohjPF9pUbL3lxddQawTr015ht8DbnJFvNA6hXU
	 Ztkrm4XgtoeZ+5agu42RGKPT9t6eJHuP+Eq8raDjyuLgdfjL+sRJnuOVX6gRdYi4Cf
	 9QZhu0J81/Y9DMVO4DiW9uY/X1Q7xg2DCNP8gTx5JAYeTkwwy4Xc7zV8E1X7u2+1MM
	 ysiZE8iL67TxwYJMOtVRjoD/fzejMXHthMoGGVdGCu4WjFvZBvKInASqpxk3a7C9Hy
	 kJvRQkgYi0xYw==
Date: Mon, 22 Jun 2026 14:19:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nikhil Gautam <nikhilgtr@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: magnetometer: add Melexis
 MLX90393
Message-ID: <20260622-ultra-gazelle-from-ganymede-a03290@quoll>
References: <20260618160141.11409-1-nikhilgtr@gmail.com>
 <20260618160141.11409-2-nikhilgtr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260618160141.11409-2-nikhilgtr@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314412-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:nikhilgtr@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 844C96AF621

On Thu, Jun 18, 2026 at 09:31:40PM +0530, Nikhil Gautam wrote:
> +description:
> +  Melexis MLX90393 3-axis magnetometer and temperature sensor.
> +
> +properties:
> +  compatible:
> +    const: melexis,mlx90393
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply: true
> +  vddio-supply: true
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  trigger-gpios:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg

Supplies should be required.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        magnetometer@c {
> +            compatible = "melexis,mlx90393";
> +            reg = <0x0c>;
> +
> +            interrupt-parent = <&gpio>;
> +            interrupts = <17 IRQ_TYPE_EDGE_RISING>;
> +
> +            trigger-gpios = <&gpio 18 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a92290fffa16..e9ddcd12feb5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -24926,6 +24926,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/magnetometer/ti,tmag5273.yaml
>  F:	drivers/iio/magnetometer/tmag5273.c
>  
> +MELEXIS MLX90393 MAGNETOMETER DRIVER
> +M:	Nikhil Gautam <nikhilgtr@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393.yaml
> +
>  TI TRF7970A NFC DRIVER

This feels like completely random order.

>  M:	Mark Greer <mgreer@animalcreek.com>
>  L:	linux-wireless@vger.kernel.org
> -- 
> 2.39.5
> 

