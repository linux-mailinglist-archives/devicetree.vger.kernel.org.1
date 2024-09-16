Return-Path: <devicetree+bounces-103370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A074797A854
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 22:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 492A02877B6
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 20:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9685E13D52C;
	Mon, 16 Sep 2024 20:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R49d04Du"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF696138490
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 20:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726518826; cv=none; b=R/vYhLu1wTYq8SITgMuSQSNukoaIm1LrodoPC8ofWSakb0FLUS0+vGSoKnfpUXcJhaBRFaS1tGDc5sHoeHMMELq7vhksgQZMlH9faleBZZ83XaMjsPmWfcroZTHLgD5+1fMRjrEhFbLR5qd51q/zwwlKkrV91FyDYc3Lja2AOO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726518826; c=relaxed/simple;
	bh=5TA47WiIrIdHSe3xcjU9Lqfg8ws6fqDEOWtYofifKZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ut9SNEHWVXnTBptR3QT3ssYUwfZOh2/V3n6EtDTrYFfSqUo/lvN3kArIjnsMxpf4uCoInmMBA1H/8INtPMcHyV0Rbsq1buROno0YXzzAKsNHVQJW6T5xLxqbvt7Lbq6pbAJ/YOB8skR90s8THKCTbwltOTHqgOdrBF9PJoxzYqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R49d04Du; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5356aa9a0afso5010408e87.2
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 13:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726518823; x=1727123623; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Yut24jaXEEyXf2W6luYkU7vtIEq+YITeP0mm4QVVNxw=;
        b=R49d04DuzfAJfqOQzkT1Vv8jRh2t/JYcMvt/RxrNsfvu3XsrLROgKIymyMtl4kPnLc
         LhtkjBC1ZJZ7M+qiO7CUstBRCYgYKDJha+yAjR5UJOIV5hlaCjq0qdfJG/O8rAlBrNHa
         7lAZo/yXLBY5iBvja4O7Yo2A/ZrAGrPht0XOlnjYn3SMXDz47O3w/HUlJqDdyfJqGobk
         fWuhLrpVb0KV1jzJL5KKlyrMMt0DpbBl3lynyKIvOcJLxzhw4JcVxBx/q/oZ6K5kqi0N
         BEEATgNtLHNFAGgGlTj1LRssB7e+xlf+CoLT5PWtUlxq4gbxR3BLCQe0rR9YxbbqAo3l
         OZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726518823; x=1727123623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yut24jaXEEyXf2W6luYkU7vtIEq+YITeP0mm4QVVNxw=;
        b=SmlFcwHuPglRDEyHsUpaSPuws8VGe9nJyB5VWV9hhPhXaCxP+fB448ruYOmHqK/BE9
         VBsJyv7ywW8rXzuvmjIntQHB5NjYw56rRSZEyWnzU3iXQqNjwFpx4DK8TLrMDnMSAHU4
         amNftQ6yZVq6DdJBaGb4/NSLzitw7Mo/X32UOuymhkngUfk0RbpLHTqbDjruHjKv7DB4
         nGhrKxK6Vqh320/ez5aCTwwopl+TsmjNyypm7ef73ksvnsGq1/2wQACMk0ryNGrZoKFa
         6GQDXjPZIOE5zwRdjheIE0UXk/0KwavpJsxjJFQII6RjKADkxMb3UMMjq1m98hVZbKVe
         tXeA==
X-Forwarded-Encrypted: i=1; AJvYcCXBPhtLy62qhUikNq1f+IYwxsQkImZc/fk5by0utCNqiUTWoAX/dj49S5e+fQW0iJ1+LDb45HPzC6VI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb6takMxXq7ZKsB6QTlWS2cWnN+E9u3nNuoloOX96AuLYULkEx
	aLmSWf9mNS2CSvAcF9U4zXgROrK+L2cn926MiajxsOzdMEfotChm6wVTAk1gNsk=
X-Google-Smtp-Source: AGHT+IG9vXaSNFzRABgfXln+bLUZnXnpxO3ZvNYLOdCVSLIxonM0R628q5CyjP8oU+JQdKKaIhTAYg==
X-Received: by 2002:a05:6512:3f0f:b0:536:7d7d:c621 with SMTP id 2adb3069b0e04-5367feb9550mr8405049e87.8.1726518821966;
        Mon, 16 Sep 2024 13:33:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368704685esm976445e87.27.2024.09.16.13.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 13:33:41 -0700 (PDT)
Date: Mon, 16 Sep 2024 23:33:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, vkoul@kernel.org, 
	kishon@kernel.org, konradybcio@kernel.org, andersson@kernel.org, simona@ffwll.ch, 
	abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_khsieh@quicinc.com, 
	konrad.dybcio@linaro.org, quic_parellan@quicinc.com, quic_bjorande@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: Add eDP PHY compatible for
 sa8775p
Message-ID: <t4ytnii3sdiqsni74d7qsi2c6uv2klwmzmgznnirt2z55to4hj@lyaoh5fzcyti>
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-2-quic_mukhopad@quicinc.com>
 <2hv2hcpbanduw4wg2wbza4jkze4sgilrtyc7zack23uygwsjol@ckskl2rkd5xp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2hv2hcpbanduw4wg2wbza4jkze4sgilrtyc7zack23uygwsjol@ckskl2rkd5xp>

On Mon, Sep 16, 2024 at 05:23:55PM GMT, Krzysztof Kozlowski wrote:
> On Fri, Sep 13, 2024 at 04:07:51PM +0530, Soutrik Mukhopadhyay wrote:
> > Add compatible string for the supported eDP PHY on sa8775p platform.
> > 
> > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> > ---
> > v2: No change
> >  
> 
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

So, is it reviewed or acked?

-- 
With best wishes
Dmitry

