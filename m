Return-Path: <devicetree+bounces-120404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 690A49C2882
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 01:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E4F02852D2
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 00:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608E7186A;
	Sat,  9 Nov 2024 00:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T8S0TZrb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6E7A23
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 00:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731110506; cv=none; b=B04oe9LpWaYlKEKqQYch5Lt+PM+VblnHAnp/Qx6gqAlIIjNHgKsn5Kym2E27XY32OBKOQqM7aVafxi3a+X3TC8oRxxwTmUJTA4CHHpdFUvLQtn69K68lrrylEq5EmNaIiuITmqJChvTxUC9hnqhyrKoo/3QSB/3IPaPZzJXXIVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731110506; c=relaxed/simple;
	bh=KfFGkTxOgw0nX/k+afJ6+XUVVT5qPoTsopQh6/akON0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T/f6oPxDqx/c0rKpU8JZd5mPLxSV/Q9uJ+tzwzzXHPS3qS3WETEI4OV3LdrCtXkClknCG+b5pTf1xTxBCVVKyaj29/FlbdpGt4sIIxB4MP/B+kPjzR72SKOu/KwJ6/3QYlbor4/LWk3wiEgA3sNwFv+z0XGcPyQqLNsJgh4jpyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T8S0TZrb; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53c78ebe580so4158614e87.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 16:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731110503; x=1731715303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Oogot7E0iBgtoqk6anJMLFkOygBGcaMN3mZFaN0PJQ=;
        b=T8S0TZrbZZdPK3SjNHV4P0ZaYSpeXyjoRW6Gb9paEb6O+JtohsTw9OsX/Bu6e/gjcf
         P6pAVnPkbtR8B9aXtzLULA515Ut7LGtvdHImkbcnfTYAwUkh0HVVhv4elOuPXSb4r1wZ
         3Ck6MeqZKjQMs4CaFyelXksD6ScDVZGVXOxWUV2+frOdFpnh2Tbgm2s/6/Y/sLV8mhem
         ZSPm1kMYTyHXtNj3fhOkytp/a+othOxUF+JQFha9rGbC3L4lxoDysgtPNMEjPo1FKM3t
         tkhiZDczDAjDsuLcrP5hc5hRzGvIxk66wykBQYJGkvr0pd4ZGRV7di97sfKv3Uf89Yg2
         Sx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731110503; x=1731715303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Oogot7E0iBgtoqk6anJMLFkOygBGcaMN3mZFaN0PJQ=;
        b=nOfPzcT2dJoxpDtcpmnI98XUYv6OZA8ecThbuEPz0Wcc7su47tmyg525eX+GVA1i7w
         xARN/p/ZOUNHA5rbYh4301SLhK3gO/D6o7ZNIOwJ1W1yCiHxCY2nBX4lyNDasBnoXtCG
         BTkz6Opk0ykDbBzzXuou5PTop8bGhGnVNJlsCCyXADsJJ7bWRn8fcyWodv/jOQqKx3KX
         7YEg6BG17pgzpHiXKVMKawcbMLNeAE9w15BG/siTnSPgwJb5k64hY6wEj6S6mueVoG74
         MIvcZ83hryIKLyT13vQJVLdtyMOv//qUgmDgHZs+AMWZlTLwCuO2JpbhtonOS6atPsCn
         UtzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoiASq9OVtU3kKi0L7F5CF6RwdEdAaD7IM7XPfridGQlgIC1ZtKMO+PQ9p907Q0t5ZjNG+zQ0kXMM8@vger.kernel.org
X-Gm-Message-State: AOJu0YxtaSfC0zYqc3JCJ+juQqTO9xmHRj/m6NGcmlCgvlda+e+uY+w4
	XtSsWxXC7BJuvjgmyshRtuiUDWLLnjrZS1MIio8fOjDl4PrHbG34uC17YSBHnlo=
X-Google-Smtp-Source: AGHT+IGYLlQQURu7pRMM9q1SyOJPIab9aM6MNDDLKwHoglxZCrnsFqJA+ycOw8G/gMt/HbN/1yYECQ==
X-Received: by 2002:a05:6512:e8d:b0:539:f554:78c4 with SMTP id 2adb3069b0e04-53d866b215dmr1581128e87.1.1731110502741;
        Fri, 08 Nov 2024 16:01:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826a9eebsm777967e87.226.2024.11.08.16.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 16:01:41 -0800 (PST)
Date: Sat, 9 Nov 2024 02:01:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Viken Dadhaniya <quic_vdadhani@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p: Use a SoC-specific
 compatible for GPI DMA
Message-ID: <4mitw5yz6dafsuefah3didbqsqzpmvp6gg3y5ngqsorghanco4@u6y5x7jksa2i>
References: <20241108-topic-sa8775_dma2-v1-0-1d3b0d08d153@oss.qualcomm.com>
 <20241108-topic-sa8775_dma2-v1-2-1d3b0d08d153@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241108-topic-sa8775_dma2-v1-2-1d3b0d08d153@oss.qualcomm.com>

On Fri, Nov 08, 2024 at 10:41:18PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The commit adding these nodes did not use a SoC-specific node, fix that
> to comply with bindings guidelines.
> 
> Fixes: 34d17ccb5db8 ("arm64: dts: qcom: sa8775p: Add GPI configuration")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

