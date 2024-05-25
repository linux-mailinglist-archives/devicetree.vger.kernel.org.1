Return-Path: <devicetree+bounces-69196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACDE8CF14E
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA8F2281ABD
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131111292E6;
	Sat, 25 May 2024 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W63bCdK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B783C127B50
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716668194; cv=none; b=hHWy+AFDT6TVChfoWp5j8YRJnGo63FbFwTI1ZUgVCBMDU+dIy+z1MkzEnDjfnbaDpwMWUIdTHgGYVx2mNnMgJtHy5+nEDVphLp6uiK5HzS7+F6hdPpFOzWI5mPm0/Pw97xN8IL92P5OtMaH4wXHcwjgJvWk3NbmSFsQBXBJKjSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716668194; c=relaxed/simple;
	bh=yCIqAoL4i2aLqNmiDHrQ2DbhOKgHllglMGMO1a4qBSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTU+VdIY0snCVgDoN+Im97rVyI7p6Xu6iYp/it1oy+piku7I0pJnBtCWJj8MxwTYV+BFt65g4XPDA7dxI3DYtO8VGjHv6Y3qeNCOx9nDbfhssCEfgopVvEfKfPITvFN0/vRtISrfurP7mqsiPoBw8NSlw1WH3F2NIcIsVPIZNPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W63bCdK6; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e6f33150bcso101889491fa.2
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668189; x=1717272989; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ujmKICurQfEycTurigYs3rKwdMGIy8Zz163YNLLECwA=;
        b=W63bCdK6dRxhFYrzCoOH1r+bpG+QgfBFtbYvtG6Q0tVkBjCORjghC/giF+ooSb6t8e
         OVGJzig0uLi69ko1cth4k2yT82Yhq8YePjKlQjC7nf44ZIkWG2SbD0D03F1zXJ3UEwJ2
         4RhgNxvH2PuSW+TQ0H1YzKh0+o8OgQIFGLU1uxvUbpA0YQUqO7ybbA9zalc6aP0YCvII
         2wNxLMnSI+qpV7UAejBuef3Vd17OCzeVodqhdbNmnY7lIapwp5Bu+kpaZNM/OzCeRTZ+
         CrjZqGoQQVFH/QgY+WvGeMwhlzIlRDsxfX8fFvRk4zGeYbAiK4GoSdv/EBqNbFCmC58j
         5NQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668189; x=1717272989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujmKICurQfEycTurigYs3rKwdMGIy8Zz163YNLLECwA=;
        b=cYWNM/gErRyCbcxTsnBrJK0WhysGFRm+KQfn99tpVJ7dxsQpLgpB6wWin3xDETLNEz
         z0QSlcJebx42+1OpEo6iXNtaf8ImWw7ESbIEpfVmnA7riQyL4LWMdYFyQz7QVsyvQ/qP
         fr1fuLZxIBTUHZVgJEpz6WPMXrwsOiQFrdeUi2Pl7gg2n1FUGmt5twM62NRNLF6OctbP
         6QbNUlsAWUg2GD0A8rINCT9j9MOqoMdau3j/beFp6qKokwa8QCRznpplSVsEmS3x2iVL
         OpYdhO1rycT1kCmGiUEPsRTNYXEs/gX8BfLiiG2D/Np5tPAtKaIQBmhKCoO3xcgilRLF
         y+vQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYCMtXLLhOX1XxcTGf6WrTQJXdaKpiRadPBDR+OlcEHWdEwrh0HAjYYL5F9o0DjYjG+4eA+rSCTJk8KjSWgRUgxjLqjAKJjluHzA==
X-Gm-Message-State: AOJu0Ywzk1R5ZqdcphLbvYpzH2cs/gn+u1Z0w5Nd1EVnzeP/I49aU0P2
	ypdsbU8OnfE4eyT7fl2anxtI7eAKulWzUnjGyIa0rRzbfNjHAtDDTjyYjtXW03M=
X-Google-Smtp-Source: AGHT+IHEX5m8aIJJV2uYylk6Oj3Cj2tv3lHqMmUdSSoL1mmdUgmPlnc46wlraEODOjaTm00dK0NeTw==
X-Received: by 2002:a2e:87c7:0:b0:2df:6fd5:1475 with SMTP id 38308e7fff4ca-2e95b0c9dd7mr31747781fa.28.1716668188971;
        Sat, 25 May 2024 13:16:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bd0dc92sm8917711fa.72.2024.05.25.13.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:16:28 -0700 (PDT)
Date: Sat, 25 May 2024 23:16:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 08/10] arm64: dts: qcom: sc8180x: Add USB MP controller
 and phys
Message-ID: <ld3kemgy6oac26fa47viwdgjaqjkx3qgysp5ughehbmtugoi4f@3bvxzmvhpdxw>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-8-60a904392438@quicinc.com>

On Sat, May 25, 2024 at 11:04:01AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X platform comes with a multiport DWC3 controller with two
> ports, each connected to a pair of HighSpeed and QMP SuperSpeed PHYs.
> 
> Describe these blocks.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 146 ++++++++++++++++++++++++++++++++++
>  1 file changed, 146 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

