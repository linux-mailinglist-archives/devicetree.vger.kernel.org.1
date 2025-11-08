Return-Path: <devicetree+bounces-236321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31439C42E0E
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 15:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E592188F6C7
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 14:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A80720FAB2;
	Sat,  8 Nov 2025 14:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bw2oL8Nx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7155C481CD
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 14:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762610938; cv=none; b=sOBZ7DdA4WtWQl8a4sIUV2ZQu0c8U+fE/Akky5F5l6LIrAEod+wbxeD4w/DS3/ZWhwPcXIQmx/p/Cminnm1XGFKcZIUUJMxyVtHhJWd6TqqFHOohx2oQOdrWF3Muj7hE71SxB4qTn1fBIey7ercSbsmVZIWBK1L89kT4BKSYjoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762610938; c=relaxed/simple;
	bh=88SK9HlF8ID4j2mgeXZK5r75pqvAiovy9hjLKXg2mUA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rJBh8PyrHZFQkYUpD1++uAEJ96+6PAfcuxV5EzlP/q5QUHppHWO8klkCPKDtwf+ezQN9wP2R5Q95LQOORWPT5u7intBHqp82RNmzePZeczDvXEygl+JyQLkq+fiRbLnu/RWev3ErUpu/yGkQpIl6Ffi5DA5jStS2Jamq5BDn6A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bw2oL8Nx; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b64cdbb949cso306271466b.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 06:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762610934; x=1763215734; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=88SK9HlF8ID4j2mgeXZK5r75pqvAiovy9hjLKXg2mUA=;
        b=Bw2oL8Nx5pdDvt2hub1vX/LWOr0w5YNESA2TcldKBBsBsyJmr2aV47BBk8BqOB/BDH
         z+AL9mKc17uEccImArnb/6hesdfBqfowvxh+YT4ZVviQm8yaMuwYVB3hgf4zyst+uiJZ
         H0MQPNbnehx4A3pb1DtFJNcuOTWcuM4HkJuxv1QONrNzrZVTmVkhtoi2uYtBxHfsPFqD
         wY8JIzCk6siJ+d6FXP/ZcUaoypqsv8TF9BmUy5uZweW1KbvcTTdStBXgqS9OEt+0xA89
         zcg2+McMY+QsKfyL/SjGMJuZSsmlPF4q1/ff1A0sVPpCLbXoLOR/g5vUpIOMKN8Oedvt
         Xy9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762610934; x=1763215734;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=88SK9HlF8ID4j2mgeXZK5r75pqvAiovy9hjLKXg2mUA=;
        b=PYIQ7dKDek/q4CqiPdeHeQR0S/iGbYxz4xgSvd/LwxXpIkeH55mQ8xI4HOtz7ku87B
         ilGPHRPdaSNuMGby+NaTRaZ5WjDTsvOmQ/svxLhGkyt5fBO8EJN2hD2B1mtoK7KvdFOG
         19btMyJE5vCNqtB15mwhj9IJAbvzq3Fws4vpH+KB/1T/umKq+Zj6YIzHeU8XJPIUypQy
         GB1hp0Oq99XfVGVlTHO7zxg1y22kfkadGlsugZfSZiZHpDz27lmQVyaocq59TlMOLxAX
         TiMqOl3t4zZ6GkJvdQCEcC/dqWmmd66CPTBfUvM0ExZCeiKBiiqguhjZfn4uhTGtaB+U
         V3Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXJV7wPWXuyJ8CKCynvVOr1hn0svYVpUgBEh9QQvtkTUmXp0DVcfegQbwVLPUmYoY4WkfhTnbcFivAS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyb1oAowfVwX4rrjYaB05abbCtlqw75kBTmW/6IaOUvEC94VS3
	rsMr5/DBo7rTslgSmQFyMdTlBxRhBFwwTk8aGER+wKNpvksbBk8kr4p8skk+88eXH+M=
