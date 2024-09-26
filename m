Return-Path: <devicetree+bounces-105496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92407986DE9
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 09:45:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C25671C21904
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 07:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2890C16FF37;
	Thu, 26 Sep 2024 07:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QuMA41qE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F62190693
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 07:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727336710; cv=none; b=PIzX/wavjWQnky6wYSqOJ7rZPMNQ52gIJDAvmqNaSEZl3dtqUwVcTvyQyw89kWsMG6a0UpCgsJzAWx3HWZn7Li8fvP88/tbJF2f0+B9u6A8TODTIZSzPGdBY39+kT/9azcNFPP4Ziz9GdzdxtemhvfgHfRfP/ViWjpCnBjgbcb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727336710; c=relaxed/simple;
	bh=tiFov7nkg0q0TF9VKrTi9Z9BWhaIfBV+461jCAom2Kw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dnne8dq1JWF55av4o08xT2eAvhxZHnIhvrOMi8DqstVPuAT81Hle2Y2gWZjSycUl2XVa/cU2+3SiS1gROrIRkFW6Q/KF5wKkFrhNIq77QP2L5u8Fca/sOoYdA24QFyTo+QD4TAQHQtpOtNIzTFizWayRvcXFmhXQu9m/R9XavQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QuMA41qE; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f6580c2bbfso14811081fa.1
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 00:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727336706; x=1727941506; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l+ep/6z5S8gFaAGlGa1p2JCYeqKXWlhkAGFFj3cCHeI=;
        b=QuMA41qE1CRxiQLRzTF1XMmjDluwP15e5gmu86Slj0DPK3diSmmBakpLuHHRio28Tl
         Km4B7Kr2vCwTuL8XCtMKUyroVzKDBLPkqbyypcNxbmJnlcmZJYjLYM+oM2af6SfscKMS
         UM5192PvTwfkRB9ifSC+KhZR27BACXH0ExVYZtLQY0zQzQLHd0IiY5PaYPLqdK82b1Im
         u44RwsAnGIhv6XKw5qwn7l4e4I6jk/uFhl7mX0Cttryszucf/MzcA8pjLBJoLUkXtvwH
         EXR5ltpO2xCIgYAfkthAB8lAzZC6dXc6O9uBSqIlOoKIJ1blcnRWTmavycCZO4mynQDp
         q86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727336706; x=1727941506;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l+ep/6z5S8gFaAGlGa1p2JCYeqKXWlhkAGFFj3cCHeI=;
        b=XBO6H9RgTfvkxqj7fxm2EBvcB5LrFSZzcMS9m6G567SioASGO+fSDBF/l1PoPXcQM7
         uQgLHTlhwoEjhKZR/N5Er9fjHoSZh9t9JEbB0fzqfnJLt+UvUnxGEjWUOCzOozqZzjkb
         vl0c8xY30O12TQEnFS5nKIVFEsv1jA0LFrFfVzddFNiil+tSrHEN5Je4CVYrRcwlKGMZ
         UmA1KLn8V4C5yjNi23jf8pFIcU7CvcJxnI0XPbtW1EK+ztQcMEYN/ykFd6FzOmk63OGS
         NAy+Ux6Uon00kc0c69aSm7MEiOwxFkAMytGY9OpTby2sQwXmLg4U854Tqi6V9VtqEjeB
         Gt2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUj3G5TuvB1LaJoAMLZxrnxsBoyMq8RVi9GKRCUyNZhEaCY+3+zHlY7gkTYsVhOKiwZkrNRc/ZQr0nw@vger.kernel.org
X-Gm-Message-State: AOJu0YyCAqrAp+tdT/Z4YhbpAys7kiBDE7jaGx/wxC30yGDmEusAA9Dg
	RZvPD9gr855oA3tER7Y/fxyumke23vuD/C/6kNuPI+xElQOcIuMmFFVmHv4/XTs=
X-Google-Smtp-Source: AGHT+IE8t/UCFmelf45sCCA4Y5BbzLE8UoeGYay6Yk07oNt/9T0IOtDPZGoOyi9Xm205mZNOBiCI0A==
X-Received: by 2002:a05:651c:b0b:b0:2f5:375:c1da with SMTP id 38308e7fff4ca-2f9c6c59699mr7235231fa.1.1727336706268;
        Thu, 26 Sep 2024 00:45:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d282fee3sm7409751fa.17.2024.09.26.00.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 00:45:04 -0700 (PDT)
Date: Thu, 26 Sep 2024 10:45:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Rob Clark <robdclark@chromium.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: x1e80100-yoga: Update panel
 bindings
Message-ID: <ipfpy2pfl7x4633szx5a56kmpxqh7gmr5x7t3jlwgtclkxbhw5@7pvqqikror5h>
References: <20240729205726.7923-1-robdclark@gmail.com>
 <20240729205726.7923-2-robdclark@gmail.com>
 <Zqi5rUQqWa9wZCva@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zqi5rUQqWa9wZCva@linaro.org>

On Tue, Jul 30, 2024 at 12:00:13PM GMT, Stephan Gerhold wrote:
> On Mon, Jul 29, 2024 at 01:57:25PM -0700, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> > 
> > Use the correct panel compatible, and wire up enable-gpio.  It is wired
> > up in the same way as the x1e80100-crd.
> > 
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Note that the power-source differs from the CRD.  Figured that out by
> > diffing $debugfs/gpio.
> > 
> >  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 17 +++++++++++++++--
> >  1 file changed, 15 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > index 70977e9fa266..6f8d52c368a4 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > [...]
> > @@ -669,6 +672,16 @@ &pcie6a_phy {
> >  	status = "okay";
> >  };
> >  
> > +&pmc8380_3_gpios {
> > +	edp_bl_en: edp-bl-en-state {
> > +		pins = "gpio4";
> > +		function = "normal";
> > +		power-source = <0>; /* 1.8V */
> 
> Hm, are you sure the firmware sets it like this?
> 
> power-source = <0> is typically VPH, i.e. the main battery supply
> voltage or similar. This will definitely be higher than 1.8V. It seems a
> bit odd to use a variable voltage source for a GPIO...

As you've mentioned it. Please use defined values rather than just <0>
for power-source property.

-- 
With best wishes
Dmitry

