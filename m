Return-Path: <devicetree+bounces-56813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8638589A8AE
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 05:28:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAD222829B5
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 03:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C726B179AE;
	Sat,  6 Apr 2024 03:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uUtJQrSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0929815EA2
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 03:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712374100; cv=none; b=G4ZKlGgzqljkMsk+7lifCvwnpv324SoMw6JxzPfaQER+Ht2KBDXb3/7jrWJq7uiybsCMejJ4nLFo1synTkxLgiTpW3MdO64kmKNunmXJ/iY4otmZTqsBzJrGCMyM5gvzwBMBz0D00BFNzRWUbvBbXnFe1LYbu3H8Osb/1gc+0+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712374100; c=relaxed/simple;
	bh=fAFJor+9nJNmD/ci6us7lxxXXzZRDsJIO9AJ6zvVSk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNTuxFWq+qAdRWw5/j6D6PgIefK60EwWZsd1X1qX7rWGk6UfjFqXxskgbTPlBviNF/5wB4Rm7/P6owOcnqlCYFin/o+fjU2Xd/no6aAt44E+fmS4USal7xlWCSZT88nnNeB+bsbeIbv/0gbM1Ul6ibqVMSe06c6VHTdSpHkZcpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uUtJQrSK; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d6ff0422a2so32876421fa.2
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 20:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712374097; x=1712978897; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jfuelYCmVaPnXJqTFgO1Iq+D/XgR90NTWOrZt+9baK0=;
        b=uUtJQrSKjh78/k+ml6qiSoZU+5hzkIuaUYcZkip5yLwQOSc2zBQxslOKOxFTK2ud90
         BEZzcHC24R/HAnr2t2KJfFMtctNhVtCgzwahjFZYyOEMaHeI4hbC+3pJLcUv/SONQFfA
         5UiFIlF88jMTZgPYH5FSu0yMyeypODjdBL+yLWpfxc2GZpx9WocufBa9u09oRS22RYeY
         GVOXqTEDYMCwxJCiG4TTIWU/tucM9YEWTHNelSu83Fj1THGEgtFRZ1dgvlJCbUEhja7b
         7odYC0cbVegykaDVbpztmrjZuBI/p9ty+WkMfjAsUg00dEy6SCsYxD0ZOTDWfdkWvq9H
         Pyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712374097; x=1712978897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfuelYCmVaPnXJqTFgO1Iq+D/XgR90NTWOrZt+9baK0=;
        b=FGx9+mBYEVsCyw38n83FPUUyNJ48z1EM1xJ892206KFGyVLkWAzQNCzCoeIrPW5cen
         U4uhK7h7n6g7qS1myPlnPKKRYdVDZIJA5wo8JxXYlsorMbGzk6ih4nKl/XTIHu25G0mB
         m9yux9NjGhSmilVYPi9J9h1OeNWgFnOC8dsDtOEkJirb9FAU6zLLwWcHH3XnE1eOyVj9
         su02L5TZDdp+Ji5ZSb9jXAltltEo08A1OyBka1Nxx5/p2G8pGjxfC65Wkmmjvc6sVkZT
         O+lnf/+HgHP2UEZf+cyrNuF4ACYlfYtzpigEevCkj9dKO4JYBfMK93JwZrARtGuUIZYj
         oGYw==
X-Forwarded-Encrypted: i=1; AJvYcCUnMrcHna0StsptPIxW3IZ/tStMCdfGkIV9rP8Qto2iJxnKqJuavohdORzSLNM9/FR8BZclI+rycSCLoXHeXtG55Qd0ZfjVD/JQhA==
X-Gm-Message-State: AOJu0YxLWrwEJdowU0gG6jyN/DslfCfG05SBPvydaUrCpb50h4O3Ukyg
	EoMIxlAKIm/XpBbIZjMbIWboQqKEdDvdXmvfUhs5BEHqwprwp19rjKMNgYHv56E=
X-Google-Smtp-Source: AGHT+IF3i8+vhLbIjnsL8VphQV1PmaT5a3qc5xWE3KaLEQtmXPGg+H4Zi7mDhaos0rILE6f8KYcCbg==
X-Received: by 2002:a2e:8704:0:b0:2d4:1fa4:9eb8 with SMTP id m4-20020a2e8704000000b002d41fa49eb8mr1830431lji.40.1712374097096;
        Fri, 05 Apr 2024 20:28:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id n6-20020a2eb786000000b002d0acb57c89sm333260ljo.64.2024.04.05.20.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 20:28:16 -0700 (PDT)
Date: Sat, 6 Apr 2024 06:28:15 +0300
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
Subject: Re: [PATCH 0/6] Add SMEM-based speedbin matching
Message-ID: <wrvndv7ybn5dcnd6n7d62luwbogmjjsvqh6i3ow5exc3emqexk@n6b4bkydy5n7>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>

On Fri, Apr 05, 2024 at 10:41:28AM +0200, Konrad Dybcio wrote:
> Newer (SM8550+) SoCs don't seem to have a nice speedbin fuse anymore,
> but instead rely on a set of combinations of "feature code" (FC) and
> "product code" (PC) identifiers to match the bins. This series adds
> support for that.
> 
> I suppose a qcom/for-soc immutable branch would be in order if we want
> to land this in the upcoming cycle.
> 
> FWIW I preferred the fuses myself..
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Konrad Dybcio (5):
>       soc: qcom: Move some socinfo defines to the header, expand them
>       soc: qcom: smem: Add pcode/fcode getters
>       drm/msm/adreno: Implement SMEM-based speed bin
>       drm/msm/adreno: Add speedbin data for SM8550 / A740
>       arm64: dts: qcom: sm8550: Wire up GPU speed bin & more OPPs
> 
> Neil Armstrong (1):
>       drm/msm/adreno: Allow specifying default speedbin value

Generic comment: as you are reworking speed bins implementaiton, could
you please take a broader look. A5xx just reads nvmem manually. A6xx
uses adreno_read_speedbin(). And then we call adreno_read_speedbin
second time from from adreno_gpu_init(). Can we get to the point where
the function is called only once for all the platforms which implements
speed binning?

-- 
With best wishes
Dmitry

