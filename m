Return-Path: <devicetree+bounces-80430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 642D4919759
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 21:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7565280845
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 19:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B23618C341;
	Wed, 26 Jun 2024 19:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bdF6c38Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD674149C57
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 19:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719429441; cv=none; b=B4jEZdo8ViarUvDWO3CVthOIMx5gZltlKYYTUerVgbOGkrK4eWxwZmQs3E9UtH+wH5MKVD1beExinXeeABb/qg0xsJGYj2m8fZx1CmNQKiCpchaqVWgvi1tIYI9dbiqkD0vioYi8MelB0rKHSp6zBAbjM3EqUMwQ2a5NukTr76Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719429441; c=relaxed/simple;
	bh=wZPdg1xi4qRyJlyk7LfqlaJ7fDLSDBw9fw7OGRNwYl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FGUSGNr7vkImLYySOCR7NIeXN8L7ozGnMivKP7/jg4e6WWS3F6F2cupSNY5CYzzBgsLtS4lMsRDpmRnBx8Jlk7We0AM+I6y3bkntaP/9IxZ1ZKE9fnXnGndmxWi0uFBbit2dPJz54klElEqxxUf63GI8VOLEpHhOd7F6dW7HuC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bdF6c38Q; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52bbf73f334so5745131e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 12:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719429438; x=1720034238; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XI3lZHAHMpMacrGr7sZ7TIX64kTZg51b8AujnGsu14Q=;
        b=bdF6c38QBUdDjQCXET6Ae6XTz9eVDupe6JNWAxfkoLAy9v6hr0ZSWlAjvaA52Bi987
         eA86ed5YG9ThpMRAaVIx67Pq1oKjVjFhaYXm18G4A5ipD0oEqlvgW+LwhC4DaXF3SAkB
         E/pxdVjtDGJUMcRbBBp0xutTR/hgBU9udoeWZxLHkgk/NEIEQ6QxRpjmxyp+68G+KU6M
         c/u6oTK61jxogveuRB4lhNVEI0WEvWULNBAJIvkjxVfiervIQlzdkWT0UrChocMIzyCd
         XhgYZMghHlrFJEqLXYRv7tAbkO8DoMAMvjxzcZH68j7kSvIL00R5G/CsX02/pAvsO3ai
         ZbEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719429438; x=1720034238;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XI3lZHAHMpMacrGr7sZ7TIX64kTZg51b8AujnGsu14Q=;
        b=KueL7M3U5IWSpGeEPmssdn17BJaDEa+YOPWT+4IV6IZQjXjn369KQb3OQbCbY9ydK8
         iEX4eiKLgTS9Eoq/xcF5x+NBJTk3bLaJ04U3kEUHdetBaY4Zjlp2hh2ww+OtWK3me2DO
         OYlPD7ly0t/HRjt536eKImwZWVLwuEv+gq2Vnw2HXHsp0K1Pq3J5dqLUAUh7UqpA1Y04
         IFr/N0ETup6D35RxeobwIPsPLdLq224Ty+nm8j97i8yXGmfjLTaWpUxbbzjVqX+/9RiY
         UCWr4sSUtXI1mJgujxqXEx9qRtwGD5R/u3kVM7ht8BvsDuLTTVXePjn7CHFiUNl3DC9M
         RlNA==
X-Forwarded-Encrypted: i=1; AJvYcCUp8xGtpaq+38Cj1UTFAE76kKQJVYSazQj3huxeD9oe6reKLiP+bb8xQyzbORAv8FmoNrDeHj+An0mFuhk6/EZzxMWabV/+Eq1jIg==
X-Gm-Message-State: AOJu0Yy7Y/2TW6U4g7+aQblyUeeaHBVHk9XPQhwvw/JsYLQ/sWBpooYZ
	xAcsV7PtAHfz2572jh0U2y7aOB1lrbZKDVl6PLSwuwMpIzNZX7hAr0TUeAKvWKk=
X-Google-Smtp-Source: AGHT+IHV/jft8RtNZmUB7mEGILVCEPrignxw3W0VzQYDTf1gbiJqRpR7V0F3dldHCqlThMgWvlblJQ==
X-Received: by 2002:a05:6512:60b:b0:52c:c5c4:43d2 with SMTP id 2adb3069b0e04-52cdf8209b9mr8426942e87.47.1719429437950;
        Wed, 26 Jun 2024 12:17:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ce663d1d6sm1018227e87.157.2024.06.26.12.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 12:17:17 -0700 (PDT)
Date: Wed, 26 Jun 2024 22:17:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram P <quic_gokulsri@quicinc.com>
Cc: sboyd@kernel.org, andersson@kernel.org, bjorn.andersson@linaro.org, 
	david.brown@linaro.org, devicetree@vger.kernel.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com, ohad@wizery.com, 
	robh@kernel.org, sricharan@codeaurora.org, gokulsri@codeaurora.org
Subject: Re: [PATCH v9 1/8] remoteproc: qcom: Add PRNG proxy clock
Message-ID: <ga5kczcyn3dqoky4525c74rr7dct5uizun2smvyx3p3u6z6vtm@5vshoozpttod>
References: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>
 <20240621114659.2958170-2-quic_gokulsri@quicinc.com>
 <chi3pzh5ss3mivnhs3qeoen5hsecfcgzaj6qnrgxantvinrri2@bxsbmpufuqpe>
 <73cb638e-4982-49a2-ba79-0e78402b59ad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <73cb638e-4982-49a2-ba79-0e78402b59ad@quicinc.com>

On Tue, Jun 25, 2024 at 11:03:30AM GMT, Gokul Sriram P wrote:
> 
> On 6/22/2024 2:38 AM, Dmitry Baryshkov wrote:
> > On Fri, Jun 21, 2024 at 05:16:52PM GMT, Gokul Sriram Palanisamy wrote:
> > > PRNG clock is needed by the secure PIL, support for the same
> > > is added in subsequent patches.
> > Which 'same'?
> > What is 'secure PIL'?
>   will elaborate in the updated version.
>   To answer your question, secure PIL is signed PIL image which only
> TrustZone can authenticate and load.

Fine. So, the current driver can not load WCSS firmware on IPQ8074, is
that correct? Or was there some kind of firmware interface change? The
driver was added in 2018, so I can only hope that at that point it
worked. Could you please explain, what happened?

> > > Signed-off-by: Nikhil Prakash V <quic_nprakash@quicinc.com>
> > > Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> > > Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> > > ---
> > >   drivers/remoteproc/qcom_q6v5_wcss.c | 65 +++++++++++++++++++++--------
> > >   1 file changed, 47 insertions(+), 18 deletions(-)


-- 
With best wishes
Dmitry

