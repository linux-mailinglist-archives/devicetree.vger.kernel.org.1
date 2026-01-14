Return-Path: <devicetree+bounces-255006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C69FED1E5FC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 49605300319C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A484737F0E4;
	Wed, 14 Jan 2026 11:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WDvzJeFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581463876B7
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 11:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768389948; cv=none; b=Y4h9I8Mvfg/yoxZ+M6+t4OvAPf2Tf5b404JvBar02KCwuomk+wBvhl5pY7xM7yR5P65GfL5yqBlgt+gktK7phBzOQJnhJPyQi1VznHou6nzf64f3/MflnaR1S1AQnfsqihjgJr8bvmQQVn75fHEC8K4RDfzgMO0sBABSV/9lmRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768389948; c=relaxed/simple;
	bh=rl1aWft7pClGa8yly8SZjFE6bGG1Cx8NZxgDFPnbDX4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WgDnJ2exz3OE2Atkz7O2K0QsSYSTp6Y3O6F6IPROGtlaBuEuuK/HU+2SC4CdX89xybtgSDerOCR8RV8dJfhG4wMRucL+WFkhpHXE6DMkckW806sPiu9YCuT8mrwF5N/ca8LIJQzHGn/rKCDD8nanxvYipc0lLRNMStbiO6Rs/l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WDvzJeFY; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2ad70765db9so1715689eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768389946; x=1768994746; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wfhgRc6vTwsEnX3dOX00U1qmC/HK8O2dZPFjKNu4aWk=;
        b=WDvzJeFYjrOXGP2n6YZz2ONTjCaFHZKE41jL9NghlJdLKOSo4IVFjkHhWyYdOK0Cda
         mi+pSt9V6RZQhoL7L0OP1MQO0+OnQFSgtslazQZCGMp7sD4B9esQcFcst/vzIdt/OOzH
         Bf1Gn/1CcphXKwnIbX//Yw6xzMQM/SNc5bvEznJxmDVKfPOZgLamV5PsW0Ybr0wpwX1G
         7c0NzPpgCUFAyG1f+6fzHqOgGLLRsaPCaEC2F5B0lnm2L4Y3uWk1dI/xTyR9B/ZCxuAh
         PpcOa1/YHTkgSuIIlqQnzf9tm/HUT8IRY7CtebLqg3iNSOo9ovkv10orpJRO4lSF0GIk
         DRbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768389946; x=1768994746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wfhgRc6vTwsEnX3dOX00U1qmC/HK8O2dZPFjKNu4aWk=;
        b=Ph8V1q3jRMk90XkCTyjXcPvQ9wCRU2mY88IpqJl2s1/9nceNR0fQOFGtaEurKURnkG
         bpJ6MKte/crajx8BlqhxZW3pAmiUgLl0EtFqPdc+uWtetw8kPzYLdmAOaU3rRAnOAiFp
         8Pc814K4a3bMl8jxL6tC7ZJ0W5mQjVOa2fZI77SWPrh0dbqMuZMe+Po6l7jyhMZ5hDbv
         S7sF5qZ950lWEmJWe/bsh8T45Rf4ERfHrzG1mrk1bf8EXesg2pDkegnAbvYw1Gj1lryT
         AHZ7RpGFZpdJWBh4kJK/GU4HCs115HjqAIfr54o4/F48AhaGgj/4THQEN8eQ7F5DrAK6
         qbIg==
X-Forwarded-Encrypted: i=1; AJvYcCXM0UGnpQyn3GsPKIU/ZmiOsmTd3fZNeF64WtiQ46n78366so1YBZuU7qY4QBHw0hROOyH3gkNAmQbi@vger.kernel.org
X-Gm-Message-State: AOJu0YziSmIKfMzuKN7uS48GfgYqCdr7QwK88pG6EcCEnhVzWT1/d5+U
	IdZ+M5q9kesfzNe/+qSHwVbDdt8Q4TO6wxkAfJbY5/oS/076Fe78VqMuO1nvSteQu4SWJhokazz
	gJyO7uEZx5DKGPTGkgY110IPOJZ/NCg5skfKIh8CN3OkF/+k=
