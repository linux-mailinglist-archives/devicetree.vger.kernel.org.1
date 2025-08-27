Return-Path: <devicetree+bounces-209528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0794B37CD9
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 10:05:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3F0220344D
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 08:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DD832C31B;
	Wed, 27 Aug 2025 08:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fDMVk27s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE33D32A3F0
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 08:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756281898; cv=none; b=p80lwK23s/IZBfbo6vE01/ZasWyiBGVt7vA9B2cVMKmZVSni2gxSgxAoXxkQLB/DlCx47XP9+HLEjFxMJJt+O94HLECwqIdsSYQurresejg1J0PLq6RIvOnUcYpWV0IBa40O1+nj4bDO0P5CibXmUl4pxQXhZ7jyBB0oG87GU3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756281898; c=relaxed/simple;
	bh=g+KW9TEeVGqYphEisf/ETPbXzv+fd0lBq6e6n0plR/M=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=etuewo+0wf/gTft27LUWokxw7yijRMEDhs66qArTAA8THg9Xxnk13d9pLkPxaXqHvqzBOEIEhdVU3yqLAhT1PZAEV+6MqfWiOjkb31FvLmcntx5u42F8imoTKJ3TmUcTGot9+hlDEOENj4++7HshFFqaoH2b8lnJWkJUo2Ojp0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fDMVk27s; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afe84202bc2so431169066b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756281893; x=1756886693; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o38urx3Y5liCjRZycGC30h3AxkEKhcqPAFepRrs3ec0=;
        b=fDMVk27sioxSQfUj+NERtZPfo0GlsETGlORLyy3ZT+lzjJ+z7XeF8r4tSxc0W5mxVb
         bR1216Db1cFXjPU5M+QfdPo42l5ADMzwKKtiJSdV6Fzzs7dsUwQ2krYvIYga30Mke6pJ
         g/Ua8WLE5hc34IjEPCvocqcCgC0bkFTVsmDc65dVV3mPsBGaT+9RvfqapaXrOncOp27b
         HtG1x7KsEuupa8heo31rfFHSHwaCO4TXQAHNi3x7A0UQYPGE2cXCGG6xDS51QUFul2yn
         T+zhWRtcrR5mDXVvKWIl9r0pVwu9/G2MdYTgH/5kGxriNy196EG+AssHwdv9TkZkmC1v
         JeKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756281893; x=1756886693;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o38urx3Y5liCjRZycGC30h3AxkEKhcqPAFepRrs3ec0=;
        b=mZ25w30ybjZ6l3aLvQ0DPARJkusIUbMmESuwU0U1F+DBA9G1zP8MMyOy0o+UGGs6Id
         /bGU+3aFTWciN5R8VkcvZrLle58rli/zpxeeKIG++cti9Eqc3cH+FMT9DbVDaC+YsIxV
         rn6FHcbI1W/rq1okplysV2vtX1iXiZeEHQnSZl6a6WD5cDuiTyt9zAtvoeW3d+piJNWk
         UlrqZHatwh7aO9+I4SLTd6FAtvb0ah7sKn+0UWYm1kXKg0kzNkf9ZK7TKs7nxVCSZBM8
         Rh+dbCDoY13A49LRJKu51O8IkBVKavVJeex9rPjAdMiqCvk9ZG6biK0Dc7UvkoJpt8YC
         OzWw==
X-Forwarded-Encrypted: i=1; AJvYcCUmOSjicA2GwVkBexEXwcGWifKeFvWlIpAZ1Kwz7H0KSgatb9ZtS+v4CUuXFC6EsZ/9J9hjK6MVCyOo@vger.kernel.org
X-Gm-Message-State: AOJu0YwNDoP4pT+LO01vQRUrgfCWCGdDZoVxwpft+Skj1rGQnIeyX66W
	r3/d2OsxcGO9DajBan1mk6RNljmGWbn28PGlopmowNgqyoPN7wlEcmG1yjaCQUhiVVs=
X-Gm-Gg: ASbGncvhfANvbTnAlqt81o9zI1HhC4ljt9S8wYmFmEZqKdC8DyodGx9BdLoby+Rv4a1
	P9nXeFuCrfmDxlGvPXfpltT+u+NQr4eAXtPc2/Rx+2gqs/ijBfjbWJbZbFRcMsiW7NfpGVhLoLa
	YXGQ4bZ4GyuvjN1V/ptqunkDSDsivDIo6llN1GeuS/Ftmi5XBlJFmb7buQhrc/GS8Yt0cIuZ5H4
	tcLIGqBV4iS45u6VIMnBpBxEVAhOzORkp1+IDuDMA3HOATMZyHniKAoS6B3JXp5Qe14Fiq5LnDD
	veKrvXw6CtQsvkkSdSORYT/XDIpGAO3niKPtaYGNwI1uS4B7VhSFQAXEOVjv4lJ6akfSzud70N3
	ay4E2HOxfDq+417BPXosh7kYMiu0q+mNZ7kagk4GzXpl0x91i
X-Google-Smtp-Source: AGHT+IHAZruNO8PxiQDS6YA+oxemi3oPab4ygrNWQ7snhZ/72+NK1dE4fWGZyqEZWKw8iTnURGRP8A==
X-Received: by 2002:a17:907:6096:b0:afe:7d3b:8463 with SMTP id a640c23a62f3a-afe7d4ace6fmr1003276666b.62.1756281892878;
        Wed, 27 Aug 2025 01:04:52 -0700 (PDT)
