Return-Path: <devicetree+bounces-40997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AE4851DC4
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 20:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE098B21E9B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA244776F;
	Mon, 12 Feb 2024 19:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Z5Ex1MWX"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD064653C
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707765445; cv=none; b=SN4/fwzz+OFsQgmK3yuOaZUNao1S/93O92JxaUCJ8cAXJQauPK4p/5HJvqaSVAnjMvJXfd/NsKZxRqI4aBtRO9nRjn0FBTvkQxaFr1JtYvGB9MJDMPjEG/1jb+/QpkqxDlALL34iQZzBzdHlgleRh+SjX1vNJfnenoBu9fsHyG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707765445; c=relaxed/simple;
	bh=hCPIVz2rsHP449BdbfGe9x7zZLIk+rF9nrvXV0NjKjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p1GoIchKuC/+iVgBl/4+cP4CEWlNERJ5h7Jhib4pKCd3TTJ5Gqqy87PTgjkRma08SMCoDy/ZcrZQTyJthccsiOAPE75+19UpV6q8WUSHCJAfTLRFOspRK41R/uV/TzVx+gjiQY0buI+b0vxuWgScBPT3Ax3l029Pzi4g3w+FoZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Z5Ex1MWX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707765441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WMLetVOi1Tf9hmTdZnCJzk/WpjTPZas7r5FuMe1bTCI=;
	b=Z5Ex1MWX5kAt6rAkN9S2yZGlEHjVG54xHosLvWf1eRf3/+0vDIfmf/bndn7isg3kcuoU6D
	e4JTcV31p9TcayqzEp9hjC67kfYUYAZOQfvJkBMqkmdtjIXwUj7EYgTch668TdbIUUHYRT
	lzBAC6IyLBtPpcdbMOdwaVgNuDCRi/E=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-DU_dCVTrOzqZsnWadCXRLA-1; Mon, 12 Feb 2024 14:17:20 -0500
X-MC-Unique: DU_dCVTrOzqZsnWadCXRLA-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7859f5ae990so10087385a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:17:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707765440; x=1708370240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WMLetVOi1Tf9hmTdZnCJzk/WpjTPZas7r5FuMe1bTCI=;
        b=SSvLGoZdJEdTOJnRqkoYvCxKtoYKujBwFqk3Bvrf/tVkFgfO/sC4nNEJ2K0dwE8LO9
         Yryfey0k19KgKXUXBHgaDBh1LqvmoRJlAV6gtIicii8nH+hVodh+yJwxajn/oajRK1rq
         NxFs87dt/j/3TiMN4z/so8fOG7RcQu3Xi0TL1Z80308LVwlzMwdVlFYpUe0kcmVQp/K4
         bov1hSXJ2ofSx4jju+wRIkaUEkh/mHM4zbPx+4E+mfemUXRU4xHPAg7NOALwJDsJvO0t
         kP+oDZGr0z2NYH0kZqu3Q7s//VrsjwoHsw5WbVJX1UZABb7Z1s6muLTdtIs0TdkJb54S
         qMvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaI6VV6OsCuN6yfmwf2+JezPVp7ts05wD4EIJfdm1NTE+RFaAFczGKM02WDxfHGJhN3FAU1P7W1cGf40hXAoYqDP1nUIe7URzOLg==
X-Gm-Message-State: AOJu0YyiWu7ibk97QodWhqa9rAOECm83OQ+sm+WjzOn+Z+4vyzEK7T+f
	6z65/JqHq3FEVRPhi8me5OycD+MpGzk5EyjacEEWe33xU2XjdNxsnUokeHPGI3b0/zaHKDIxuj/
	610q6AmsnAteszFROsewBKPx+rdtTWKlOFKOwL5dQNt6YR0k0UsT22BG1DwY=
X-Received: by 2002:ae9:f710:0:b0:785:ca61:7ea3 with SMTP id s16-20020ae9f710000000b00785ca617ea3mr6779545qkg.75.1707765439715;
        Mon, 12 Feb 2024 11:17:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUoF4IBEbRpvyWPgS+aTYEr5wceo25NS27dmn3f7aIryzOLvnJvIl/jTbTBOLemUaKcBH26w==
X-Received: by 2002:ae9:f710:0:b0:785:ca61:7ea3 with SMTP id s16-20020ae9f710000000b00785ca617ea3mr6779524qkg.75.1707765439403;
        Mon, 12 Feb 2024 11:17:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWHNd5mtEeuRGeiTxZmbrytYgOlMyUVp07tEqmXgWzzcSqfe5SNDj/Fud6qax6Zyc8BXlT+w1Ehg8Y5p3v4Yywo0ocVaoqwUQUGFW3DUSPzygLTWl54gswZ62IrenQX8B+GnWawcCEeB1phpQBGrOs8XeC/cTjFmJYe4RgzaIzG5MdDpq/BlMuoEh6an8W4aIz76LNaskj4Djhi9FCcN/iP5nFnQfJk83BIr+3djfrDH7lWQtm5A6x3pWGvRbqeNEd0agL2jZd9U+oGwxL3nIQMo/JKWGJ0TRgFc0Pc8XXDDI+spwJtwZwg3ZWLPCgLe7IzTogq7kXp332oU9VEyjeRnQXsGiaeZHOoH1n+2SfkrNWQlUeI1L2fyvEboVk91s3kV7sl3jeo1lLRR0zlEk3BEnvr0oRO67AGaRYqvyZnge/0cz0ltDzHZr6TEE7jHHU=
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id u2-20020ae9c002000000b0077f435ed844sm2280803qkk.112.2024.02.12.11.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 11:17:19 -0800 (PST)
Date: Mon, 12 Feb 2024 13:17:16 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	neil.armstrong@linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sa8540-ride: Enable first port of
 tertiary usb controller
