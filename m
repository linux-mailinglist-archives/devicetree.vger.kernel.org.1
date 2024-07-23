Return-Path: <devicetree+bounces-87587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 60520939F79
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:12:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 883E81C2200E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1CD14F9DD;
	Tue, 23 Jul 2024 11:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HAeVsB6U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF1314F9CB
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721733132; cv=none; b=UCmXeB7jAtfyS9InhLKjpXS4VgZQ/B5sNcfDty0nZQACCG8Za57/XM5s+B4WLYDdbBmajUJc7ENtzydZoRDAQyKf7ubN7f/QZfrNh7GEZ7wH5tkDNX37YbFYWt0z6c7hkoU/RgRS7khfTVnB11qwcEMR1oNAdkNMPXVEnSQDhyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721733132; c=relaxed/simple;
	bh=IvzIW2clA3I7GZ4v4J56J8ja6IwCiuGy9Lu+qz6Lwgg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RPVlQ/u/YhkxehVRQ4sM2Hl1p5dKKJxKoB1LLSRgc1Pl8Btc/3PU6P2MicZu4SY7h3z9a8X3q0YP7i1gz4Mk0aYx/uX9VzA21+XkSAiVG0lM3IDacgbvHu4uJNVQSYIXRUedoRG2mkjkhi9m7MED9KVQZzPBJs3aRh1Q55W2FE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HAeVsB6U; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-66a1842b452so36098517b3.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721733130; x=1722337930; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VY9kR9+u3xGnZyuvPfUJwJjyKQqZEzEIXFGJcOyXF/A=;
        b=HAeVsB6UidUpRNiP3gzF9maf0b/iZHaEbQisFR31OJY3ZdLhIe4h42cYfkeSrTMD2C
         EioCdv0zT7DwBefyplv5gMlbEjbrrThrzMOaw85mnGFXeb/rnOeEIKo0t90FcbMSi5n3
         66CyABxcc3Z4yijmvqiW053d5cka6QDsnBrfHW4SlgJOjW1P0l5J5qh9rSYlcDWMAb3x
         WXXN/z22SPY9HeGSSKAaAmw6fK4mm4AIhgS6bBwMwrZDGNxcB28ehygWU12dISY9sl9t
         RmrNLYcEq++EG7vWsUTC3EWcrvRNaJlsDCijBHWlUlzWEb5878R0bKWvBBv3n+wAB61e
         0TXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721733130; x=1722337930;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VY9kR9+u3xGnZyuvPfUJwJjyKQqZEzEIXFGJcOyXF/A=;
        b=XCRKgYvKBpAaZUik6WRNUnWjPIA7lyZds9psdmz1M7jU1QmbTWXdKyBFOYw7ml5J7C
         swz/P8apFK1BZ6Ho1uJgMR5pGXXNVWdUzSJ7raWTsgCsY75jJ4R4tGplbVdOG4xEUCsk
         r2zP+mD1rrVobr7rrPnPWIVmGcqWqwSXYpgB4UHlM57y0VSvPbQOqzekGKdUlqrf/vl0
         lJTBwoIQ0hcgIWj9juUm1YFTn38K7PJvcHBYEfBVk/4bP8Ug5vEypZt6tnseNtUcfWsn
         UmPZyAw4v5lR2H/RK1x6tI9IMT6DEQfTrL80TknhFM7NcUoDBAYoh0QVVE5VIfYNiRam
         NWtg==
X-Forwarded-Encrypted: i=1; AJvYcCUJZ1cDx25cuyl3IYJVemGKaEUMoQSqnf6+BDiE+VyIilULHlgTq3bFxz19CwFK7lXc0ZoTQLD2YNBa6PlXOXprjMWkgHLmdVZchg==
X-Gm-Message-State: AOJu0YxdUnT0Ni7FjXi/788Ac+0IuGx7g2L8+p51u93hASxr2UWUr8cW
	kOfanYGRb4zBTLIg1zfNbjnYpqrFXVlTDEw1bHeqhwoFtDjmcUUThKKXA5sJAmiTP1TlQkkrqnJ
	AwLNao2ilxg8i6VGh31mgX2hu+H8XrJB0w9rJSw==
X-Google-Smtp-Source: AGHT+IFMnTFT7vPcY+Zxr0a0QqBAxxsVv2qmTLZ+m/AsVwQAEBYUMa+4mr/VFc2Y7CyYP17aKtDXJGa2I0EwFghD4fk=
X-Received: by 2002:a05:690c:f94:b0:64a:5ff5:73ef with SMTP id
 00721157ae682-66a654aa5d7mr128979387b3.0.1721733129835; Tue, 23 Jul 2024
 04:12:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
 <20240722-miix630-support-v1-3-a6483cfe8674@linaro.org> <3a257754-2118-4a7f-9753-f1a2392f9279@linaro.org>
In-Reply-To: <3a257754-2118-4a7f-9753-f1a2392f9279@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 14:11:58 +0300
Message-ID: <CAA8EJppvwXEiNs-6orVMSkkjJu4nYY4ZNdshbB1sUM=z4ouYXg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8998-lenovo-miix-630: enable
 VolumeUp button
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jul 2024 at 02:24, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 22.07.2024 1:57 PM, Dmitry Baryshkov wrote:
> > Add gpio-keys device, responsible for a single button: Volume Up.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      | 25 ++++++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > index f585bc8ba2ce..bca309ac0cb8 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > +++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > @@ -3,12 +3,27 @@
> >
> >  /dts-v1/;
> >
> > +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> >  #include "msm8998-clamshell.dtsi"
> >
> >  / {
> >       model = "Lenovo Miix 630";
> >       compatible = "lenovo,miix-630", "qcom,msm8998";
> >       chassis-type = "convertible";
> > +
> > +     gpio-keys {
> > +             compatible = "gpio-keys";
> > +             autorepeat;
> > +
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&vol_up_pin_a>;
>
> property-n
> property-names
>
> > +
> > +             key-vol-up {
> > +                     label = "Volume Up";
> > +                     linux,code = <KEY_VOLUMEUP>;
> > +                     gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
>
> No debounce-interval?

Strangely enough, no. See existing defines.



-- 
With best wishes
Dmitry

