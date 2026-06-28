Return-Path: <devicetree+bounces-316428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YSG6EJAtQWrglwkAu9opvQ
	(envelope-from <devicetree+bounces-316428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 16:20:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 830C46D40B3
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 16:19:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dmxatIy8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316428-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316428-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92E49301CCC6
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 14:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D36C3AD515;
	Sun, 28 Jun 2026 14:19:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669843ACEEC
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 14:19:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782656351; cv=none; b=nnQlBaz9WwPy/EKWBBHhL+OZ3rMSzwuK83dcbsVLfFqXaHerK9t2RW11kyaXuOswg238JKf2T8KplEhhcy7Z3slGfHjFb+/73t3TTcD9cAVfv++4lJFqmhkv72RX/Fv87Hjk8dEDsI/XjKQ7iuWvUvZ1pjZVCNZ0GOYrqbXb+AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782656351; c=relaxed/simple;
	bh=gRnX7/x8Ads827anbOyL0qFQBys27Mf0SfogZiYqmCs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RtdLAu4Zf61+oGU3Y1P+oeh0clHWpxgaS3Z4Vb2nqgP+F7PG9fv+y30JMS9USs2g/C+xjS5Qsr7Zn4MWhaBhtSZITsvaNtQRNio70+FFQVxkQXLKRfipMpUqnq/34Sta8t/nZzlYavs7qduASsg+iZ5AwGnpNNBbl3O9Yem3/cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmxatIy8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67A111F000E9;
	Sun, 28 Jun 2026 14:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782656348;
	bh=9THOuhq9QMeoEYP3cPeCt/z5hJ/sTUccDAfruIVFo90=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dmxatIy8U/0q96io7p8/lvGtmqVBeQq286EXVuTsxZ1HCWdCjHZMa7wh7pAW3oaFh
	 9zSIrnd++joLM4KHMjwD57GjOineYiHuVX5OkVHn1lpLZG+tujEISbdayrhoOS9ncn
	 xOwvWdoVtHwh1k2RpBRUwLFmCo5R3GZ0xFkWwKEpDDTD2DIGpPjN4rY7MCS0gOvuMN
	 U4HryDzkB4kED/VIjToIYWwJnNh/Di46PX24pwf5wIZC8UuthHmbVSj/f3w3JNJuFR
	 lb4oEZpDlZImQxFJQMQSLuakQSaJ4p/iE1xOJG3P67tqa/XmJUjiIV2fvqaRZ5PT6O
	 tOacxGCo/ohlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 04/12] dt-bindings: iio: dac: ad5686: rework on power
 supplies
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260628-ad5686-new-features-v5-4-577caadbf7c0@analog.com>
References: <20260628-ad5686-new-features-v5-0-577caadbf7c0@analog.com>
 <20260628-ad5686-new-features-v5-4-577caadbf7c0@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 14:19:07 +0000
Message-Id: <20260628141908.67A111F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316428-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,analog.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 830C46D40B3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Unconditionally requiring `vdd-supply`, `vlogic-supply`, and `=
vref-supply` breaks device tree schema validation for existing, previously =
valid device trees.
--

commit 0fb515588de05f04b0a128cbc333f2b88d5550dd
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

dt-bindings: iio: dac: ad5686: rework on power supplies

This commit updates the device tree binding for the AD5686 DAC to add
supplies for VDD, VLOGIC, and VREF. It deprecates the vcc-supply
property in favor of vref-supply and marks vdd and vlogic supplies
as required for correct operation.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml
> index d781baca6a6c2..02e8c78e36d3d 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5686.yaml

[ ... ]

> @@ -60,9 +74,23 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - vdd-supply
> +  - vlogic-supply

[Severity: Critical]
Does unconditionally adding vdd-supply and vlogic-supply to the global
required list cause a regression for backward compatibility?

Existing device trees that successfully probed without these properties
will now fail dtbs_check validation.

Should newly introduced supply requirements remain optional to preserve
the Device Tree ABI?

> =20
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,ad5676
> +              - adi,ad5683
> +              - adi,ad5684
> +              - adi,ad5686
> +    then:
> +      required:
> +        - vref-supply

[Severity: Critical]
By making vref-supply unconditionally required for these compatibles, does
this cause a validation regression for older device trees that legitimately
used the now-deprecated vcc-supply?

To transition away from vcc-supply without breaking existing device trees,
should the schema perhaps allow either vcc-supply or vref-supply to fulfill
the reference voltage requirement (e.g., via anyOf)?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-ad5686-new=
-features-v5-0-577caadbf7c0@analog.com?part=3D4

