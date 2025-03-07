Return-Path: <devicetree+bounces-155251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8849FA5605D
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81EA93B3D13
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 743E6197A92;
	Fri,  7 Mar 2025 05:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TG8tGnGw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C053D192D76
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326643; cv=none; b=ViMCfj0ZDpMc7e7LLQio3uPFRF3zj2tA0nXVwX4ZwyaKJSYckKAuYX/Jy8hmQJ/5jCq670PIQmidRwlXd2o+oHJaY4DHWzay12BDTWilt+Xlj1kXEyIZXBbDWHNT/DDmsL+jJDxQWqpsddkeeXy3lSIbwmWcxyHLPPZD98HllS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326643; c=relaxed/simple;
	bh=PCXKIFLp/Z1c+K3aM1Oes6w/mNnO53eiL5mUb6LZxNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=glIF7GMQM/QuXR7o2pdC5LudS5JSyExkpNpxKW6NIJBJKZoUPRNfANG8B5hSROooHTRLr3jwuhl1RUTKoM+ZUKo4FPjRWwbWuV3yjcxgrjG/+See4haQz2aywT96ltCtK445Lgl0VyIynYP1ReRHYRMfSq0cZuxuNw0TfjsDfGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TG8tGnGw; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5494bc8a526so1621103e87.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326640; x=1741931440; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Cklowoo6XciocBvug5xE2tihHXT/6nAX/LWrS1DCIo4=;
        b=TG8tGnGwZ7X3c5DxTlz89SGzz/m57mWDY6Yr1to0E267ZPG4V7I6rTKaeET/0Mselm
         4vJLjohmFSAJMpYi6ti6gjBrhNd+Cu/aXVHMEwHHKpvfFN6S0rPNdJ1DZXz5t+RJXYd3
         pF10ettzz0Qcd+kmQEYGO11oiY5sQrTXWbiSgj4RRETuiqe4VBRAYLLvHlFCiwpKN0pA
         w1zovlno4OoXc6V2hG0OtF2pAVUVvutzK49vjnDLjmgZEWeQboywpbG6gzFhO9bhQ7yQ
         il/ueuW8rr45+kSpOA+ANYpJhvyCQINb6gNwn9X3y/GNJCi9GXNJDCngoktrHAoBAazr
         s8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326640; x=1741931440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cklowoo6XciocBvug5xE2tihHXT/6nAX/LWrS1DCIo4=;
        b=WXoK1PnEYFIMvfqMdElBSOmTnqm7F3yfUyhYM3WhwPjaG6S0ZTgTe4ls1DIkE4PN+l
         9R5Ws1kZVHXufdDVtA09XOc3W90u+eaYM4S8IvmitOd5WBqszcelE+aKOtSarAxUvKZ1
         7Jum/pzntBCdaFuGHzsxqcU+3OzT4Zqrs4LQ1aTreCtTR0+iJwz/ZVMzexjDkh7iBpoo
         DHr+f74OkKJ+qF9uYZd8LmBoK7euBZkIYqlpU/Kw6ITK2Dj7rVCEh4nLpR6T+dfsD2tR
         9p4mU3Ek+bjV2J7psccLd9SPhxYL6fz3GEmYXmMshot7E1QXGJkYc6NoThAsacbpq5x/
         3zPg==
X-Forwarded-Encrypted: i=1; AJvYcCWGZ0AzbQh5WCm+4+Oq4wJ6d5MSOJqY7KZcHyZvN3zziUeO57HRu1Kd7VZaXx2hMkS9odUTHZll4hce@vger.kernel.org
X-Gm-Message-State: AOJu0YzuiJhCizzCnbmXN+pKY72PxmkurRiUPtzwF+bHeMlOrztGWTQK
	JK06/2BKOman6/Hbx4DZ/69K7MYt6NvBQ8ZFT47nx746+vf64XpfdaAXpWNLUss=
X-Gm-Gg: ASbGnctx/46Cwsxun1be5Z4wf3JIFdo0WLvkt2woi+0+Utn64jMjBCWvYWRMG4qq1on
	ye6HxS41d/dOKvz8TuOSZw7vZudljsS1rHdo1EaAHj/1aHLr4mr+WjDJX8x6trju5wKkaEUGAWZ
	u2LEcX+zm8IvUOgK6LJj0BYgVAjF5D80LNSLBtKr5gGth7dVPGINad8BCpGKkbCf7rn8fqNvAFT
	j8Kjj1+q1sDijDmIyuvAbfNHZKhWnqLNSb12yRGC3afEMDMhpcIO4IJAsVMMrl5KA69j1+1n5IA
	uhZQwDYimSZVGWltRWyXnm/ieJsKqDwGXvt6Ouccjkp+XlX/OcXslAfDv/4kqY79eQBs17ZiUUM
	VNQSRR9CL82cyDFXe1dIxJr9K
X-Google-Smtp-Source: AGHT+IFxMJzgkc6aT8SLqY3HFH44f3uS0Pbx7E1LtfSoww8PpYJPAwYDmAvb6be7iccEdwfO0MQmLQ==
X-Received: by 2002:a05:6512:12c3:b0:549:8cc9:67b3 with SMTP id 2adb3069b0e04-549910b5d9fmr492625e87.42.1741326639884;
        Thu, 06 Mar 2025 21:50:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1bc56asm382830e87.183.2025.03.06.21.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:50:39 -0800 (PST)
Date: Fri, 7 Mar 2025 07:50:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Robert Foss <rfoss@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 11/11] arm64: dts: qcom: x1e001de-devkit: Drop
 clock-names from PS8830
Message-ID: <ec272btbpxlewp2qiz42c7c77gpg476wdzx23dpv7fqoe2v5fj@53vu6jgpa7xc>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-11-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-11-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:23PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The preemptively-merged node contains a property absent from the final
> bindings. Remove it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 

Fixes: 019e1ee32fec ("arm64: dts: qcom: x1e001de-devkit: Enable external DP support")

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

