Return-Path: <devicetree+bounces-97909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A98AA96419F
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC2AD1C20962
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 10:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6404F1B0104;
	Thu, 29 Aug 2024 10:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kb0p23dP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7B6193067
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 10:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724926819; cv=none; b=gqrK+IwHRH7KNt5CmFA0iK3K7RyAd4ro/z7phLAQb8lOqxJChhHh0W/KhITBQEPrL6Zu5JxmSxhp7h5WLQB49YkLwlINeAlepo+xpHJJBsDaBc3NopTwjIi5Z1aM9abFEFl9XqE7d1V3ujjzRz+X87mKRjTcokNZHZ2QTssGzpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724926819; c=relaxed/simple;
	bh=tgOcpVmvQXCxu7NePh+8gwUtN7BPJc+rBt5TEt61bec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=exnGQWoucsKQu4Cdxxm+s1Lyt2r4CsiLHlV9R8OtTK2BKOwtT5qOq09jgpt8FLyMBiVtsHx0AvYRGC0D82uoX5fTka/GJXXJL9YLsifb5UDf8T3dVyC95UsShAzsnrHk5d1SVOyL2Ab+UJw4y2f77HZShJjDgpKPs7hFGAtotWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kb0p23dP; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53349d3071eso619818e87.2
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 03:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724926815; x=1725531615; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wrajIhXQaQopFLKnkZnXz2AG7oLMmP4+sgXVgOrxL/U=;
        b=Kb0p23dPu84WVUqZLQv4ikqkvb7L8Ktec/6PHcJGd8YggWyugcaXnlqW/fAERsHazA
         yBOxRfv59ldQhfzYhd3wiZwP7kXia2sn2vdALWsJN7ApWYngzaWgE9wYzxy20pq7Ueda
         RPReQ0so8LJlnR7FF79zZsn7lXVNxpcreNem2XJLcf0zQuEYzI7B1oImg7wpuOIpRWF/
         RWdVTqekJyWqd2ARDwuXVvqnXFrsmuNYBrrSGKb6WMsprV2oTXEZHUKwDs6w/bh0zd+t
         HXv+LoAcj8w2Ip/VWjF5eaYocqN32NEWzvWFwKlCXHNX38AyvztmgFQXBL4BT0gkqn4e
         CUGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724926815; x=1725531615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrajIhXQaQopFLKnkZnXz2AG7oLMmP4+sgXVgOrxL/U=;
        b=SCRRU85vEz2tcopv6+x3+VN9ip8aDQHg01Tw1c/e9KskWCJrITwqQwiw9wxe+n5ALi
         8WgIjKZvykzGpaoXpOVPAN3AS6nkyzeF0hi3UV+9rBh9/1jXrnTlg6KAZ82Ym6dt1n/X
         LcBmgAwBYLiJNvQID/MztiAqF0UGB7M2o7guh9vn905uQ5puqEtQNcoH0t1darXj/dYh
         odctVqv2eNGHiKSuTvDXrSpCh4pt+2Tbxe8P3nl3oorxRQb7eQzIxeGEbBHMTydPeGQU
         58CRyLyF1OGWspTq+FsGlImkRfF3ENuMCCwgLZ5dYD/R8mfUOoo3ftjfq41+QAf+oWdY
         /rxA==
X-Forwarded-Encrypted: i=1; AJvYcCXWsU19SNqMvpQMnpwtx63DwBZT2LqQ5tI/Kmff2E5Pqa+nhuY/UU2009RdRh5rBVSjthckAgwwiL9e@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbb83Dl5mM/URiQmYx5alEbcj0AjMu9ZIiUXu06mPmbZ0eulfs
	0fOXr29G0k3f7vQ4c5pM7beUcIuB0Zh+sYPgXxKc2WFoJ50fotBEgbqVmTYvHFk=
X-Google-Smtp-Source: AGHT+IGbJEe7YyslXtC3ydJW1Ixn9oufFRsrPtJ5vi79qDwZh7xsZono3dYyuXuMnRBWgg+555Oeug==
X-Received: by 2002:ac2:4c54:0:b0:533:532:7857 with SMTP id 2adb3069b0e04-5353e5737b2mr1924088e87.22.1724926814809;
        Thu, 29 Aug 2024 03:20:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084176bsm113791e87.219.2024.08.29.03.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 03:20:14 -0700 (PDT)
Date: Thu, 29 Aug 2024 13:20:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, djakov@kernel.org, richardcochran@gmail.com, 
	geert+renesas@glider.be, neil.armstrong@linaro.org, arnd@arndb.de, 
	nfraprado@collabora.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, netdev@vger.kernel.org, 
	Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 8/8] arm64: defconfig: build NSS Clock Controller
 driver for Qualcomm IPQ5332
Message-ID: <63weij3x2gcss7dpatxeyx4xlqmjwc6cy2kqqlntxdz2ivbqlb@ljb4r4vw3zdm>
References: <20240829082830.56959-1-quic_varada@quicinc.com>
 <20240829082830.56959-9-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829082830.56959-9-quic_varada@quicinc.com>

On Thu, Aug 29, 2024 at 01:58:30PM GMT, Varadarajan Narayanan wrote:
> From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> 
> NSSCC driver is needed to enable the ethernet interfaces and not
> necessary for the bootup of the SoC, hence build it as a module.

On which devices?

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 81ca46e3ab4b..2962bc079ddb 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1307,6 +1307,7 @@ CONFIG_IPQ_GCC_5332=y
>  CONFIG_IPQ_GCC_6018=y
>  CONFIG_IPQ_GCC_8074=y
>  CONFIG_IPQ_GCC_9574=y
> +CONFIG_IPQ_NSSCC_5332=m
>  CONFIG_MSM_GCC_8916=y
>  CONFIG_MSM_MMCC_8994=m
>  CONFIG_MSM_GCC_8994=y
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

