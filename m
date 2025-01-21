Return-Path: <devicetree+bounces-140027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D67A17D66
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6A19188BC6E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE2C81F1906;
	Tue, 21 Jan 2025 11:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m4izTp50"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51F91F0E55
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 11:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737460769; cv=none; b=VMd/VR96WupK4NMJbx5enIjp1wTvnLAWDAGWREIjLAdCeQNd9nJfqEXPrKjV3XtQBJcwlKoOBon7DBgqa9jQRZZCYPOSGTSofvuOXtNqNEq13YXpJQLe4qq3eC16r5RMU1ssUGuLzTTCn2PuxO6o8vKxtgI0ABKw4gK94FUqxto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737460769; c=relaxed/simple;
	bh=vxzcy46pZfqioa6UEDq7OR7NwiFNfEeNMbgVFVJPpt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QXKN0BT10Olt4pBOqLoa50tub+5p36nraO4PuTwRVvQ5Ffvn9ilcmPLi9f/zYvjj7X97Ea7T5T+ik4XiNgoimxxefva1tOz7WhlOTSGinbwp5w2VH26cjQoVUGzMU3C6XBiHpSKPxqy2vImymQw05YQDb4t2Skwy4s7t8qmO8bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m4izTp50; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401ab97206so5419567e87.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 03:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737460765; x=1738065565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Mfx2czK9IacwWV5k4WwNZnsfuHADH5KtaNM2M6WqSlY=;
        b=m4izTp50BacBTuJ93Q7Wdmw0sJwreq/0Wr6mG2ca4/WjGjSZ9joeDx8NhpzMMgPJsa
         pFFCH2tNYFGUJNK/c+vQKiSs7pfu+MC8IZVDUwikuY/BF5zkz/ZY2PlBDSy+0Vy6Fxmp
         ZGXjcn/6B46I6fnKkFPACoWtnqOznDP7lb5J5wqhz8XuhoayV3tNZfHU6MWIQMopZGws
         Dw69Po13MK0U9P3zFmhrYMs/RhjqGB28eV6GQ0aooC2tCOpOXGb3uKYK1T9//3NxgXBD
         hTY+zY6Z3FHMmKK64KTp2HTM1MA0zMXjS631+LPfjqZDaa805v+wFtKIwTf5Hl7QzS7b
         SklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737460765; x=1738065565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mfx2czK9IacwWV5k4WwNZnsfuHADH5KtaNM2M6WqSlY=;
        b=Zcg7YAYbWUz9pfSNbqNJfuj571yWvHhFNjt5UO+kdl8wa+bJRCCHWFJpSpQIGSI9VH
         crA9D/0zALvRXWS1fGR/U4wevmAK06KC7QUEtojhXVXmee7375mPKJ8qVlNb0bqjh3b2
         VqpMQLnedLML0UuRCGgprWjkupqbsjU6V1XY970KRExoehh/uzPkSckmkPdo9RWxNLiH
         QA4Vz350FMdp5Nx58bgZ66qCygEZhQnbyxqH1bj9ziHM5Vy6rkS4co7+lcRjbG6wAnZf
         rP+T/TyyADyRluGs9pd9I9j9RY+hST72uXFOvZKke/lumu9FAJpWGTAgcCtOpDl8lJcm
         mspw==
X-Forwarded-Encrypted: i=1; AJvYcCUYKSfCZzZzmkaE4zda63qqD0kPRu+3DjIhfY1EV4mwzw5r4kfunp2JbLOo/u51F7rt/SazJahczJ8Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwVGD8D0RtzuNsyagUb22baE+UHlWtA7OHMgAhuFzuuaOaFFdDK
	0GfVO8a3inILdhOoCuWfkcwibsOruRbMXlfOERY9jIYg6Vqh+MCoh33SpNMzNeo=
X-Gm-Gg: ASbGncumsErndHtIB3DZS+OqPKpJrtb50zog4ag+5k8qwEFaQpkJrl2ieVwIkuFyJij
	9EngOfGmV3mia98XbIlR5U9ZTyLPmivADSIWkIuB+ZxmiafHJKEWVEXfuHgYY52PpvflC/FFohF
	TWpter1hHMkIXi+MJmd+UdwpZnEHkwdE/YoRcE4+6JmFLBRBxJxz6YAVVrgiv3JHqTxJ1KRkksV
	mAEqrB88k1ladjFT+cT3ERE4f9zpGRSxgqqCK9GQQxRjaFk+yDKZlwkrRcpn8V+wjj73MHxzKJu
	hcoT2LJz+R4ytdXAhGMuxo26QgquPNAz3I2FS8+gW/+lk3OAvg==
X-Google-Smtp-Source: AGHT+IHLCGkedLvV8IycQ4ZcIoP+8T+7S4QGPtqF8W9Y/w/Oh0NBSmPRr1svXj7yelPQJWAtVesRXw==
X-Received: by 2002:a05:6512:21a:b0:542:a73d:a39a with SMTP id 2adb3069b0e04-5439c22a8d2mr4598608e87.2.1737460764826;
        Tue, 21 Jan 2025 03:59:24 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af0eb65sm1794488e87.93.2025.01.21.03.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 03:59:24 -0800 (PST)
Date: Tue, 21 Jan 2025 13:59:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_kuiw@quicinc.com, 
	quic_ekangupt@quicinc.com, quic_kartsana@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p: Delete duplicate fastrpc
 nodes
Message-ID: <7boe423isk36f6z2cqor7oj2y63t6cdo5gpfvjsioqhg4yqyjc@sitfdraxfjot>
References: <cover.1737459414.git.quic_lxu5@quicinc.com>
 <624c66935ac908f7427a6a238a3920cb415ca057.1737459414.git.quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <624c66935ac908f7427a6a238a3920cb415ca057.1737459414.git.quic_lxu5@quicinc.com>

On Tue, Jan 21, 2025 at 05:24:03PM +0530, Ling Xu wrote:
> There are some items come out to be same value if we do SID & ~MASK.
> Remove duplicate compute-cb nodes for sa8775p to simplify.

No, you are not removing duplicate compute-cb nodes, you are removing
extra entries from the iommus property.

> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 240 +++-----------------------
>  1 file changed, 24 insertions(+), 216 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 9da62d7c4d27..0aa27db21f3d 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -4517,15 +4517,7 @@ compute-cb@1 {
>  						compatible = "qcom,fastrpc-compute-cb";
>  						reg = <1>;
>  						iommus = <&apps_smmu 0x2141 0x04a0>,
> -							 <&apps_smmu 0x2161 0x04a0>,
> -							 <&apps_smmu 0x2181 0x0400>,
> -							 <&apps_smmu 0x21c1 0x04a0>,
> -							 <&apps_smmu 0x21e1 0x04a0>,
> -							 <&apps_smmu 0x2541 0x04a0>,
> -							 <&apps_smmu 0x2561 0x04a0>,
> -							 <&apps_smmu 0x2581 0x0400>,
> -							 <&apps_smmu 0x25c1 0x04a0>,
> -							 <&apps_smmu 0x25e1 0x04a0>;
> +							 <&apps_smmu 0x2181 0x0400>;
>  						dma-coherent;
>  					};
>  

-- 
With best wishes
Dmitry

