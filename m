Return-Path: <devicetree+bounces-182543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD12ACCC54
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:41:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA5821895C8B
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 17:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91A41C8629;
	Tue,  3 Jun 2025 17:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GPp4/Dvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644291C54AF
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 17:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748972494; cv=none; b=hu8ck8keUjvUSTYSO//pZWxvLiT7/u2iHx7HHTn1qJpa4NvdrBKtOjxQSZQDLia1iS4R/cVfNqBMiesD8Lu1bo92kHVADMPzxvA9MMfxZo9js9I8seKyxJjW21tQbXx0TByBlt/jRnq574f8ILuJejH/6Nb0KH+L9sSd4YAsKCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748972494; c=relaxed/simple;
	bh=Sc8MQqtz6fnvJS5fR7oLAfyaF6gQ/B5iw8Wk/X78j3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J9BoYHTymPzU2QityqffI+ASeHjSGJqHrBIQfK3vhKZ63PwlvzIMqFCY0YQOdbmVljXO/gOF+o6rMv0FLdUgYSDUNiueO5TQO0dmviuDRFAu6Xfk73NesiVgd1L3+xS0pag4KwBiPfLA2bDQ+h3ON5SCBJjS9ynf2eBefMhDkZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GPp4/Dvw; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-450cd6b511cso36502925e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 10:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748972491; x=1749577291; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v17ygnkahOl8aK1nqKOWLN3shaj1c17h4br6h80J3cE=;
        b=GPp4/DvwScT6mI4BQN6wMvSNqPzuvPOZZWouJ77lMFW4srsG2fajkI3GrgjpYz8af+
         Scv3Lb0xYXTt/+8SX7us3SmUmPQF7s5L58hzybElgvz4r1sEaIcJT/xzjH1ruasIB8fl
         przraEGZKbwI++v3ImtgHvk5oyefVDcFSTpEtTSFvUPHQd7c4xpL4YT69weBUzW/NRo/
         rvmM4TYc7r6qiFrR+cCMsXp9Aq4mYO5ffvX03nb0NxWzukmIEI8Ll9blf9oQH1GoaKRp
         jPOZWxA8r3yuRZ5IAy7p1bmyjUAAAI0XL/WDUfV0Kh+bj57NKUGz+pKBbF+dTHq9pO0B
         o3+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748972491; x=1749577291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v17ygnkahOl8aK1nqKOWLN3shaj1c17h4br6h80J3cE=;
        b=kIIKb7YRhqQtxpYTh0vOlF6W0Wgwx3/mUMUCdtgbnyrAAqgxLhmSLwDFZpM2S9BgOu
         LaGojH9Odk3KCWNvBUh0697AeyIGsoSFWy6s5sxpmk0W1e8Qep5oFhtk5c+7Tz4/0jtm
         KzyJdgrbiUPTIOSE9dhIDHdO3Qsf8X1hqi01EG+WiIno++fb9B2H9v1bpenMYH3MIEHC
         vuPFailq8tJYac5BQMo9aPauOL4gZMbYSgifoyMgTt3uOCtZUT63/XxhB0HzlijRoeQQ
         tThlg+5O+ztuVbo4VS0oTh2FrGobIP31qZWnjSRAvNFv16vvfcm45fGLAg9j9rRkJHSk
         xD8w==
X-Forwarded-Encrypted: i=1; AJvYcCUYVZ5DYgPwfEaSh1PCmOUXVi967oD8t5i4sK4uYkt3EWEErNsW7ywFs0KOYWMlqusJbg0/ctqEiHX6@vger.kernel.org
X-Gm-Message-State: AOJu0YyYd+DCVU5BTupnnD9wj1eoJrKcjNEHM/YF1gAtjw1Wt/3zjc/9
	/KqzqQYMvSgIaThoRygYb91tYPvZOTpzhV5dVsRWqqke+8dVxqWayq093FPi1eaenh8=
X-Gm-Gg: ASbGnctAynod7CN/GzNmfO8HmDHSwFRVWZs3FoASl5zIENUljS2BdmWlM3Qo0SuX3KH
	KBXvPYZ7euaZukTO4ei0/G8QotbqknedXqv6Ni0mN1wDljgzIu6TBG6cCpcirEkTLdmZcsCe80N
	YmcUaYIulurm57Y6yHROF7Sr7enwdhufrnnGl3GAoES6ddq5i5TCmfxtDgwGwquOax39Iz5iAT+
	BsyEbGGamnOQFhGhW4dfLqT2JMI/SkhWubp/5SnCkN56w8iQmhdwNJ8iLIW9mfLjSjM4vRrDJLT
	PX4cx0I9iNiLpkX0pKIPe9BpqvFEwUqisMx27tRrpeSlrSCkBDz5E5H6fjvvo62OwtwaSrotVlu
	APbBPWTtc93GTNBkcDw==
X-Google-Smtp-Source: AGHT+IFYtypXcuIceGvwjxuac6BwvbR7xGL6xmwnPpX6addhpz53IWTJ71z2bH3kDmNWY67XQdzWdA==
X-Received: by 2002:a05:600c:1d0b:b0:439:8c80:6af4 with SMTP id 5b1f17b1804b1-450d64ffea7mr141076015e9.19.1748972490563;
        Tue, 03 Jun 2025 10:41:30 -0700 (PDT)
