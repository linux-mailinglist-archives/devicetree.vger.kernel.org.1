Return-Path: <devicetree+bounces-244022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5CBC9F103
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 14:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 977363A5BB8
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 13:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8272F2EBDC8;
	Wed,  3 Dec 2025 13:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yljj44ar"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF46D2E265A
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 13:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764767282; cv=none; b=UvZO83HZ7w3NHfVnQrrllxmlv1CNFr9tDqjLdxq8nxq7NF5OwHy7H+FEaMMsxzvRBnepExnheWLQmsMIWYp5gLE/mwynHOagVMX2MVPDw+doaEuQZPHaYCfEFuYZXOvx5ZF6DyGuRpSbvhyop3MI7KfELbS0lqs3o/+lgd84r3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764767282; c=relaxed/simple;
	bh=EWh94cVY0D6FnBBwVmY2kC4jd28KOSPDmIcH41P+nxM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=T1xfzjkbrNiCv91zwrsxWLC2TpzDwVeOvCMGNrBYqgkrGmbGEV5INiqls2EbvAdeu3k+jh0tUQhQndPTpOB2JrV7e2/qcVXxmil34tzsNuqSrmSWxcuj/JDDqVwJB0Ahrow0Jjc0P6Q1tsFCczKU/wDyfJ/+eRjoADjakWcZd3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yljj44ar; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b7373fba6d1so1056818366b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 05:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764767279; x=1765372079; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EWh94cVY0D6FnBBwVmY2kC4jd28KOSPDmIcH41P+nxM=;
        b=Yljj44ardop8WhV6M5KzR+eKEIHYQejcWruHxqxgnR1+/MzUo5F7DrQll1BGY5LPwS
         y7e3A+kZ7DQe9ctfYhLTyNZoEOXp/6DECmNyupA5LU6vNpQt1Mc/Aa403WlOuCkR209M
         n7NTNN5IJkYvK7xIN9V5rtt85eNz58uEoVUZ7CKEU6S5/QBMD1Sm0QgzpX3FJjjtgDoD
         MffON4ATmfBpYGD07UMBJ0M2FSfcJPVdNfxaBTfjj9po7hZyat4X1dnHZkBpPpnRsasv
         cZvl2lfMBh4ZCG5yNSagZKlepCXZCvu3OBEpdEqinSLDWrkny4EDWaqrFS03a5WY/0r6
         NUjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764767279; x=1765372079;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EWh94cVY0D6FnBBwVmY2kC4jd28KOSPDmIcH41P+nxM=;
        b=tTg3AxKMZC0rmIXpSCtCr4N3FZXO4MIc1JCsoYIwKxcR/LRX+vy7T9NzyjWorNocK6
         /vhsikTeaDx3NVK08HG6bU9Zts0KmVVgAzysMyrDRvwpeavgoVNpBYWmb8vuxKGsm0cl
         ijHMVc3yMfNue/vPe0ud9GtqSteReBoblDSA2iZS8l3+wXmu5znm89S92+dTIilAkIJ4
         YQDlBA7l8Msfw8RSMKjtSlLszVuhapPTg0LI0ZPdelGtZqZyUu0t46xXjpM2aZfyAwFw
         9PLindI5rV8/wju3005KMGg4KWMlYL9aXdxrPhQWQvYP8WQfSY//PZ3GVN5pMjunQfvM
         Ohtg==
X-Forwarded-Encrypted: i=1; AJvYcCXV3Pkhe4uS9Qw/qbfePbsPo42batP6ISQUk/ZzwpL3c8vtJvpMBkrAjQGDe14K4BMZ/Zwmw4Vxc5dv@vger.kernel.org
X-Gm-Message-State: AOJu0YyAyRbc26z3N3i7J0LY5rYw9Ua6kKnPJHU+PQ1gm7UTsg2BMTvw
	FhSyyF5GWq5jwE4jjDyosma3RDBswm2rqjTE5d13bE/OekFGZRpVcvtc