Received: from localhost (83-97-14-186.biz.kpn.net. [83.97.14.186])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-afeaf41dc6fsm283102066b.18.2025.08.27.01.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 01:04:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=41c8a4c6eaeda649630e38b4e0028da409cd67aaf3a4c32373d96e5bca68;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 27 Aug 2025 10:04:32 +0200
Message-Id: <DCD1YPX4T779.ADK4JCGW1MU7@baylibre.com>
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Rob Herring" <robh@kernel.org>
Cc: "Chandrasekar Ramakrishnan" <rcsekar@samsung.com>, "Marc Kleine-Budde"
 <mkl@pengutronix.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Vishal Mahaveer" <vishalm@ti.com>, "Kevin
 Hilman" <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin
 Francis" <sebin.francis@ti.com>, "Kendall Willis" <k-willis@ti.com>,
 "Akashdeep Kaur" <a-kaur@ti.com>, "Simon Horman" <horms@kernel.org>,
 "Vincent MAILHOL" <mailhol.vincent@wanadoo.fr>,
 <linux-can@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 1/4] dt-bindings: can: m_can: Add wakeup properties
X-Mailer: aerc 0.20.1
References: <20250820-topic-mcan-wakeup-source-v6-12-v9-0-0ac13f2ddd67@baylibre.com> <20250820-topic-mcan-wakeup-source-v6-12-v9-1-0ac13f2ddd67@baylibre.com> <20250822143549.GA3664230-robh@kernel.org>
In-Reply-To: <20250822143549.GA3664230-robh@kernel.org>

--41c8a4c6eaeda649630e38b4e0028da409cd67aaf3a4c32373d96e5bca68
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Rob,

On Fri Aug 22, 2025 at 4:35 PM CEST, Rob Herring wrote:
> On Wed, Aug 20, 2025 at 02:42:25PM +0200, Markus Schneider-Pargmann wrote=
:
>> The pins associated with m_can have to have a special configuration to
>> be able to wakeup the SoC from some system states. This configuration is
>> described in the wakeup pinctrl state while the default state describes
>> the default configuration. Also add the sleep state which is already in
>> use by some devicetrees.
>>=20
>> Also m_can can be a wakeup-source if capable of wakeup.
>>=20
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>> ---
>>  .../devicetree/bindings/net/can/bosch,m_can.yaml   | 25 +++++++++++++++=
+++++++
>>  1 file changed, 25 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml =
b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> index c4887522e8fe97c3947357b4dbd4ecf20ee8100a..0e00be18a8be681634f25378=
bb2cdef034dc4e6b 100644
>> --- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> +++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> @@ -106,6 +106,26 @@ properties:
>>          maximum: 32
>>      minItems: 1
>> =20
>> +  pinctrl-0:
>> +    description: Default pinctrl state
>> +
>> +  pinctrl-1:
>> +    description: Can be Sleep or Wakeup pinctrl state
>> +
>> +  pinctrl-2:
>> +    description: Can be Sleep or Wakeup pinctrl state
>> +
>> +  pinctrl-names:
>> +    description:
>> +      When present should contain at least "default" describing the def=
ault pin
>> +      states. Other states are "sleep" which describes the pinstate whe=
n
>> +      sleeping and "wakeup" describing the pins if wakeup is enabled.
>> +    minItems: 1
>> +    items:
>> +      - const: default
>> +      - const: sleep
>> +      - const: wakeup
>
> This doesn't allow '"default", "wakeup"' which I think you want.
>
> "sleep" and "wakeup" seem mutually exclusive and really are just the=20
> same thing. Both apply to the same mode/state. Whether you can wake from=
=20
> it is just an additional property (of the state).=20
>
> So I think you want:
>
> items:
>   - const: default
>   - enum: [ sleep, wakeup ]
>
>
> Or you should just drop 'wakeup' and just support wakeup with 'sleep'=20
> when 'wakeup-source' is present.

Thanks for your feedback. I see they seem to be mutually exclusive, but
I think they serve different purposes. The sleep state describes the
pins when sleeping with wakeup disabled. The wakeup state describes the
pins when sleeping or off and wakeup is enabled.

Only allowing one of the two states or only using the sleep state will
enable or disable wakeup statically, there is no way to choose one or
the other.

For my specific setup, the name of a sleep state is also kind of
misleading. The SoC is in a poweroff state and sensitive to activity on
the pins configured for wakeup. It is not just sleeping, it will do a
fresh boot once woken up.=20

Best
Markus

--41c8a4c6eaeda649630e38b4e0028da409cd67aaf3a4c32373d96e5bca68
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaK68EhsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlN4
dwEAmJszUShVvXfS2LCmLmEu7BZUsJ2zzz7SGnnInFEs3FEBAOcxPEuvnj7hWYdH
3c/Loa6iaWxbVEoBV2+H35Z3algJ
=jiEZ
-----END PGP SIGNATURE-----

--41c8a4c6eaeda649630e38b4e0028da409cd67aaf3a4c32373d96e5bca68--

