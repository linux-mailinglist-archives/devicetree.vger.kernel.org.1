Return-Path: <devicetree+bounces-274047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEj4OsBZsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:02:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BD4263590
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED9753007974
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA253DE433;
	Wed, 11 Mar 2026 11:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SUz3g2Ju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE223CEB97
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230235; cv=none; b=B9Mb1EAdiQWd57O09AlrUAkKqlFXrfiT39Y2oWRweLzamAHA5kxOPByItrtEooiRoCYhaCAn4P3wGqOap1s9KveWCBUejrsBrGXeAiM07wOwPkw4syV0FWWKLa0Fm1VSqDwUuwprYz7jOjBP3aP7QA0PxNoQzWT2zPNCM5zhI4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230235; c=relaxed/simple;
	bh=zqt1TJo6M5ytVgoiQO4PNEkMGsD06msQOJ67zLe/YZQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jVuD/wSa2W0yS7KubQrzxeCdkI0JPFwdkVahJ6p5fvccdtcOPKblt+PzU6651Phqw3PEyeoGeLesAjnIEe6Fln/Ic1AXNJYs2aSwTGz2iSizag9cl0VN6mtTZEKRLpH8YJC1oDPZDxUEEEQBtD8ivTWLGs85xb2wVpB2F61Fgak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SUz3g2Ju; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4853f2826f7so31072375e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773230233; x=1773835033; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zqt1TJo6M5ytVgoiQO4PNEkMGsD06msQOJ67zLe/YZQ=;
        b=SUz3g2JuSj0UmQYfQ/A0s/awEkP9EdpgvhQLowuko5kEM5/Slvj1nvL3Q9ELk3EMVg
         oZN773twe147kv2CTAmGXNnqkBhSk4Auvu0TISOdj0PAoLrBdEwpF4apQ1LSnvxTSDOM
         7GHbrp15fjBnAFwQqOP20qeTFRhjrC6pzp0t1sl9SLbWt7kAIvQ44T6xhGlzfL6gFkie
         p+NZuCOf+lAGx3P50QrTg+6epXqClY+Z5U1INaCsI5ZTZaL1EPg8OR7K4cT1XtUKfheS
         AudaosZG9M8ESGBW8fjnyXEhnXhy6CduMTxara3s10NwI7NRCgMc821iUAqnasn8Rqqo
         WflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230233; x=1773835033;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqt1TJo6M5ytVgoiQO4PNEkMGsD06msQOJ67zLe/YZQ=;
        b=hs5tMe8HH3qjnLTW+r41vcRxGa0SLmHltPtLobpPJjIhdganSmnCuW81g/oW9WA8gW
         +du/td+jAPgqeywz3qTryP3Js+UcCrkMBCNvyJdseNcFX678Zw+TJHnAkTqo3R+TkrYC
         mHbB+wWExvETkXbLo03PGfafalk5//AJe/oPeDiUK+kHvroEk4Osm2CXbeWU3z8+7fEA
         8oZUC+mDoSHn0GDig6cBKtGpR60Ci/XPoVFxUj7RY3gzOYnboUY+F6kU+XDTQLlLZ9LF
         x+/7P4rESf8RdKlpxzP6FPlN3fTGbOakOc2JKkxkAPda1ssHk2ZnqdxoLtkM/UPxRdMa
         PewQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZfoWj3p9zBOI9WGvzvj/oIqrE9dxHsuxdxWEjymZl9l9ZBZD0LShe1oURZMkgQ4mGQ4umdO1vhGJ8@vger.kernel.org
X-Gm-Message-State: AOJu0YxMkVIvnt7tcCZZdcFntEKkK9qrJFusgmCPGM0L5g5ore21QQjZ
	68xgNTTKFNfuv1bHlVsHkqsa6Dm3qLN7NVxAKgH6m4k+xuubYc97HnzR
X-Gm-Gg: ATEYQzyFQdIMi0oVGB6oEQlMhKYUVk+7GqtRC8+vr1oXOsH2ideL9OCgrzo2zl0L48t
	fA13QYsTn7HL2U/guojiBKFiXNDlyqgdqLgJxDmlea5cQT00YmUHCHaWIv1AcltT24YYnbBQKCm
	b0iW70RwiAEztlM3/02s8Rw/ruH2+wmMwnZVIyRbrAoOWsvogKahbjopzFyQi/BPPypiDGca+CJ
	juMDe7RRsWY1R/mzcJOsS9XV1SpOgR2pjXaltK60eSYo9SAFim7g4jnK4Ri1xZTIWyuY+LKsjCd
	I0vnYieMho5lp0a6mCJClYKVwO2nciM23N+S2WcjxuNVcea+uK+qjtDj25HZh1QhUOgl9qd+zw2
	6qU/XE3i052dn3W3bF/VU7DqtsNuFuC0cmriR96Ytrp5j8gZ/PYOQAQNZkywGBymo0c5NVDL43z
	tk/sRRcwBvMxNiF6uthzFjVL0gs0Po7UE=
