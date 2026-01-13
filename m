Return-Path: <devicetree+bounces-254299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FEAD1700A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CACC230054A4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB34369980;
	Tue, 13 Jan 2026 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LlGSYS9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDDF29D27D
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768289243; cv=none; b=TBEf/INhQd0a3jcgSfAScR2tJJ9jOFzhtOphsU8fuMQVv+MehclSU2eSIWwr9BrHNfLWdMLwGIO6quJHR8hZJ37La+ql9soJG3YS5Kkpi0agnnuSRhItY4+LdyVpJ1T9QMu91juNjhI4146ef4l7MK5joshpBleuZaAjuWkKm6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768289243; c=relaxed/simple;
	bh=z+CxB6wZqqrH7MJcSnSrokTYqaFJiWERrQh31SFC+lI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=at1O7aM0gW2Uvybz3woX0WhmaBit/v6GfuI5os+4DEiAGNC/B3vszu/vpZZ5bPfmbgEEtqfekNe6YowP7I2jfnoDTt8rBie/EG2kHJTvqVKETDjBEZ+Ar+G8wd+CbrBjXzNq7RhD3iihE0/nR1JiM9qRBP2Jem9bjKr96L8+aSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LlGSYS9Q; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2ae29ddaed9so2888223eec.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768289241; x=1768894041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhYA8353B3GBWmNdp4pASODK5S4UFggTmvUOTHnjKCo=;
        b=LlGSYS9Q3DBmdGvptZVBG4rif3xOCEUxeUSOEwNkTPssBQXobTpA/wG6CHYiIHEzIw
         DkLCrdqTmpE1PnqZjlBo2+JBv0dEHFttShqSPB1oas2vV4mSpGTKy0KgZ5srDDaqbmMG
         lk/+bvzDDOPXO/0s4yCzV+3E6X2v0ZEIaoQBQmZd1a7fqS9tP6IUdW1OJfX5ZBJAjnax
         Lw1mV1CT6v9DwORP47zHg7NnR2e+0oZkuyZCTFpBzJ62Aselx8WTOIrZAgTfVXUdLQEG
         9lgInApjiN7c470tJcJEmrIxexjQ4BIb45JBnCAphDAA16NSVtWEDj+17KQ6bg7ZF8XL
         HGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768289241; x=1768894041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EhYA8353B3GBWmNdp4pASODK5S4UFggTmvUOTHnjKCo=;
        b=wqG2Y9UcK125vWFVM4G97po4zbb02cszG3igDEpjB7TzMUXPMDnpmBBjaEWyAnXv3l
         CVsdFJ8N3pmAF71T0RZil6jCmG2rLcqhh0VsUCXO0+MbTOPK12eGk5SoQuXzWDuyaG+p
         WnMTwGqOAiEJVX97W1GS2lUCcZoCSdZzkbNgyVAWUFiO+4Qq/8Ra581Y8gcxxbtK2aMu
         bf3K5S1g/okOHoAzrQY2WrvWGOfGfg/dOTb2nyghYW+fM6W3NYocD1piftNAAXdvkd7x
         KcwOISnKmu2e9SKVdoxIAxUOyKYtJXCuhWvHaNnq0hg9bGk3wX+emNKjT1lsTFl/aknO
         HP9g==
X-Forwarded-Encrypted: i=1; AJvYcCWMwj+7GyH0myhIHpm3pGqWjv3fOmS+H6LgOP/tiJfQ6A0tGvJV8oYYC9laRlUZHA6iWNBG5J9S/YqC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1BqOYmq99AEWcsVwIqslvHSK2ckctOaPsItKabh4/J/IFKRTe
	RHnH1gsXB1bsmHZu8UEPW2249/9myyD+PQh9hycqTc8UjhrhwQLpT5oCpFTDNSbLmkiqHTUl0bV
	ELYi62x/ZkjQHDRqvsoqIsgWd4Ph1gRY=
X-Gm-Gg: AY/fxX5qyQR7qmfrRy2mKwSZcSYshWCCPaJKzihLj6MZIr1kQd97rIx1a1lUeL7d4O9
	EguxfgNaZhs4bo20KYfQ39dbJbXATFEUXt5Q7JXqaxlocNxosAj4LRZWoZh23VhiH4a8jth1JRU
	0iDQQB0shLvxmrRmQP4zMS1LnKf8K0Ag4Eqi48cKefTeIpNZd8HCX2Zch+s7fVIYMh64DB+3e2v
	cWypCg1AWeW8qBWtsU3XlVs6o0SHe9BOX1xI/TCuawPNNo87xU8p65sxPrG6Evqkh0h9gvw
X-Received: by 2002:a05:7300:a148:b0:2ae:5a2e:de70 with SMTP id
 5a478bee46e88-2b44f21b4b9mr2231977eec.8.1768289241352; Mon, 12 Jan 2026
 23:27:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
 <20260107144507.46491-2-Ashish.Yadav@infineon.com> <89927834-9e3c-4076-83c3-add8bbfdf187@roeck-us.net>
