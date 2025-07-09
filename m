Return-Path: <devicetree+bounces-194462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BECEAFE469
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FB245A02EF
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 09:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF10286D4B;
	Wed,  9 Jul 2025 09:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="5Gjt2r3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA5E286D4D
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 09:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752054047; cv=none; b=nzwI8xs+sAD+JoRQQaL11Yp1q+O/v778Qmk5hDtY5MgazSY/CpOmh/5OBTkmFD5WhORWdwZ1eUcrYktZGxVjE1njV5Q6Rljbv0dW4xJDBzHFXyHgbCUiTBQ7hQwuYAfT/evOh5LXiQY6PS0Q097nVTRYwDhiOn6cLzfd5ogmx8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752054047; c=relaxed/simple;
	bh=0tR/3Miogl+S1zt90pDdmQ9mIVpvEnFEC8NUxBegYcA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=gg5SPoU1baLSmkyfCKq47jjuBEB/0dsUoReubP09f1B9zWWHx8HnDINrW4qAeDS1ysyPTyqYqdtNAY+6cjGypiRBkT3q7b+6UIjRPAi6cIDbItbr/fa211h2tk62kfuF4vSXCC1rYlVyMNViyF3PPhWlKe048PnenRsCLFM7cSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=5Gjt2r3L; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae0e0271d82so1079703666b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 02:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752054044; x=1752658844; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYVZhzdcLS888rj/FaoDivOZnyY0T9daEjwNUmKwLFQ=;
        b=5Gjt2r3LoVBZofErmVkRIPDYPhnFdBxIh1EY7bMltxiVJIgazc5gMSJvf1qpVvoI0J
         WWr4ybf841ewgYj6yLtR518ku9XFnHSrpoRvtcPH+6mH7+82Ch8V8phzyGa1QpGX1erQ
         Y5m9Z04c+5jlZ1Q2f1g1FuyNpFXBIJ1wEGcp7bx3imh7Plh1VjGLkzxzuUjzMopiBHB/
         sjSRVdyWFct0Yd3Wh+w3lxU1R8NC4kOHYIGORMvOqy0eTsSuPdRPn7k7xQHRNd4gMpG3
         DYQYcv6dKzXcdDL2S5/j4JnR+aGMSW0E8QrHoreaEUvGy4T8htIsYntH2faoNGtNfpAk
         /Azw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752054044; x=1752658844;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IYVZhzdcLS888rj/FaoDivOZnyY0T9daEjwNUmKwLFQ=;
        b=CKO/1kHJERKqgEOCm53yIvSUYhy3VPfUG4WESDMadseRMe6NakBqevoMXvT5fPPhUr
         dfcYmylkgv87qskhWZZBOrhSw9IKRVDhScgfEyfQKCfL8BgXHpkaqN9r2gLpLEdN4M/m
         t2j6gMHIhss1kHWuonoz9LDD1S19NGhgC03WjmXDQQx5aoVcAwV90MV/AiMHlr3v+kDi
         uUAgrqSDv8dpUP/71aC3TBc5WodXWcmXLpIo4ojgIP4097yCPCOjtX+Ng1Y0jvxbd3zw
         x27EwvSMSUypxAE3qQgAd8yI8DWnXRbzKHiKr1LOQPBcsInitpz2gg0y0xBhUnJZ10P1
         iUuw==
X-Forwarded-Encrypted: i=1; AJvYcCXYgmDnP/d5P++6lP7E5GSrWgAyYMDFNV+8VJ11obPCSyXIO7tVhTA5dHQtU/2BnIUdgG8MHsYDkcgq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/8aa8IL86PVZ25gDxhN4kSB30JGK8U21asFE957JbUsYw7fSu
	KGRBMe8qGDeN6WfUPxQiWalUCbMkmSPlYsb4qB1W99glPlN2bGacqnguH32CGlAd3CM=
