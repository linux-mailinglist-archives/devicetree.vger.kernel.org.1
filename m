Return-Path: <devicetree+bounces-168895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5391AA94D57
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 09:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4402C189275E
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 07:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5826C20E717;
	Mon, 21 Apr 2025 07:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p/UBuJYS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA9820E037
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 07:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745221209; cv=none; b=sc1tFG7NRDOlF51nsfNRRsuZGYUgw2zKFPSaU+bjjn9q4xm+EKV8wgRSWcUmtY/sHy2GZj0u/QiH9CHIDKOKDTzj7gOM2gFefvqOXt3iaL1tsQxU3lN/nWqLpp6Ehh70cwFg0qtaStwBSB0HMiKYGQCrMiRkPUBlOJHX9LgXEtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745221209; c=relaxed/simple;
	bh=PeBXLRAj60k68zJj9ooHApuMSHQU/cTihkyhBpXJI2k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aHpsSsAuHuyemo7npiwYGoTf2oNnX1jAVfmcvTjBdUTmpbsfZ0GFiyTZJd4VIculs7hJmHWQ370i2moDKEpsbYNFL/GwI96zXfvZ5y8AgfzPLUFwVoFnp9yQtNK94fF3z5ATfDP2oFcIeV8P8x3SDtTDSU2D0hvUbpF4YzTbBzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p/UBuJYS; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2255003f4c6so41712915ad.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 00:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745221207; x=1745826007; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KPWuv8niOHztMFrbbmt1uYkhWaXjAx35JzxahYfmqQA=;
        b=p/UBuJYSoz5y0zr2srUZMsmDIJ7ERTrlw4bwx4FF46ZVeFy0odZMqHkqYgVzjbQIEk
         LIloTkmxTK6jRVnKoNb/OrqURe17x0gWmJudvYao3FuY7GKfD10wl1onyzY50lWhFmE3
         LttLh3scodjgyE+6UoIyuh3lDIcY9bu9g4ctc5AkCzffjUseu6B0ae4EqMIzim1tSCGD
         3OLjfaETYT9gY/zBwvuTc/GNE+UbhvL5pMd8xdEg/Kh8MCO/CQGYXdrNvr/5CKG+f7G9
         Mp9u+K5eC4VZRcgwmoINDIFvw+InKrniQEBk8CGVe+so20xRwQzglLLMiyLnZr/G1uYo
         4w6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745221207; x=1745826007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KPWuv8niOHztMFrbbmt1uYkhWaXjAx35JzxahYfmqQA=;
        b=qAL0RsIRF20edSjg03aAD042E06EBspvcOQamJjMxplB5E37S9CcKmIsVGeQ2y9+Jb
         71abzu0EDuezEZaoK/R5z9WX8mBkERsnaR2NwGV7UzP8BeL/9dUOsIn9L4b4xTosY/gS
         UznF4PLbpvrP0akXbdYnVLGCSgc6kY7V3L+GqpumAoeEv5OPLNlmmJE/XA27mvOBPM4b
         K86yyTSrPyZzm9AGtFl1d0eX9/yogYMjtCtf6zXb9OZmvQsyVmq0E1noX9WhFJXuwX9T
         skjP4qH16Df6gHS15JvjnCll/l/j0VyRkjl9nLvHWBg2mdPDCzBG4OW8Y2k25IjJnyg3
         6q0A==
X-Forwarded-Encrypted: i=1; AJvYcCWFPLTRhLOLoELLL9PSpaFqfC1gSqpXgcYQ+d+hO2byZzZ3j9nfULgAV4Ze6Qk6ceytZzOUz2qTFvnS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjl/gbzc+ogfamzEus0NQyzxGLHyieddX+hZTQsalvgayNf9hH
	KR6pYRF+SqBH5YdN2C4RVfxidgttY2AotgsoAFcoPj0L2WdSnvvlHScl8gEpDBY=
X-Gm-Gg: ASbGncvIW9X31AMYM8JdAQp5bXkcEFUZ1rrdoSE1yfRVZ+So35ffj8fJOIN5Xh5fitK
	q5K5uM5yFzj+YnKHkwIJxLOgFEZTfNQEHJZ6di4AJ1OXOdewfzvTJw+J7cH7UyDHATXhZzb6fv/
	vWMm8wAc7waIQCA0bdE1UKwfGYbv12wqM5OmxlIv5PV+nAiX+hpPDFm3mhynMFZs6ftbI3Wqypt
	aJqQopz1fyF7CM6UUnBtuE/gklG9GffRuulf6Hyt2G0Qfumtoiot9wuIxDiQkCu/q7r4j38SLfl
	IR6tByRyeDX/ARfw+RoPnlIXI7dV6ybUjsYHpjJiNg==
X-Google-Smtp-Source: AGHT+IFEQar7NeS6q6JkNznSin7X+7SGrcyiO8UetGUcotpj5g8KPklv9xVoi2zS1Z22WYAGg4pCjA==
X-Received: by 2002:a17:902:c40b:b0:221:331:1d46 with SMTP id d9443c01a7336-22c5356e4a8mr129549315ad.2.1745221206749;
        Mon, 21 Apr 2025 00:40:06 -0700 (PDT)
Received: from localhost ([122.172.83.32])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50bda4d3sm59679655ad.47.2025.04.21.00.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 00:40:06 -0700 (PDT)
Date: Mon, 21 Apr 2025 13:10:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Praveen Talari <quic_ptalari@quicinc.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org, psodagud@quicinc.com, djaggi@quicinc.com,
	quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com,
	quic_arandive@quicinc.com, quic_mnaresh@quicinc.com,
	quic_shazhuss@quicinc.com, Nikunj Kela <quic_nkela@quicinc.com>
Subject: Re: [PATCH v2 1/9] opp: add new helper API dev_pm_opp_set_level()
Message-ID: <20250421074004.yttb42qq4p5xzi3o@vireshk-i7>
References: <20250418151235.27787-1-quic_ptalari@quicinc.com>
 <20250418151235.27787-2-quic_ptalari@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250418151235.27787-2-quic_ptalari@quicinc.com>

On 18-04-25, 20:42, Praveen Talari wrote:
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 73e9a3b2f29b..a9bca9502f71 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -3151,3 +3151,25 @@ void dev_pm_opp_remove_table(struct device *dev)
>  	dev_pm_opp_put_opp_table(opp_table);
>  }
>  EXPORT_SYMBOL_GPL(dev_pm_opp_remove_table);
> +
> +/*
> + * dev_pm_opp_set_level() - Configure device for a level
> + * @dev: device for which we do this operation
> + * @level: level to set to
> + *
> + * Return: 0 on success, a negative error number otherwise.
> + */
> +int dev_pm_opp_set_level(struct device *dev, unsigned int level)

I would rather move this to pm_opp.h as an inline helper.

> +{
> +	struct dev_pm_opp *opp = dev_pm_opp_find_level_exact(dev, level);
> +	int ret;
> +
> +	if (IS_ERR(opp))
> +		return -EINVAL;

Why not reuse the same error value ?

> +
> +	ret = dev_pm_opp_set_opp(dev, opp);
> +	dev_pm_opp_put(opp);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(dev_pm_opp_set_level);

Make the changes and send it separately (or with the series, your
choice), I will apply it to the OPP tree. Thanks.

-- 
viresh

