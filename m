Return-Path: <devicetree+bounces-149420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0CBA3F6F0
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC73B8609C6
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591A7204F77;
	Fri, 21 Feb 2025 14:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H1dXC+xm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB9B20E6FA
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 14:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740147261; cv=none; b=SRCECbZCPN4aKB6Dl+4jHJ3MSZPkJp3vtacAaUFBZuaYS/F7BZGre+U7+a8+X/VkQ9EQOXY0Usf+BM/eG1ZFObYjVVMUrzg5Qh1MrCofrQEIis+XZTikeJRLLVLml3Nz8wDEvnwuf7YLXUpHpJJaPhyY0wjBD6ixol9CKgtJIVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740147261; c=relaxed/simple;
	bh=8R1ntMvdxgNOKHWq3nr/j34/07DXc1wBynfM1J+M5UQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UEDu+gDm+n0s6Y0pBV5MV6LWMbBZPUUclgbDBWsR4QBWipT+hdcAvWsuCx6O+Y65F4k1Frq18VWrrnBxSjSPLZdbOyfcG+ny/tivStScfhXiyngJ3oNv4UGqxJn1r2P23FRPK96PqTsSCc9tm4bBOr9Spp7eGboIHoFIHp0Jgz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H1dXC+xm; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30613802a04so22807761fa.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 06:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740147257; x=1740752057; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kjc5mojYE3t4OSrHJVJCVcArh6fCjBoE/KbptrPihx4=;
        b=H1dXC+xm8xwCUrggGtHs/j+pHuuJfcs/GrE8Ohv9Ovv3T2hVzQUaZ/TzSIqeTNN4yb
         4VcPgCyvNHhRVI7EGLpDvpFifDZkT6AeQOCPdA5I4KbZiXuqYE16My0AMA/iFk6JrB1o
         aTPYN3JmOxHR5swrNAK+Rby+EE0SsD9tcoDq/MiaR71/YYE8mz7lbrUQfDbY265FKsFZ
         Jk5fh0uoQK2CN4pzmuQubNO4U70wRHcWPnt3othhntAWEPImafRXc8aRyfbwsMbVnJK0
         4C5OEb87m6i+a83jCCdyPoZPeHqepidDGV/2mHfTrPiRusk0F83I9D7RzG4R8eC/T6tw
         e1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740147257; x=1740752057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kjc5mojYE3t4OSrHJVJCVcArh6fCjBoE/KbptrPihx4=;
        b=BY5S9ZtMAliBnoZRpv1AIkgBV5+CWR4PaEGjKlCWAyhMpXi9ux3N/obmNSN167g5Sx
         d3v/Kj+jJRyFKFlp/0977h8USojo4W0K0nPGBbDR75au/nZH+b0pEB4EyQq1eHqce8BH
         djxTPAafFbOTtsPpEFA4LyTt1rda+af3ran4dnmCgS3EG3xQ7/znmwIe7aNW/eU7nkAZ
         RbwAXZwWlBULRzmh4ZPZ5L1wF3ujbN8GRV0lvMtZKzqK9mxuiStDN+t7bqpnJuBjJSAR
         vXx5qHuQ2MtTkBf3z4k8j+hI+MFyMdGDmKGRVp86mUMsBBPJXkdHh4kltEPTZDvj7hri
         I66w==
X-Forwarded-Encrypted: i=1; AJvYcCXbvSO94v3so+dLqhe040QQ/d1nKiKYCdyCHPYoczXGdZH2j7lUvSZQQzSHz2LHzD/km0GLdMPz+wCu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx0v22ZTjOhONro+hKnixS2790MZIkoG3pAPFPrIL4+wed+qgH
	6CIGSXlBHAOO92wlb457A+xQiXXYyn2d+BJtj6CRM0ayisHGbnqeidKQjeWwHjE=
X-Gm-Gg: ASbGncsiJ+Uljh6XaD8Fqibz6LYjpqqbbCjlkEpCkVpxXS/ve/5yH06ff/3ccVJxeXq
	186oin3L5OjDLGtEmjv7yLMZkOIsVf80UbQAaLuoWwQzL0JL3e5Y3Eix5M8ogqT7P1OZLx/bkKb
	JWPE+awctjf6xDPWp7A5ggRnDB8N1yTLUxqP9V7rU60VKmtUVqF+mpRCqtGR6uTYEjcjBGcwICL
	X8Ax3pWTK6vvhAjCa2Fe/R+C/awbmmo1mnvTB90rEOv5R9zSg9P20VRv6jV8Yifa2SgB5s1JcPH
	MJegOxsIU1GcT/t+SZiOiQYIJQ/FUjQVVYenmk5iktj/bQKhKaQv9ouNQuICsffLppLiqdMZ5Mi
	mRZ796w==
X-Google-Smtp-Source: AGHT+IGE3i7E5NeJLGZxn4+JQpuFC+AkpZ8fzRpeljlxc9T2QsR4EDahxkpiTqdExMPqOpBH1TyfSQ==
X-Received: by 2002:a05:6512:3a89:b0:545:2a96:34fc with SMTP id 2adb3069b0e04-5483914820dmr1344462e87.31.1740147257524;
        Fri, 21 Feb 2025 06:14:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545280ec98dsm2394749e87.42.2025.02.21.06.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 06:14:16 -0800 (PST)
Date: Fri, 21 Feb 2025 16:14:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 04/10] dt-bindings: clock: Add Qualcomm QCS615 Display
 clock controller
Message-ID: <5f5nt4g3fy7446gxnjg53n4uir57hm62ewgusekls5sbmadwez@pfxmhrkck3zi>
References: <20250221-qcs615-v5-mm-cc-v5-0-b6d9ddf2f28d@quicinc.com>
 <20250221-qcs615-v5-mm-cc-v5-4-b6d9ddf2f28d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221-qcs615-v5-mm-cc-v5-4-b6d9ddf2f28d@quicinc.com>

On Fri, Feb 21, 2025 at 02:50:15PM +0530, Taniya Das wrote:
> Add DT bindings for the Display clock on QCS615 platforms. Add the
> relevant DT include definitions as well.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I don't remember responding with it, nor does lore find such an email.
I'm totally confused, what is going on?

> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  .../bindings/clock/qcom,qcs615-dispcc.yaml         | 73 ++++++++++++++++++++++
>  include/dt-bindings/clock/qcom,qcs615-dispcc.h     | 52 +++++++++++++++
>  2 files changed, 125 insertions(+)

-- 
With best wishes
Dmitry

