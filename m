Return-Path: <devicetree+bounces-60509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCD48A9831
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94C82283B4B
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 11:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5C815E215;
	Thu, 18 Apr 2024 11:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N7TBnTVq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B709E56464
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 11:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713438377; cv=none; b=nVjObqiGr8jbf0yZXKu7cHg4SkBVJOADwjmV7i9iIBqZX9IEe8f4JSp2eNcgIf+j/Zb7qfqVceK1hXZY38D+7GK3CEeoKdQCa9CHlgDtdqrbzYzG8dWE1496IKD7ZaqGJ7gVeo0+YEN6Oxok673MYkXBYtN6z+dSe/G8pYY4qAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713438377; c=relaxed/simple;
	bh=CiYAK71r1dKd1XBeQXn4trgSBWiLXMXsFU4bIEyKT/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sLa3KAnENrp7TthaLn5tUar16kUpZmoSlpg3JYhPYaoc5Ppl6+T9UL/MwuUC4DfPPSoW/Dpfq/njn8xbbftWWr68O5xC34MIWhDkeYcn/O6Ev1ZH0hUi2c7xinZHVzX+abXPlYod8LTvPHAOcV3WYBWWGMbzxALqTWI0xUurTIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N7TBnTVq; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-516d6c1e238so841387e87.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 04:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713438374; x=1714043174; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QoJVv2RWvbhhnx6gOF70bQ+Hht7rDXtw9zkh1pmPgSE=;
        b=N7TBnTVqOH3rQKnDlU9M7pV4dp00hfDdKBAN1Yr8WFw1bTf8Iw+HOSC6vR0X5FtmSa
         2G4N7RLk/64iOi8qp3aoIOizphLAJOiTY+66zsmmR0V3UxhRetdoXHcWFpm/EyIxxloA
         yrDc55OijeCgRtcNL6HiP6XysviRRZQdDwjbdjGnAop8FOSp/uGKltFGtVLRSWe+k0Bp
         Sg9FhGlpm9O3V+etVMIWhgxF3fr++JuxTUJOHxGMcvytxIhalI7O+yksC1jXXTNekM6z
         luJxCtDQp26sLlv+c+pJ4xwisCOobNwia9O2Zl2uYDFIiqC5wu1gSJilcf0nEEmSXXbH
         spdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713438374; x=1714043174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QoJVv2RWvbhhnx6gOF70bQ+Hht7rDXtw9zkh1pmPgSE=;
        b=l/TOWxg1gwKz9ITy3SWqkgdv2ms6C/qH0SzOyjOAzuAzHOZz5+nhinynQnJrYzBHGv
         Jaq0rV+OPisShh2S7Wq4pmiby1hjRU24FrQC/mgWEIkVVge7LaLXQJbcPR/tiYorD10y
         H/Tlx5SlINXVmYjUEffhKjWn+H+HXliDb7jYCi00uJBDMdgrXxxfHizQxx6h/VFUEo4t
         r3WcjkCWk2k3c2wNcXEhPdDBehoMQQDCDFFLvW/lwL/nRwwDSsEIWpduVHHrvC+eANTL
         i/wA7Uv2SefBvYaT+6cKhkkx+2j0VEeDb+vMzLvvgmVaFBiMB7vBFOIT+lRkmzkwtARj
         5WPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWD187uXEW8pjN38fiVVRpCNV6C7pGfK8PfrHz/8mZXiyhVUIOjwAu85YXri4Ocff1GC0fdnKsg2+aVcglhaMdMYREY36MqEsd8sg==
X-Gm-Message-State: AOJu0YwWevGTdAs4AubILExsILMmeGiKRyl5Z/ev8FOByi0An6h9fwJD
	LAfUor1eJtzePXzBfml+N2ZXNOWJ+fp/8YjANGLeyZmYLors4nXalhNbImW7kVk=
X-Google-Smtp-Source: AGHT+IHgHUXxxgO0WITTWXYfqenB1WfhObEW5gekCSgDerJnKgE92t/J5oVbQQuVVqEzZHGbF9DmSg==
X-Received: by 2002:ac2:4e44:0:b0:519:591d:45da with SMTP id f4-20020ac24e44000000b00519591d45damr1140132lfr.18.1713438373824;
        Thu, 18 Apr 2024 04:06:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id r1-20020ac25a41000000b00516c1fa74e3sm194631lfn.207.2024.04.18.04.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 04:06:13 -0700 (PDT)
Date: Thu, 18 Apr 2024 14:06:11 +0300
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
Subject: Re: [PATCH v2 2/7] soc: qcom: smem: Add a feature code getter
Message-ID: <s7mfapok2tvrp5vfm7dkrmyb7htgfucuuvry4shsl7vrxj7e6y@nosu2a7axjxo>
References: <20240404-topic-smem_speedbin-v2-0-c84f820b7e5b@linaro.org>
 <20240404-topic-smem_speedbin-v2-2-c84f820b7e5b@linaro.org>
 <mg6ojmzl3snj3k6fuyi6opkbdovs7xna6sn65pjh52ii4yy7u6@ny2spvjjbfpu>
 <89eccb1f-c527-4820-a084-7fc4ad3f0ab4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89eccb1f-c527-4820-a084-7fc4ad3f0ab4@linaro.org>

On Thu, Apr 18, 2024 at 11:53:31AM +0200, Konrad Dybcio wrote:
> On 18.04.2024 1:39 AM, Dmitry Baryshkov wrote:
> > On Wed, Apr 17, 2024 at 10:02:54PM +0200, Konrad Dybcio wrote:
> >> Recent (SM8550+ ish) Qualcomm SoCs have a new mechanism for precisely
> >> identifying the specific SKU and the precise speed bin (in the general
> >> meaning of this word, anyway): a pair of values called Product Code
> >> and Feature Code.
> >>
> >> Based on this information, we can deduce the available frequencies for
> >> things such as Adreno. In the case of Adreno specifically, Pcode is
> >> useless for non-prototype SoCs.
> >>
> >> Introduce a getter for the feature code and export it.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >> ---
> 
> [...]
> 
> >> +/* Internal feature codes */
> >> +/* Valid values: 0 <= n <= 0xf */
> >> +#define SOCINFO_FC_Yn(n)		(0xf1 + n)
> >> +#define SOCINFO_FC_INT_MAX		SOCINFO_FC_Yn(0x10)
> > 
> > This is 0x101 rather than 0x100 or 0xff. Is that expected?
> 
> Yes, this is "the first invalid one", similar to ENUMNAME_NUM
> 
> > 
> >> +
> >> +/* Product codes */
> >> +#define SOCINFO_PC_UNKNOWN		0
> >> +#define SOCINFO_PCn(n)			(n + 1)
> >> +#define SOCINFO_PC_RESERVE		(BIT(31) - 1)
> > 
> > This patch works on fcodes, why do we have PCode defines here?
> 
> I decided they're useful to keep.. Didn't want to split them to a separate
> patch for no reason.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

