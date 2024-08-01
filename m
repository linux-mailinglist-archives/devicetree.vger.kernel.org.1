Return-Path: <devicetree+bounces-90402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7C294536F
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 21:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E30FA2881C7
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 19:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0159149C5E;
	Thu,  1 Aug 2024 19:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gqvx/YFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D81494A5
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 19:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722541170; cv=none; b=seKYwiYQOo7Glw/Ze6OoSqmsWXDZIOba1w4vw9EER7FGPTis5qGtexRb78FfFf8yMJbMtf9phStqx+dfZGzqaONn2HM92XYZi3zklwmAoZGyR9T5gjBJpDwq0yKpspuoaghOxl1rrMJ4mBZ/VEL2dJ1VK6Zqd7OsecwEuiTHI4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722541170; c=relaxed/simple;
	bh=pruHyweAxvTF8KZPMqMexwOT/eXlJIsyJylJGRu4L50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hm4o7P3A0l8ZUsyHSuAUI60UsC4o/BQvehS6B2+SeJrJldTMgKks/GCGMR29Flq4eGpXQ0HoWojkBE+DUDf7m4r+1AXkLSB0gsZQpbmooW19D/T2kyiFA5+3fSg768YgW+3Y0LDu7MjvWAYNJCAmXr4lhckUp//f7zgFK+Lrzkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gqvx/YFD; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52ed741fe46so8420230e87.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 12:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722541166; x=1723145966; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FF7YlDE2fmvKgJlSPDnCcR+1U0vYYzkU05WjvfGWSIA=;
        b=gqvx/YFD5ZmpJ3dZMMtGZoNIbx3xfJHZKN2IjnDixVsq/p7dC2maBSo8iQc0FXDT8x
         tyAqbXMbDXc7VEULeVG/2vk/DIgEZc/bjsl1W13izDOPbTMmaQnSh5bw/8sp/tptKpDM
         hm+W/nwYmpy4ca/CsA+Z4sAhK5yb8wvABjPiLCuRhnZZvFiN41i3zh1NznRr9aiDzI7M
         l8Hlhx6MRUCrilkMog/gktaaLARfBa5ExyTysKuhWyJEuFi/QEFHav6caLO79F4TsmK4
         YIrMlPJxgJ3c18SeLBl0EqTjmIz2QcUUTFcUiByl3n48G0Aval6gPCHCt+QGbNLsZE/q
         R5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722541166; x=1723145966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FF7YlDE2fmvKgJlSPDnCcR+1U0vYYzkU05WjvfGWSIA=;
        b=YDJUxuWNRwSRbK4tGOgWOxW8PWRLzIgdZHGfwqRgQWK5Ua/qhM+/e0DqmNFLwxoOHZ
         jPJRs+oCoRdb4Ewd1W7fzo5nQH5fV3C6lyZw++OqBCylEB3nOINcGdQ+kDf2w3P6iwR3
         rHP0s0JgyGBgKnLpkjg7k+hjSCzUiGoQzr+Z4Y9iGFQh/VaFluUsxCcJahoDz65Z/9i+
         H9dAGvLCOlILNIoyyd7hjM0WNfWxnDOsMI0M90G6UVuDBXqqvqXkneftXPbEcz4FwPAm
         jBo9x+4JT1PkQ+guB2iiNtKAqRSQcBoppyor+e7vrflcw/lW73IMGTX4o0F1fqpoUG8h
         LnWA==
X-Forwarded-Encrypted: i=1; AJvYcCXGhiLstr8flC1oYXgkRrl6k4SRtXigiqSefMPM224emOtlK3aa2ISJq4XY7oyhqD+3p/yq2e4RjC/KUa6TiK6CRBM4RjH5v9PSIg==
X-Gm-Message-State: AOJu0Yw+WaEsiMlDmFkbWlIvqC8uCBx9DPIfjbQ+TDvhTCDGTkwoKThW
	HLX5YJir4GtsUkgtejM/vnm9+rUZtgtPqDmAgofzdFJ+oIWpia0n/SNehB7iFyY=
