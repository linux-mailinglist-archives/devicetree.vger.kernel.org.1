Return-Path: <devicetree+bounces-79147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC79D914235
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8716B1F2406F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 05:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF7618638;
	Mon, 24 Jun 2024 05:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AT3H1Pc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CF51BC37
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719207569; cv=none; b=rwUrn300V5QbUsVgiW3s+7ZPfTLAFD7dPxxKZ7QlahZZEpHG+HLN9CFNXT06RmQm7ECUTU3/PP9k68XYZLIAslPVPw3rCwRtU87cAQ/h80DXcGJO8kOfgt930xgRtC5VDFTsCzZ0MG3G/+g299MaNnGIWJcZp1u9cclCWOoLo+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719207569; c=relaxed/simple;
	bh=68opku4OyG6OmJwgb6WH++M2tbYDZdg7dZF2Gk20wkg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bcA0CUY4pMLqCjKIvaHizJJr7obl6zEEJeiFK1ny5lGPj1xiP0/KcHzuYTR8NmLaBmEK9LcPB6l4ratV3eLoTejAACDR1bLq5Fm97azEIv4dmbXPabQitxHWV//2kRk7SvfUMkrBInnStCk1OkAAyH0slNxE9z8stubpfqfgnq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AT3H1Pc+; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52cdb0d8107so2895642e87.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 22:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719207565; x=1719812365; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BSa3xTd57H9MrjDOBYM0uRtrP8SSrHpws0N+sRWwWEY=;
        b=AT3H1Pc+pOd4i9M1+SA5LdJQceg9EswoCnCLQVGpFV05+NoUsqefh3t0SWtow211RC
         y16eBRbzIs1hNAyvZPD9NeGFDYeEn6qvD+lhVjuZ5Sk3ulWcr4S/GmhlTTx8xeNcufrm
         HSU5PO/kBCKVb7JfOBp79pVPM8s8r0ACnMAJhQMNTZRC+tZiu/YWFzO2jwjPRupysY1s
         f3xjl3sxzrU1LTXsJUfSss1v9TNaF7woFvpVMmalBgV9evUZb608DUr0on1TZWkMwaD8
         dO+oLYy+zTwAewOgTICGlSQflkyajP0pIb3arMAthP/NbY9I5rr6OLIrHyZUU/c7ZvYq
         Ekog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719207565; x=1719812365;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSa3xTd57H9MrjDOBYM0uRtrP8SSrHpws0N+sRWwWEY=;
        b=Htqmo0+wWuxW8PN7DJOVBbhDKT6RY/djsbxKN491b4J/6XZwPv1lUTLlBHE1YpyFay
         2Z7at7wfO++ePR/Zs+NkRpORE3qlr/hCU37Yzsr4ZDB45GjcUR07AulclEE8M6rEQdxn
         JQwUt3KlL5XdcHmaaZn6LUZK2CKAlModzREdfjSHlu1oneeUvTCSnC94NGhda6ez1kk2
         SlP10cdO9dEwUKmlpiSGN89MMvLZcOamqSkoULLnA1f4r+uQRTyvt6RuC/4fWokTuB25
         6OMAXBiYljszMjtEOxBtrXY4luturxz2jXTCn4CEp90SatW9p7BWTDbyYjvZ0uJB4qxU
         mulA==
X-Forwarded-Encrypted: i=1; AJvYcCUGVR4eN0wZ6rPQslGjyvpe5nONrgEicfNtKmaDXJl1aJ/5gV/5I2lWwPMTkbTbF8hq4xVueG79zR0TqBwBvXipoF5F3X04O7id2g==
X-Gm-Message-State: AOJu0YyRlaQ+YC8F32gSL9iXQxCse/tOo0gxFa7eHmD0eUpWEVXWvWZa
	7IvoFCJiv64fYphf1jymdD4PoMN3klVKCHXLjWs1VFneZWtcH1UDp3lwBSF4R0o=
X-Google-Smtp-Source: AGHT+IFcbWt2iEMxFWb84NrSYaeoaf1H+jGCDGgH4AmthdWc7vARt5ywIshEOxo5cQDQxUNAQoIB5g==
X-Received: by 2002:ac2:5a51:0:b0:52c:df5b:fd9a with SMTP id 2adb3069b0e04-52cdf7f6657mr2579793e87.32.1719207565384;
        Sun, 23 Jun 2024 22:39:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ceb37df50sm26079e87.75.2024.06.23.22.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 22:39:25 -0700 (PDT)
Date: Mon, 24 Jun 2024 08:39:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com, 
	abel.vesa@linaro.org, otto.pflueger@abscue.de, quic_rohiagar@quicinc.com, 
	luca@z3ntu.xyz, quic_ipkumar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 6/7] soc: qcom: cpr3: Add IPQ9574 definitions
Message-ID: <vohhbc7al2wsozjkjzqmejz7jbiokxjbv3vgiysjwaejddvloa@xars5kak3t2m>
References: <20240624050254.2942959-1-quic_varada@quicinc.com>
 <20240624050254.2942959-7-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624050254.2942959-7-quic_varada@quicinc.com>

On Mon, Jun 24, 2024 at 10:32:53AM GMT, Varadarajan Narayanan wrote:
> Add thread, scaling factor, CPR descriptor defines to enable CPR
> on IPQ9574.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Fix Signed-off-by order
> Depends:
> 	[1] https://lore.kernel.org/lkml/20230217-topic-cpr3h-v14-0-9fd23241493d@linaro.org/T/
> 	[2] https://github.com/quic-varada/cpr/commits/konrad/

This should be a part of the cover letter, not the patch itself. And it
looks like From: is missing here too.

> ---
>  drivers/pmdomain/qcom/cpr3.c | 137 +++++++++++++++++++++++++++++++++++
>  1 file changed, 137 insertions(+)


-- 
With best wishes
Dmitry