Received: from localhost (p200300f65f13c80400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f13:c804::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a4efe73f67sm18682208f8f.47.2025.06.03.10.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 10:41:30 -0700 (PDT)
Date: Tue, 3 Jun 2025 19:41:28 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Sean Anderson <sean.anderson@seco.com>, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: New default binding for PWM devices? [Was: Re: [PATCH] dt-bindings:
 timer: xlnx,xps-timer: Make PWM in example usable]
Message-ID: <crk42dsypmbyqk7avldghjq32vslmalfmmouwxzgtdci4agfhz@rkbmxj5z22fx>
References: <20250527171504.346696-2-u.kleine-koenig@baylibre.com>
 <a14be34c-de2a-4bea-9282-1fac7780b9a4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mlsk4nchawdtgzth"
Content-Disposition: inline
In-Reply-To: <a14be34c-de2a-4bea-9282-1fac7780b9a4@kernel.org>


--mlsk4nchawdtgzth
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: New default binding for PWM devices? [Was: Re: [PATCH] dt-bindings:
 timer: xlnx,xps-timer: Make PWM in example usable]
MIME-Version: 1.0

Hello,

On Wed, May 28, 2025 at 09:43:48AM +0200, Krzysztof Kozlowski wrote:
> On 27/05/2025 19:15, Uwe Kleine-K=F6nig wrote:
> > With #pwm-cells =3D <0> no usable reference to that PWM can be created.
> > Even though a xlnx,xps-timer device only provides a single PWM line, Li=
nux
> > would fail to determine the right (pwmchip, pwmnumber) combination.
> >=20
> > Fix the example to use the recommended value 3 for #pwm-cells.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> And what about the binding itself? It allows any arbitrary value.
> Setting it to const=3D3 would not break the ABI, as long as driver does
> not care.

Oh indeed. Now I wonder about myself that I didn't notice that without a
hint.

So with the intention to move all drivers to #pwm-cells =3D <3>, the patch
to create here is:

diff --git a/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml b/=
Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
index b1597db04263..8d7a87fb2d35 100644
--- a/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
@@ -26,7 +26,8 @@ properties:
   reg:
     maxItems: 1
=20
-  '#pwm-cells': true
+  '#pwm-cells':
+    const: 3
=20
   xlnx,count-width:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -82,7 +83,7 @@ examples:
     };
=20
     timer@800f0000 {
-        #pwm-cells =3D <0>;
+        #pwm-cells =3D <3>;
         clock-names =3D "s_axi_aclk";
         clocks =3D <&zynqmp_clk 71>;
         compatible =3D "xlnx,xps-timer-1.00.a";

There is however one concern that I want to get resolved first to
prevent churn:

In principle I think it's bad that a phandle to a PWM must contain a
period and flags specifying the polarity. For some use cases the period
might not matter or is implicitly given or more than one period length
is relevant.

So I wonder if instead of unifying all PWM bindings to #pwm-cells =3D <3>
I should instead go to something like

	mypwm: pwm {
		compatible =3D "...."
		#pwm-cells =3D <1>;
	};

	fan {
		compatible =3D "pwm-fan";
		pwms =3D <&mypwm 1>;
		assigned-pwms =3D <&mypwm>;
		assigned-pwm-default-period-lengths-ns =3D <40000>;
		assigned-pwm-default-flags =3D <PWM_POLARITY_INVERTED>;
	};

(where the single cell specifies the index of the PWM's output).

I already suggested that in
https://lore.kernel.org/linux-pwm/jmxmxzzfyobuheqe75lj7qcq5rlt625wddb3rlhie=
rnunjdodu@tgxghvfef4tl/.
When I asked about that in #armlinux Rob said "no. We don't need a 2nd
way to set period and flags." Is this still a bad idea if the
traditional binding with 3 cells will be deprecated for all PWM
devices? If this would be ok then, I'm also open for improvements to
the new concept. Maybe something like:

	fan {
		compatible =3D "pwm-fan";
		pwms =3D <&mypwm 1>;
		pwm-default-period-lengths-ns =3D <40000>;
		pwm-default-flags =3D <PWM_POLARITY_INVERTED>;
	};

?

Looking forward to your feedback.

Best regards
Uwe

--mlsk4nchawdtgzth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmg/M8UACgkQj4D7WH0S
/k76pQf+KKR79KrBT1QNBsD6yIkYAzmD7T/8LIvQqgixRXVryFFLygmqnoGwUwBd
iA97beE65dEkV7UC1KA/yL1/mSCEAQVWF2xLuj2t18MIoolf5vkxPfl6TGI7Nwl0
xLXXg/Uk5gv+DecbWS4NHMva8sAl3kg/uO+saDHPB1WkSzjGsJi2H2mXk0/mt1b2
18b1a6lKEjaqGb5i8nBjM2LQ4s3NnZvjp6ENwJazXJS/7D+oBVEan7RxR0FY0KO8
4IE4jUMuJL2u+EyIh14MF/ZU960SDb5Dhyf+wkVl8RPUBFUl6qFxA5Yit7dJ8/IH
4/QZU/YghjSpmfBo8BMdZoHv1wJ9Ig==
=+Sib
-----END PGP SIGNATURE-----

--mlsk4nchawdtgzth--

