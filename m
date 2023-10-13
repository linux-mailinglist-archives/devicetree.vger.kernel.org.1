Return-Path: <devicetree+bounces-8574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6B67C8CD5
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:12:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D8122827D5
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3419922F1E;
	Fri, 13 Oct 2023 18:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpe0KFYD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AD222F16
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 18:12:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8423FC433C7;
	Fri, 13 Oct 2023 18:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697220724;
	bh=GEg5YuIE8UF4NZRdoKQgB/R137hqA2LKlhnXmjOkreI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bpe0KFYD/DtoQg62xNTpUaMVBbmI9Mayf6s+q6MsC9a9V94yYmRGN1QCeYkxtQLid
	 gNCIrFGjMnlaKnosvA8QmBmrPjzft3qEyCRefCksLkMFqVw7aZQbCOz+X0Gnb5wfjE
	 Ejc4q+8iBdLA281w/cxT4b1G9izV1vQDQXnUefjvrLx8MT062EcVsXxYDrZEtDe6ED
	 zekBpXCt8pV64AyVgPjuKbIU4ZnJtJjuZDgeo4uBEvK/7fIIq3qFre9lKRuQ41i4eX
	 amEgkzk+4nKklKstVQidFKkkdBEdJ0GpPJdHfRFh3ZsylaQ/p7zbSkxqXqhFlb0ukO
	 JaMLSOFc/+zFQ==
Date: Fri, 13 Oct 2023 19:12:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jonathan Cameron <Jonathan.Cameron@Huawei.com>, Ivan Mikhaylov
 <fr0st61te@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20231013191218.26cbe06a@jic23-huawei>
In-Reply-To: <9996a912-7b4e-4247-bb8a-716782fbcc2a@linaro.org>
References: <20231007234838.8748-1-fr0st61te@gmail.com>
	<20231007234838.8748-2-fr0st61te@gmail.com>
	<20231010154042.2ef667b2@jic23-huawei>
	<383064a5b0863a4a616cd60cff8d4bc18e397fd7.camel@gmail.com>
	<20231012084052.504ac930@jic23-huawei>
	<e7b74daa9d0131246fd10f47aa4128bc8f8f3177.camel@gmail.com>
	<20231013091952.00002573@Huawei.com>
	<2eafa89c-7c95-4bc1-85cb-a6d7417dcea8@linaro.org>
	<20231013100930.000043b2@Huawei.com>
	<9996a912-7b4e-4247-bb8a-716782fbcc2a@linaro.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 13 Oct 2023 11:53:33 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 13/10/2023 11:09, Jonathan Cameron wrote:
> >>>>>>>> +=C2=A0 shtdn-enable-gpios:=C2=A0      =20
> >>>>>>>
> >>>>>>> I guess the review crossed with you sending v5.=C2=A0 There is so=
me
> >>>>>>> feedback on v4 you need
> >>>>>>> to address here.=C2=A0      =20
> >>>>>>
> >>>>>> Jonathan, I thought I did, I've changed ena to powerdown-gpios from
> >>>>>> Krzysztof's comments but about this one pin I'm still not sure, it
> >>>>>> looks like *-enable-gpios (like in *-enable-gpios pins in
> >>>>>> iio/frequency/adi,adf4377.yaml) pin or is it not? Or maybe any
> >>>>>> other
> >>>>>> suggestions about naming of this one?
> >>>>>>
> >>>>>> Thanks.     =20
> >>>>>
> >>>>> shutdown-gpios and make the sense (active high / low) such that
> >>>>> setting
> >>>>> it results in teh device being shut down.
> >>>>> Or treat it as an enable and enable-gpios
> >>>>>
> >>>>> Something that indicates both shutdown and enable is confusing ;)
> >>>>>
> >>>>> Jonathan     =20
> >>>>
> >>>>
> >>>> Jonathan, then I make these changes:
> >>>>
> >>>> powerdown-gpios: -> output-enable:   =20
> >>> Needs to retain the gpios bit as we want the standard gpio stuff to p=
ick
> >>> them up. I'm not that keen on output-enable-gpios though.  The activi=
ty
> >>> here is very much 'shutdown because of error or not enabled' I think.
> >>> So perhaps we flip the sense and document that it needs to be active =
low?
> >>>    =20
> >>>> shtdn-enable-gpios: -> enable-gpios:
> >>>>
> >>>> Is it ok?   =20
> >>>
> >>> Conor, Rob, Krzysztof - you probably have a better insight into this =
than
> >>> I do.
> >>>    =20
> >>
> >> "enable-gpios" are for turning on a specific feature, not powering
> >> on/off entire device. For example to enable regulator output.
> >>
> >> "powerdown-gpios" are for turning device on/off.
> >>
> >> I don't know what do you have in your device. =20
> > Ok. Sounds like that what is enable-gpios above should be shutdown-gpio=
s. =20
>=20
> shutdown-gpios sounds exactly the same as powerdown-gpios and it is
> already used in exactly same context.
Oops. Yup. powerdown-gpios seems appropriate.
>=20
> > The other case is a device output indicating whether the device is
> > shutdown.  That can happen because it was told to do so (via the other =
gpio),
> > or because it is in an error state. What's a good naming convention for=
 that? =20
>=20
> There is no convention and I did not see such case so far.
> powerdown-status-gpios? powerdown-state-gpios?
Either seems reasonable.

Thanks,

J
>=20
>=20
>=20
> Best regards,
> Krzysztof
>=20


