Return-Path: <devicetree+bounces-46338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ED7868F62
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 12:45:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E0341C20A18
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 11:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF9B1386BF;
	Tue, 27 Feb 2024 11:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fcZ88ODs"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8522C139590
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709034355; cv=none; b=ekq31xXIrdluauPyZF9Kj9YHyq1MR77Af3T3SWfiec3kgFystxLl53f4gVSdqQTONPRN42dR1pa39rXsOeyYpq2Z2+HLiixB0pTRzmWqO7RRCvfSi0FyxKlIh5D6TlRwxpgXZn54bPlqxOrljqlw9dJmKkYx9pr+w/Fw1tfcB6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709034355; c=relaxed/simple;
	bh=xFt7TcJ2O8tEOIXD6Jmcidfp7BHJpkg6WOVsVDSWACo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mZzyhizE0fwd4KTUry8NbcSXqzvleiCNjAnmOfKJVFnSrdr7Q4PRV0R3jRREePzMLI3XqPMYF7p/Zj8asTZheHnyQ65cg1jGOMVFU7CllCg2o9vhKETTpfolceYaxauOgxh0lIPe0g3JOCpuXmO566DpYswyg17M97UDkuuDPi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fcZ88ODs; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709034352;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=yNeL6cMune++QSJiWmgjhpkk8+HIlgdUXjqshRiIhkw=;
	b=fcZ88ODsIurODYywgQgER+fdTSWt2RC63TdH8u8JX5Yt6EZtlkzIY4Lv6EgKdyqCOC9yNN
	md+MNMC0j5tHgbbGc+Eq74zEgPIM8ZvTa0q4UlQy4D2azUMjVZ0c9PlJISTfjQICivLdP4
	0lh3hYEmdXxiOE5rhdHJ90TGLbWT0as=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-cJ-9van9M6aFMkRb9tD1tw-1; Tue, 27 Feb 2024 06:45:51 -0500
X-MC-Unique: cJ-9van9M6aFMkRb9tD1tw-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2d2a269ead9so263001fa.0
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 03:45:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709034349; x=1709639149;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yNeL6cMune++QSJiWmgjhpkk8+HIlgdUXjqshRiIhkw=;
        b=mNwogCjE8QdhAuDEpLtJCTWHHkfc5B3SHyd+Hpyt9Wzr/EZQNA3x4Ryv0bM7/dg/Cp
         O0+h4+RpP3h4IvpEKmTjgjiplzzj50YOkafM6k2b3jLocXZ2bqGFR+KChgd0J6lHqGrB
         uC92OX0/Ze82T4d8g0P9lmDzvN8HbhWw+02wLgYhg0Bt1K5XQlf3YyZ8kXAfBCQdBDTo
         7t9uBsLCR/9ZfPOuesrw4HjC1JA+cm3K6z6ulzhdi0iUrML4khPXk+7G1CpCmiOkDQP6
         9FVgf6YcBSvPiQQpYvAUNp0gk46K+1w9WqcQXwnmwZGxVfB81NycRLcbuNWP0Cd+nxRT
         solA==
X-Forwarded-Encrypted: i=1; AJvYcCUkQx6wmKVbEJ0LpIuPwR34uoXVTbTcymx3xVNxx29nA8D6SFZbx6uzsKJjRN9VV7o9neU6tCR2PI0/SV1REsYajhKQrCgiO2Df6g==
X-Gm-Message-State: AOJu0YxVcan/J1t7i6yOqBsiAJI/LrlO9Zu/2KyXPpGHIrYdkbRYiHSa
	NEJ11uiad7GY94MAIJwuvO60JpxzZC7/IROB6OWg+qahL1o/ARq2I5fOwcPypZESpGECCsDrbi6
	KP8zdGGW1ElWl6mI3TmlmYgoownRDqW8Z14PCQtpap0ZigZT/R4MSZc84eOI=
X-Received: by 2002:a2e:9f42:0:b0:2d2:3178:6b5b with SMTP id v2-20020a2e9f42000000b002d231786b5bmr5960693ljk.3.1709034349644;
        Tue, 27 Feb 2024 03:45:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwRi2G2y071WE+2dwqaYTGStIysDm6JbR5gPBoWIed3UDGNULeEYzBfwRqbHARV6NDxfaNEA==
