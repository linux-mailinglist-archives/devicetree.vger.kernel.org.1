Return-Path: <devicetree+bounces-203175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94032B2032E
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:22:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58B9A3A9CFD
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6992C2DCF6E;
	Mon, 11 Aug 2025 09:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PnXipBWe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBB3242D95
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 09:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754904128; cv=none; b=nKiGoiI6GsoEz01H2ARQ3BURBcFsFqG4gIgWLR9jm7rGU/nLGZAGGt3zS7DAszJiEWsYgXskA/gn510qHWRWYxXOgjkfsK57hCqLwJPxSsRyh5wRuJ6W9PCp0Ir1bfOcHxS9Svp1ia0n90voxFKKoHguVKTNOY40x1K/HSJ7LDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754904128; c=relaxed/simple;
	bh=K/zPVqxGg7tPN+JbH7RDbuwnwSJKsZfgYcJ/y4119IA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bmeFQLuNQIe5mIwaTtyTu5CQMVvx46gC3cojZbv4pMPvftJ7XNrrtR914txo/1FIGn9tflE5QNmEU46bAgwVW7c91R1sBlytpA67URSmGliQHPVmpxFbI28bE/yYEtSox9cWO5PXqLJeB3z7swmsSYJ/2cLkzuGLKovmOqMdfQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PnXipBWe; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7425bd5a83aso3374617b3a.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 02:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754904125; x=1755508925; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n44ROEDa3iRmjIj2E/S0tuIP2QaLePXT+HAKtrIXfuc=;
        b=PnXipBWeA2oYugnfcYMhifxpADIJqd+BzdtR/6Btms/qY7WjTCaCaTLicn36cZCZtp
         SL6URDZief23E7YUR2GB9QKopMU7aWlVEWBTPLRVDszIDU04d90n0khK4r3RysZWVTdv
         H2CrOc2bByNGC7n8+yVXXoemyInOdZCrLLzUbvOIse1HYoo7tuM/MQbhg4fY2AM1ZLTU
         c956F3p8roLky8nVAD6fRssdntkdUilIWe6SJdiI0xPJGXFr0I1X/Twi7B+vT2y9tpdE
         8Dvcl3sFEQur2SELjc8TBmyoY7NaCN1B+yBYuEWtZ84oCSW0PgNsMTxsknebkW+H0Nyt
         OcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754904125; x=1755508925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n44ROEDa3iRmjIj2E/S0tuIP2QaLePXT+HAKtrIXfuc=;
        b=JtEfgv5KHEyLAKdF8KMfZpj96pnrsObsI90/hqj5b8n6TB1uvnZno9Fz3AC4fujtNh
         1dTJO5n0GMWz04RJ0UPJ4DEE+V5g8kkhfp1yOMnhKvEA3HXpyGbJh0FVFI4jg9c5X+G9
         53sb53/YqGTWoz9Ii98cZi7KNj6KzSKkr+EZ+7eLCcnMZpJgoc+nJPZa3szeOI824NXm
         IsNXQWH1l/1RWFz8kS718utXvRw7Wx/kUGP9GQmbMd7e/2mwvWNa1LECZdDBpYloaK1m
         lMBV2D2Uy+hVCVbIFKZzyj2NfT1ehVo5Te4t5mBsK0biQUy0p96feE57/heZXF6C8C1r
         S4yg==
X-Forwarded-Encrypted: i=1; AJvYcCVg+Gt/ybmigQ30hrB1bDkCq6oCzB51QL80xY3PAaGGNzPLtAX18ls7Pj39Uf09QJno8YSqxuepo88p@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj529nTejftqnDGjf2/TBx9MuwI6P8j4/WyJj4Wqh+nngRUKde
	OtZvln3rIK4pyLwdxz7SCZA6dI36JKcRVSspIe6EMg/pgL8xAH3f8gpaG9c/ein3Bjo=
X-Gm-Gg: ASbGncstvPsr8BonVhtUKjgg4mmleUKshvVwXYWZY28WdFnK21kl6qsUWe6NYymornc
	3GJBY3yOoQfmaEQvjV861nnqx4jrGJiUMDRTmLbLowPZe1lpy6/Kcq2X+mnKpCMjeUKlRYqsmbF
	fV1RDZQGx4gDSzN1qZqIEcQGnS2pbTiw1D6a3g0aIV5k91FhvmXImH5gyUpZylSWYhcTNIcLmHx
	tBCDOB5VRN/mH5rVLW/GFH/Uf6nkuhximvwKG71nAIcCEYO/0P9I7kcILmaRWsutSdLzAGr+3AT
	xucLI0inLJeb2/AVzu1MwKTwxOOl3kElLpJiuYPABznZ8hb6tlz2oDhNZPAl4mHHPooIFHXRPYr
	GiE6pOL/lma5qtsEi1EZmcm+C
X-Google-Smtp-Source: AGHT+IEY0nvgGQRFqL9yezJOvWADh1/cHUUmKJ7QswLrUeIJdU75UuZ8LO0U21sJdWveXkp3OX6rWA==
X-Received: by 2002:a05:6a21:32a3:b0:23d:de52:a5f0 with SMTP id adf61e73a8af0-24055204322mr19749640637.42.1754904125252;
        Mon, 11 Aug 2025 02:22:05 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b423d2f5035sm20840763a12.39.2025.08.11.02.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 02:22:04 -0700 (PDT)
Date: Mon, 11 Aug 2025 14:52:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	konradybcio@kernel.org, rafael@kernel.org, ilia.lin@kernel.org,
	djakov@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	Md Sadre Alam <quic_mdalam@quicinc.com>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 3/4] cpufreq: qcom-nvmem: Enable cpufreq for ipq5424
Message-ID: <20250811092202.auarwnyoagebcw3o@vireshk-i7>
References: <20250811090954.2854440-1-quic_varada@quicinc.com>
 <20250811090954.2854440-4-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811090954.2854440-4-quic_varada@quicinc.com>

On 11-08-25, 14:39, Varadarajan Narayanan wrote:
> From: Md Sadre Alam <quic_mdalam@quicinc.com>
> 
> IPQ5424 have different OPPs available for the CPU based on
> SoC variant. This can be determined through use of an eFuse
> register present in the silicon.
> 
> Added support for ipq5424 on nvmem driver which helps to
> determine OPPs at runtime based on the eFuse register which
> has the CPU frequency limits. opp-supported-hw dt binding
> can be used to indicate the available OPPs for each limit.
> 
> nvmem driver also creates the "cpufreq-dt" platform_device after
> passing the version matching data to the OPP framework so that the
> cpufreq-dt handles the actual cpufreq implementation.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> [ Changed '!=' based check to '==' based check ]
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: Add 'Acked-by: Viresh Kumar'
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 5 +++++
>  2 files changed, 6 insertions(+)

You should have dropped this one now, as I already applied the
previous version.

-- 
viresh

