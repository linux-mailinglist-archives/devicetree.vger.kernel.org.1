Return-Path: <devicetree+bounces-127126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC749E47E7
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC30E167A0E
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079FA1F03F8;
	Wed,  4 Dec 2024 22:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yHpxWdxC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D79194C85
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733351618; cv=none; b=icFQ7LGUGj4mIdO+K7G8PiM3eh+exPsTp6LJw9XYZYX2FQzmzR4sgmNNpr2hTr8ErF4j67AuVkMaZnbBh+aqsTNAFbUOByYl4/KdE5nL6WKL4EN9j4ENlYvJ2hS/DNp6aW/xMGbATh3fTldpIWYTHhU2ssqdzX0PVQuIxKMXYz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733351618; c=relaxed/simple;
	bh=db+eBbeeOwSwRMrB+GHo1wPKEqzB3v2TTN3uqBqJHZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=joYLVpAnNtnJzT/WVibwYq43cgsyKqjbDclXSUVPJD7k3aZtbTNWWNnvo1Tn9B5gSw2NZnzTv+Bu2TDyI5H5fu/jw4LV02NUB3nW2OPoZcSsGlKGkcp1lrU3jCzoV1QwrjGrRm4jcxfNO8rfTuJcwBN49SS3PU8BJi06SEXvMk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yHpxWdxC; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53df67d6659so283945e87.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733351615; x=1733956415; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZA+/Ynbct9XmJ/pDgZLrlz4vByV1+ncrGt31MmPRsc=;
        b=yHpxWdxCKhFt8UvkEe6gcBgdkR5GuDHe2MXgs64CQoTIDiqEINp1+IS+75jyB8JVeA
         afCCTt0k6+RKH17QUILDfBw/eEAejkeXZxIegNkX4yJc9uNoqPkehmvutVj+j1DhiZIt
         9eWH2TwzDUX7MwtZWix0atNcx52WA5tdG4C777T9IHEr1r1yG1ZatiQ+aQnR9dWMH4EN
         Qmsl4qRaDyINAWJb32EcMDgQA8W5CznsVaOVCbijX8v6x2mTD0XjfTpowHYWTR/c38S+
         mMm5744XsH5V5fL+oosf+jw5hIkyRAQIOHrNWU9KFrQAKZX2JhRQOi7mJGjiZq28xPD+
         BNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733351615; x=1733956415;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ZA+/Ynbct9XmJ/pDgZLrlz4vByV1+ncrGt31MmPRsc=;
        b=u+OusSkBsRa6SPT9j2c1beGiTRhmoPPZTE3KZHcSUkJ8wlK89TzdL+YT1SnUm9FwPY
         jVwfDQefzUzDzYyHrli93P99AxGIObSekdMGvwSIQjqFsaYa7SpOyXD8ctvQ3UXIovjk
         xL20ap7FjtimHUqO2WZIu8XUco5v675fX5doYsCzW67HOoOJkacEj5SGYUtyqzoJrH8T
         kauXnnk3wKfbUeAi7Ztn8fqJnHg+tm2wNxO5FgXygq8gOgrti6ixIgcIRLjogahuFOVM
         +IZORRdB14ixyLIpUaLgie6YPbbpGoDwM34tlpdbOqUCnQhrfgWDjoo9G2D8JyxCR+WO
         KDBg==
X-Forwarded-Encrypted: i=1; AJvYcCVrKxwPqWpJDz7+Wv6Cj5bP8NsQao9XMdK1AI6c6ASXdL6/Il1umk9XzqVlM986oFMXLMR2CqrtJBGr@vger.kernel.org
X-Gm-Message-State: AOJu0YzgDcfKNaTpFKjgmZWM9ltoR1bt5pWS7kjBGQIIl1vRhBcJCend
	Q+79PPJWXL57v6n2m4HW456lZxeXFOzoNsv8YvdHK+YYOfHUKewzo6J2qja9+dM=
X-Gm-Gg: ASbGncuh7woGj3p3wR3G5Mrtoy3MHWZkOfdC/TrEYmYm+iv50YmY/JsJzioRUH70grO
	U3OMPUzXTpPm5VCzV9eQOs52XLq9zHhcqZBvK2hyiAVukv6wOrzuPlRm9+fjFiZcace6pbVeQCP
	Fhi7D6vPC9KsrCV/SikWXA7BECnfTv2AtCpOY0MqO5sofLmY1pMZMm3j3agNO6TrmYABOtfEUOg
	OCUcVr5EEwWUXHn2+ohX8xUHbxY79eM7q8GgcgR5tF5BY5Tu3Wm7j8Qm4MsvpFdrg3EcFWFGH93
	LizRp5QBrAlqlI7mRsvCqBm2qNnb2A==
X-Google-Smtp-Source: AGHT+IGQS+X6xxLW7rENTxfs/AsPLqM9/viSn6e/WXTrVzgckr92jwEcQHj1cg2TaCS9ztS2W2MXkQ==
X-Received: by 2002:a05:6512:12c5:b0:53d:85dc:7c58 with SMTP id 2adb3069b0e04-53e12a3932amr6597198e87.50.1733351615312;
        Wed, 04 Dec 2024 14:33:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229bada0sm21317e87.168.2024.12.04.14.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 14:33:34 -0800 (PST)
Date: Thu, 5 Dec 2024 00:33:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/8] clk: qcom: Add support for GCC on SM8750
Message-ID: <s7kuwinorqu7i6sdhwqjftcawa65szzze2bhczgpmuqp4dkids@jsa6dthf3omj>
References: <20241204-sm8750_master_clks-v3-0-1a8f31a53a86@quicinc.com>
 <20241204-sm8750_master_clks-v3-6-1a8f31a53a86@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-sm8750_master_clks-v3-6-1a8f31a53a86@quicinc.com>

On Wed, Dec 04, 2024 at 11:37:18AM -0800, Melody Olvera wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Add support for GCC for SM8750 platform.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig      |    9 +
>  drivers/clk/qcom/Makefile     |    1 +
>  drivers/clk/qcom/gcc-sm8750.c | 3274 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3284 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

