Return-Path: <devicetree+bounces-62529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C604C8B1751
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 01:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FF8D28119B
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6049516F0F9;
	Wed, 24 Apr 2024 23:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gAc/Ji1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBB416F0E4
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 23:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714002132; cv=none; b=rZUn86/lVxa7mho5h38M4U7nVnbEX/kTHl100yRb8zYOAxZxUCbCy4RcOS9ukt8DNGs96U4CTMm60aKh6LCJTKZbW0y7jowAbBUf6Bl0F/3kPNjqmDDSbvzF5g7mVFCLm5vIzDGWThaITNI6OErLEz5an4wDu+RfEmB+UTEGSbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714002132; c=relaxed/simple;
	bh=PI+JeQg21yVOePuaS0Iw7b/7W79QBq8ROcxLJNdsIlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tUhc0Hj5MdPUm18j68Wx0WQAlR8J6DNAAqxSQRjEDjNHHm8EMaXkRTH2BM3xkMwPVjJ9tRS8rq8ouaTClFmxbLHbwlFGsuohUAaOO0wpz8Bfs32e9HLYAQbSfEPLcvORf2h0H0nLuqUMhguSX8oc+T7imOcdrCQoxjn3yWN3DH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gAc/Ji1T; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-de5809cd7b0so510474276.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 16:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714002130; x=1714606930; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3di6KRuk2RHSbdtvrUmozSSvs5i2WcfXE6+Fo0L3m8=;
        b=gAc/Ji1TR7JadObuMUESXqzZx/R9pYFyDyHNTd3em+uf9PVzR/EhWXaR+C6yX3+ev5
         gSuJZIItZu0pVHWHtY+5Jylrye3ORAuWPBv7Djlv/ph3ATrmlbDrxeL5drmtg7o+WsKT
         4zkcd/oeWIQqmLx+bDlrwdpQF2f7of78zwPnB/VwMa5eiGs0YJEIJ8rrhc+/9SS0dbFc
         rMHL2hhzI+9JjqmHid4TLreic+X9VG8Dfv6hMUxcPXeg7rCRHIf51f3mS8WRJxrdzgqF
         e+RO64ncTpeK8SjJ8O8zKcvChhV/PvYOHZJsfiD6x9Gd48sd/Nw7OfoUqU7TGUYPTUXb
         M5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714002130; x=1714606930;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3di6KRuk2RHSbdtvrUmozSSvs5i2WcfXE6+Fo0L3m8=;
        b=becOYlET3Ii2ffS3yen0Tgoo5E0KYAqbJhGkTWjyejYmmrn8Pnidn/xmIm/CBHJM6l
         amWZKVT4E1AT1W173/shfduYsTC7mrKz8UoJveFTvUhvSZkLjsWKU4uxgbcBNHJJ1LUk
         uP/WnNnQVciOi27QqvPfKqqcZTvTiTlG+p6XIazSo7EZwodmQRPaEKvnx89/nooS+ZWQ
         F7M6BMd4e7MAH93xHcXAF2KJCqjoPWhdHltfZM37TMYKB1aWvob3DZK1KaUb50zJCXz2
         XT4xWtGYgzxzcetVv3rHdSWAX+QlklMWkDqlL0Np7GEyIHGjbtuKheYNIeB2fyvZ4HFI
         9mNw==
X-Forwarded-Encrypted: i=1; AJvYcCXF9K6HmnWscRGheKk8ITPtP+LO4W+rH7Nb/xXSNwT/y9ReECdbVA7csYTTJTWUS4xssUNV9Jnz44MZ+zk2oR/9R2ivrTzMtfvz+A==
X-Gm-Message-State: AOJu0YyE/0ljr0dkM7Ccd2KNKZUnAQxR8jsPxDrZh7SAqgB8T838++L0
	70DqLIaOdP+orxe/RtHrjtizgJnulIznWHszMR4WLv3SujuwT58DoX7j1cvfQY71ejGlDsOzaq5
	Dr7UJRZjUA5rhm+YlQ3X+f7h9O9816H2YkFXeasuXXzRWTquCYWk=
X-Google-Smtp-Source: AGHT+IFNoEoWuTCW+J4r60ygLSWMpFSH9Zo3V9Aq2hPRxkt1QB/fN+kZPsxejKNUHrSBHusjPdMi8tBWqcJwR5uPFYI=
X-Received: by 2002:a05:6902:526:b0:dc6:ff12:13d7 with SMTP id
 y6-20020a056902052600b00dc6ff1213d7mr3280481ybs.60.1714002129912; Wed, 24 Apr
 2024 16:42:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424101503.635364-1-quic_tengfan@quicinc.com> <20240424101503.635364-3-quic_tengfan@quicinc.com>
In-Reply-To: <20240424101503.635364-3-quic_tengfan@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Apr 2024 02:41:59 +0300
Message-ID: <CAA8EJpqGub3LuFPbwcA-MTYN2kY=94YXe=T3-mewYzxgcF-ZMQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm4450: Add cpufreq support
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: rafael@kernel.org, viresh.kumar@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, manivannan.sadhasivam@linaro.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Apr 2024 at 13:16, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Add a description of a SM4450 cpufreq-epss controller and references to
> it from CPU nodes.
>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4450.dtsi | 29 ++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)

With the next patch being squashed in:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

