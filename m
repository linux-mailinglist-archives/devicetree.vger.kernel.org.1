Return-Path: <devicetree+bounces-82782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB674925F45
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 13:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 720BDB2BA74
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 11:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0713D18F2CC;
	Wed,  3 Jul 2024 10:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HSZOWUmE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D486173352
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720003675; cv=none; b=uceDQgvWrIkqspyX/3wF4H2RwYWATjYJPSP6VbBm7ivxq0t5cPOKJDRcrnfyTCC4c7q8QM3Ezx/+rjCK9suFpPXOiPH9zncy4LibZrNgWA7DU3qxvwWvGQUdd2luFx6c724tEw3d1KhdDnyXMChZfGQLvps0eGPX6cSxzLPaa7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720003675; c=relaxed/simple;
	bh=01G1pCytU+7SWaY/3u+Qzxh2xZaUlir+V/W2sHUjBqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MdBl/Tux0hc0DAStmsgHow7eOPgI7QJ87OhSu+MR7+2oLhw4XVrMsZuvMInQkBUyGBBfs0w2eebYepF6eaE9wVaEkRxbMuzSTpjXeT2WMKqLgI5W9/i32ZvpVIai3Aj7c0vwDZXEZ3NNcTuraBlIVNNcr9X8pQ3Jru2299bL+cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HSZOWUmE; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ee794ebffbso22436481fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 03:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720003672; x=1720608472; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ItCIIIiziChPhCOCEfOTFCxIJ82TW8GsBOIDZjYAJ5Q=;
        b=HSZOWUmEAb6oxpKwziU/kPphExVsK4lhs+nWUQuVfPqNnRjj/K79uCJLrICXF/bxD9
         bE2+6CtlW0Jt9D8iFDz4YrOSVV2PDNt7GXtb/HA16qzuTFy2ppsppa29+0sqVqX/z+Pb
         9Jq59f2tGoMkBgtvtEASyGeGqA09qoGi2KwvK+upM5i6twfYXSmCpNFTMQUNDbQDjCoF
         tjTnPhA1VFg/C1g4VYRYrGQ0iR+V/JMrE5+lpQvEhXg5/U8mWiYiYXy015SusYfsVaVQ
         Tov7sBF5ckQDsdQq3ICq05knOvIr3kSa5jC2INtnRDB+yrxO4M7XgMDJp76IcMW0PCs4
         dNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720003672; x=1720608472;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ItCIIIiziChPhCOCEfOTFCxIJ82TW8GsBOIDZjYAJ5Q=;
        b=SSZFFlPULPoHsRsst3h2WwoQM1qguoL+14nkzeiS40JpEy2d1lpBlt6tmvGYcPo1cJ
         gyw8EVlTOQ3dD1hI5cX000kuEiM1J6l/KPjQXyJLbdZ0jGMvCUumO7D46Z3eQaT9wEEi
         Pe3QXnBvD2QtnhVEOvbVEW/g24qEH4529C5QAUVYRjjBhstSkfpRdqVmxYz902lAjo8h
         jC4KAkuF7EGvi4z5p0dbMnh4ny1sTQnektYewu09IptoYUEYiHrSj9FIfWDJOdXmDBUM
         SG18cZ6WZlri2i+i1coo38f6usgKPoPyOZRBCbVECqLeFME+Sk4zD2yZNIxQXF1zyPGM
         Tjtg==
X-Forwarded-Encrypted: i=1; AJvYcCUZFbQ2Y3vszNuuxWpeUfNSifNaSRXPo7g7KjMkPiF8lzdYIGBnQriBmJr9+h724wTcCCT2g2w1bOiHvKrUa76WkLrIOewG53jBZw==
X-Gm-Message-State: AOJu0Yyv70u4jymAohPyYQyRruFILMg2jMXbAvF8PoF0729dkSNPhjXI
	WaS5IyelwVmihSUIA3gntYjli2WqrXEdOy4hwK96/gBbnA7WZgik4GPGAItwfR8=
X-Google-Smtp-Source: AGHT+IE6CE7xpIX+0IQwttj20HEBnFz7Lu+SN0XSZ6PShDUihi0cxPxFHl+I4G8A5GSb+1RuP+rBJw==
X-Received: by 2002:a2e:910d:0:b0:2ee:866c:bfce with SMTP id 38308e7fff4ca-2ee866cc235mr8095881fa.35.1720003672541;
        Wed, 03 Jul 2024 03:47:52 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee516803c4sm19527651fa.93.2024.07.03.03.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 03:47:51 -0700 (PDT)
Date: Wed, 3 Jul 2024 13:47:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, vireshk@kernel.org, 
	nm@ti.com, sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, angelogioacchino.delregno@collabora.com, andersson@kernel.org, 
	konrad.dybcio@linaro.org, mturquette@baylibre.com, ilia.lin@kernel.org, rafael@kernel.org, 
	ulf.hansson@linaro.org, quic_sibis@quicinc.com, quic_rjendra@quicinc.com, 
	quic_rohiagar@quicinc.com, abel.vesa@linaro.org, otto.pflueger@abscue.de, 
	danila@jiaxyga.com, quic_ipkumar@quicinc.com, luca@z3ntu.xyz, 
	stephan.gerhold@kernkonzept.com, nks@flawful.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 02/10] cpufreq: qcom-nvmem: Add support for IPQ9574
Message-ID: <a3uw7f4rxpiakofjeqrqqaopvuzfwhdtiexigfoqyj233qmpbc@dlhlaj5namff>
References: <20240703091651.2820236-1-quic_varada@quicinc.com>
 <20240703091651.2820236-3-quic_varada@quicinc.com>
 <20240703101944.tiyaweflcs6nkx4p@vireshk-i7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703101944.tiyaweflcs6nkx4p@vireshk-i7>

On Wed, Jul 03, 2024 at 03:49:44PM GMT, Viresh Kumar wrote:
> On 03-07-24, 14:46, Varadarajan Narayanan wrote:
> > Add qcom_cpufreq_match_data for IPQ9574. This is used for tying
> > up the cpu@N nodes with the power domains. match_data_kryo is not
> > used since it doesn't set genpd_names. If genpd_names is not set,
> > 'cat /sys/kernel/debug/qcom_cpr3/thread0' causes cpr3_debug_info_show()
> > to crash while trying to read thread->corner->last_uV as
> > thread->corner is NULL.
> > 
> > 	Call trace:
> > 		cpr3_debug_info_show
> > 		seq_read_iter
> > 		seq_read
> > 
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v4: Update commit log to include stack trace
> >     Introduce qcom_cpufreq_match_data for IPQ9574
> 
> Can I apply this without other changes ?

It will break CPUfreq support on IPQ9574. So this patch should go last.

-- 
With best wishes
Dmitry

