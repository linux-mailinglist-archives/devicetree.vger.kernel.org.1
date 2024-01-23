Return-Path: <devicetree+bounces-34160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D82DE838DB2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 798371F2349F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEEFC5D8E0;
	Tue, 23 Jan 2024 11:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V1h+dgnf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD95D753
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706010186; cv=none; b=GrKXRRBZZ9d/cakVAmjQyPtB6h8UXi64tyIEorn7Lp8ZhatlA3jfB5pHU1PuxigqIDI5UusSD+IULYeNBozz6UAv+hOAImrA5OnuILuNboiZco2J1RUMX0Ls5wDp9sOXPHSjcRAOJmwb9Z7lqmii7leGsLtJ0qR1c86NRQF95Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706010186; c=relaxed/simple;
	bh=yD5zgikaBnzqRFckUp4Iw29O6Q9Cu/bTBJbJ1D6g47o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YJL3vs7vT1XIlPkUi1Sa7Kh8scBC+lDbEYhjL10ZRjEdcYXSiFIOXpAy4q8G3qeqk2J/1oVo+Em3MoxUCOIdm2Z/qGapGDq4FyiwabTNsjOsnvZqFSS4kuU6snaCOcSIFm+qQ68k8/6Griinjoaowk0oHPrnZIEulF1SA/Tq4do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V1h+dgnf; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a2a17f3217aso397948566b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706010183; x=1706614983; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rCBz3mYv0AakBZqsbV887sBgjYgjKky8SqdijPrpvLA=;
        b=V1h+dgnfOmdGp+fkvd/vqG/nSF2tHTDNQjcgkv+N4qbtZ55BenntJPRZxPifaAvYMx
         D/4XwKXBS/okr2bG5D2R5r9HG1eEK3XbLEz8N7SQH3HPbvvlpGTZ2a0HHp1M14+q5eFG
         kZmvq3J2eRWJJqVcNYHEA0W+HJp2EoDZZP3bGM3byOYK2av8hloVDIo8fa0W/RbAvpY/
         0yEOd2ZuVr+FuWXw8VmZ4dzR47mDoXYFqV4NgR5LDBymZpLEfMbVt6LDvMSdAiOEPT/v
         c7jQvWjtOPfAw2CIAXl/kRWM36ug8dLX2FW8CgUq2dwQqbyYtJ3QiQ7vfxTijIPGEC02
         3ByA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706010183; x=1706614983;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCBz3mYv0AakBZqsbV887sBgjYgjKky8SqdijPrpvLA=;
        b=fptiwHFNdp4C3VE84WUkksVJR7jfZKF91udg3V0SP0xvIpLF2ceF7xPQ91UKcn42RK
         QuOkokda1k0QCgpUFDQLTV0E4M39f8tZ5Tvty0LMKvW89FwyebjG98K0Gm06d367RpDo
         ooyydJoZTTD9uW2lrBxI72GBRmgl9GCAdSkNh5b+3zMBQzvUvhWD1C4Hj0Q4y4qkQnjc
         HkHcqM0lRIegu8sEnXgIiXwvlWJBkJtl+PYRuh3OS1f5SjABiWHTybHPTxou/peZz4O8
         /f8+Wd4XT6daC0FIfQ8IQ58ds8NOJWtfU+XPcxPrjDpTDBOdgbwiFw86/nD5dxq3OvKr
         BLPg==
X-Gm-Message-State: AOJu0YxMbMSDUUJHvT7PI9IAmRVBp9KF6/QYFVWa1mTTqQ1g+XeJWYGo
	Gxt6M49tkXqKlisS9+mlj+p1Qz4meYqfPi/5fUqrFFiBKyiyhQXn+168GT01niA=
X-Google-Smtp-Source: AGHT+IFyov8dO82PiLmNVMmgfIb+vNpzx5fstoBpC7KEjzuH7yt3y/nlkS6ebQk5bLYliqGYMX2O7w==
X-Received: by 2002:a17:907:c001:b0:a2f:bf0e:ed99 with SMTP id ss1-20020a170907c00100b00a2fbf0eed99mr3629890ejc.86.1706010183301;
        Tue, 23 Jan 2024 03:43:03 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id tl12-20020a170907c30c00b00a30abba5089sm730935ejc.206.2024.01.23.03.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 03:43:02 -0800 (PST)
Date: Tue, 23 Jan 2024 13:43:01 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH v2 08/10] clk: qcom: Add GPU clock driver for x1e80100
Message-ID: <Za+mRZD0v6zNZ27r@linaro.org>
References: <20231214-x1e80100-clock-controllers-v2-0-2b0739bebd27@linaro.org>
 <20231214-x1e80100-clock-controllers-v2-8-2b0739bebd27@linaro.org>
 <fc6f8e78-f704-4104-b3c5-bd10627c33b4@nexus-software.ie>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fc6f8e78-f704-4104-b3c5-bd10627c33b4@nexus-software.ie>

On 23-12-15 12:40:45, Bryan O'Donoghue wrote:
> On 14/12/2023 16:49, Abel Vesa wrote:
> > From: Rajendra Nayak <quic_rjendra@quicinc.com>
> > 
> > Add Graphics Clock Controller (GPUCC) support for X1E80100 platform.
> > 
> > Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> > +static struct platform_driver gpu_cc_x1e80100_driver = {
> > +	.probe = gpu_cc_x1e80100_probe,
> > +	.driver = {
> > +		.name = "gpu_cc-x1e80100",
> 
> I think these underscores are very unnecessary and subtractive of meaning.
> 
> .name = "gpucc-x1e80100"
> 
> > +		.of_match_table = gpu_cc_x1e80100_match_table,
> > +	},
> > +};
> > +module_platform_driver(gpu_cc_x1e80100_driver);
> > +
> > +MODULE_DESCRIPTION("QTI GPU_CC x1e80100 Driver");
> 
> "QTI GPU Clock Controller Driver"

Again, please look at other platforms (SM8650, SM8550, etc).

> 
> ---
> bod