X-Gm-Gg: AY/fxX4Nnt8RBbN2vqoOLA3Ubb5H20ynH+n7METMD8Tz/22KEBngqXa9bNT21z19/Mq
	I5/LZrXW3h6U/fnKRq1m0kTr84BxprIrqyOt6cD3lGAL+yhmP1ItOTZjE7fXh1kP0W6nkZFCi9O
	Tpb6eNPjejI7HWvpPsas+xjSIFeAsgMciQyKmntcoR6wo/60b6OAp8Tc35tZQGyK9V4iKiKFqN6
	CSq9lMeTzopyZpg47eh8W4BqFjQFJbGospOgKmaB8ScdgIUiSx9jwT58wEPREVyDxOY
X-Received: by 2002:a05:7301:10cb:b0:2af:fbb:97cf with SMTP id
 5a478bee46e88-2b4873448e8mr3277294eec.43.1768389946359; Wed, 14 Jan 2026
 03:25:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114062549.68954-1-nick@khadas.com> <20260114062549.68954-2-nick@khadas.com>
 <20260114-slick-passionate-mink-216a3a@quoll> <CAP4nuTXeC1-6ktwLpDt_1ZRHxPSiNAoDKTxLzqEYJUfcnVogcQ@mail.gmail.com>
 <39bb1820-6e4d-4f50-87e0-93844d779f6c@kernel.org>
In-Reply-To: <39bb1820-6e4d-4f50-87e0-93844d779f6c@kernel.org>
From: Nick Xie <xieqinick@gmail.com>
Date: Wed, 14 Jan 2026 19:25:34 +0800
X-Gm-Features: AZwV_Qg70Hy7I-zqtjJH4CnT0wrSCnqXmLnlIp4duk0mQjb7lfd2ZqN3oox8UgU
Message-ID: <CAP4nuTX556F6a+aMndYayu-29u-SsYi0g0ie8ONz8b5GStgv-g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add Khadas VIM1S binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, xianwei.zhao@amlogic.com, 
	christianshewitt@gmail.com, krzk+dt@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, nick@khadas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B41=E6=9C=8814=E6=
=97=A5=E5=91=A8=E4=B8=89 18:33=E5=86=99=E9=81=93=EF=BC=9A
>
> On 14/01/2026 11:07, Nick Xie wrote:
> > Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B41=E6=9C=881=
4=E6=97=A5=E5=91=A8=E4=B8=89 16:51=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> On Wed, Jan 14, 2026 at 02:25:48PM +0800, Nick Xie wrote:
> >>> Add devicetree binding for Khadas VIM1S board based on
> >>> Amlogic S4 S905Y4 SoC.
> >>>
> >>> Signed-off-by: Nick Xie <nick@khadas.com>
> >>
> >> You still have the same From/SoB mismatch.
> >
> > OK,  I will fix it in next version.
> >
> >>
> >>> ---
> >>>  Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
> >>>  1 file changed, 6 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Doc=
umentation/devicetree/bindings/arm/amlogic.yaml
> >>> index 08d9963fe9259..55663e0f7f915 100644
> >>> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> >>> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> >>> @@ -247,6 +247,12 @@ properties:
> >>>                - amlogic,aq222
> >>>            - const: amlogic,s4
>
> Look here
>
> >>>
> >>> +      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
> >>> +        items:
> >>> +          - enum:
> >>
> >> Yopu already have exactly such enum with such description, so your
> >> compatible goes there. Look - it is called "Boards" - plural.
> >
> > The exist board aq222 is based on SoC S905X2, but the new board vim1s
> > is baed on S905Y4,
> > they are different SoC, so we need to put S905Y4 under S805X2 ?
>
> What is the point of having two separate lists with enums ending the
> same SoC compatible?

Actually S805X2 and S905Y4 are different SoC. So maybe like this ?

S805X2:
- description: Boards with the Amlogic Meson S4 S805X2 SoC
  items:
    - enum:
        - amlogic,aq222
    - const: amlogic,s805x2
    - const: amlogic,s4

S905Y4:
- description: Boards with the Amlogic Meson S4 S905Y4 SoC
  items:
    - enum:
        - khadas,vim1s
    - const: amlogic,s905y4
    - const: amlogic,s4

Same as Amlogic A311D & S922X

S922X:
- const: amlogic,s922x
- const: amlogic,g12b

A311D:
- const: amlogic,a311d
- const: amlogic,g12b

>
> >
> >>
> >>> +              - khadas,vim1s
> >>> +          - const: amlogic,s4
>
> And here.
>
> >>
> >> Best regards,
> >> Krzysztof
> >>
>
>
> Best regards,
> Krzysztof