X-Gm-Gg: ASbGncskav5ioP5E3Gd8Civ/ZX13clsueanXxLnV/hmh92z2MfJnzH1zpFF66BXeUVK
	zCnaPEqzFakDpmf/UiMakCXBvGXmEfoSz9S7+s5eEZ4qysDKQRI4EL7vd1XVb7BkzgWMjf3tFeC
	GKsi36gLfoFW2guG9c0uxSyRv1rF7yeUaFVymMxQBRcnh/AP3yZy8vlzgrxmTrgcEEuuBBdKgqH
	ZrAYqLviB5wZt7vnE7MbpQQYzY+d3eY4uSu/tFfOhhzIVjmezxcvDVedLSwP4BTAnKPymIqiA+U
	AsC5VrqDn+p4DRETT2l1GxMWUTWF2tt1NqLVbDVbL2eAW2RO1OflWJ923Igna1Ft1wbY0XBiZIA
	HMU9Ya6vyOA7Q3eu+IPisye9qbQMALn0e3D0aKKcjMkzSjhWJw3HubT/ELMj/Tyd12qr6XvYRr1
	kAhbDYmbn+A4SXTgiZypPg
X-Google-Smtp-Source: AGHT+IEU8px863DOF0SHJM2dOiCgYfSF7uWOZKjlSkmUmm2odBp/m7f85l+VxG8z6Xkcbao4KUCsgQ==
X-Received: by 2002:a17:907:7ba4:b0:b72:26ec:c8db with SMTP id a640c23a62f3a-b72e04e2c4emr263436466b.30.1762610933770;
        Sat, 08 Nov 2025 06:08:53 -0800 (PST)
Received: from [10.41.228.128] ([77.241.232.5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97e447sm577021766b.42.2025.11.08.06.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 06:08:52 -0800 (PST)
Message-ID: <fa2e704a2f295f2c9b2c7811e8ca89972554ff7e.camel@linaro.org>
Subject: Re: [PATCH v3 07/20] dt-bindings: firmware: google,gs101-acpm-ipc:
 update PMIC examples
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,  Lee Jones <lee@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Peter Griffin	 <peter.griffin@linaro.org>,
 Will McVicker <willmcvicker@google.com>, 	kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org
Date: Sat, 08 Nov 2025 14:08:52 +0000
In-Reply-To: <20251104-awesome-tacky-magpie-bacd9f@kuoka>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-7-b8b96b79e058@linaro.org>
	 <20251104-awesome-tacky-magpie-bacd9f@kuoka>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

Thanks for your review!

On Tue, 2025-11-04 at 09:31 +0100, Krzysztof Kozlowski wrote:
> On Mon, Nov 03, 2025 at 07:14:46PM +0000, Andr=C3=A9 Draszik wrote:
> > In a typical system using the Samsung S2MPG10 PMIC, an S2MPG11 is used
> > as a sub-PMIC.
> >=20
> > The interface for both is the ACPM firmware protocol, so update the
> > example here to describe the connection for both.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0.../bindings/firmware/google,gs101-acpm-ipc.yaml=C2=A0=C2=A0 | 40=
 ++++++++++++++++++++--
> > =C2=A01 file changed, 37 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-ac=
pm-ipc.yaml
> > b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
> > index 4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb..c25e155926e5f44bd74f195=
cdbff3672c7499f8e 100644
> > --- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.=
yaml
> > +++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.=
yaml
> > @@ -45,6 +45,15 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const: samsung,s2mpg10=
-pmic
> > =C2=A0
> > +=C2=A0 pmic2:
>=20
> pmic-2
>=20
> Are there more pmics? Bindings are supposed to be complete (see writing
> bindings) and if you did follow this approach earlier, you would nicely
> call first "pmic-1" (instead of "pmic") and then "pmic-2".

There aren't any more PMICs on ACPM, no. At the time 'pmic' was added, it w=
asn't clear
unfortunately that two nodes would be needed in the end.

See also https://lore.kernel.org/all/963bbf8db71efc0d729bb9141c133df2c56881=
fc.camel@linaro.org/

That said, I believe we can change the existing node name from pmic to pmic=
-1 without
any driver breaking. The sysfs path would change, but I don't think anybody=
 cares about
it at this stage, so I think such a change would be fine. The ACPM driver d=
oesn't care
about node names and instantiates all children regardless of name.

I propose to update the binding (and DTS subsequently) to add pmic-1, to al=
low 'pmic' as
a legacy fallback (i.e. to not issue errors during validation of existing D=
TSs until
they're updated) and to use pmic-2 for the 2nd pmic.

OK?


Cheers,
Andre'

