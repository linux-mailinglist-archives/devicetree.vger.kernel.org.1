Return-Path: <devicetree+bounces-122189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 445409CF0DA
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:00:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 096A228931E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F80D1D5AA5;
	Fri, 15 Nov 2024 16:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qQCE61+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D571D54D6
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 16:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731686414; cv=none; b=pA60j6OfQ8GU5iSQEdTqIFsmI9DNC3yx+4tH6Z5odK1SWo4p1Jm1MzIwzEOfDop1ecD+W05vcz/yY8C8SFBuV0TTQ0VDdUyYIALnqqBBuwa1oIo7wYbmSK975xxJ7M5boaEe7qqD0spnoOLEtVorN0cItk6NAJgnjaTLPH59ifU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731686414; c=relaxed/simple;
	bh=EuU3FL+szVJHLV4tZSKxX7MKhBx3f3MWhDCsqgir82I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Stp0QQYAsI+zn/IffVlqvumte2jjhPBPv7jlxyHJw1k8VmMmRCf8vTGzbpP1uDA4cGX4kUP+1U7sPcc3/WTQvpSbXr+dCGw4KVCrEUkafYIzARoinHkaYH+qlbBevxT2lo/s1PaRGPV8fX3AOOhDCCGDOg0d+NE8AKsNHdgT6v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qQCE61+C; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53d9ff92b14so2128305e87.1
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 08:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731686410; x=1732291210; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RaLAKrQweplwqb8UavNOcgrYMHAr/FPGjJ6BisEpYTI=;
        b=qQCE61+CIVzMJAx90evYXVz2LQw8ezf2wHn6ruJIRwAPLsJSZP1EfaPqnPiqB1iZst
         aQg+S0HimXjlU6WDU4bmIblIF+ijTd9v4h1DZJBgtc0Z6IcIr5ihiBMN1+q47DlJY7ul
         iyxEzXNubtrf7Cf9m16zxYqtzcQblzGaR8lhPOk67t3vJQSHwLMwPJ1xt23nBHHEpILD
         6rFicYGT5SfxcSYa3PwTV4L/QYI9XwpKbVFDIyofWVOovwqYTR7eVBSmH2Nalo7RvK0D
         jYIh0Te38rRI3wey/KgFjEWbSs+jxm5g1nAJP1w9WO3tYWA2KLDEsWChjgI+MZCsPuLO
         BnRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731686410; x=1732291210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RaLAKrQweplwqb8UavNOcgrYMHAr/FPGjJ6BisEpYTI=;
        b=TAMS5UeDoujY3fKlIYysx9BBlebtGRPsGsejam745WQ0hU+VJsV/6k3covaqxORKzK
         eEEicDVXmu1RHJzapdQEMElAKdA7D44fTkqV9iYI6nqEiOXHgjTMAlShBfaYU+LGZFP7
         vU1cOIIB6NV6jZn9l+xtDc3I8js5f+Bj+JId6NLtVaw5xTDXM47EdrGpPrz3g74Ra1YI
         Nttqc9n+IzcT0ZY9ng3K2sos8aLesJYIisNNTiEQQWU4LAcUVn+Ec5VJedRmhpcTvPYn
         yHrFs35i5LBRF7RylnUJdsL7uiq4vK5bDUfL8SVdCGc1TeqogZjRguyySOZNVeLO3lbX
         kNPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUM8HjDuuZ/gHJQJ6PKbUKKSnjweFuCPzwbOnEdggkDGCNqQhZ+SfUNoeK/0mq8+ZHqevXwfC+HKE26@vger.kernel.org
X-Gm-Message-State: AOJu0YxvEyOGu+L842oK77w4Gd1Dc/YYP9kA617g5wzqGap0oGuzOuMo
	q0m45WL8UPUIJjssNGmDfYw44pFqb5e/bdbrSeAWNvGKWqCxHnsHouT75QSIbSM=
X-Google-Smtp-Source: AGHT+IHzBxQ6sjTh9N3GvFMNODCImPz+3AydoFwjZjWQMctmEJdU/TK280ahRieoU3Ew0RU+LJLeoA==
X-Received: by 2002:a05:6512:3b82:b0:539:a353:279c with SMTP id 2adb3069b0e04-53dab2a7044mr1720075e87.28.1731686410231;
        Fri, 15 Nov 2024 08:00:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da64f8cafsm609701e87.54.2024.11.15.08.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 08:00:08 -0800 (PST)
Date: Fri, 15 Nov 2024 18:00:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] soc: qcom: socinfo: add QCS9075 SoC ID
Message-ID: <c4i7fashqxyenkkywjx5k7hteznqv65cgn7o4v6xls7gvrahrf@buyzke62vzo2>
References: <20241110145339.3635437-1-quic_wasimn@quicinc.com>
 <20241110145339.3635437-3-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241110145339.3635437-3-quic_wasimn@quicinc.com>

On Sun, Nov 10, 2024 at 08:23:36PM +0530, Wasim Nazir wrote:
> Update soc_id table for the Qualcomm QCS9075 SoC
> to represent qcs9075 machine.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
>  drivers/soc/qcom/socinfo.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
> index 805dc3c4de40..a473d85bc033 100644
> --- a/drivers/soc/qcom/socinfo.c
> +++ b/drivers/soc/qcom/socinfo.c
> @@ -451,6 +451,7 @@ static const struct soc_id soc_id[] = {
>  	{ qcom_board_id(QCS9100) },
>  	{ qcom_board_id(QCS8300) },
>  	{ qcom_board_id(QCS8275) },
> +	{ qcom_board_id(QCS9075) },
>  	{ qcom_board_id(QCS615) },

I think we should sort this array in a sensible way.

Nevertheless:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>  };
> 
> --
> 2.47.0
> 

-- 
With best wishes
Dmitry

