Return-Path: <devicetree+bounces-127873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C099E6921
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70E901883A86
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27DA1DED49;
	Fri,  6 Dec 2024 08:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LEHB3Yfh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0132C18A6C6
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733474343; cv=none; b=Z1BU7trsFkX3xLoP/qZzSYPOWPSNPSBMtkvGavz5PA39RNxjp1fF9jktJzo+txIxpEDuWGBcwneUS9SjZqTk9owaCxumrkzms2h6nSV5Gu6REgDPtFyk3aUI2IgX2OIwUCvHCjYl/W4FEqKDW8m+Hezkur7rN2NhMLWkXxYcAds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733474343; c=relaxed/simple;
	bh=CbzbQCOtdOjN0raEAF8iseTHj/jr2mmJa+ApPFP6pOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ExKhGEEb9Rsre6f57DTvEgAmQ/gzCw3WuwZZyWKx6do1rWB1uxPg3QVtkwPKldOrB2KofEykUxJ1p2/xyNrWyPjxNL8KD2/IskRMWvBfIM7yZ0rB/GZ/uABvW2AmvtzysbK5UQ4BI8KhCKuwWJzwfr4sNC3cDLhtNX1JXXUKL4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LEHB3Yfh; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ff976ab0edso18400921fa.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733474340; x=1734079140; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2pvfFf/6NDNSMoinPIggBLinWMjnUSRNWqgC3AbSwgA=;
        b=LEHB3YfhPIlY+waYLjnjFx85bCTwjDemhDoOD3uRq30N/C3gGCZRp53u+pe7cUdxky
         vSFiY50KGt8U/h9r+YeiGQxzdmeZVwBqHNfDmovTBtbVXI9dlcyR6WocRjKWxXoO2zUX
         kcEsrohrKmMDyptVBGLlAoITrjI7zSN7dwBYaJJ8sFd1ProlNhGyujay/PsWRIWgo+Ln
         RLIBG/0IyvZ8soP7Gyq2fQiTHpt3T5eGYpHZ4g/1IESXXeRaGeHr9kaWbylelPHsEcQq
         9l1qMjh7M/XPUdYkkXKgLTyfhjVMdo0LVypNB5fecCuktCV+UUsjOtBApl9Ocm2AeYsB
         fM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733474340; x=1734079140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pvfFf/6NDNSMoinPIggBLinWMjnUSRNWqgC3AbSwgA=;
        b=Eyd4XcaQjw7Aw8YjxWlMVPP4buYIC+wbgqsojnkxSOC5Ab1ToLU1XB2H/JYTB8ilEQ
         MlklY39jSknsuI0sLxFphIy9SCV7DwMg6y1hS7e/GQhJfCRrrOC/hBt7rqkGNfBBn2pQ
         J/0i8hsAIShCVs8ljrYHfZS5DzMh7TuCaHe7BgSJp/YMwXYywQ5wEmzYB0pNko+adiOM
         pJdZc0gsZOBy5giCWd15iGr+1cXpCUYjy6u1GTYUUcaVgF7RIARZNOrI1L5y99eyVrHk
         tUgS68vcOasjxc+bpbDkDh5uW8kiYtaYcQHC848xoFRnG+bf5axJMRRrdFvZ9DIZFwgl
         yilA==
X-Forwarded-Encrypted: i=1; AJvYcCU0PEQVQt7UKQRP3dNLWiuhQih7RQzqglBHSRcHRW7TTHyuK8PAZay4YxfmN3AxzgmPQdLiOPMS525u@vger.kernel.org
X-Gm-Message-State: AOJu0YyYtj8jXwpyga1ampUYPhiXPiS2DAfycStQUxH4HUm2nJq/Kx9Z
	odl6XVZARXjkpiYKkmjKKG7DiNa2gqYm0XfO1nU95+c2+QK6J6w0ml2JQmM6tDBMXtlp5rriKH1
	T
X-Gm-Gg: ASbGncvVcvpyVQFJyEcttDI19H39eck9ezCq8R4/Su1okg0TP6f3cKtuBs/DNlxy/ss
	UFmV0sOi3wMwf4p+HKBhZhPR1FY1oMO3Q6kXLvuK0jK6PC6wu59mSl8FkpwcbGMvz5Al8VEUncF
	xrenncNzEXJLlj5CstK7bPmjrbH9cefrgXvR9dH/Q6TdS80+P3fTlqUqNNkjBW2BozXvNcPcS9/
	zxqVeh4iMr7F+ul9EK7nEaw+NitXj2E3clwJkYBt7mWahhwo1XqbHXA3HCUm+UvGrA4Rrf3loSb
	s/7axu0/frry/lxuMsoTEKtNZHD4cA==
X-Google-Smtp-Source: AGHT+IF6jOtbfo5h6K0/IZgJWEqqGaGGkKnUPirENty8sxWRk/6JZs4RfsdDJScIMrUIWenQ2Ic/pg==
X-Received: by 2002:a05:651c:886:b0:300:2dc8:41c0 with SMTP id 38308e7fff4ca-3002fcf312cmr8313101fa.41.1733474340135;
        Fri, 06 Dec 2024 00:39:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020d858b4sm4111111fa.4.2024.12.06.00.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 00:38:58 -0800 (PST)
Date: Fri, 6 Dec 2024 10:38:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 02/45] drm/msm/dp: disable the opp table request even for
 dp_ctrl_off_link()
Message-ID: <pouqn275ajaerpicruqepijjs4zuteid3ocqyczdja6o2zhpwl@dt3ckyixmzrf>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-2-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-2-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:33PM -0800, Abhinav Kumar wrote:
> dp_ctrl_off_link() was created to handle a case where we received
> a cable connect and then get a cable disconnect without the corresponding
> dp_display_enable(). For such cases the pixel clock will be off but the
> link clock will still be on. dp_ctrl_off_link() handles this case by
> turning off the link clock only.
> 
> However, the vote removal to the opp table for this case was missed.
> Remove the opp table vote in dp_ctrl_off_link().
> 
> Fixes: 375a126090b9 ("drm/msm/dp: tear down main link at unplug handle immediately")
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