X-Received: by 2002:a2e:9f42:0:b0:2d2:3178:6b5b with SMTP id v2-20020a2e9f42000000b002d231786b5bmr5960673ljk.3.1709034349286;
        Tue, 27 Feb 2024 03:45:49 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-245-60.dyn.eolo.it. [146.241.245.60])
        by smtp.gmail.com with ESMTPSA id a2-20020a2e8302000000b002d2934578e1sm312310ljh.19.2024.02.27.03.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 03:45:48 -0800 (PST)
Message-ID: <414f4e710890fde702fd0aeb91990f92ede3bafc.camel@redhat.com>
Subject: Re: [PATCH net-next resend 2/6] dt-bindings: net: brcm,asp-v2.0:
 Add asp-v2.2
From: Paolo Abeni <pabeni@redhat.com>
To: Justin Chen <justin.chen@broadcom.com>, Krzysztof Kozlowski
	 <krzysztof.kozlowski@linaro.org>, netdev@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 robh+dt@kernel.org,  krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, opendmb@gmail.com,  andrew@lunn.ch,
 hkallweit1@gmail.com, linux@armlinux.org.uk, rafal@milecki.pl, 
 devicetree@vger.kernel.org
Date: Tue, 27 Feb 2024 12:45:46 +0100
In-Reply-To: <09c07d4b-6004-4897-adca-0d6211414d2a@broadcom.com>
References: <20240223222434.590191-1-justin.chen@broadcom.com>
	 <20240223222434.590191-3-justin.chen@broadcom.com>
	 <b9164eae-69e2-44f3-8deb-e3a5180e459c@linaro.org>
	 <b6c74bbe-89f0-4201-b968-57996f0e0223@broadcom.com>
	 <c0e9eb68-f485-40a9-b025-82a73af06006@linaro.org>
	 <09c07d4b-6004-4897-adca-0d6211414d2a@broadcom.com>
Autocrypt: addr=pabeni@redhat.com; prefer-encrypt=mutual; keydata=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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-02-26 at 23:07 -0800, Justin Chen wrote:
> On 2/26/2024 10:55 PM, Krzysztof Kozlowski wrote:
> > On 26/02/2024 20:42, Justin Chen wrote:
> > > On 2/24/24 2:22 AM, Krzysztof Kozlowski wrote:
> > > > On 23/02/2024 23:24, Justin Chen wrote:
> > > > > Add support for ASP 2.2.
> > > > >=20
> > > > > Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> > > > > ---
> > > > >    Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml | 4 +=
+++
> > > > >    1 file changed, 4 insertions(+)
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.=
yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> > > > > index 75d8138298fb..5a345f03de17 100644
> > > > > --- a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> > > > > +++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> > > > > @@ -15,6 +15,10 @@ description: Broadcom Ethernet controller firs=
t introduced with 72165
> > > > >    properties:
> > > > >      compatible:
> > > > >        oneOf:
> > > > > +      - items:
> > > > > +          - enum:
> > > > > +              - brcm,bcm74165-asp
> > > > > +          - const: brcm,asp-v2.2
> > > > >          - items:
> > > > >              - enum:
> > > > >                  - brcm,bcm74165-asp
> > > >=20
> > > > Hm, this confuses me: why do you have same SoC with three different
> > > > versions of the same block?
> > > >=20
> > >=20
> > > bcm72165 -> asp-v2.0
> > > bcm74165 -> asp-v2.1
> > > Are two different SoCs.
> >=20
> > Ah, right, existing bindings has two SoCs.
> >=20
> > >=20
> > > The entry I just added is
> > > bcm74165 -> asp-v2.2
> > > This is a SoC minor revision. Maybe it should bcm74165b0-asp instead?
> > > Not sure what the protocol is.
> >=20
> > So still the confusion - same SoC with different IP blocks. That's
> > totally opposite of what we expect: same version of IP block used in
> > multiple SoCs.
>=20
> Agreed. Unfortunately what we expect is not always what comes to fruition=
...
>=20
> Thinking about it again, I prefer bcm74165b0-asp. Otherwise it doesn't=
=20
> properly describe the hardware as we do not have one SoC with two=20
> different IP blocks.

I read the above as you intend to send a v2 with an update dt-binding.
Please correct me if I'm wrong.

Meanwhile dropping this revision from PW.

Cheers,

Paolo


