Return-Path: <devicetree+bounces-151143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2766A4490E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2B4E162ECC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87DA819ABD4;
	Tue, 25 Feb 2025 17:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JZVtUhek"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7E7156F3A
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740506144; cv=none; b=BuTqvltWxbDqLpdaJiA83b8/mxR6vmrV1qHax1Yu6AcaR+zBjRZPAl0c3v7J+Ejo4j4ahNTu+Cx7XFF6BVjmbQBsL+SqnWilHSlHGX6X7dRqr7R7JaeTMKMsuG9jeknFkmmfY/CbNsc5iaUiANS79iQLR9PcZGX4To046gj54Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740506144; c=relaxed/simple;
	bh=ASfDaNLZIFf+zIGofhH6WgCbGbuLF+xCSiQVDoXkU/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgJ1bgWcgLEP2HAsd2i3iaFuN9QVshAx6vjSIKZGvmApDPvciyt92XQwae0//OAENIA82fvM4BgGYpehcz/IJXywma4mPV9kqPKO57pAs8WgN5EzX2gJJ7Ao8D67Vk46Smq1+ooA6irFyWifydLY2BwLGK2F4Wd+6uHGR7w3Sjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JZVtUhek; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54622940ef7so6669481e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740506141; x=1741110941; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eq3mOy20yNbp2lX3RjGrzkzUuuAverI0Nvq0Wo8uGL8=;
        b=JZVtUhekRCDVuQ5lZOkgRpkDbH1O36VOBeiLd8iQlxfo4aRh548p6i2VqpyMvhUYNl
         JeO2zu1LI0OrZn1L/0g1jCZwA1wpI3iGqy6Be5eOZe5Z0fcRFcXu9ouh2p0QpXXjfb/y
         ARLxK+LewTHuHYOAICzOsdk0YlOuOwG8lj+AJ12+FQIuGp5aAHS0DjFyXqEUxp2FyO4E
         az9W96z5EgtySKWar3oJSfX0jZ6Qy1Mulzvex2QclL77GHNuNkWqeVothAh2o5bcADMi
         dcMUmUMnPD/LQPVChqhXW8axhGO8IuFQkFzWK7XCK/49nd/2KLBcWyTREUCPqmtDov9j
         SW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740506141; x=1741110941;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eq3mOy20yNbp2lX3RjGrzkzUuuAverI0Nvq0Wo8uGL8=;
        b=gARDCZdiXJiUSgdhNsyxQH6Jlw+T9ZIM6nSDjLq4jdDyKkhyOdggQpXO/IfEv4D9xY
         /dAB0uuEFEokplWxJ7YnLaYW7OGKO7+8O4fogKR7DkIygeINUa2bdQfTgtw9dwr5QkRr
         DyzwGfaxoWc4Q3BDF/CLaa4/371W77BFXLrgZlC+6wqHbR6XzaE6NcdjQCMtabDmnG+k
         +6pGiyIESg1nXb0xAGaMvtrAKNCbzVmr2xb+JFp4xGecpgZZnkcJvzE3uC8OlOqVJzXt
         38orOx+jQPcj1Nj8Xk+oy1s+dSBfF9Ytuk2603L/hIvNlOMPUWF3rA1SN4Lajg6CEEt2
         aupQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmuE+zsCNEi7uYADJxW7CBsFu4mHWi9LrmVsl3jyNaAsKCBnRf7BYzCUCvDVpUy72sWwTQ/whkE6fK@vger.kernel.org
X-Gm-Message-State: AOJu0YwlpRUxRa7mnvZZVT7Aacut1esc/aILr8EqrEFbPt6RgQWs9Hwx
	hg3gigcjayzj+hxr8jWp0/D68TaI6YXihVnh66Z+urpQr2Rt6WEA2h4NFBSn8dY=
X-Gm-Gg: ASbGncsf+OLHg3BF3j3EPS+0eXnnF3KoNULLjoPMCfPf3GAnR5+JsIpd2sVt3KSqo0Q
	lMzJCcqa2y2GqzIn0QCLY02zBppc2s9MR0e9/P264N97fxLIbLaT0dtOS3ynP/Ix9IAjSL0f3Mh
	+2JdLrjR8JNRoAWt+QZPCtWp9vOPI9fw30pcmDhdpKNpUT1Uwnim9nDdjRrBbl5qyT7gPedXpCg
	+fWRmq4aht1o5AUWRugCq8Ab2rmU7v32LGgjMOgSolVXRPjMem7yaMA29+bDCA/gzQ8tm/Hk0Ao
	4LkcNlIRQZ2lKNAf14nCK5E8VKIPIzo48t9HYlu5vRYZdJYUf6BFUqVOvFwljnwUw/8sruG9zmJ
	yLKSj0A==
X-Google-Smtp-Source: AGHT+IEtBPGhJEFmYORVcpbY565FvoQ1gkddd4xE4WqD8kbOZNOXiopkLnrRw1ytEuGRZvYQRQselw==
X-Received: by 2002:a05:6512:3a82:b0:545:271d:f92 with SMTP id 2adb3069b0e04-5493c57ef04mr234185e87.25.1740506140684;
        Tue, 25 Feb 2025 09:55:40 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514ba1d5sm243569e87.98.2025.02.25.09.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 09:55:40 -0800 (PST)
Date: Tue, 25 Feb 2025 19:55:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org, 
	andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com, 
	quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 08/11] arm64: dts: qcom: sa8775p-ride: enable Display
 serial interface
Message-ID: <tfd27qk543dt4sqcawogoszsjax3cqxmi6mcy3qd2mwzauedpf@l6xmy5okswrd>
References: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
 <20250225121824.3869719-9-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225121824.3869719-9-quic_amakhija@quicinc.com>

On Tue, Feb 25, 2025 at 05:48:21PM +0530, Ayushi Makhija wrote:
> Enable both DSI to DP bridge ports on SA8775P Ride plaftrom.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 66 +++++++++++++++++++++-
>  1 file changed, 64 insertions(+), 2 deletions(-)

Please squash into the previous patch. It doesn't make a lot of sense separately.

> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index 151f66512303..02d8a9c2c909 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -128,6 +128,30 @@ dp1_connector_in: endpoint {
>  			};
>  		};
>  	};
> +
> +	dsi0-connector {

dpN-connector. It is not DSI.

> +		compatible = "dp-connector";
> +		label = "DSI0";

Is it an actual label on it?

> +		type = "full-size";
> +
> +		port {
> +			dsi0_connector_in: endpoint {
> +				remote-endpoint = <&anx7625_1_out>;
> +			};
> +		};
> +	};
> +
-- 
With best wishes
Dmitry

