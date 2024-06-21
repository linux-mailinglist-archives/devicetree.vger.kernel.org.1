Return-Path: <devicetree+bounces-78638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 872FC912F8C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7F921C20D0B
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F6D17C215;
	Fri, 21 Jun 2024 21:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wgizOFp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52B817B43C
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719005302; cv=none; b=LdTKUzjez25pM4+qfnKH32pT+6PwLZPgEsuXuwE1FX0UNwn593VWoibpwcJoG1AbnueRuCpA9J3UI3cSE3y9iborIoDwuyY7VYfKMQG7xZKz2O/jO3J8NutBFZ6HpWWw2x0TBWQ1zBXZAveEsFX2GfFjBv28/cRIjqkBvEg36Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719005302; c=relaxed/simple;
	bh=QKICx+L4+0gl4cYunnl2pqCV3ZKva8R72tLPn97iC7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qg+p3yWN4JvbmTSjPDAnrwF6J/pajfh+h1xCm3a5OggZqPd+Yp/SwlPxSrcdaC3QZZgCtXUFocU1cOtG+6X1CfA3vAiM5rvEnJ4xsz/ahJSO9rHMogDdMW08QO+qjTQSHHhCfSSQwfmpJ5tJLVr+70h9/wIBaFs18OrcCj14ebc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wgizOFp7; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52cd80e55efso2017560e87.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719005298; x=1719610098; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FNfh9eqLivelE30NW3XWDky/5KmKUbqvae0js3n99HI=;
        b=wgizOFp7ba8vJizjJiEFXtecYrdXgpgCtATk7WKHX4hoEZkkFCvq3TIF7vlT5L874J
         K9R4qu4x3XGl8Z9kkUb9IlqdTWcNS3XS4wD2VtxdYvGDxHYPh9iOk4aCtusBzYfoekyu
         SJeFJ+Mc+bS2uHb23D3/l1yrwLlpTdau+n3IBOYbmyIDGDwZbTrD9WGX/gCQYJGUDcvW
         JVE5gdOHjNY2IlifyvOR3eilluzFM7sT7UH99VR7wq5QwvaYBJZ34nHvlNXT7n4C4ruj
         rArswxD2vc8hJRx9wLmMNLd6/DJz2gUZK69c5k7BdWUSjMkrQjNXOglIOw4uk5/S1E1r
         ZpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719005298; x=1719610098;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FNfh9eqLivelE30NW3XWDky/5KmKUbqvae0js3n99HI=;
        b=Aoqv/BNOujunK7arWC/R38JS6DRMdO1eTX7CXTY5eKTh3GjBJ+jLNcQy41DS5IwvaZ
         CH6CNCAVQsWa+eJC9/53xXVkDIpiN7g5se8Uw4jA+IN649tPdkN6kWEVVMMkXhLShwIE
         bG/DOfvwY+3bQyzLTr3YRpeQavL0PGylWrzGPtF2JtclRi0AWpRkVqJpBLB9ze9DR+WD
         fFVev5xMQsubwE3woqLHiPIUxl9XToakru2T9dWXWpQgoHaoLugtBmx+vDIXkxN3MkeG
         tQpuOqTAW13qYeVfrn/0JWJtApgO3rWL+i4v/TX/7Ye8a3Ns6QghBlbNA/vxs7NPFuMg
         7jcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWseurUCrkBwtuGEf7AOb0Gu5y55ASoAaXbjiaRcJdsYjPZIqnqX3Ppx9CjlY6AKPcXT7vRgELdRXBrDZllE72OHahOqVzE3AyPQg==
X-Gm-Message-State: AOJu0YwCrdwGNuXv+8pWP+N/xxbyZUtnvZEWeHvjJ/N9DBXh76rU4NNK
	VKc8bnQZ2OaRX1uqM1a5UigzVi6mRE1k29fL2TE69mdY6Vp6D5Z5zcaX4WiCv7o=
X-Google-Smtp-Source: AGHT+IFbHcB/N0L7fWGBY3IjR8AOgKNY0bCWBdJGE1qunkXqouLcTvLBQ/FsVAGlZYSLG5mzp0CQcg==
X-Received: by 2002:ac2:5466:0:b0:52c:8075:4f3 with SMTP id 2adb3069b0e04-52ccaa36996mr6828296e87.36.1719005298513;
        Fri, 21 Jun 2024 14:28:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cdd8d8c50sm36121e87.145.2024.06.21.14.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 14:28:18 -0700 (PDT)
Date: Sat, 22 Jun 2024 00:28:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: sboyd@kernel.org, andersson@kernel.org, bjorn.andersson@linaro.org, 
	david.brown@linaro.org, devicetree@vger.kernel.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com, ohad@wizery.com, 
	robh@kernel.org, sricharan@codeaurora.org, gokulsri@codeaurora.org
Subject: Re: [PATCH v9 7/8] clk: qcom: Add WCSSAON reset
Message-ID: <jtsysqyby566kw7m4y3fv5xu3lmfasvpynh3nfqb2vtrgobq44@3zgftd7vljd6>
References: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>
 <20240621114659.2958170-8-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621114659.2958170-8-quic_gokulsri@quicinc.com>

On Fri, Jun 21, 2024 at 05:16:58PM GMT, Gokul Sriram Palanisamy wrote:
> Add WCSSAON reset required for Q6v5 on IPQ8074 SoC.
> 
> Signed-off-by: Nikhil Prakash V <quic_nprakash@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>

Three authors for a single line?

> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  drivers/clk/qcom/gcc-ipq8074.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/qcom/gcc-ipq8074.c b/drivers/clk/qcom/gcc-ipq8074.c
> index 32fd01ef469a..d382d16b9c10 100644
> --- a/drivers/clk/qcom/gcc-ipq8074.c
> +++ b/drivers/clk/qcom/gcc-ipq8074.c
> @@ -4712,6 +4712,7 @@ static const struct qcom_reset_map gcc_ipq8074_resets[] = {
>  	[GCC_NSSPORT4_RESET] = { .reg = 0x68014, .bitmask = BIT(27) | GENMASK(9, 8) },
>  	[GCC_NSSPORT5_RESET] = { .reg = 0x68014, .bitmask = BIT(28) | GENMASK(11, 10) },
>  	[GCC_NSSPORT6_RESET] = { .reg = 0x68014, .bitmask = BIT(29) | GENMASK(13, 12) },
> +	[GCC_WCSSAON_RESET] = { 0x59010, 0 },

Do you notice that you line is pretty significantly different from the
previous lines? The time has passed since Stephen has acked this line in
2019.

>  };
>  
>  static struct gdsc *gcc_ipq8074_gdscs[] = {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

