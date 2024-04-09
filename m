Return-Path: <devicetree+bounces-57580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DE189DEED
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 17:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66AD71C213CB
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46081131BCF;
	Tue,  9 Apr 2024 15:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CoH2ukWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C82130AC1
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 15:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712676259; cv=none; b=e0EmKhk6lFTykXxrHCiub4ZwDnESMNZqv80z/9RC5wkzE9tM9dxQdxR2NJFz7jJs4dMt2z1VsmYkmhesmmLOSgS2FqaOATqs4EoJ+gwbdb4s7KyB6DDbiBCqOb8h02K35MYOs4+PDWNQdw1nNxPj60NdGgEasz8JOMLlQ9WSRUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712676259; c=relaxed/simple;
	bh=GKUqmsCQggqe9TQ/VlUNrNyugz5nzNQPq9eDIJoV+WM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rRhL4K106raAGAv8Q6V0w0JA5w7Ul7w9Gg/bwjOaMqvPDjANZGwhYZuukJGdy+9W+0dGMGLjVY/bktOn5iQi1n+grW9yJPQYlBz1VJqGmmlpAfx91HRQBJCMc3kW9JQrsfCihJGrRWSGXnf0OfI8+91im8IcDmu8TDN0WHBQGXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CoH2ukWX; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d858501412so73453461fa.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 08:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712676255; x=1713281055; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8W6G8HZYeo1iMSpifmT8ORYKphiMz1er5wWw8HHvUlI=;
        b=CoH2ukWXoeRc/jBCSDg5sZYs0epXkB1+m+AcX7VZjsXjakoIOpkHOcFWYvcKumcvFa
         eN+4FlQutMQT4qcLJP0b5nOE2vI1v8IvVSLMKbwu5KIhbg4OkCOz6OtdWi3EwZASczws
         7tCNla750U9E7rMILRCLs19pXRq4bUG6BYUqyxtnJy75qG4svw8UjPm318bs5Nxj5Cn7
         R05RsZH3iHm0Stgfyd3/ZtAkMWzKWTmsfASNquMHlVfIeHmObIFb2HNUcXOKzNTUNKCF
         TwV0JZN8nvr09/Z8bjFZGOOq+Ad17IJxQ55FUDxICHZT3gMWrcc75MrFu/d0DmncUK2n
         P2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712676255; x=1713281055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8W6G8HZYeo1iMSpifmT8ORYKphiMz1er5wWw8HHvUlI=;
        b=cml319nxy8OoMsEm5i6110k2ofNLDwcMx5jADyPavyTGbDRd29sfo8AAkGzk8qawC9
         c/6RbrW4rxBUq9jQElP8iA+ww2dizATgSKI3WWDF6gZa0gnPVaHQ6E98LWzH1tI9ZViZ
         8IkCa+p5wzk+0XZSJ0wBvYU2sI9EQoWEpanPYDnfIyD3+xL+4j2lp914q9T/UaMMwSoM
         cAQlzsa5IvJxnX35+chUuAs6wV4RhOe03tBYwCpOTJwDkcS4qebqdBtRlq51X93jZOlQ
         +DITQEuW8kQxWR5NSAp/zs7ulAWEOFrXZN1/RoqtnAJ/Ea7AfDqDfFSi/Iz2OPVVC8af
         oXxA==
X-Forwarded-Encrypted: i=1; AJvYcCWCJO/W0SjFmqStOJzLBfvZsfJhoUzUXyOGtttTWN5G+OUYX7pjEdE/ARCia2OlbaKlibHWT+H7z0XLQIGkTsBBKAusGB7obI3TcQ==
X-Gm-Message-State: AOJu0Yxfvl+3l9YYzStV62MFDtpJRZyMjvKFxX8WlOLqsxRsWkYvqpT+
	sAzRJfwMfWyiy4KFfaSGRQ058EfgjMZsfu1/Cuc2IMTa4hun9P8qo/i8XInntKM=
X-Google-Smtp-Source: AGHT+IGgmNyquLws0Qkisav6dI35WAm8hEi+6R9A8E+K+p3FMjpmyYxLBNTdF+Phz+qzA9Iy+M4e/Q==
X-Received: by 2002:a2e:7807:0:b0:2d8:3a46:8ab6 with SMTP id t7-20020a2e7807000000b002d83a468ab6mr83703ljc.17.1712676255409;
        Tue, 09 Apr 2024 08:24:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id s10-20020a2e98ca000000b002d0aad9dcfcsm1584958ljj.59.2024.04.09.08.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 08:24:15 -0700 (PDT)
Date: Tue, 9 Apr 2024 18:24:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/6] drm/msm/adreno: Add speedbin data for SM8550 / A740
Message-ID: <4ghhtxjtkfjzxeyrajn26get4d6xiq57swwsjmyialcyfivui6@se3ukxxukspt>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-5-ce2b864251b1@linaro.org>
 <nek4paofg3hturvjwpa2bnsvmicwmvwixzr6e6iuqstemgrqyo@cagcrnzjsne2>
 <0955cabc-fc4e-4790-a82c-7f6f807fe36b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0955cabc-fc4e-4790-a82c-7f6f807fe36b@linaro.org>

On Tue, Apr 09, 2024 at 05:13:15PM +0200, Konrad Dybcio wrote:
> 
> 
> On 4/6/24 05:25, Dmitry Baryshkov wrote:
> > On Fri, Apr 05, 2024 at 10:41:33AM +0200, Konrad Dybcio wrote:
> > > Add speebin data for A740, as found on SM8550 and derivative SoCs.
> > > 
> > > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > ---
> > >   drivers/gpu/drm/msm/adreno/adreno_device.c | 14 ++++++++++++++
> > >   1 file changed, 14 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
> > > index 901ef767e491..c976a485aef2 100644
> > > --- a/drivers/gpu/drm/msm/adreno/adreno_device.c
> > > +++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
> > > @@ -570,6 +570,20 @@ static const struct adreno_info gpulist[] = {
> > >   		.zapfw = "a740_zap.mdt",
> > >   		.hwcg = a740_hwcg,
> > >   		.address_space_size = SZ_16G,
> > > +		.speedbins = ADRENO_SPEEDBINS(
> > 
> > I think this deserves either a comment or some info in the commit
> > message.
> 
> "this" = ?

I see two types of speedbins here, it would be nice to understand at
least some reason or some defailts for that (if you know them).

-- 
With best wishes
Dmitry

