Return-Path: <devicetree+bounces-83513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C16B5928B42
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 17:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C8CC1F22E40
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 15:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1467816D331;
	Fri,  5 Jul 2024 15:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g4tUJ4TJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFC816B389
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 15:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720191888; cv=none; b=aF6FpLvNqkpaYG00EEQ+u/3m7jcIyLKhznbfpQY36TLgM0mizDIXxGWLNK3Kp1NYKjBl0PYqwGGyt1qE633gA4g70xZiI+kSgRhTKa3owxz+v3yd46j3laHGLuemHTfWEhtat3jKh3Zo9kq93eQT31AdakfM9pzsFJc0wQqMkYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720191888; c=relaxed/simple;
	bh=03tw9GpUoktebYDiBRLN+yuStGO6NkuqpDICOb4/w2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZUyPH4gPnxkX77aeL+m3kF/oYTGedcez04SeVsemaiuNIyxnILQ7MfkLFS84V0pz43lyOcQgM7808TODotEVQA4ucDUVgmnmHYjhOISEw71R8JO78MtaB+MzLXVkETuHCeLDXEDj6TACAh08Fu5JwSvwFCGFgMPfOk4UVM6IsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g4tUJ4TJ; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52ea929ea56so295299e87.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 08:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720191884; x=1720796684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G1XUXoP8ZUsxacZi1Zifn4mKpe40fxK2AvpOT6WOw2Q=;
        b=g4tUJ4TJ2SZ7cpYHpWAkxshY74kyN6C/kuBXneJs4v+E0WvYfRqupvxw7pMtWB1OXg
         tI2AmXeZJIoGKNF7Y2UBVuk4EB8uWFJ8ulh6Oeoy6C3sp6r3O5UQ8dZCR9VoQYfpHlNb
         J02JYx1LdcFOuK7o1Qq8Ii0r3QcBRz0bP6l10gEEK4MjYPgfjBcWRtlKo0bxrmTihj/K
         bjBj5KmtbSEWf/pbOThLdrXKaMi5wEMmkoefdfkYp1dkjHkfvWwW33ogL4WgRj5fre3S
         Xk1WDB6LdZ1x9WiSvdziIXK5H8UdQs0kj/DMUrow8Q1mnCUxaCvLbbTnuCIKNIoEfanl
         sKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720191884; x=1720796684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1XUXoP8ZUsxacZi1Zifn4mKpe40fxK2AvpOT6WOw2Q=;
        b=WG+YOOtED6OfaWR4KV+whWdvBfcMHwZ8hUF6W1sYkr55yPOZ/Y7LKW8wvfGXKVneqJ
         dNapdU3rJ8tyfp8Q1MctLwVOLgwr1YHIQ3WiC4dvJ7T3Bu6+wqbPr/RXH+ZTrAB0GAwO
         nhvzXPOcKiz3FeGmrXyqnPFhVAnR0AIfBuTZONF460T471PT+VHsGpnKDfcS0WV21ogV
         0LPg/h7lmjE7cSALafQbGBCf0Xi4LUcI30SQ5BuCOTOalhiPWd4VxHKk1VO2N72fzMo+
         DSlGEGqJ0zMQN/E5csqGHDJNS6Sr6nU0d4bRifEAeTGvTHRj++7ExXNDwSu63RMi+HFS
         GyEg==
X-Forwarded-Encrypted: i=1; AJvYcCW67egIR9Aucy8t4J0mclGZpJTKbr68uHZ31wxcO+eysJxThnJNWp9asooY5wGM/gN7jaCayFzkC1qkV9T90m4Bp5ZkAGOwAmMfIg==
X-Gm-Message-State: AOJu0YxAheHYqoA46cwBG/yQN41M0qoQUn/GUt+GER5jKDKSF8cKnNzU
	uu+VRH2vbYqPlEtLIk6Uf/VMLTMpDmwq8tEzMSioxsWa73oNPSbNyICxUDru8fE=
X-Google-Smtp-Source: AGHT+IGVnJDsTy2hKMNHtroOZv/CQszbYL1ewUUemzM1FxWCzTewJ9w1FvE1OscDzUKStDJwF4xYsg==
X-Received: by 2002:a19:2d42:0:b0:52e:7df0:9a78 with SMTP id 2adb3069b0e04-52ea063274fmr4038493e87.32.1720191884560;
        Fri, 05 Jul 2024 08:04:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab0b7fesm2848682e87.31.2024.07.05.08.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 08:04:44 -0700 (PDT)
Date: Fri, 5 Jul 2024 18:04:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_jkona@quicinc.com, 
	quic_imrashai@quicinc.com
Subject: Re: [PATCH 6/8] clk: qcom: Add support for Display clock Controllers
 on SA8775P
Message-ID: <ucgeexs6impgapot4a55cwzqy5kv374jkyhylojvpmstm7cf42@r4i5toizchn2>
References: <20240612-sa8775p-mm-clock-controllers-v1-0-db295a846ee7@quicinc.com>
 <20240612-sa8775p-mm-clock-controllers-v1-6-db295a846ee7@quicinc.com>
 <37bbd466-742a-4a23-b3f7-97f8da109608@linaro.org>
 <053e047b-7594-48bc-ac1b-2368c0c8f1cc@quicinc.com>
 <8b19c43e-6b13-4b09-9498-ee0b24749d3f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b19c43e-6b13-4b09-9498-ee0b24749d3f@quicinc.com>

On Wed, Jul 03, 2024 at 11:17:01PM GMT, Taniya Das wrote:
> 
> 
> On 6/21/2024 10:03 AM, Taniya Das wrote:
> > > Please merge this into one to save on boilerplate, take a look
> > > at dispcc-sc8280xp.c
> > > 
> > 
> > I did take a look at the dispcc for SC8280XP before posting the series,
> > but it kind of looked tricky to add fixes for a particular dispcc.
> > Debugging could also be difficult in my opinion.
> > Though I understand that we are trying to optimize by re-using few
> > common structures/probe but from clocks side they are all redefined.
> > That was the reason to keep them separate.
> 
> Konrad, are you good with the proposal to keep the two instance of display
> clock controllers as separate drivers? As I looking to post
> the next patch series, please let me know your comments.

I'd say, continue with the separate drivers.

-- 
With best wishes
Dmitry