Message-ID: <stci5fykvlstgvblrtqd33f2mgbnwlc4rwguwfybqm3awbasmq@uo2qqszrgz2s>
References: <20240206114745.1388491-1-quic_kriskura@quicinc.com>
 <20240206114745.1388491-4-quic_kriskura@quicinc.com>
 <23824242-1b37-4544-ae9a-0a5a0582580e@linaro.org>
 <CAA8EJpqbXvKMQktGsxMFJnR+fXoOz8hFmm+E3ROPTjjiD0QLvg@mail.gmail.com>
 <6q2ocvrujbli42rjddflyol74xianr7j47jwcgdnnmwjanv25d@uw2da7zulqqd>
 <CAA8EJpr6k8c5C54S9xxQgZvd9NYFoxi5qQrOTz2AMrp0xeZZpw@mail.gmail.com>
 <baw3wxbdvzpkqqb6a7iut2wpt6jgzyqii5uyfkzptzt4ryjvao@4tpee6nqup5w>
 <b5c25274-9af0-4b3e-ade7-9a55d3cecd29@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5c25274-9af0-4b3e-ade7-9a55d3cecd29@quicinc.com>

On Sat, Feb 10, 2024 at 04:13:51PM +0530, Krishna Kurapati PSSNV wrote:
> > Krishna, when you make v2 can you update the wording about the USB 2.0
> > mux? Maybe something like "which by default on boot is selected to mux
> > to the external port on the board (with the other option being a test
> > point)." instead of the wording I originally had? That way the
> > information Dmitry requested here is easily accessible in the future.
> > 
> > > 
> > > > 
> 
> [...]
> 
> > > > > > >    };
> > > > > > 
> > > > > > Isn't gpio-hog the preferred way to describe that ?
> > > > > 
> > > > > That depends. As this pinctrl describes board configuration, I'd agree
> > > > > with Neil.
> > > > 
> > > > I unfortunately don't have the experience with gpio-hog to weigh in
> > > > here, but wouldn't be opposed to Krishna switching it if that's what's
> > > > recommended for this type of thing.
> > > 
> > > Quoting gpio.txt:
> > > 
> > > The GPIO chip may contain GPIO hog definitions. GPIO hogging is a mechanism
> > > providing automatic GPIO request and configuration as part of the
> > > gpio-controller's driver probe function.
> > > 
> > > See sdm845-pinctrl.yaml for an example of the gpio-hog node.
> > 
> > Thanks, that seems like the way to go. Krishna please take note of this
> > for v2!
> > 
> 
> Hi Andrew,
> 
>  Can you help test the following patch. It is just an add-on to your
> original one. I don't have a SA8540P Ride at the moment and getting one
> might take time. Incase you can confirm this patch is working. I can push v2
> of this series.

I just realized that unfortunately I no longer have access to a
sa8540p-ride, and I'm not sure if I'll regain access.

So I would not be opposed to dropping this patch altogether and someone
dealing with sa8540p-ride when they can test it :/

Sorry,
Andrew

> 
> 
> diff --git
> a/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-tlmm.yaml
> b/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-tlmm.yaml
> index ed344deaf8b9..aa42ac5a3197 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-tlmm.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-tlmm.yaml
> @@ -36,6 +36,10 @@ patternProperties:
>              $ref: "#/$defs/qcom-sc8280xp-tlmm-state"
>          additionalProperties: false
> 
> +  "-hog(-[0-9]+)?$":
> +    required:
> +      - gpio-hog
> +
>  $defs:
>    qcom-sc8280xp-tlmm-state:
>      type: object
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> index b04f72ec097c..aa0cec0b4cc2 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> @@ -503,6 +503,18 @@ &usb_2_qmpphy0 {
>         status = "okay";
>  };
> 
> +&usb_2 {
> +       pinctrl-0 = <&usb2_en_state>;
> +       pinctrl-names = "default";
> +
> +       status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +       phy-names = "usb2-port0", "usb3-port0";
> +       phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
> +};
> +
>  &xo_board_clk {
>         clock-frequency = <38400000>;
>  };
> @@ -655,4 +667,19 @@ wake-pins {
>                         bias-pull-up;
>                 };
>         };
> +
> +       usb2-en-hog {
> +               gpio-hog;
> +               gpios = <24 GPIO_ACTIVE_LOW>;
> +               output-low;
> +       };
> +
> +       usb2_en_state: usb2-en-state {
> +               /* TS3USB221A USB2.0 mux select */
> +               pins = "gpio24";
> +               function = "gpio";
> +               drive-strength = <2>;
> +               bias-disable;
> +               output-low;
> +       };
> 
> 
> Regards,
> Krishna,
> 