In-Reply-To: <89927834-9e3c-4076-83c3-add8bbfdf187@roeck-us.net>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Tue, 13 Jan 2026 12:57:09 +0530
X-Gm-Features: AZwV_QjtLx6eP3xSGVFmD7zao3mxMv82keWsciVpDtjQammeg1q9Z0Zo6yzY-KE
Message-ID: <CAJKbuCaLnpAqcjLt4gbZdXmzZbg4+hvj9ONQEue9tfR48eNTpw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: hwmon/pmbus: Add Infineon TDA38740A
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ASHISH YADAV <Ashish.Yadav@infineon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Guenter,

Thanks for your time and review comments.
Please find my answer inline.

With Regards
  Ashish

On Tue, Jan 13, 2026 at 3:12=E2=80=AFAM Guenter Roeck <linux@roeck-us.net> =
wrote:
>
> On 1/7/26 06:45, ASHISH YADAV wrote:
> > Document the TDA38740A/25A device tree binding.
> >
> > Signed-off-by: ASHISH YADAV <Ashish.Yadav@infineon.com>
> >
> > ---
> > Changes in v2:
> >   - Review comments address:
> > https://lore.kernel.org/all/2ee75453-0869-4348-ad92-f7ff71aca75d@kernel=
.org/
> >
>
> That is not a change log.
>

ACK, I  will  address it in the v3 release .

> Guenter
>
> > Driver code in review process:
> > https://www.spinics.net/lists/kernel/msg5985470.html
> > ---
> >   .../hwmon/pmbus/infineon,tda38740a.yaml       | 81 ++++++++++++++++++=
+
> >   1 file changed, 81 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/infi=
neon,tda38740a.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda=
38740a.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda387=
40a.yaml
> > new file mode 100644
> > index 000000000000..cd4102350a15
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38740a.=
yaml
> > @@ -0,0 +1,81 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +
> > +$id: http://devicetree.org/schemas/hwmon/pmbus/infineon,tda38740a.yaml=
#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Infineon TDA38740A and TDA38725A Synchronous Buck Regulator wit=
h I2C
> > +
> > +maintainers:
> > +  - ASHISH YADAV <Ashish.Yadav@infineon.com>
> > +
> > +description: |
> > +  The Infineon TDA38740A/TDA38725A is a 40A/25A Single-voltage Synchro=
nous
> > +  Buck Regulator with I2C designed for Industrial use.
> > +
> > +  Datasheet:
> > +  https://www.infineon.com/assets/row/public/documents/24/49/infineon-=
tda38740a-tda38725a-datasheet-en.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - infineon,tda38725a
> > +      - infineon,tda38740a
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  infineon,vout-voltage-multiplier:
> > +    description: |
> > +      TDA38740/25 pin strap parts are available in two flavors of 1:1 =
& 1:2
> > +      vout scale loop.
> > +      For the 1:1 vout_scale_loop version, there is no need for any re=
sistor
> > +      divider as output voltage sense pins are directly connected to
> > +      the output.
> > +
> > +      For a 1:2 scale loop version, it is recommended to use 499 ohms =
each for
> > +      top and bottom across the feedback path.
> > +      However, in some applications customers tend to use an intention=
al
> > +      resistor divider across the output with a different divider rati=
o other
> > +      than 1:1 or 1:2 to alter the actual output voltage.
> > +
> > +      For example, if pin strap part is set to Vboot of 0.7V,they use =
a
> > +      resistor divider to generate 0.75V using the equation provided i=
n
> > +      Section 13.3 of the datasheet.In this case, as there are only tw=
o
> > +      vout_scale_loop options of 1:1 and 1:2 that the IC can identify,
> > +      Read_Vout would still read as 0.7V in the telemetry and the base=
board
> > +      management controllers would use this telemetry data to monitor =
the
> > +      rail parameters leading to false tripping of the system.
> > +      This multiplier is used to offset the telemetry output voltage R=
ead_Vout
> > +      so that the telemetry data is reported correctly to the monitori=
ng
> > +      controller,in this example the multiplier would be 0.75/0.7 =3D =
1.071.
> > +
> > +      This multiplier is required only for any external monitoring of =
the rail
> > +      output voltage. All the other Vout related parameters are used
> > +      internally by the IC and there is only a slight impact on the fa=
ult
> > +      thresholds.The impact can be calculated using equations in Secti=
on 13.3
> > +      of the datasheet.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    minItems: 2
> > +    maxItems: 2
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        hwmon@40 {
> > +            compatible =3D "infineon,tda38740a";
> > +            reg =3D <0x40>;
> > +            infineon,vout-voltage-multiplier =3D <75 70>;
> > +        };
> > +    };
>

