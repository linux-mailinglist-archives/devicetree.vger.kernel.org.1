Return-Path: <devicetree+bounces-78637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8D7912F79
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D3A81C23DFF
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03B017C20E;
	Fri, 21 Jun 2024 21:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xtr8C8Sc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371904A3F
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719005055; cv=none; b=Vf+czThiun653Y0bkLB1syv7dSz4Kje3JOAhvoh79G8+hZx3ax82tqOXyySRgq3iptfc3wq1eKrRQ7UaJx7m0tL+EuR7pfP3Cesg+VeHFTgO5L9nyU0XHfk7rOF6TXRqwZCLMmkVKRJaFq6FbGhX1QId2zeYzfgv/7zmxxBpE0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719005055; c=relaxed/simple;
	bh=djuSz5mFeJ9nLAAgzN9ybob+36I/5RNb9wb3vaUsk4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qvn0sHi6TLAYb9iS4ZIX+dgvSmclv+FFwmAmNunjr/musf9qFn27XCsQbbjAgvlQkEdydb1/whomTmAKl3Tx0AmZEif9aHn51/5mtEnaywRy39kwtrGkhFYhjdKt/hGSJREuhgJ6fd7jszl05PKys5skXihJpkuFoQrvcS4RHL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xtr8C8Sc; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so26714971fa.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719005052; x=1719609852; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R7G/EKqKrp2dVyxr+tqg9qnQl8cmiv7vTyvsidd4q/0=;
        b=xtr8C8Sc0mYgc0rY8AkmgJ8MS57UnyDrbxZZG20KjF1S8dFbGl8/1yZx0BZQvC51vq
         F3pNheYncvetlTgGXP3WCGbj02xYfeKmLWBFXeyFCnexWnZOYz8WBBHvSuoQvn7g2ENq
         jtZ3Z9G0FJKD1QoIqJ3ibT3u6h7xQXAwCukBCKcdYWyOfIudD8u+S7VjQe++W+zDIYKF
         9FUIkR4y8kNq+12e6rLhdpile2c/KGU63JkfyVaHl9YqukB8qLZ5uTvbTv2jQhei0chf
         auB76JSU4BoJDbyr4jXHXwBHGWHwJ53u/HWJxJlM8qb/k7yVXN/GTayrqL5RlRWBXa9A
         YgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719005052; x=1719609852;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7G/EKqKrp2dVyxr+tqg9qnQl8cmiv7vTyvsidd4q/0=;
        b=M6joSyrYm00m4IG7O7zUKcmTmOx9JCQtD5wpW4HhZJbgK8iJq0q4gUFWCvwrMNZYuP
         Ru4+cO6TKE9AuENqbqH1B5HZP34Zzb0QwQBSlF5Kh+0KtvBRRyi0zrypwf7bYyjxyTe7
         RH5klpgWvT9dBxl3pn3xBhTYdukcrEzCQUvCmTzO4Gd49swoDhTLrAGHd7Fk7oehP9I6
         hzDqglyqg6sbtPE2F9MqxyzO+WB9RVycRlcRx5xCbwDxZs1LD6R9NHQuBkIe6p7hJCXt
         OmD3KQWgI6zstQ4NQpZvczN4DNL6T0D/mx8XaN8w2oe79uSmO/be0S+s85Ejp4grp6HR
         K+zA==
X-Forwarded-Encrypted: i=1; AJvYcCXl8CzNYint/tz418XoPU6HyWyb4d5OhxY/2v70YIwacdMXe90NFthbQsGvRp0jUXHerhSb+9djgIigJMe2Gk3Xw7l8yDuzoYCH2A==
X-Gm-Message-State: AOJu0YyO9H/LIWtgUlgKQse2asJvFLWDjt/0gH/Soxev35aHAKY+/6yz
	CsXs0oczLWGXK3FCE3LtK89WOyp7iguEfsx58nxuE9pqhvLUo7pxEP5BtxIae/c=
X-Google-Smtp-Source: AGHT+IF8Z/Z3bLdGw7DYlN4GVLk29Ytc+7dRRyw60VtQPf9tmMYsoq5/am5uEr53+Gxt2n5uAi1Qig==
X-Received: by 2002:a2e:b2d1:0:b0:2ec:5540:4332 with SMTP id 38308e7fff4ca-2ec554043d1mr992491fa.0.1719005052412;
        Fri, 21 Jun 2024 14:24:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d708582sm2926301fa.32.2024.06.21.14.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 14:24:12 -0700 (PDT)
Date: Sat, 22 Jun 2024 00:24:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: sboyd@kernel.org, andersson@kernel.org, bjorn.andersson@linaro.org, 
	david.brown@linaro.org, devicetree@vger.kernel.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com, ohad@wizery.com, 
	robh@kernel.org, sricharan@codeaurora.org, gokulsri@codeaurora.org
Subject: Re: [PATCH v9 0/8] remoteproc: qcom: q6v5-wcss: Add support for
 secure pil
Message-ID: <62bf3lmbj3gf23x7rgmzhfa7gmpjmwelhspy66j326pudjqlqx@k6owdffe55mz>
References: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621114659.2958170-1-quic_gokulsri@quicinc.com>

On Fri, Jun 21, 2024 at 05:16:51PM GMT, Gokul Sriram Palanisamy wrote:
> IPQ8074 needs support for secure pil as well.
> Also, currently only unified firmware is supported.
> IPQ8074 supports split firmware for q6 and m3, so
> adding support for that.
> 
> changes since v8:
>  - Rebased on top of Linux 6.10-rc4

Why do you have so many dead email addresses in you To/Cc lists?

> 
> Gokul Sriram Palanisamy (8):
>   remoteproc: qcom: Add PRNG proxy clock
>   remoteproc: qcom: Add secure PIL support
>   remoteproc: qcom: Add support for split q6 + m3 wlan firmware
>   remoteproc: qcom: Add ssr subdevice identifier
>   remoteproc: qcom: Update regmap offsets for halt register
>   dt-bindings: clock: qcom: Add reset for WCSSAON
>   clk: qcom: Add WCSSAON reset
>   arm64: dts: qcom: Enable Q6v5 WCSS for ipq8074 SoC
> 
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi        |  80 +++++++++
>  drivers/clk/qcom/gcc-ipq8074.c               |   1 +
>  drivers/remoteproc/qcom_q6v5_wcss.c          | 162 +++++++++++++++----
>  include/dt-bindings/clock/qcom,gcc-ipq8074.h |   1 +
>  4 files changed, 212 insertions(+), 32 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