X-Google-Smtp-Source: AGHT+IHrfRFcjOkfOudMpARrfaByr0AHB5uVht7/mS+qeXuKcC7aluLzL18A0DURifyH8O0ikf4Tjw==
X-Received: by 2002:a05:6512:3a88:b0:52f:d5a9:7065 with SMTP id 2adb3069b0e04-530bb6c7ecemr653340e87.53.1722541166115;
        Thu, 01 Aug 2024 12:39:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530bba35ab8sm35544e87.234.2024.08.01.12.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 12:39:25 -0700 (PDT)
Date: Thu, 1 Aug 2024 22:39:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Xu Yang <xu.yang_2@nxp.com>, robh@kernel.org, conor+dt@kernel.org, 
	festevam@gmail.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, 
	s.hauer@pengutronix.de, linux-usb@vger.kernel.org, imx@lists.linux.dev, 
	kernel@pengutronix.de, krzk+dt@kernel.org, shawnguo@kernel.org, andersson@kernel.org, 
	linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [PATCH v2 1/3] dt-bindings: usb: gpio-sbu-mux: Add an entry for
 PTN36043
Message-ID: <gamwnlydm5btay6dupjqm734njticous53tmgvakcnye56p2nd@cy5syyuy5oh7>
References: <20240801064907.3818939-1-xu.yang_2@nxp.com>
 <3akk6hydu6iguqik3ek2pb67knihnjcepyxtbsnnasq74ikpsg@7txsek3mx5rp>
 <20240801141501.yt6ytrf2gzmravwx@hippo>
 <20240801162946.l423ue5ihfcxfiia@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240801162946.l423ue5ihfcxfiia@pengutronix.de>

On Thu, Aug 01, 2024 at 06:29:46PM GMT, Marco Felsch wrote:
> Hi,
> 
> On 24-08-01, Xu Yang wrote:
> > On Thu, Aug 01, 2024 at 02:49:33PM +0300, Dmitry Baryshkov wrote:
> > > On Thu, Aug 01, 2024 at 02:49:05PM GMT, Xu Yang wrote:
> > > > Add a compatible entry for the NXP PTN36043 GPIO-based mux hardware
> > > > used for connecting, disconnecting and switching orientation of
> > > > the SuperSpeed lines in USB Type-C applications.
> > > > 
> > > > PTN36043 datasheet: https://www.nxp.com/docs/en/data-sheet/PTN36043A.pdf
> > > > 
> > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > > > 
> > > > ---
> > > > Changes in v2:
> > > >  - add Acked-by tag
> > > >  - s/SBU/SuperSpeed in commit message
> > > > ---
> > > >  Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
> > > > index 8a5f837eff94..152849f744c1 100644
> > > > --- a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
> > > > +++ b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
> > > > @@ -20,6 +20,7 @@ properties:
> > > >      items:
> > > >        - enum:
> > > >            - nxp,cbdtu02043
> > > > +          - nxp,ptn36043
> > > 
> > > PTN36043 isn't an SBU mux, so it is incorrect to declare that it is
> > > compatible with the "gpio-sbu-mux".
> > 
> > Well, so I should create a compatible such as "gpio-ss-mux" and make some
> > changes on the driver, right?
> 
> You're aware that I already sent patches regarding this topic:
> 
> https://lore.kernel.org/all/20230504-b4-v6-3-topic-boards-imx8mp-evk-dual-role-usb-v2-0-3889b1b2050c@pengutronix.de

I browsed through your series. I think it has the same problem: it
underrepresents the SS signals. You have specified the SS signals
between the connector and PTN36043. Please also add the SS signals going
between PTN36043 and your USB host or PHY.
Moreover, there is no such thing as just "gpio-ss-mux", there is an NXP
chip which providess SS mux / switching functionality (I think the
datasheet calls it a switch, maybe that's a better name), so there
should be two compatibles for the device (like all the gpio-sbu-mux
devices have).

> 
> Regards,
>   Marco
> 
> > 
> > Thanks,
> > Xu Yang
> > 
> > > 
> > > >            - onnn,fsusb43l10x
> > > >            - pericom,pi3usb102
> > > >            - ti,tmuxhs4212
> > > > -- 
> > > > 2.34.1
> > > > 
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> > 
> > 

-- 
With best wishes
Dmitry

