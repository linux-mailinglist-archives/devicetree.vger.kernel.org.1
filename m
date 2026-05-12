Return-Path: <devicetree+bounces-296515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE5uAOSsA2oO8wEAu9opvQ
	(envelope-from <devicetree+bounces-296515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:42:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A9C52B00D
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3596C3044236
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB8103A4F46;
	Tue, 12 May 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De+qS57W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88086386C28
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778625274; cv=none; b=DSt2fgMg3G+4kNF8ebMGi9K4sYO4C0utb3XgvtO6pn2+tRZIvHicKQOQ9LzJU8TuszSwxEgZGjOZnW+1WvELiGHDfYcJgAHAFUrb3OAhtqioyw1rktcwmrkBKKNdxF3BNuf1xNdTt84bCZohdH5YsPcP3MIzM4Scu0rWkeUnB6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778625274; c=relaxed/simple;
	bh=BkJZIpACjUxtGxZzNQbleTi3+H/xH97Nhy1ZvCMWVAA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AbY9E0e6G87TSPSejo4rzKpLdxCrkhIWpkvaYp6AoznFVyuv52vewPWEqx8qgnb8/hh6+n7Z7Ag3dZjQH1ScQeDnBWkLX3cDPWrZyb4QFTUfTWbU8YgWzUULyZRzcyt2f4JTYu2sAT5zGH6zXNanipcVT6Pq7UBr9oq00Qd1ChM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De+qS57W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D823EC2BCB0;
	Tue, 12 May 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778625274;
	bh=BkJZIpACjUxtGxZzNQbleTi3+H/xH97Nhy1ZvCMWVAA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=De+qS57W4qETFDENiEgBWnUgL4cN+RXz8BFndjDIx3X1pByFT0rUStbMINV8sNI08
	 Z4U0TWJQX31jDE9V3/zYvQ2/qcCZcXwgef4yGKTyoEAI2ebLSxnk/WPDUA+BzAAXg7
	 uwos8mNRaaH40FzWIgSAlTMdueLQdWLieJQX24FurBOU8Xi/oJC0q+5XK7IspbGUpB
	 khYhUuY1EpV1l2Ip23Txr2ZANXI7n8NwH8YK7PEvP2jET7LzfokUBzVZ8AG1xz+ApI
	 ei5Qwj0hxoXML0Z4aaV+dc5mPD5XHPUBhbJKphUF4pBDNRgmFT6pvLdkPbcXlHSzYY
	 I7yuJ1T7s8cRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 v8 04/11] dt-bindings: iio: adc: hx711: add HX710B
 support
Reply-To: sashiko@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260511174342.123820-5-piyushpatle228@gmail.com>
References: <20260511174342.123820-5-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 22:34:33 +0000
Message-Id: <20260512223433.D823EC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 07A9C52B00D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296515-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The HX710B-specific `dvdd-supply` property is not disabled for t=
he older HX711 variant.
--

commit a13e8e56d6e7d72323b9da2a052824f6a63351ad
Author: Piyush Patle <piyushpatle228@gmail.com>

dt-bindings: iio: adc: hx711: add HX710B support

Add the avia,hx710b compatible and document the HX710B-specific DVDD and
VREF supplies. Update constraints to forbid HX711-only properties on HX710B
nodes and require vref-supply for HX710B, along with a new example.

> diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/=
Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> index 9134bbe413796..b2b5c7bdf05e6 100644
> --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
[ ... ]
> @@ -53,6 +69,21 @@ properties:
>      maximum: 2500000
>      default: 400000
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: avia,hx710b
> +    then:
> +      properties:
> +        vsup-supply: false
> +        rate-gpios: false
> +      required:
> +        - vref-supply
> +    else:
> +      properties:
> +        vref-supply: false

The commit message introduces both DVDD and VREF as HX710B-specific
supplies. While vref-supply is properly forbidden in this else branch
for the older HX711 variant, dvdd-supply is omitted.

Should dvdd-supply: false also be included here to prevent incorrect
device tree configurations for HX711 from silently passing schema validatio=
n?

> +
>  required:
>    - compatible
>    - sck-gpios

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511174342.1238=
20-1-piyushpatle228@gmail.com?part=3D4

