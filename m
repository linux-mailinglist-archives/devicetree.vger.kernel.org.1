Return-Path: <devicetree+bounces-97884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC759963F9B
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 11:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BFA11C20EB8
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 09:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6EB18CBEC;
	Thu, 29 Aug 2024 09:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s6XX8EgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376001684B9
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 09:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724922837; cv=none; b=rej5wC4pL5S3UJ7Wc2N7HZaNfkH+dFv63WrXV/R42YIoBjzlOdY2ds7xFrYfWYbtLhdhRbMDVCwVnPVcBeDHfEg5bYzjT6Tlp1T/5NCZcla5r+Ztx66Q51JA9tdqW+YJT7o/w1BazzgEXydG2w+6OcRXAzZ7fH97LpjHBdsN5JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724922837; c=relaxed/simple;
	bh=9z7glOF5aQ8L7P5cXcuB4MT1+GrbVwchTlGtyPbx4sU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jMTE6g6nuMo1wmM2FBBBMtBjqML+8lp19junB34Q6nzplmThP6IMQAGq2KSUwv06xuy6Z9X43jDV2A/PlpfpXuygBTyzdA7xO8uWWfywYM/5puWVUu/D5cCAzrlK2Ta8lUA25wYNWhb784Yw38fajuJ6iOELcb5p1gggiVEV7G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s6XX8EgO; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f40a1a2c1aso4162991fa.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 02:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724922834; x=1725527634; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lE8P44IgEXQgLAuKYiFf8e2mPh9BhaeyiUVSH7zzHfY=;
        b=s6XX8EgO1aWClV0VCCx/AgYjHJrLlAL7X462GWiqpvZcKkMWTfJ+E0JuaM0UN2n9VN
         b1qTX2MvhcLSJ9gaEtUnd0GTt+gSHDi6WnxVE71ONiA1D/vlNrAbJDPUcxFEJFY+hUOJ
         Q4+hVlODb/a10XWs30noRp6cfmVkQLKQVXeTPQJdCgMg+jMTI0b88B+Ev8dU2TIIUkVZ
         S8hK3ClTRb1r0zrTuwovdaiQKtJ2epVSGCY0QBOgPVVtg3v/Pp5tmEKDC31BzYJ4I+/8
         I2YCwX4Z9J0ngQerGWIf0/cdeSOZ7trp8fKKaYKtFfz8D5xbADTx+nrGVEmnTa2Jc/US
         6R9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724922834; x=1725527634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lE8P44IgEXQgLAuKYiFf8e2mPh9BhaeyiUVSH7zzHfY=;
        b=mCbmc04WMZa1FFC2fcpOUCSqLXLPiFX/pVRSFXNN2Nj+CfLJKA3IbbZuxfvZAA78/K
         iR+620SNNnUftwv5puB0WPHLgSSFOrsozfeAr/XbDuGzOWmny58jXoHTK9LhfJS3B6tv
         3i4zVnXd8dTFDc3zcbbry+uPPTR2pn9CS5ksz302V2XpNbYq3z+d2y+FxTrBtlpPpTgl
         +hFpI5AQj1l3cJTat8fxduZFURNrbD1w7vH5E/Hhd+nF/3EcuJteMyOQcMRRl8Je6qZ9
         UrgxPR6fH8T7WwNijY3WRPJBvN/3glnrYlgc53FCy8/Ta4x+rhi6+amZ68TyU1syJpJ1
         6tzw==
X-Forwarded-Encrypted: i=1; AJvYcCU+ALxHq2M17ZAAlV5PeKjKWtkkjaO3trYyvbFRHioLAF3weE/8EFUy8ibOKMfBgVQ+bJsvLhhDDSrn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmr00wgz0PcIo7tlDiC19YQJM6GOiToLsPmouxsWtcuHNxYXVU
	oIyY0v27Tlb3L9EKTcJ86vmX90mOObQmlm+udJ+jN5nSOapE4ZqDMeYGGom/XLg=
X-Google-Smtp-Source: AGHT+IEDf7R6Hp7cY8yLxdcEzp/MjRBM1Q8yy0a+0DWnkq+fkdeuUHk+jFQ0G9E9ZjsvU/viYUuW1A==
X-Received: by 2002:a2e:be8d:0:b0:2f4:84f3:120d with SMTP id 38308e7fff4ca-2f61038c67emr19018551fa.8.1724922833704;
        Thu, 29 Aug 2024 02:13:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f615195484sm1235281fa.137.2024.08.29.02.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 02:13:52 -0700 (PDT)
Date: Thu, 29 Aug 2024 12:13:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: quic_dikshita@quicinc.com, Vikash Garodia <quic_vgarodia@quicinc.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 03/29] media: iris: add platform driver for iris video
 device
Message-ID: <zfltcl5x4hol2foftyvr4oigxus4hnequd74zi7bdd7tsdv56q@3nphukr4zgmm>
References: <20240827-iris_v3-v3-0-c5fdbbe65e70@quicinc.com>
 <20240827-iris_v3-v3-3-c5fdbbe65e70@quicinc.com>
 <74126160-57f9-4abf-a26c-3491c8f3dd78@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74126160-57f9-4abf-a26c-3491c8f3dd78@linaro.org>

On Tue, Aug 27, 2024 at 03:08:03PM GMT, Bryan O'Donoghue wrote:
> On 27/08/2024 11:05, Dikshita Agarwal via B4 Relay wrote:
> > +static const struct of_device_id iris_dt_match[] = {
> > +	{ .compatible = "qcom,sm8550-iris", },
> > +	{ .compatible = "qcom,sm8250-venus", },
> > +	{ },
> > +};
> > +MODULE_DEVICE_TABLE(of, iris_dt_match);
> 
> The enabling patch for the compat strings should come last - if its first
> then the time between the compat add and the last patch is a dead zone where
> things are bound to break on a booting board.

But then it's impossible to test the driver in the interim state.
Moreover enabling it at the end only makes it hard to follow platform
data changes. What about adding sm8550 at this point and adding sm8250
at the end? Or enabling qcom,sm8550-iris and the fake qcom,sm8250-iris
now (and clearly documenting it as fake) and as the last patch change it
to qcom,sm8250-venus.

-- 
With best wishes
Dmitry