X-Gm-Gg: ASbGncttdHLnmJvZ2zr67KlZ0IKGYx8pYkjbfvP6VvPCTEDrAxVZOyG3s1FdgV18E5V
	0RIGGKExvt5SpilX4/XYWVJgmJOhZxxUAH+9gokkpo1htlHAakHePZ5CW0VACsQrhimTfhcd67d
	1/4/R8aIOQWULxo5dPoHSgFInxqLUavf4F5iHEsdTzn9XWjMnOa2IVpgjBuiTavlHGcDLjNCb6r
	lmFOwJ3gQODlP9kO3s2NT61QCwrGk742OdUrpOsUFJ0+RfeAImkNjRRIEHp8UHiica4DSXjxX/f
	DHN+FsbHuEKBASnhZwCs0IbrohyJkO/ZEdVsU9EdCUSavibNi9y4GaJOrRHjV3GYng3RHGoAtWH
	h/maKKkhjO+eCR4HsLYRJhUcMgAAcLnbMrEIFppU+0W71CFNwtMypNgTe/zsLgBSPUiLDoKQW7e
	SXStfOZ1FKUlg=
X-Google-Smtp-Source: AGHT+IE6T0tp3O3Eirx8vFcdkDxp9ZkMVwwUAWcbMJ390y36T3NZUXSwBXZa+DvBNpDi3Eyx+LkUJw==
X-Received: by 2002:a17:907:869f:b0:b6d:7e01:cbc5 with SMTP id a640c23a62f3a-b79dc7820d4mr244893066b.53.1764767278739;
        Wed, 03 Dec 2025 05:07:58 -0800 (PST)
Received: from [10.5.0.2] ([185.128.9.168])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a1d750sm1746718666b.56.2025.12.03.05.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 05:07:58 -0800 (PST)
Message-ID: <078d2c26a9939d3882d1e8597e4c9930fa99acff.camel@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: adc: ad9467: add support for ad9211
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Tomas Melin <tomas.melin@vaisala.com>, Lars-Peter Clausen
 <lars@metafoo.de>,  Michael Hennerich <Michael.Hennerich@analog.com>, Nuno
 Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>,  David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 03 Dec 2025 13:08:38 +0000
In-Reply-To: <20251203-add-ad9211-v1-1-170e97e6df11@vaisala.com>
References: <20251203-add-ad9211-v1-0-170e97e6df11@vaisala.com>
	 <20251203-add-ad9211-v1-1-170e97e6df11@vaisala.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-12-03 at 12:20 +0000, Tomas Melin wrote:
> Document ad9211 variant as supported by driver.
>=20
> Signed-off-by: Tomas Melin <tomas.melin@vaisala.com>
> ---

You should mention why this can't have a fallback compatible. Like having a=
 different scaling factor
is enough justification for it.

- Nuno S=C3=A1

> =C2=A0Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml | 2 ++
> =C2=A01 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
> b/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
> index 2606c0c5dfc61fd65cd0fb2015b3f659c2fc9e07..5acfb0eef4d5cf487adaa93ce=
5bda759bb4853c9 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
> @@ -18,6 +18,7 @@ description: |
> =C2=A0=C2=A0 All the parts support the register map described by Applicat=
ion Note AN-877
> =C2=A0=C2=A0=C2=A0 https://www.analog.com/media/en/technical-documentatio=
n/application-notes/AN-877.pdf
> =C2=A0
> +=C2=A0 https://www.analog.com/media/en/technical-documentation/data-shee=
ts/AD9211.pdf
> =C2=A0=C2=A0 https://www.analog.com/media/en/technical-documentation/data=
-sheets/AD9265.pdf
> =C2=A0=C2=A0 https://www.analog.com/media/en/technical-documentation/data=
-sheets/AD9434.pdf
> =C2=A0=C2=A0 https://www.analog.com/media/en/technical-documentation/data=
-sheets/AD9467.pdf
> @@ -25,6 +26,7 @@ description: |
> =C2=A0properties:
> =C2=A0=C2=A0 compatible:
> =C2=A0=C2=A0=C2=A0=C2=A0 enum:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad9211
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad9265
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad9434
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad9467

