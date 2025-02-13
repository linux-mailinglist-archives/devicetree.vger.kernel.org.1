Return-Path: <devicetree+bounces-146375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7165A34B37
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 909E4188D2D2
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ACC328A2C7;
	Thu, 13 Feb 2025 16:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KtZ4c/5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6845B28A2B1
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739465863; cv=none; b=IsDWWQbMB/jCuqSYARnGoiaPlbrVrucOrfk4b66E4f9LfTdRthTascbd/jlrB2Fg0bbKFIVL/jbYQOzG1Fy45OCDJ31zOqUJMHmX8PpmIqxIgtJK20ZjPzqtMtKebl+Gl+bHiKkNFEfFH+QbJVH9XU8Disi3IJ2/BnB8jA0UWvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739465863; c=relaxed/simple;
	bh=NbnxWrMS7KgynfdJrNOB8JKZBra1lv3mAs7164xHJsU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Un2H8rYmvk9EbAAxqzgJgu9Zs4U8kOLCU72GbJF+Kv/R/ZhgoeaylrNzgXE1Ef8UiJGx5+lJ4KAciZ5UaZv9sA1wKB5/1em+TfujtLzwM5sSzigAobqMGmEwNQyG+SZHUfpeB9EVMcdXvZwGxpZS+0/mp7anG5KiC4kyir/ymbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KtZ4c/5m; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3076262bfc6so12289461fa.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739465858; x=1740070658; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6DncLcX9aKkMb7TYzbSn7LrwA/nLBwK9XSdK3BMFQDQ=;
        b=KtZ4c/5mB5TzWqAfANcHl3GFT0I3m/civvODy2724FMnqN5QpNiAfZnqRWe6xga7DB
         hY099syvBJkq6bsfEXStGBp5nAfNX+U3stQWa4EgHh6dFDrQm3orJYRGW47OBs+4Yt/X
         vHu2zMwRWUNQ8uphK/v/xOI8YHe1JE+mSQZLkgFN+XbKZWVyMWO2fHhUcCSVmBmi+2WW
         i4XTBq934R+adNxZKG2TQF/CoJmr2BgHC3t9AzCu89mFSH+DxODJHP73Tlc1WwgpaVek
         4lAPFZXfqYdqFPnX+3d7UlqFrBeych40n68X2VVYkMkR5n5gh77kAdU18p+iTF4I4VHV
         0wJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739465858; x=1740070658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6DncLcX9aKkMb7TYzbSn7LrwA/nLBwK9XSdK3BMFQDQ=;
        b=iAfGyh479+V4+hXN7b9q/S6qrnM1A+TGW+Vr01gJjcL/nsZJjrcheVxFQa9AR7aDKr
         qzi/p4pW9pLlYS797E09TLImiqMVfgf2D0tEczISwImPPzA0hA0DSx/a5RnrYO0IV2or
         oZPHnsw3m9fcJNHIx76VnoBvMiQH4r8t5hB25vrIwTA1gLUGDGAP+DZ6DZ9w38sfb40/
         WbjOj/89M4RWf3noMxYoHFrXwMGjSsnzhYycyWS3dod6S/9ocZq7PgR3xkrZSAbMlcjX
         Q6Q1AQ/F9kuEGP0P0qYyuhjVHBV4hXf9vX9JI56hIs10CJKAMQAhrw/ZbbFQ3K4AVBg2
         rvMg==
X-Forwarded-Encrypted: i=1; AJvYcCWw1Ljh/Djzof00+lGcQEqZSrxf9PsDp6fcKd0KIbIjJ3UqgGPXaMoLLQpDRiA6VqzynXBB3mUeyzSF@vger.kernel.org
X-Gm-Message-State: AOJu0YzmqjlB8Jwn9e856OFFKf2v5D2npIU97VrLRioUKmTqzY8trPYU
	FVbUATXzOPRsalHAeWThBVc7989b+TcI1n05dLk6N7o6K63KKs/hIgJUnQZLknU=
X-Gm-Gg: ASbGncsxcxjBHRjTWEAmLTdoNEDhamTnHKaEag/Ois682R+L7xoPDNh4V6P9vfca/Xy
	K1ezvYHXM7C1a4dLTZaWedxtLnOa170HiYlXpDLfMQ2y1Bsh2aiTr5eWCZpm48NF7x4f/gTBN6+
	+gejPTBlY8A1E0oOri6m1rtHuKmoVdwmW8nT7nUKvHA178WeoQfa+Jd5ryLIbpv0v/wArMlADFy
	nmQckuvthZkwEHlGMF59Ufhzf9I5XhdOLwHTv0fwSbhs762vnpc/Y54HhHDWef2Eo2stc6mK8N3
	lD6UCXac+1/Tg8B++HlPUFFhnHTMkUvtzMr3gsm6MwH6V8FVB+BngF3B5Gi0QNwJPuHe51A=
X-Google-Smtp-Source: AGHT+IGmG7vAzEnhXHlQo3207L4CmELRiyNhJ3wUUEyMyFbBXvRHz97NRmkBrfrhecbVrZ+I7yOf1Q==
X-Received: by 2002:a05:651c:4108:b0:309:bc3:3a56 with SMTP id 38308e7fff4ca-309148017bdmr6741931fa.0.1739465858543;
        Thu, 13 Feb 2025 08:57:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30910276efasm2467321fa.85.2025.02.13.08.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:57:37 -0800 (PST)
Date: Thu, 13 Feb 2025 18:57:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qcs8300-ride: Enable Adreno 623 GPU
Message-ID: <gberjl2wv5tafnemlagidyrulhiqtfwri254swv7zoc22dnzns@2obwq2rzcnap>
References: <20250213-a623-gpu-support-v1-0-993c65c39fd2@quicinc.com>
 <20250213-a623-gpu-support-v1-5-993c65c39fd2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213-a623-gpu-support-v1-5-993c65c39fd2@quicinc.com>

On Thu, Feb 13, 2025 at 09:40:10PM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Enable GPU for qcs8300-ride platform and provide path for zap
> shader.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

