Return-Path: <devicetree+bounces-316250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bEJvB5MhP2p7PAkAu9opvQ
	(envelope-from <devicetree+bounces-316250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 03:04:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 603786D0AC0
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 03:04:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=J3vfGYVO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316250-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316250-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD88C3020A6A
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 01:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487671C5F39;
	Sat, 27 Jun 2026 01:04:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA752F84F
	for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 01:04:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782522256; cv=none; b=WPW2JwO9jCXxYo//r6wTezDMAGM0CuImXNNWH5WC4lH/jfE6BD0OabnomBtz9YYaLwWIXdGryYjYAHlB830hbPOnlRK+maTIC41BUZnIP/MFg3GPTv+kENEe7QmEME2gFPDvDpjoOZl6q50VAXhOpTYwofjWy8aZ3gPqNNpwCOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782522256; c=relaxed/simple;
	bh=k7fsWatdOPMLrp/iB+dUHOjxnR08jEzJ5D1DHn4bdiI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=vBmLYCANh+TzY6WYYjMOEoewSLX28pBITFqAhVs+Q8AP+k9eqt+txqkkL1oMDeqXbmmjHrDTOAI6FW+Phs17nwSjxsbx0HpxDCJ/+x9TNGV3XnN4gTgaoRtf3lVO2wfUpI4f2VlTIWwjPAJVwO9WwkCMYQlwDq2UaQJ0hMcDn/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3vfGYVO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95DE51F000E9;
	Sat, 27 Jun 2026 01:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782522254;
	bh=iFRbdWBD1Dx6EVhzLSeoPw6xBYqKgcC+jqRljnOXaP4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J3vfGYVORJ5E//FVq/4tiEsdq8CP9koEc4SgiQp/j8b0NPqYhUHY3q6PUMStxJmQg
	 Pr5BOwtTGSbOJFh1lCzGqSw+Kkn0Ur2oPreqJL0F6wMqyWPhSQPpCYYTBwfNCgRT1V
	 pNYG0eSZxWObU8s4pzFGfDad/5tFbDE52gbuLOrWTQ7XNvt9fR1NWtTClN2721QNCE
	 fjyKidhsuYTO2W5Y9LMjLAo9YJRAjPCa1E5F7IAhcH9NZX2KS+gAt0IsLvkEzeF+68
	 kUcw8l+trkEYsPqKdPiPPfepGcqdc3zXERQxn5Quzst6syr/BWfR8ceL8KKuO71aOd
	 yUU+la3a5CLqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: magnetometer: add Melexis
 MLX90393
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nikhil Gautam" <nikhilgtr@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260627005843.7786-2-nikhilgtr@gmail.com>
References: <20260627005843.7786-1-nikhilgtr@gmail.com>
 <20260627005843.7786-2-nikhilgtr@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 27 Jun 2026 01:04:14 +0000
Message-Id: <20260627010414.95DE51F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316250-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nikhilgtr@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 603786D0AC0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The required properties `vdd-supply` and `vddio-supply` are omitted=
 from the `properties:` block and missing from the `examples:` node, causin=
g schema validation failures.
--

commit c1fe5f8c39a4b8113c50e154a6674ac296637f70
Author: Nikhil Gautam <nikhilgtr@gmail.com>

dt-bindings: iio: magnetometer: add Melexis MLX90393

Add devicetree bindings for the Melexis MLX90393 3-axis magnetometer and
temperature sensor.

> diff --git a/Documentation/devicetree/bindings/iio/magnetometer/melexis,m=
lx90393.yaml b/Documentation/devicetree/bindings/iio/magnetometer/melexis,m=
lx90393.yaml
> new file mode 100644
> index 0000000000000..33ab0be663450
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393=
.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: melexis,mlx90393
> +
> +  reg:
> +    maxItems: 1
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
> +  - vdd-supply
> +  - vddio-supply
> +
> +additionalProperties: false

[Severity: Low]
Will this binding fail schema validation when running dt_binding_check?

The vdd-supply and vddio-supply properties are listed as required, but
they are not defined in the properties block.

Because additionalProperties is set to false, wouldn't the schema reject
these supply properties during validation?

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        magnetometer@c {
> +            compatible =3D "melexis,mlx90393";
> +            reg =3D <0x0c>;
> +
> +            interrupt-parent =3D <&gpio>;
> +            interrupts =3D <17 IRQ_TYPE_EDGE_RISING>;
> +
> +            trigger-gpios =3D <&gpio 18 GPIO_ACTIVE_HIGH>;
> +        };
> +    };

[Severity: Low]
Does this example node need to include the vdd-supply and vddio-supply
properties to pass validation, since they are marked as required above?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260627005843.7786=
-1-nikhilgtr@gmail.com?part=3D1

