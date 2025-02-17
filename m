Return-Path: <devicetree+bounces-147609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB6EA38C00
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:08:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21BAA7A3E98
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E116F236A6A;
	Mon, 17 Feb 2025 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NOaO5h1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F14E235BFF
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739819313; cv=none; b=MMU2eUMtHZt3WvSC1RihJ/FKK1zgQ5LDvoQ4qpCoAx8mtSFSN1uV2Z4zkQ0YN0Jo1Gsqv21GZ/HS2nNsMhT5iffmJAcQGFEPbogcbumb68jDubxMH1jkcNIZD/Fpl2AlKqGb0+wmZlD6O8GgtmQ5ZF2jOkNWvL8XWHnfSoHUBoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739819313; c=relaxed/simple;
	bh=Oo7Lrcl2ZPC6VhucruHTwVeLY63vJvWzZsAVRWNt6Sc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T9KVGMt4mEvGpJ81vNC/nMvXC7r7WxWaToSDMAH9hvXdy8r/qb84OAEujbGOmDQMhST5DlwyI9UWyG3CaPZb71NFt/PEDwsBAEpDdAWKQO5NId+9hppQXGVbXiEvicqoJ92977RxuuX4jjGYOTmbnyXdu2imzeDDwsgEghT9QVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NOaO5h1+; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5461b5281bcso1615584e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739819310; x=1740424110; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wdRXWfwJ/W21WH+kqrSD6iNAMN48NhyL/UJXo71GHvM=;
        b=NOaO5h1+ZbcRANW28dsryouRppVIC4WVVrnetnm1lpGqzlRpdjn8eZUhdXmudHEYEJ
         liLuanI9DAORgGUAabEsXzA7S9Cc+Qhy+rFHwTRx9C2EWZ7spOQ+GJ6TxMHxTiKbHnUt
         WCGKe2rpJtRcYRuCwou2Pr00v8JFcFg/o/au9KZ4+nqmgDvae35JW3v/8UtguKgByeqJ
         Yw0sFZeU5BV5itUXc/2k98xbH1OT1lpDd5sp6StXVPGqVoBf//aLzBV9DCV9JVuFmRRt
         imRolMyIys59TGj9dAFcgNY4Iws2lOD/eWg/+i0vQAXG2JELH09yQCdPN82gmOutPgfM
         pV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739819310; x=1740424110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdRXWfwJ/W21WH+kqrSD6iNAMN48NhyL/UJXo71GHvM=;
        b=E1M+tJzE/9sTLeg5Sb9HDxi0ve6zgvPiz376E1UA+b7XFxRMzer4iHdD+5vjclRHBf
         0zz1n3vbQuobPZFGZ7rkAD12R0kir2k8mL0ErfmoaboxLAtQbuz5uEokrrYk9KsjUylF
         L7CYAf7pIFrYxy2Ma/GumBvFq4jPMAsr/ynlgMndoW4lF4WRiMaQh1EbsQfoKcU4c+Eq
         lGw+7oh40L/UrXnT0PYr0/zo9V+xsoRoviO3hZK/J2OR9i0FUB/mnAJX8nCvhiIffy9Z
         wjIzIS3YCbAfIbKk16Br9T9hAZWQ4Avqhr+/qg24wKVhywnep/WUWAnplQYSrCBJumzD
         iYxA==
X-Forwarded-Encrypted: i=1; AJvYcCWOGnvl2mVkQMK/BhlcdGNNI3mnORJUJIZDfUvC9+cPTGYhHdDv92+hAriLLVJ1rQ5h2S5aiVpG5LXp@vger.kernel.org
X-Gm-Message-State: AOJu0YwO0/nD5PikB27xv4MvQhxQxrwPrJW7ae9o2+LWVTuBKoaNkJAq
	c+Ul8d7d+KyBH/HpZ8j8xEq3+JHjbb4Rg+cb6EHrnvYoqz563wkxoD1mAAiiOAg=
X-Gm-Gg: ASbGncuFNEHpTfkrKA80yBP/Fi5p6sD3Z+a/YIISUPVjiVoCpb/Sscm/h4H4UAVF/zr
	DJXLYdFuaTmrVjatxIXrujVAs0cNMSLMbiO7i214KoVxDG3wiWju7PN+I99ggjTt3AYK88Milg7
	PFi7otXXZKtOdeM7hgKSDZjLevhzKWdo1siceSL9jNVt75Jk9Hx/E2uUWjKIA102G+k40DG1IjM
	ylaoN9jjBvnrJpRP/IuiFBm6FZ+l4m1bI0M8HmPwnX4UzClz2dxbvHNFlZZ95VGP2xgvylgnK2C
	far34SP6fFMzrbknUhjD+DqCTjo+4ObHdMkMiIyU6zQyyPne6Zy4aG72BF+Ywhjsf0Nuh/A=
X-Google-Smtp-Source: AGHT+IHamycJDA8JS60gP7tbbymnAwBhYuHbKpt67zrHM+Y3j+U5GzOFbCQPJZF1gEw20AZA/az6qQ==
X-Received: by 2002:a05:6512:2823:b0:545:4cb:b25d with SMTP id 2adb3069b0e04-5452fe37326mr3178556e87.13.1739819310163;
        Mon, 17 Feb 2025 11:08:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54526dc0461sm1398133e87.246.2025.02.17.11.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 11:08:28 -0800 (PST)
Date: Mon, 17 Feb 2025 21:08:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 14/16] drm/msm/dpu: Add missing "fetch" name to
 set_active_pipes()
Message-ID: <hnarfrrealmd6uma6ahbnw6v63yqtjw5a4idkp44mu73t6gyfm@4zcb6xkbpwry>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-14-d201dcdda6a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-b4-sm8750-display-v2-14-d201dcdda6a4@linaro.org>

On Mon, Feb 17, 2025 at 05:41:35PM +0100, Krzysztof Kozlowski wrote:
> The set_active_pipes() callback configures CTL_FETCH_PIPE_ACTIVE and
> newer DPU v12.0 comes with CTL_PIPE_ACTIVE, thus rename it to
> set_active_fetch_pipes() to better match the purpose.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. New patch
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c   | 12 ++++++------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c |  6 +++---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h |  2 +-
>  3 files changed, 10 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

