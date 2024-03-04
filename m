Return-Path: <devicetree+bounces-47978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B53FE86F7F1
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 01:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38913281454
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 00:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A58A20;
	Mon,  4 Mar 2024 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mlhNUmq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12014389
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 00:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709510914; cv=none; b=Gze0Zd7BrNpMG7f3aV9U38bmKXylfPmKTd8eW/7G5BVWEXwp1JzXXTZaR4Opf148OjyDnGCbvd1DDDuCLyrLLKPrfRhawBXZXJUZaM6MxJk98kjfO4ZVEw4nJIsQ8+sS2FwQpoNXWL7XbdLb+psulLTiy0vK4WJw66y7mbavpFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709510914; c=relaxed/simple;
	bh=rawqDoe/Zc8urdGoPhWWMHRmf31BkuUV6Xqj11OWaBQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZeHKmhtY8mzvlfJYNbvgInXVdIc61vb+8bb05anUnHw0X8B1BUAzpPSl0b6xh33JhE7PfsoFkWjYO0LU4JwykFsfoF2ntTfeaeJiXz5XwPcN9uQHj8BpRh+0XEcIYUtS8HxhJmbJVCfJhzevpnEP/mLFcxo7gGsugJtC3x2LIkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mlhNUmq/; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6098b9ed2a3so15766597b3.0
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 16:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709510911; x=1710115711; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zscouhjzoZJflbI2y1vMzZO0ByOgZWZyvByc5tIWOdQ=;
        b=mlhNUmq/hfFOelS6eWAULk0UnUUHxNX1otuvhOKo56qpeqQUENRW3h/CEV6eLTnBVX
         XfTWPObm0xaBZSlZfOMC/jb52oaHaQIU1hLYk55+L4tIOCcYS4wTNsotFNCBw8EzUYah
         1NABLke2J7KrOPYRI+uYkCy+arnkJJYatC3rESwDl4JuIB1AIfiICx4lKzXv6v6QZOg4
         vdYBgBjFkf9djUBOq35krC57318UICG9IxyZDGBlj/RId1Dm+p3L5j17vTbwqeZFRiDf
         eNZAYZ3CHTGHMahz9jQmFXmn3gRTSDiA4AyiKii8spxj6XFKqmZ54Y0cyI+1jwD+L4uS
         phZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709510911; x=1710115711;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zscouhjzoZJflbI2y1vMzZO0ByOgZWZyvByc5tIWOdQ=;
        b=uNUVhaxQAN90vNpaYhd4pQOHROJJoKm4TaGd3EqUHPnqKTQVJXl/aueLfMGm/tPwsM
         Qh1IVgtSvcX4WjC0r2u+bHUUVg9fBL4EthNWKpxY8rYbTYSnmTUYnIZhXdTLtbH5gkS9
         HjimTfwdye4/ZYMeTLxm8Xy9imOnIKUEtLLY8BMg677IlWnqj9P3voQpRzNEND+rvF3h
         I5/1fR3V/2Q7ohXL3NAA7utCD45392Mn9ReWSuWw7T9SKcwfPXNnBw3d5fpuOlhptfZb
         nCdkgn4y1VcKbSJQ9ynFy4FoxnqmV21/y3pGX9lUIioKhlFoNC2MsilVBVI4PRYZOQjj
         9/WA==
X-Forwarded-Encrypted: i=1; AJvYcCVPWgMyIPMM+TAlKCNK5YjfGraGK4aG90UEAmWOH3cXzyLacc+TBZ//wKyNUjq5RHZ4CLNjR64WxkjPSEUCvLI40bPz1BICnJ3kbA==
X-Gm-Message-State: AOJu0YybCJkxzZor821zXWNx0gX4xC0agaaxU8by0xFnTRB+oUIMg+SH
	Fut17Rp7vyaZKRCJfkb+6K1zQd1QK4LRKCPq/mhH/LPwLW6j4u0dsgxof/hm+tQYP5ajc2H/iTn
	OGVkbaFqICpRxRh6qIvK198b8e+Thr9mLNK8d5w==
X-Google-Smtp-Source: AGHT+IFUAS/cUvCXc4GIKxWXH59+ywTnirWoY7ZW+DW/gx26LtydgU6IAVpn23iYbVKnXLkhh+r3R525o2gCAKbcgUo=
X-Received: by 2002:a81:e945:0:b0:604:a9c2:2a17 with SMTP id
 e5-20020a81e945000000b00604a9c22a17mr7954801ywm.45.1709510910896; Sun, 03 Mar
 2024 16:08:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-pm4125-typec-v3-0-fdd0ee0465b8@linaro.org>
 <20240221-pm4125-typec-v3-2-fdd0ee0465b8@linaro.org> <CAA8EJpps9EPCgwBF8d8DbVzSZQ5tbEnj3RyGcJ=ua0eigDWQzQ@mail.gmail.com>
In-Reply-To: <CAA8EJpps9EPCgwBF8d8DbVzSZQ5tbEnj3RyGcJ=ua0eigDWQzQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Mar 2024 02:08:19 +0200
Message-ID: <CAA8EJpq=Js3vtRQrUDWi1mOgL3C1iEsaAQs+dwHg=hLyE0U-rw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: usb: qcom,pmic-typec: add support for
 the PM4125 block
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 02:00, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Wed, 21 Feb 2024 at 01:58, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > The PM4125 PMIC has the same Type-C register block as the PMI632.
> > Likewise it doesn't support USB Power Delivery. Define the compatible
> > for the TypeC block found on PM4125, using PMI632 as a compatible.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Making a fool of me, for v2 there was:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Greg, as Mark has picked up the vbus regulator patch, is there a
chance of you picking up this patch?

>
> > ---
> >  Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> > index 6c0c6b337693..5527a4bc9388 100644
> > --- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> > +++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> > @@ -14,9 +14,15 @@ description:
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      - qcom,pmi632-typec
> > -      - qcom,pm8150b-typec
> > +    oneOf:
> > +      - enum:
> > +          - qcom,pmi632-typec
> > +          - qcom,pm8150b-typec
> > +      - items:
> > +          - enum:
> > +              - qcom,pm4125-typec
> > +          - const: qcom,pmi632-typec
> > +
> >
> >    connector:
> >      type: object
> >
> > --
> > 2.39.2
> >
>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

