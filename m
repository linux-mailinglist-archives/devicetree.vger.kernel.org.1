Return-Path: <devicetree+bounces-323488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f2hTMqZnT2phgAIAu9opvQ
	(envelope-from <devicetree+bounces-323488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:19:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6CB72ED4C
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:19:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QtdKD+sT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323488-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323488-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 568233000BB2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C76A3E5591;
	Thu,  9 Jul 2026 08:59:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C0F3B4EAC
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:59:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783587576; cv=none; b=twqiecJIyhk/v0w9hG6n7qO9DAMsa395A2JfbkqCCi1lYKjt61S0qJOO/AyLq66z5itQDYlCTkLgjRfvrtJA/ga1BbidzXFHw0YWRl444FgDvbhDI6dhzgu90EDJLVKH9ecLCwpDANUKD6Zh2eCkYatlcU/yJA3CTn/0LBdQ16k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783587576; c=relaxed/simple;
	bh=5DaP12Bz65Qb6UkGn5XK4JavZma+x3hvARAlXzqn6gI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KFrjJcahGOYGWUM2D9fCV7mcbQRVl0GDnDQ9JvPHlUmeeLbMVICx2KZIZgxvCeOgWjncLiZ7YA9x83oB1fZ5yFypQnGEeMF7g0xhB+BOVC0lnNeMSFs77HWzBwdU9ZwuTyeBXExzJRinOqws1U9jPGg4bly2eHWciIoygmOsMlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtdKD+sT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D02931F000E9;
	Thu,  9 Jul 2026 08:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783587575;
	bh=t9Z8dKcBGlwYOZ1LVBMQp6vcE3XgL9kDtaI5AWuuzko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QtdKD+sTK/g3GH1Q8ejalSqzpQEpQ9+Ng+tYOM4nZlVi04yS2e1IXWEaIzFPn581F
	 Gt93F64ZTeFfzsU8Oe2xFhH2847wQZEmJeEVJSYpjXuGzJdyo9pQLOVMmCi0Zpei/p
	 ec8rvEAIBfzKhU7fIiGhydB4/hQc3Jcu7IlWBo+yeqIVCVc6Y9bqKbziyzbKVdyQ2K
	 Q/fbUaPYM983t/8cAQGR/RwG1ncj9w7plGOIYZwpHyOxZg4EU8w5uiSR/9Z+TtO0uC
	 Z8sIgbjms6GGyCLrAFoCeu4EqtVuHh669IWNj5tqLoihNFspwCAkR0MEGZO9QsXONf
	 FcIPii6gvrozg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: iio: adc: Add AD7768
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janani Sunil" <janani.sunil@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-ad7768-driver-v1-1-44e1194fd96a@analog.com>
References: <20260709-ad7768-driver-v1-0-44e1194fd96a@analog.com>
 <20260709-ad7768-driver-v1-1-44e1194fd96a@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 08:59:34 +0000
Message-Id: <20260709085934.D02931F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323488-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:janani.sunil@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA6CB72ED4C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Hardware Variant Required Properties Violation: Missing GPIO pro=
vider properties in the required list
--

--- Patch [1]: [PATCH 1/6] dt-bindings: iio: adc: Add AD7768 ---
commit b348e8650b6dd32f354ad1a32b48736f30d333db
Author: Janani Sunil <janani.sunil@analog.com>

dt-bindings: iio: adc: Add AD7768

Devicetree Bindings for AD7768-4 (4 channel) and AD7768 (8 channel)
simultaneous sampling ADC

> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7768.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7768.yaml
> new file mode 100644
> index 0000000000000..b74fe6aef01c6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7768.yaml
[ ... ]
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - avdd-supply
> +  - avss-supply
> +  - dvdd-supply
> +  - iovdd-supply
> +  - vref-supply
> +  - adi,data-lines-number
> +  - adi,common-mode-output
> +  - io-backends

[Severity: Medium]
Since this hardware provides GPIO capabilities, should gpio-controller and
#gpio-cells be included in this required list? Omitting these allows
incomplete device tree nodes to silently pass schema validation.

[ ... ]
> +  - |
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        adc@1 {
> +            compatible =3D "adi,ad7768-4";
> +            reg =3D <1>;
> +            spi-max-frequency =3D <1000000>;
> +
> +            avdd-supply =3D <&avdd_regulator>;
> +            avss-supply =3D <&avss_regulator>;
> +            dvdd-supply =3D <&dvdd_regulator>;
> +            iovdd-supply =3D <&iovdd_regulator>;
> +            vref-supply =3D <&vref_regulator>;
> +
> +            clocks =3D <&ad7768_mclk>;
> +
> +            adi,data-lines-number =3D <4>;
> +            adi,common-mode-output =3D "2.14V";
> +            adi,power-mode =3D "fast";
> +
> +            io-backends =3D <&iio_backend>;

[Severity: Medium]
If the GPIO properties are added to the required list, they will also need
to be included in this example block to pass dt_binding_check validation.
Could gpio-controller and #gpio-cells =3D <2>; be added here?

> +
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-ad7768-dri=
ver-v1-0-44e1194fd96a@analog.com?part=3D1

