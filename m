Return-Path: <devicetree+bounces-90815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE609946DDE
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 11:17:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB3791C209CC
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 09:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82AAA21350;
	Sun,  4 Aug 2024 09:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFGsWleN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0355210E7
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 09:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722763033; cv=none; b=Mw49U+jEJ+MiJZyVuhztjkxJsqEKC5/ZEnwWrVduRlLh98yFc9kzqXBa7lNeB69KoDq0GDa5Bv/PJdoe18T0oKEqCBNRFd5f6fFsOL6QbIdUEBkgHFoAFBjtyqgKjcI47NKOhScOtdbiOoGwgBW/V8XukrQKbc6h7hLyGm6sW5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722763033; c=relaxed/simple;
	bh=8t4KkhEqwa8vESWacxIB0ZboE9iO2+3ko0q2paQ4RL4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kRslLGKakdpRs3FNBYySiLTXimlK99Dm2m1hbt8fsBAqSJC7mbS4UqnBMf/vtEl7Z5h0HjWDAtL/sqWKrOLxAd7oaKW/97DB+Stf4elX1+LLenuY6RMjqMePzn9shKJFS+9+dvHQivDgUCeOUWVq/TYVzILYFZt/tA1ox68vpZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IFGsWleN; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6510c0c8e29so77359267b3.0
        for <devicetree@vger.kernel.org>; Sun, 04 Aug 2024 02:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722763030; x=1723367830; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mwig1T/GI7J6NZajQWaoVMnmbX4imhd/r3iYNF53W6Y=;
        b=IFGsWleNSnPNpVpwGrPUpZj7iCAzjkklZfxK9bCkcnmS7VB4jf6h+0XjXMGyVl50H6
         28FAD6whFjSzEY6KEgvQQGHczcFbkpGRh1t3D67v9jrLCTb24QH+M7W6k9WcT6x/uE90
         d8Z5mnpXCg4JjoqneBomYVpJIJSm0aCVb6IBHiiuBV/eq7oBpd0Q9epWK/1Ff8jNHOyO
         3W95E01znQh6qCXexkrY2+M+QR77icatJULeYG4IOYleyCcnHVLS6LGPXs+lohLWiWsA
         /n16I+Y+0n89258pyP8BzS576johplzLIvvbZbHOK4HajdWKBlTpWu/Ak1+DdgKDR4zv
         KMeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722763030; x=1723367830;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mwig1T/GI7J6NZajQWaoVMnmbX4imhd/r3iYNF53W6Y=;
        b=TL0HepkgjcrfLom5Jv3excI/4J8Ci0xF1IQ8VvqdWZ6KxXQIomFJEmhqRajTQQ/Wxy
         ITnG26sjSd4/VQ04UtJbmCBIVp2pRsEGSN1gkXN98/ZWLnxf3mKTpntYVaFrvkLcK9qN
         dy6oiCSHWKxK4hf9tYgNsejbFDAAt13iwzZ7OvqrNcAIBFtX0LEyGrWRXrfOz43pY1OT
         tL/7ART9JhAlSpNguopuDnKgzrxVJDD/al+1t7DegR9E0QFgcTJcdAU2P1tJJILiXt1x
         1NMdVWwj6qgWtiA0zGsxrYyuG4MggljM00xsfOcJ5nxA/x/w21firtelSMJ08eLplJow
         6q/w==
X-Forwarded-Encrypted: i=1; AJvYcCVSGJ3diHrHf0H8MSId1q7qNGQkV7mbds8bEpCrsfCtukJox7PVirrodDDRyWos0AQ4252L3mZY04umJT4/WlTX7mEu6Bnha18lUQ==
X-Gm-Message-State: AOJu0YzPkIWYaJKtEk1yb7y7rhsu2iITPfVpO+zTV8F8awTTERt3fGwt
	hPg5RhR2s1kTWTSkdpD+ONY/3SArEUXEWVqYpH31KEmsJHg6BQqausu+JFhTLPHR+VSUa+9UBru
	hIPve6Y/RYz/3q9D4NP+zpIppNwkstvHH039tCQ==
X-Google-Smtp-Source: AGHT+IEjvRALfHiK20+HqWr/VOyns/i1THpuPrDOhczyqEMfLwxtq9r+VorCam7xfy5I9cowlh1ysHraCKWf6o+C75Q=
X-Received: by 2002:a0d:c247:0:b0:644:ffb2:5b19 with SMTP id
 00721157ae682-6895fbdbd45mr94218977b3.9.1722763030652; Sun, 04 Aug 2024
 02:17:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240804-sm8350-fixes-v1-7-1149dd8399fe@linaro.org> <202408041643.qHy043eG-lkp@intel.com>
In-Reply-To: <202408041643.qHy043eG-lkp@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 4 Aug 2024 12:16:59 +0300
Message-ID: <CAA8EJppbLUvSyq_AEh4Cw4ZOf2h=2-A3EuG5SPuhc2RDChWMFg@mail.gmail.com>
Subject: Re: [PATCH 07/11] dt-bindings: interconnect: qcom,sm8450: drop DISP nodes
To: kernel test robot <lkp@intel.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Jonathan Marek <jonathan@marek.ca>, Robert Foss <rfoss@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mike Tipton <quic_mdtipton@quicinc.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, oe-kbuild-all@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 4 Aug 2024 at 11:50, kernel test robot <lkp@intel.com> wrote:
>
> Hi Dmitry,
>
> kernel test robot noticed the following build errors:
>
> [auto build test ERROR on 668d33c9ff922c4590c58754ab064aaf53c387dd]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/clk-qcom-dispcc-sm8250-use-CLK_SET_RATE_PARENT-for-branch-clocks/20240804-134328
> base:   668d33c9ff922c4590c58754ab064aaf53c387dd
> patch link:    https://lore.kernel.org/r/20240804-sm8350-fixes-v1-7-1149dd8399fe%40linaro.org
> patch subject: [PATCH 07/11] dt-bindings: interconnect: qcom,sm8450: drop DISP nodes
> config: arm64-randconfig-051-20240804 (https://download.01.org/0day-ci/archive/20240804/202408041643.qHy043eG-lkp@intel.com/config)
> compiler: aarch64-linux-gcc (GCC) 14.1.0
> dtschema version: 2024.6.dev8+gf13c181
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240804/202408041643.qHy043eG-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202408041643.qHy043eG-lkp@intel.com/
>
> All errors (new ones prefixed by >>):
>
> >> Error: arch/arm64/boot/dts/qcom/sm8450.dtsi:3055.31-32 syntax error
>    FATAL ERROR: Unable to parse input tree

I see, I had this patched in my tree. So for sm8450 we have to keep
backwards compatibility. Please ignore sm8450 patches.

-- 
With best wishes
Dmitry

