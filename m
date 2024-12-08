Return-Path: <devicetree+bounces-128270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A669E844C
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 09:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EC051884A38
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 08:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E832814373F;
	Sun,  8 Dec 2024 08:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wrbc057U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A4E13C9C7
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 08:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733647900; cv=none; b=KRaFzdttykXSF/k5nwvWTgZ2RSEGlZsp8bmY7YjlhiQ3FXbwhwCXHEGEliK/kA/KB0PnNtPVUTIaWseRyPf9VVqaj8sElBYT3R0o1Q57dqzcIaOsQ0zIW82cHX1wuCeDEqGUidFQshx7T91a0+Wbhx97ajlY0GXEFFov5gDahhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733647900; c=relaxed/simple;
	bh=vYgydQqr1VLEhPsnbpJ8DT0BEmdJ5iq6owBvdPG8TPo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wco2lkZV5iJeLw0iKWI/SRb9tJ0+rB0SwKcsLQiuuT0Fr3wGTqnw/yfgQ/O9LLI6dNI0y36Ho7E1L3NZZyoaraMc3DfUR1B6CmDjfyUVCNEVBiFvqvUTdsCB3+0qViuz0STzKTA6EdUJrT+wSCnCBShfYeWf1Ywq0XO6gDnQalE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wrbc057U; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53ffaaeeb76so607549e87.0
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 00:51:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733647897; x=1734252697; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uhNcbbr16rCA3/JeSUAsY4Iitw9SPQbHFYkFe1dOMAY=;
        b=Wrbc057UusUlAU3tJwyCbN9Eow9bwh0G/WxSTRLgTrDlBD5E6lCRIOFKt6zPv1C2sM
         W76bLywekJuo0q32KpX9AorKgGMoO0tkkri//UpNqWcXBD1LnMus4TURmRaJgQiNX/4t
         tnxYNC53n81W5id7ANyR11oMjNaP0amRuZiS2nqsjtxR/wpDc2zVwb2cAq3/k4mKyygH
         DMN1rpFw7AKHje/zfyhbpT3rgxBXqxS2rppY91cDXTWSf6Ggn35M/O9AnQg7viTP8vGg
         bG4iPMFk9YEqJ9Gf0c7olW7TOc1YDHageZ0niYhJOrPXMCuHGmCvOid9p4T8b4X0pdlW
         /n2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733647897; x=1734252697;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uhNcbbr16rCA3/JeSUAsY4Iitw9SPQbHFYkFe1dOMAY=;
        b=gblj/QHIckqvS+2huliNSNhNc1ZN8oiKWysqL4cnpz8dEeljH05+VFFc/EJiVHnDS3
         YvpEMT6eeUviSk5xkwDQhYRvkO42l2QM4Zxl4MuZPMc4fZeYLv5+/4NMYMuKxrIcGwU6
         A5IC6P1pLAe6NZ0QsCt+rnoqYSxoLmSLhAHNrijn7CVqmTdpqSLyxnP7CN6WAgngL0jn
         asooTfIxWCWpVzi/qTQuGGwbsWPDfrthseYFcfYlYnoSw3UVtKEKy3cTV4gfEZUYkTkw
         VNuFh56ghDAT3k4wOgO/dS8EXtdXuhSPRThNccTI0fy6rfIAeNwxnz46YnTjdW8pi9RO
         nFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPel2SFDBbvJ5dtKp25DRBUl7kny35j55Z83c9Be4Gkgv9NGQiIlhP53rzpzWjhsOUWbnObHkTG6mB@vger.kernel.org
X-Gm-Message-State: AOJu0YyLJi0k2HVINGzyfXh4pCythSboMbSLVNuNJ6qG+PJ4HvttPTji
	mhacZ/gy/ye9hM8cQjnqtlpXmQmedXdvH5VEC0R4KkwCThIiYg4hebyMpzu+HZc=
X-Gm-Gg: ASbGncudgeF+aLWbYE5PQJdr+7D+EdclkCMBHMMvvbQSMiCp8ZJOFo2YI3dQl/qnm7S
	IuHUawdU8vhjVxvr6X5kj3bHrcbdsrx29Pfq4DE/2bunu3Xbv6cJpNL2dHLlA1/NodPW8oVlcua
	9UZnuKV+WNFqm20XXrcWdBymx5OtwHa/mPe+c7n+TwjhdhHROQJUFIslm9SoLIYEODHSvnTzoN6
	NTjVWEgRgjorvYYcvF8G5XY0BQ0KHrwJrutrFfr+VMZD1ZWnLkvcpPyO+IyQ1ua0TRGihZ6+vIr
	1TEtSKkAXUxAoCTSct+wpcfqzcMNOw==
X-Google-Smtp-Source: AGHT+IHiwphjww0ZX/ARCaOQWbDtkiMp61r+FZ23Ev0IT+2ZIgkD8Jn/Hmmxto1mAzafzC+0GFmXvg==
X-Received: by 2002:a05:6512:3e15:b0:53e:38df:673d with SMTP id 2adb3069b0e04-53e38df6949mr2968634e87.43.1733647897072;
        Sun, 08 Dec 2024 00:51:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ca282sm1033705e87.241.2024.12.08.00.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 00:51:36 -0800 (PST)
Date: Sun, 8 Dec 2024 10:51:33 +0200
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
Subject: Re: [PATCH 30/45] drm/msm/dp: add dp_display_get_panel() to
 initialize DP panel
Message-ID: <akhwuvpxxsjmejbbwksf3uty3cs3utian2vsmalrtfxbx6h6r6@pcrlpelx3545>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-30-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-30-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:32:01PM -0800, Abhinav Kumar wrote:
> Add an API dp_display_get_panel() to initialize and return a DP
> panel to be used by DP MST module. Since some of the fields of
> DP panel are private, dp_display module needs to initialize these
> parts and return the panel back.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 28 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_display.h |  2 ++
>  2 files changed, 30 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

