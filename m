Return-Path: <devicetree+bounces-148679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D324A3D07E
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B728B1783D0
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3101E0E15;
	Thu, 20 Feb 2025 04:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iOYThNhB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635591D5ACE
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740026075; cv=none; b=pGgSiS8ytftRdRSfRHW6V/2P71RPaWQUEDX1fLiAy7mQLqDuS8U/CvwH8nZrJLKCx+ZQZdfR89Ct+8/FGVhh+/oC1DIKbIw2/cbyxj/GdGatDWBTFWU/CcY44u4dPuPdGRZka3ZO5WmRyyhHCLMj5Lh3iuBV6i69r/+DpNGXqgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740026075; c=relaxed/simple;
	bh=jgwDoqy69Zoi+YVPD9FqEbg4CovWykgUn6vteBc7gB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MSUZVlOe+/Q8q2mm5rw5I13QjV7Uq89XWNGm6uqBzhIzTjy84Zp2iWJjXqJH277PTjm9/N7cv9HtvRByKOEKpb5IlnHRuGU+ZIz11faJm+VKHu0RFCS4Ff7fF/RMmZTjrYbJ+bQHnoL8FZRkSsdB1Z3U6nnLypMkmMYLorFFpnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iOYThNhB; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30797730cbdso4718351fa.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740026071; x=1740630871; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zIgZ1R2fo/uZR08EAHjfTKiWP5NrtPRgl9O0Ta2Iyuo=;
        b=iOYThNhBlRaeNob5B4Vf2Ah8E4Uqn3Iu64625cWrT8f1B4OGSvucl4/kACnwVnZHAJ
         mff7LD6OwgqA8r7zKmTXUNOEwq5lwfUhtwD4a9UefC76FIVNc75ozwoV2pwicWccuupY
         LRd2aaAudci0NJN1CtuTqvjGEYCX+bx4lmMH4pWqZHR1THgYK6JmU3FpADNm/7YpJXmn
         OVFHrL+rXlGpkUX07dFzOoZG0F4z9a1piiJWrjCXHAPjfoM+SM3rj66FFVquzCOG8E8e
         +lQ9dsV21U0vz+7NctUXlD93RQxdiegWlfdLCunMuRecVkhYuGSoKO/S/WJloafVEPpe
         5NWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740026071; x=1740630871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zIgZ1R2fo/uZR08EAHjfTKiWP5NrtPRgl9O0Ta2Iyuo=;
        b=YlSxO1Gi8AUrRtzIiBvZC3+yiwZ4pEkwZgRnzmMCl5YoT1pUHerpwKdsLoezx+dz79
         aw+YGHpzmeRCU51b3jDiINCQJt/gDWeE5AZdgrj3KqTQodMMlYAGsNH5G42CDwQIWSQa
         5nLDwsmqpnSWImIriUCkKzgJ/yY4peG8dhTl8LIqChri3lA4PfeMvVDac8jBi4EG5/rg
         oz/KAUOSH3tD6QfNVn8iYtgqOVLK8clDw/WhmMM4D85v2Kt+tXSYVixMOQgL/xQ8/Ysz
         YvNXlf4K9AUH/XPJXaonoxrP6RB26E/i+JZ9LYE5vH17PWwcpbHwdN7rxMRTrPL5scMl
         fIuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKO7u/3kwEAQh/m9RLSf8GziRtPav6QRQq0ZIFo8AyApSmvVz1hGBgJKxLHYHOEF3qRKpWfyjDv6IR@vger.kernel.org
X-Gm-Message-State: AOJu0YwaTdR/K/875YxGpW00H4aufWdrnjEU8IME9XNO0hGL+pYQBqwg
	gZmvwvFPDrfJZAH/r73mxSGNT03LbRRgJ8rs6pMUSJRQB2PUU8iQukzj4Pjil9g=
X-Gm-Gg: ASbGncv2+1cBCMIaSqpBDpq2OlsLinDwd9EZmY5e8wEy6nBZ0Z+mNyJH24g7Q5V7Ftm
	AV/hVTgO3y5Ml+jEh2WsRRoYUIVezVhDGyJatLvyz1/awOqoVomAJxkzSQZ3mPX8IgW6a2XXDBr
	193N5BubP09jPO+/K/CXk4IQbTTAByO6ORQ1ipQAmk6qdEJetmkr21isr2rz8N3YQy1Q6DkEWma
	QEQlWSeSC5rq8KA/UZ5O7cETLwdBn/eV7Hcgt5VuXYq9+GZwKfgu/dU1P4wwtU6j8OLw8Q4gknF
	L+U2zYqFynqhBRuyIKV2oprc7ONjHCUWyu0yi2Jg8DRXmFy2+ikPVO9KnsinZr9JbDDwGII=
X-Google-Smtp-Source: AGHT+IE/wbNVeqMIzJ0mRBTmf4NCpaNwWVzHs+1/sXMuy2O8j/XZA2bHjBHzaK7WJJplOVmy6+jcMg==
X-Received: by 2002:a05:651c:20e:b0:306:124c:69d5 with SMTP id 38308e7fff4ca-30a450620b4mr22664261fa.34.1740026071154;
        Wed, 19 Feb 2025 20:34:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a2699d0f5sm15178761fa.78.2025.02.19.20.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:34:29 -0800 (PST)
Date: Thu, 20 Feb 2025 06:34:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] clk: qcom: lpassaudiocc-sc7280: Add support for
 LPASS resets for QCM6490
Message-ID: <mtfck3p6touzlsogv7xu2sqstfi4tapee7dqdhx76ktpgqhw5e@g45ralchrf5l>
References: <20250220-lpass_qcm6490_resets-v4-0-68dbed85c485@quicinc.com>
 <20250220-lpass_qcm6490_resets-v4-2-68dbed85c485@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220-lpass_qcm6490_resets-v4-2-68dbed85c485@quicinc.com>

On Thu, Feb 20, 2025 at 09:52:51AM +0530, Taniya Das wrote:
> On the QCM6490 boards, the LPASS firmware controls the complete clock
> controller functionalities and associated power domains. However, only
> the LPASS resets required to be controlled by the high level OS. Thus,
> add support for the resets in the clock driver to enable the Audio SW
> driver to assert/deassert the audio resets as needed.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/lpassaudiocc-sc7280.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

