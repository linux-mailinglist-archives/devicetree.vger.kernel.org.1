Return-Path: <devicetree+bounces-104105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEB697D471
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 12:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF6881C227FF
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 10:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 821E813D606;
	Fri, 20 Sep 2024 10:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BkkfnsZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B2013C683
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 10:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726829335; cv=none; b=hoCh5rMifBQR8ZJuDLT+DBB9lzebbezV/8EMH0AyTHg60H+10k+OysD+W5E2/V/YZHoEUHmoYqOEAJqf/BqH2SL9LFLEb63M9y9ewiMIyOSIYbXTnH8a7impz4Klkauz3QBbExVRC/r1bURNsbDhY8tmoIcaE8PiMtm8hb2DQg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726829335; c=relaxed/simple;
	bh=dZ4/ujZpQbCpyXCntr1AGF7SI+Rv8E8hhQze7yJX3o8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMmEEcydy0ZM/ZP3N1xMqO2oOJ2iKt8xRXVCYwkjohN/X0z/JSWxG4oR+9KQZypk7d5phqSh0n6IuhJUUWZk3VIvq5ctQjP9mAtsnYcmSHncYofBw0yU0bSeIvM7GTVtEX8kwX3i6zy0gWVaIxE4fh7W8FAHDyCwLWlJBA5JFEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BkkfnsZ2; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f762de00e5so20694561fa.3
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 03:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726829331; x=1727434131; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KEaKZbC2ikTC9wCBaKId7vvau6vAXgNDzN70KcRD24w=;
        b=BkkfnsZ2KEy7WtdvNGhmNnKZFOX7OorijKk6B/f3cBHS1WpdqxJ7nJz3B5vv07+R2o
         wiZSSXC2XnN6MdxX7oEdzfu81LvHAcXbeB+PVS0ss4LhzaoMgHHa4JlbnLoXnijx/vPE
         7tfp5lDbJ/FnEqERBZZk6/Ekb5Ofg9pAhesuxXnHVJUr/KaIsuYEeUaQm4t5XAe2GnEh
         +kZukPeY0Q0qqNp6Fl3js+Sy/MrI2kBYeWEP9tsobjDlFpsK7GScGt23R6a8N5FSV1L7
         M+cO8TR8vTpDw0qorqTk9a7TklESYHD+m+BoV66IxUOJSfE77MWd7LTwvRAxD81q8GDk
         EP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726829331; x=1727434131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KEaKZbC2ikTC9wCBaKId7vvau6vAXgNDzN70KcRD24w=;
        b=lzDNC89vIMJfba1uBD5xXFnXH1gQXles84x2UixPko7PHKpiYWoxIBmnjsc4d0g0bk
         Zl02tE8JL2sHoK3sTi05pWgmqB7DAylpbPQqv3rAid30pIzmI/ORjmKulEvjMuuZJ31V
         506kXf2X66G79krJAXdRLbJyzGGIJSSct8KxN62xX+wSf8WDLA/PvHfE5Ff1l/B4IDaY
         QVSNOyBMV/NunrJmAGt8wrHDvHpDLw+SntCfQLSY6xrTqN2s87JgnsA9l/4h1o5CxxDe
         qTQSFhVq6DhCXqL1tt+TJn79sgKeaWAACWw3JotlzholShEsvlNZI5dr3b9XvFgZGFvk
         hrlA==
X-Forwarded-Encrypted: i=1; AJvYcCUKp/mEULI/r7fIGwWAblVXE4czI5Kbp72HJqytLMWJSStJRnVrZuTHL6cGy4L7jPV9FvZHIf0VrtJx@vger.kernel.org
X-Gm-Message-State: AOJu0YxOl1O08w5kBTg+hq1SJB8F35jT1fITcCbXONHqheSKtu9tsKdE
	lxk01Y3Ph04vD3yBs4e209BXANr3oL1TVGHUCUrfTc6HZMaabF9OQiUpBWxyg1E=
X-Google-Smtp-Source: AGHT+IFvd7/6+jQCXzW+8cOE2HgQQSXqm7oa6E2UoDj0bBvS7WK9wGBNR3rLkjkZnrprPAtCOotFYw==
X-Received: by 2002:a2e:701:0:b0:2f7:7b34:285f with SMTP id 38308e7fff4ca-2f7cb2f926cmr10296501fa.20.1726829331003;
        Fri, 20 Sep 2024 03:48:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d2e1dd6sm18989041fa.11.2024.09.20.03.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 03:48:49 -0700 (PDT)
Date: Fri, 20 Sep 2024 13:48:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] clk: qcom: rpmhcc: Add support for QCS615 Clocks
Message-ID: <7xc6qxkonbioivbgn6nbs3kiewsnf6iemm5rxlblbp5bwo75do@zerort4eagf6>
References: <20240920-qcs615-clock-driver-v2-0-2f6de44eb2aa@quicinc.com>
 <20240920-qcs615-clock-driver-v2-2-2f6de44eb2aa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240920-qcs615-clock-driver-v2-2-2f6de44eb2aa@quicinc.com>

On Fri, Sep 20, 2024 at 04:08:16PM GMT, Taniya Das wrote:
> Add the RPMHCC clocks required for QCS615 SoC.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

