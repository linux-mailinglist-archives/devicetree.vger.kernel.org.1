Return-Path: <devicetree+bounces-50427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A17D987BA90
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 10:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CEBF1F2354D
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 09:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307D76CDDE;
	Thu, 14 Mar 2024 09:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CUWeeBGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311CB51034
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 09:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710409018; cv=none; b=Y5DyZ60Ph8lcTk5Zo3mknqdR9xgBwPc4+1Ko9sjV9rc8mAQMVwbvnSec6fFyvwx6TcIjWfs5vIJcmv4HPvQicYPqR8FMHlK0M3K+w1XEXSDe09VOp9sK+lG7po7bu3oYgpmOC2lDhf0y6jC7wWtsFMKcB5KVnVBKG5TbZulhYyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710409018; c=relaxed/simple;
	bh=1kL2QN6WVKz8gSy0PyRVHEePyuYyXifXRN8NSSLj2C8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pL312qQsvj0JeAFtfv7lEBJktL73M8bq6bDJHRWgmvV+67TDQ0/ljY4OsmqZFhMaAUd8xL4XoAy1gGJuSNHG4BScy5vQyvvJfYVqW9agL0t8qlMwVGZFACx9YMZGnUwZ2ocKFhyGIS31kPZeK7JhXHDf1U1DKC/OPdGhi+rx90g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CUWeeBGl; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-7dadba3284cso327257241.2
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710409014; x=1711013814; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rFCyko4UygTC+eA1DqHkphcPHLw6z/FvgDsZ8y5K0hc=;
        b=CUWeeBGlWyiP6E1YQSxhVNq28+HtealEt6mX/CZk+e+9zIKM3GCsm0WjhPqrEBS+SN
         UVcZeMAdhCMXcNFNtkPDjhaFFcz5jrnIeSou1Oz6m0cp7RZjQsK807eXwTiME/19jAcO
         rHgbFOfE2sP1pmS2ZD+8T5B/50QNZ+liqwtIB/QZevwrMPNknIit6/ApGJz3vk9srFMp
         ttRsYjF56HllPhG9owIveuRS+fNwUhnErpWLyMqXCd0BmrdTTCidx42VJKiuJTkkS4jS
         WLYpcSXcmGUvL5DyzBNz1gmNANkQt/lptpEIuIqP1S1IBOpBwLoMmVzK0MpxMWkf3qFp
         lQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710409014; x=1711013814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFCyko4UygTC+eA1DqHkphcPHLw6z/FvgDsZ8y5K0hc=;
        b=cn9l/sDQSwKDz27gYoZUlr/obyFlOkt3NXE31XmQ6K8DnbCivaI0g70tl+vWQ1hQZD
         JefvPX3pJ6Gr6uKOflBgYUZhQTueJgerrdDJ0QPXowg8KgQl8dgCj7Ngxt1z7gvm6O0Z
         ltz2p8Zt72pqMO8UP03ylgMzFXPigsBtRs9i6VaYNtL9vKIIm3AQwg7gbPSAlPYPkpSr
         ashMXHiiBsnWyOXhnIdc/AiPTLta/JS3flf70iD4tWxvf/WgmOfHVUwtCmf7bc0uweic
         ZeGzpfgfo3lX9p+ZYtw68biXugHkggGgnV7ylnBelZ8T0JxoDQ9HrCN2xhWjiTY1dwYH
         juxg==
X-Forwarded-Encrypted: i=1; AJvYcCU6uMHwGE+vc+u/qh7Qc8bt+GsoRnOYJnmgnaPpiq2cobXqc082mP3jfNktdkC2Kc5wu40pIJo9csMqIOP8Y7fOOV5G3YViFxFADg==
X-Gm-Message-State: AOJu0Yy9EmWcuYi8xMojYtnYCCANrFpm9pRn+kjFRYtlgdkTUem+E9Hi
	kflBhq2SI6CSCPhIPEQv4dTaKiTepCjLrzFmzzIZUhxg5tjegIjy7vASnWoYaZl5bwoUl1M0qzg
	c1EEtOqqW+7FzPXIwoj/hUrjL/HQ8aO7QyMHJRQ==
