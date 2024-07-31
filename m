Return-Path: <devicetree+bounces-89859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2329430DD
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 15:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAFE31C22547
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 13:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A6981B29C1;
	Wed, 31 Jul 2024 13:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VMrxPYkX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ABD1B1516
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 13:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722432605; cv=none; b=iiogwbDMrOu6JzOEKD3r8/9cTws7yHdPecwNoUnmH/7n1GrabrVO16shLnx41bPfMtAYmc0LZCEEHxNldO2T+5TP3posZHHcFmNViDJodLYXGdbydHeIKqoFtvxhHim52D4CKIjic/e1WCmD0S1+koX5KXRWDrviyK+Wft2aiAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722432605; c=relaxed/simple;
	bh=TryEV3yA8sFKaSQ7T/iEgFWFIg2FZ89jJhsb0Zgqbi0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZtMwTOH4lW+tVIL5AtOe/woKhsvMOBpR57SOcEafQ2WQpV+xH5bFhxQFeXc4ICRGXdGacoOoOtEXzhT8DF0XVfKW75iEFEfTgUWWWM+lUVbFmPbAgIBMYEO/WNKDwcVlVKbL4Jb7Dy8IxJhRtMacyxN/9+TmjlLsRpyGcA8EJJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VMrxPYkX; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52ed741fe46so6496432e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 06:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722432601; x=1723037401; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9LAEsWWHOaUu7e2ckya9k4oMqGrC/8Bo8kmjtXWGK3c=;
        b=VMrxPYkXxs9XESjVBGQTDo7FmU9D0B2r1wANyB2IgilvpkYxHRZtUxLOrH1ZqJpWgP
         mbpdW2X2OBo0VQdguq+2vdia2nXtPecspt2v/PlUknHAS7vCkChD9tPteDdw+Yei9PJk
         /2/MZqv3CjluyR1FJ1hQDZgfULzKuA+CxN86WJ5eJEDNrOGaxlWZkgI94HwzXjdpb+S3
         hCHFrI91NN4wsILGxELijBboCFAhIxuY9RXwRfV7kJWwryCxTpJS/PgVmIu/4gUyfDhV
         qgc5/7MAbjkD9vJmVNTJAbDtHbM+vSymCXzy0sxCo+mc6YPC62VlC7Zk4lNDBpyHhVzD
         OmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722432601; x=1723037401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LAEsWWHOaUu7e2ckya9k4oMqGrC/8Bo8kmjtXWGK3c=;
        b=nIR9J5L70ABJJf1LpbbGjzHHJNPaXgJV/9IZzULl3NV6Y4umco4RhrySomMCvu0hh7
         s5bijEIYxJqhkHYDvj4DIqQyihsd8tc+9BH+Y+UU1i5k9oPNkFbUrhzSTXHruK0jZoC9
         gILyyVeyXAUIw1RsQNLvuAJp+rJ25GFZHHGQ1MSQkQ1jRBijz6+0UECZUhKcXvFVYYxa
         zhTonnwV87Q+ynqciWxJpMycpGhrC7VP+5+1cwwL6MHBroDifTQDdVtzStfThJHWdyFv
         jzQJsJpCyhonrh2pkuEXLDntG3dABgA15ir3oMvnloS+gi+LnLiaNjHrsyUlFRpNYPFc
         UArg==
X-Forwarded-Encrypted: i=1; AJvYcCX+asGtuW8oUYqAyuIcsR1Cm6ck9b2sQFehxb5y0YaXFELJY0vyZS9E5pNqFrpcXbIaS45aJkaYWECx6+dnMMVUPGY6MpYEdFLT1Q==
X-Gm-Message-State: AOJu0Yw3bD7pLqLewkBzuz0EeTSEMX2V/P3pvmJyGHt25SJErA+cJHUr
	Kj5FSN4L0gmaGaZy+vvvejEeXfKN5T5mUfaS8z2AZhxtutJu4AaP2BSGId+d7pI=
X-Google-Smtp-Source: AGHT+IFhu3uk0FBLVkWyOnfiEusFw+fqZbcmDHLa23kO7nJ3nPVkV2aj02bD2oZHCvbGNofksWO2yQ==
X-Received: by 2002:a05:6512:b10:b0:52c:e556:b7e4 with SMTP id 2adb3069b0e04-5309b2707f5mr10695014e87.15.1722432601169;
        Wed, 31 Jul 2024 06:30:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bd0a6esm2278743e87.65.2024.07.31.06.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 06:30:00 -0700 (PDT)
Date: Wed, 31 Jul 2024 16:29:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, stable@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH V3 5/8] clk: qcom: clk-alpha-pll: Add support for Regera
 PLL ops
Message-ID: <5tzuitj6zeqpua45dzabpaaorx6q3x57eiipgrku6lttqhpkaw@zevn4bk6pi3u>
References: <20240731062916.2680823-1-quic_skakitap@quicinc.com>
 <20240731062916.2680823-6-quic_skakitap@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731062916.2680823-6-quic_skakitap@quicinc.com>

On Wed, Jul 31, 2024 at 11:59:13AM GMT, Satya Priya Kakitapalli wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Regera PLL ops are required to control the Regera PLL from clock
> controller drivers, hence add the Regera PLL ops and configure
> function.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 32 +++++++++++++++++++++++++++++++-
>  drivers/clk/qcom/clk-alpha-pll.h |  5 +++++
>  2 files changed, 36 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

