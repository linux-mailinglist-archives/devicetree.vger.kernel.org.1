Return-Path: <devicetree+bounces-70940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 366828D5077
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 19:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 677971C21566
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 17:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6D73FB94;
	Thu, 30 May 2024 17:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fTWebbH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7E345BE4
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 17:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717088729; cv=none; b=j8evpOg+qgQO/o3075CsOIzYFW1gtWlIpjV3IdXfLW8X0yFt7ve30/WvD3wuPMdeUa3N9mkUs1pNshIL+BDHuoAY7O8Dm+y48/00k9fw9VYhNUKwWTcnfRIK0cOVPSsfDj0JcsQRsvAKR+7tgO/sKAo2vCyWKIGdEyIQJJeq2v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717088729; c=relaxed/simple;
	bh=8HOW6GEFXN5JaVE9Dz+NHTsMgKt/6EQJMGeGB7Hdfv4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jm3ZjnJ3K1/qFiWlwvP5zsEhbNmfWAF9ppizPSGCnpTSoLZMpRmRvlrR7Fxjp8t35evjRqrkwQ5pb+X6QSFZ4ncj1bfWCrS5lCSi7eFD1Yqq+PlFRmSpEvNGIIGgt82Mef23Zc3pu9B+8sqnaOzQBZ0W6FghkMgzI6cL3alKgfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fTWebbH5; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e964acff1aso11544781fa.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 10:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717088726; x=1717693526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6VGY34RF4O6pMILzq+WOgO73UQreTXk+gL6EU4uzeq0=;
        b=fTWebbH51keZckXkMXsurwVrSf00xwtciarnauSQNG17dY8jE4L06/t1L6UCYo2fd0
         fRAUwmRgkUMgmXw/0u8EWME/1kGy3RuhFsTjOpyhfVuSJQOLVJXB/G9j41DJTDxxQqkN
         dVJ7BOk8/bbtT/dmKVs5H5e7YI7gtzThZagbiE1n6YS2hWDsmY7uo7SvAcGqCR4Jtq/f
         mu5utYoBzCKNVlug3UpcPTs3HJn7yQj9/5JnV/OIsmjIVFlyciwoC8suNGPKNd5MwJ0M
         E6/XmAgq/KUtE2EoxvSbGL3zmcdou49IGQc2QKMI9iIUl2mhXd6WC5ss2LPbN1XiX3hD
         MATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717088726; x=1717693526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VGY34RF4O6pMILzq+WOgO73UQreTXk+gL6EU4uzeq0=;
        b=DRHAxqY9SPDv35242H+yWIjmncZWl7Ef4PAsIktzmfRqepZ3SI5WvARqu3W0zOcnbg
         N6bf+wI2uofPieXuyCFprCYZGYhzzDFyRgAvZaKNtG5Zm0DvyhBhhdNVkhDcTlpaggfc
         QgzWenVlUINoy2Go3oMxU4ECEFWA5sTBxh+1NLYMR6LXLHEN2/LUCpv7aiE13gMGs0rQ
         NyvqlNRXMyxDFB3PbVDByel2V1uUkuj8WcD93JxPkuJb9/cUl8PwHgDI5rU5zEzPTvkg
         kUp6UB9p6mDjnr3lPIxJQ31p1rgZNpXNaERKaBN03XTkIULYc/NEz3/QC8sLBQV2ycp5
         rltQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJSHpywYAyIwDnEwisqDF/OvDf80Bxyj7azXidz8qxmAiR5NgeyBfy38Tm2a001hAioa8Hey54zYZxIiAce1XLvdvdGo+iqEDkyQ==
X-Gm-Message-State: AOJu0YzGmOmBIEMBtseEgFalpRRiKlOxRkHM5RhyurVmbyNL+4sNgmwY
	UPiFH986RWoFHA4Qsy4puzuBaN6KNFLEDyUdKAfYfmFzsOUxUcLKrl5ZPDtsLQE=
X-Google-Smtp-Source: AGHT+IFdCZbwsZD5EOzE5VWuAXheRKV6XgmzQffRyarcmaHOpjPCbh9gz0yocfEyBSB1R1/SZN19MQ==
X-Received: by 2002:a05:651c:336:b0:2e3:186d:45a7 with SMTP id 38308e7fff4ca-2ea847ee49bmr14379151fa.22.1717088726299;
        Thu, 30 May 2024 10:05:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91d1c998sm157191fa.130.2024.05.30.10.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 10:05:25 -0700 (PDT)
Date: Thu, 30 May 2024 20:05:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-qcp: Fix USB PHYs
 regulators
Message-ID: <wp5yehw77bnniablt45utbonlivxxnsvrs6zxo5gzv76zrquej@plabphdqiqih>
References: <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-0-6eb72a546227@linaro.org>
 <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-2-6eb72a546227@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-2-6eb72a546227@linaro.org>

On Thu, May 30, 2024 at 07:35:46PM +0300, Abel Vesa wrote:
> The 1.2v HS PHY shared regulator is actually LDO2 from PM8550ve id J.
> Also add the missing supplies to QMP PHYs.
> 
> Fixes: 22b82135c02d ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