X-Google-Smtp-Source: AGHT+IHVz12/u2D9Hz2azuqLhg23uk/LHlBlyaUz+qb/H6DQHAh+NCRPmis06EV6xo04zGds633tyOqTHvVrXys2qzU=
X-Received: by 2002:a67:f744:0:b0:475:fb4c:7945 with SMTP id
 w4-20020a67f744000000b00475fb4c7945mr1506021vso.26.1710409014054; Thu, 14 Mar
 2024 02:36:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org> <4a0a8db7-a2bc-4c99-94b2-c13facbd1bef@linaro.org>
 <CAFA6WYPh5BS_Fpi6ksAC7bwoFEyqjj1Y3EahyQxCG9Pp=KDw=Q@mail.gmail.com>
 <9dc0415c-4138-4867-861a-38b45b636182@linaro.org> <CAFA6WYPFfL18acdZt6O-_=LWnH7J2MooDuf9cA3JCaQZdoLhVA@mail.gmail.com>
In-Reply-To: <CAFA6WYPFfL18acdZt6O-_=LWnH7J2MooDuf9cA3JCaQZdoLhVA@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 14 Mar 2024 15:06:43 +0530
Message-ID: <CAFA6WYNo73S5ROHCMK0ZQSiU0DDbuDadptmaPL+GPCocE0h-mA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, stephan@gerhold.net, 
	caleb.connolly@linaro.org, neil.armstrong@linaro.org, 
	laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com, 
	jimmy.lalande@se.com, benjamin.missey@non.se.com, daniel.thompson@linaro.org, 
	linux-kernel@vger.kernel.org, Jagdish Gediya <jagdish.gediya@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Mar 2024 at 14:47, Sumit Garg <sumit.garg@linaro.org> wrote:
>
> On Thu, 14 Mar 2024 at 14:00, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > >>> +
> > >>> +             compatible = "gpio-leds";
> > >>> +             #address-cells = <1>;
> > >>> +             #size-cells = <0>;
> > >>
> > >> That's not a bus.
> > >>
> > >> It does not look like you tested the DTS against bindings. Please run
> > >> `make dtbs_check W=1` (see
> > >> Documentation/devicetree/bindings/writing-schema.rst or
> > >> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> > >> for instructions).
> > >
> > > I assumed earlier that W=1 is sufficient for DT schema checks but it
> >
> > W=1 as in make? No, it is not. It's flag changing the build process.
> > dtbs_check is separate target.
> >
> > > looks like those are two different entities. However, I added these
> > > address and size cells properties only to get rid of warnings reported
> > > by W=1, see below:
> > >
> > > $ make qcom/apq8016-schneider-hmibsc.dtb W=1
> > >   DTC     arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb
> > > arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts:96.9-103.5:
> > > Warning (unit_address_vs_reg): /leds/led@5: node has a unit name, but
> > > no reg or ranges property
> > > arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts:105.9-112.5:
> > > Warning (unit_address_vs_reg): /leds/led@6: node has a unit name, but
> > > no reg or ranges property
> >
> > Wait, so you saw the warnings and ignored them?
>
> Sorry but you are ignoring what I am trying to say.
>
> > These are legitimate
> > warnings, although they don't give you full answer.
> >
> > > <snip>
> > >
> > > So it looks like W=1 is reporting false warnings and we should rather
> >
> > Warnings were true.
> >
>
> That's was my initial impression too and I fixed them via following diff:
>
> diff --git a/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts
> b/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts
> index 8f9cacf8de89..a366d3aff3c5 100644
> --- a/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts
> +++ b/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts
> @@ -92,8 +92,11 @@ leds {
>                 pinctrl-0 = <&pm8916_mpps_leds>;
>
>                 compatible = "gpio-leds";
> +               #address-cells = <1>;
> +               #size-cells = <0>;
>
>                 led@5 {
> +                       reg = <5>;
>                         label = "apq8016-hmibsc:green:wlan";
>                         function = LED_FUNCTION_WLAN;
>                         color = <LED_COLOR_ID_YELLOW>;
> @@ -103,6 +106,7 @@ led@5 {
>                 };
>
>                 led@6 {
> +                       reg = <6>;
>                         label = "apq8016-hmibsc:yellow:bt";
>                         function = LED_FUNCTION_BLUETOOTH;
>                         color = <LED_COLOR_ID_BLUE>;
>
> But it then broke dtbs_check.

See following breakage afterwards:

$ make qcom/apq8016-schneider-hmibsc.dtb dtbs_check
<snip>
/home/sumit/build/upstream/linux/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb:
leds: led@5: Unevaluated properties are not allowed ('reg' was
unexpected)
from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
/home/sumit/build/upstream/linux/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb:
leds: led@6: Unevaluated properties are not allowed ('reg' was
unexpected)
from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
/home/sumit/build/upstream/linux/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb:
leds: '#address-cells', '#size-cells' do not match any of the regexes:
'(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
<snip>

> Are you aware of any other saner way to
> fix those warnings properly?
>

-Sumit

