Return-Path: <devicetree+bounces-124474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD1A9D8E97
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 23:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA36F282103
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 22:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632B01CD210;
	Mon, 25 Nov 2024 22:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aVaqb8D6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB6D1CD1ED
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 22:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732574127; cv=none; b=HfId12DFuJn7TNqyFr8XUcTwj7psCmrw65YiK+7UeIseRbDDIBeLjzls1zl3K0GUN8FhmoGreUaARXGGRVtw8f9TU0SKzUEPOQmCnAWImbLRH1tvHv0KrXm8fNC6CIRSeW1IfhRjDeMsT2voQcErvcvrO7cEQJfqbkev+LfrRug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732574127; c=relaxed/simple;
	bh=JUkdG3WwcK0sH53fkuhlZtdKYI9+pTrmnN1dDYT+QqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T4lpYommBY9Yxc7ovoO1qB+jRMsiYVTSg5bmiX8vr9sEX/jLnh4uBQexxjSwhhvS6i7mUj4APp12q5C0HdQj+95BvDw+I3AEl24b6VdlGVkUnlPaE9E2Gn8MAE9zfyDeOAZIZoFo9IvKKRTaArl9Y/DbmnQwe02LiLJwxnWSDBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aVaqb8D6; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ffbf4580cbso17925191fa.2
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 14:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732574124; x=1733178924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mK6iFRY7R3ULg/N72ZgFYW9FiXYFDV4de5/GQKQ+Iyk=;
        b=aVaqb8D6prIgG5MEdXWkfzc43qtRdoHDa6Ls6W37MpePuEWCo+myZ+XL11wIC78VgL
         vfaUtC/VuoNuJCbgmhMNW0Lf48LHnMQauOKEW0lKFfZ/+AePFGdJ7Suy9B2YtLkoKXTb
         qvonPL1gR0oeVh5GKgEoZ8/cThyTBdmWwsMNq9KaAgmHPfPXaYNin3Dc2/TyA5xX1TMw
         AY81k/QmFZlYmnulCkrppDbWRby7kaCo5nAjV/57YD7c1RE59z2qVa+O9Z4vZZKo8Gaw
         oBTV2SwpN951ndLFGBpqW7QqtfZpOc2kklU8uTTSSMcylORZYAny+1EAiyPY7txCTW1h
         OmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732574124; x=1733178924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mK6iFRY7R3ULg/N72ZgFYW9FiXYFDV4de5/GQKQ+Iyk=;
        b=GQTmQG3FMab6VPFOgn4kkffGMz1WB+s3uBlZfybAPEIH4gKpOaBJn7VwFICvDMu5/r
         t2LRAmvWFdd9NX/UNW37YAUYWu5nVskNCbKGloL/M6l5viOdG7SuD5GjEtZ11Q5THAno
         jFJyL0lrgd5FUlF7/+S4OlS48QpVfYHpBzl6gLkxPO/LfeV86v92wN2KjKpssr1dWDXw
         z0TjdJpjT4Vg17JvB021F1NKq2hz2H1JM0/mbgePhi2dS2CiGZpNqpR99C03Y3QTgcgo
         3V/SgBrve6oAnKkRodl93jl5jp+HSuoJCOL+XlMAqRdNGbfKv6ePY9tLzZfvoEP7O7ue
         a7oA==
X-Forwarded-Encrypted: i=1; AJvYcCVmBnk5GHura3kgcUBEDljdZPya+m1wjbMsNHUC81GQSDIHrWPI1agNwmIIov4rZaFbWQW8mR+7qecp@vger.kernel.org
X-Gm-Message-State: AOJu0YySfl8KD0+E7HFVmgNnU0M59KcVtK3nQ/b+3B1b/RUNhUpUb6Hk
	Fl78JeKOWKh8JCkiWIGXIcjg4o9+/YmQWTstBAz5A1/fV+RQW0vyrA3E13Pnt6g=
X-Gm-Gg: ASbGncvfRcjF/gx0iArNhpJZBIsg3ThMCZls2+hwgFYEKF+/dOGbZWtiR4cFmMG9GqJ
	ub7i9hBI5344urA3kwU0JYZM9EdX+iyeNzGDBAYoMHQmbBgCtB06s6joeBEcNiup7qBtGl3NPre
	J0I2cGG0uy0NBFzwqikkwAH7w7401WEh1AnmoQ/CxgeAutwnGDuF23iYMmrsFgcpV8J79kvzNUH
	e0UB9cWk0EQA4ChxSZjp2Ga/tDnBfNmRNlwCUz/p8lJdotuwEpNE580PokiDbugFP/owdZrSEBy
	GrEJ1nBWoucx2hZBp74Fnm/tVjtc3g==
X-Google-Smtp-Source: AGHT+IFp5gx7OJlQrJ9dEw/b8xMYu3nZ67KYGmj3q6WZjvpLkJCPY9W/kriDd8ENfUXUXNo2Yfcwvg==
X-Received: by 2002:a05:651c:553:b0:2ff:991a:fb96 with SMTP id 38308e7fff4ca-2ffa716d0b6mr68581421fa.12.1732574123695;
        Mon, 25 Nov 2024 14:35:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa53760cbsm16580381fa.82.2024.11.25.14.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 14:35:22 -0800 (PST)
Date: Tue, 26 Nov 2024 00:35:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V4 2/2] arm64: dts: qcom: qcs8300: add TRNG node
Message-ID: <2vc6tg77qpi5vz7tmmlwgnlxjg62l6vsipjivygiapl4dhqupv@vrpbk3kcdrd3>
References: <20241122074346.4084606-1-quic_yrangana@quicinc.com>
 <20241122074346.4084606-3-quic_yrangana@quicinc.com>
 <40c49e6d-dbbd-49cf-b59b-10e10b24da22@kernel.org>
 <0bdaa2ef-3979-4963-be75-0a5a89728f44@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0bdaa2ef-3979-4963-be75-0a5a89728f44@quicinc.com>

On Sun, Nov 24, 2024 at 09:17:40AM +0530, Yuvaraj Ranganathan wrote:
> Hi Krzysztof,
> 
> I sincerely apologize for the inconvenience. I added the "Reviewed-by"
> tag without fully understanding its implications. I will remove the tag
> in the next patch series.

First of all, please don't top-post. Put your text under the phrases
that you are responding to, not at the top of the message. Otherwise the
logic is a bit broken.

Second, may I ask, what made you add that tag at all? I went on and
checked. Krzysztof didn't repond at all to v3 and didn't respond to v2
of this patch. So why?

Third, if you are unsure about what you are doing and as you seem to be
using b4 tool, please just use `b4 trailers -u`. It has its own
drawbacks so in some cases one should be careful, but at least it
doesn't invent tags on its own.

> 
> Thanks,
> Yuvaraj.
> 
> On 11/22/2024 8:30 PM, Krzysztof Kozlowski wrote:
> > On 22/11/2024 08:43, Yuvaraj Ranganathan wrote:
> >> The qcs8300 SoC has a True Random Number Generator, add the node with
> >> the correct compatible set.
> >>
> >> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > 
> > NAK, stop adding fake tags. It is impossible to receive above tag from
> > me written that way.
> > 
> > Best regards,
> > Krzysztof
> 

-- 
With best wishes
Dmitry