X-Received: by 2002:a05:600c:138a:b0:485:40c6:f507 with SMTP id 5b1f17b1804b1-4854b136ac7mr38643825e9.30.1773230232448;
        Wed, 11 Mar 2026 04:57:12 -0700 (PDT)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0d4977sm17543575e9.19.2026.03.11.04.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:57:12 -0700 (PDT)
Message-ID: <a79296dc96215a579c29c5c9eda464f818f050d6.camel@gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: iio: dac: ad5504: add output-range
 and missing gpios
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>, lars@metafoo.de, 
	Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	skhan@linuxfoundation.org, me@brighamcampbell.com,
 linux-iio@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski	 <krzk@kernel.org>
Date: Wed, 11 Mar 2026 11:57:56 +0000
In-Reply-To: <20260310174835.24209-2-0rayn.dev@gmail.com>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
	 <20260310174835.24209-2-0rayn.dev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 62BD4263590
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274047-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,metafoo.de,analog.com,kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:email,metafoo.de:email,analog.com:url]
X-Rspamd-Action: no action

On Tue, 2026-03-10 at 17:48 +0000, Taha Ed-Dafili wrote:
> The AD5504 output range (0-30V or 0-60V) is determined by the R_SEL pin.
>=20
> Use standard output-range-microvolt and range-sel-gpios properties to
> describe the hardware configuration of the R_SEL pin. Ensure mutual
> exclusivity using the not/required logic. Additionally, add missing
> vlogic-supply, clear-gpios, ldac-gpios and datasheet links, and provide
> a complete usage example.
>=20
> Suggested-by: David Lechner <dlechner@baylibre.com>
> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
> ---
> =C2=A0.../bindings/iio/dac/adi,ad5504.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 40 ++++++++++++++++++-
> =C2=A01 file changed, 39 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
> b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
> index 9c2c038683b4..c0b2d470949a 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
> @@ -10,8 +10,10 @@ maintainers:
> =C2=A0=C2=A0 - Lars-Peter Clausen <lars@metafoo.de>
> =C2=A0=C2=A0 - Jonathan Cameron <jic23@kernel.org>
> =C2=A0
> -description:
> +description: |
> =C2=A0=C2=A0 High voltage (up to 60V) DACs with temperature sensor alarm =
function
> +=C2=A0 https://www.analog.com/media/en/technical-documentation/data-shee=
ts/ad5504.pdf
> +=C2=A0 https://www.analog.com/media/en/technical-documentation/data-shee=
ts/ad5501.pdf
> =C2=A0
> =C2=A0properties:
> =C2=A0=C2=A0 compatible:
> @@ -27,16 +29,48 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 1
> =C2=A0
> =C2=A0=C2=A0 vcc-supply: true
> +=C2=A0 vlogic-supply: true
> +
> +=C2=A0 output-range-microvolt:
> +=C2=A0=C2=A0=C2=A0 description: |
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Specify the channel output full scale ran=
ge. The R_SEL pin
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 determines if the range is 0-30V or 0-60V=
.
> +=C2=A0=C2=A0=C2=A0 items:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: 0
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum: [30000000, 60000000]
> +=C2=A0=C2=A0=C2=A0 default: [0, 60000000]
> +
> +=C2=A0 range-sel-gpios:
> +=C2=A0=C2=A0=C2=A0 description:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GPIO connected to the R_SEL pin to select=
 the output voltage range.
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> +=C2=A0 clear-gpios:

I would match the datasheet name. So clr.

- Nuno S=C3=A1
> +=C2=A0=C2=A0=C2=A0 description: GPIO that controls the /CLR pin (active =
low).
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> +=C2=A0 ldac-gpios:
> +=C2=A0=C2=A0=C2=A0 description: GPIO that controls the /LDAC pin (active=
 low).
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> =C2=A0
> =C2=A0additionalProperties: false
> =C2=A0
> =C2=A0required:
> =C2=A0=C2=A0 - compatible
> =C2=A0=C2=A0 - reg
> +=C2=A0 - vcc-supply
> +
> +allOf:
> +=C2=A0 - not:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - range-sel-gpios
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - output-range-microvolt
> =C2=A0
> =C2=A0examples:
> =C2=A0=C2=A0 - |
> =C2=A0=C2=A0=C2=A0=C2=A0 #include <dt-bindings/interrupt-controller/irq.h=
>
> +=C2=A0=C2=A0=C2=A0 #include <dt-bindings/gpio/gpio.h>
> +
> =C2=A0=C2=A0=C2=A0=C2=A0 spi {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #address-cells =3D <1>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #size-cells =3D <0>;
> @@ -45,6 +79,10 @@ examples:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
compatible =3D "adi,ad5504";
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
vcc-supply =3D <&dac_vcc>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
interrupts =3D <55 IRQ_TYPE_EDGE_FALLING>;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 outpu=
t-range-microvolt =3D <0 60000000>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clear=
-gpios =3D <&gpio 4 GPIO_ACTIVE_LOW>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ldac-=
gpios =3D <&gpio 5 GPIO_ACTIVE_LOW>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
> =C2=A0=C2=A0=C2=A0=C2=A0 };
> =C2=A0...