X-Gm-Gg: ASbGncuC1V2VAVV9BaDdHLo07t3wA1lYZ1JzVSncSpb82Y1LLC5gNtkJGqO96PlE3ci
	/o+5mZQyffKUCmWgE8Vi3BewoC910nfa/7oMgjEbSsfbcQWGlgG0l0XdZGwyqTz4yElY3yOwL+I
	Ik+CRGI1dgQKoUeqGWHs/3RSBpMc53CF7t90hgwDxIaBCyHuujDLpZ+TLmyRcar/nGrtxWVytce
	1RGRzfqe4HG6cymvOigcwL0gZDd5LgaqGF4QNjlykn1JtLVn/f4xBDplJrKYwCx/Xv2l9PvrD+h
	q48ojpaGr7ZiQHfny8ZkcENopbnI1ATX+rE+mk1+mk8HKWV9Lth1Bl2LabCfhGBGZ0uJ8xmS/30
	wunAD5d3tpLWTqzzRnwOhqNNfr6TCUxI=
X-Google-Smtp-Source: AGHT+IFcyIW8fjvyL2XXssYm6oJtrTRwvz8J6yTAl1SegjjQ9SBTzzBbPsgLtLGnPcvW3tndrf/jXw==
X-Received: by 2002:a17:907:db14:b0:ae3:f524:b51 with SMTP id a640c23a62f3a-ae6cf549811mr183000466b.10.1752054043586;
        Wed, 09 Jul 2025 02:40:43 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b08568sm1069884166b.139.2025.07.09.02.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 02:40:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 09 Jul 2025 11:40:42 +0200
Message-Id: <DB7FBNQ0TYFZ.3GGPN8XXJXGRW@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
 <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
 <20250708-stoic-slim-bison-ac55ee@krzk-bin>
 <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>
In-Reply-To: <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>

Hi Krzysztof,

On Tue Jul 8, 2025 at 10:31 AM CEST, Luca Weiss wrote:
> On Tue Jul 8, 2025 at 10:21 AM CEST, Krzysztof Kozlowski wrote:
>> On Tue, Jul 08, 2025 at 10:13:24AM +0200, Krzysztof Kozlowski wrote:
>>> On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
>>> > Document the FS Differential TX Output Resistance Tuning value found =
on
>>> > the eUSB2 repeater on Qualcomm PMICs.
>>> >=20
>>> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> > ---
>>> >  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml =
| 6 ++++++
>>> >  1 file changed, 6 insertions(+)
>>> >=20
>>> > diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-re=
peater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeate=
r.yaml
>>> > index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e29927359980=
63b3ca390e04a03930d 100644
>>> > --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.=
yaml
>>> > +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.=
yaml
>>> > @@ -52,6 +52,12 @@ properties:
>>> >      minimum: 0
>>> >      maximum: 7
>>> > =20
>>> > +  qcom,tune-res-fsdif:
>>> > +    $ref: /schemas/types.yaml#/definitions/uint8
>>> > +    description: FS Differential TX Output Resistance Tuning
>>>=20
>>> Resistance is in Ohms, tuning could be in dB, so I wonder what are the
>>> actual units here. Neither commit msg nor this description helps me to
>>> understand that.
>>
>> I checked and the values are in Ohms.
>
> Yes it's Ohms but not 0x00 =3D 0 ohms, and it's also an offset in ohms
> from the nominal value according to the Hardware Register Description I
> have, e.g. 0x7 =3D -12.1ohm from the default
>
> I can try and create bindings using these Ohm offset values, I didn't
> worry about it too much since the other tuning values in these bindings
> are also just register values, presumably from before Konrad had access
> to the docs.

I've taken some more looks, and checked how similar tuning is handled in
qcom,usb-snps-femto-v2.yaml and phy-qcom-snps-femto-v2.c, and changing up
the concept of tuning in the eUSB2-repeater bindings+driver is not a
trivial task.

Since this is adding just one more property in-line with the already
supported properties in the bindings+driver, can we get this in as-is,
and deprecate all 4 qcom,tune-* properties later with a replacement that
describes the values better?

We have enough people at Qualcomm by now that should be able to do that,
and have the required resources to answer any potential questions.

Regards
Luca

