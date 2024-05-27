Return-Path: <devicetree+bounces-69398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6443F8CFC49
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:59:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A6B71F22898
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE8D6A33A;
	Mon, 27 May 2024 08:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zr1A8kS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BB7433C8
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716800347; cv=none; b=LL7eYzvFQLQeEf9CUGIIoepe8YsRLy5xFdDc/t6iCq3Vbqy0FFrJfUDu6XKcvDe6dzjjrCSJ/OWJuWPhZE3/mLi1l2XV72ViCJ7CT47Iwdwr/CLSfy3uh5KEJLxMXC/G4FJ/DzxWw+f2DodozNV0OFcrwu9aDwEaT0TNxqlijn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716800347; c=relaxed/simple;
	bh=A78FdFo4RLjFPLucX4ffcT0ibYCwJ3V6Wxt3ML0Ii1o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iiHA8jRr0HHSVFteaIitUrV3ughcHmZLMhRHEUcQ/kAP42wNWjYy0i7SpkOiT/K2ReT7h0FGzcnOfCIA1qtGZxsQAiSKRt8V/0jYpLJyF/XYsMiuMQLl3Wyp4rQ500mtrMhwsQalQNazbRLslaj879FF3PqKtAqzF4z87sEaYPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zr1A8kS4; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2e724bc46bfso99127351fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800344; x=1717405144; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/5BNAdc7fzStUp+7Ojtmy7LHh0vzwdBHulbKPGaS47o=;
        b=zr1A8kS4PHcQZ8LV0Vwpc+OGPzZJcxMzVJjE+e+YgooGq3uQ8EiigFen/FnKAiCSSp
         NKzBCMXf4+qpkN4Qju+WPF8cO6I+4jz/t74gQBAucxRfRYaro3egK4PuY7lIZSAT+iuE
         1Xoi6ZuCnk0ma62JgUxY0isquPVoqXEGEKG+spUJitviReUXgMQ+Wa75F4BoVLwZOFx5
         7WuJ1Pcf/kGZxgMQOtevEMxsuDCZDy6i/RbaYfUH1sRX4MClp877bR+vsnVTPPd6MFzD
         iAzaI5lzkEddc9aTY3iJFVKXq5q6RoyBnFCLVC84882HRAEyY3aesa9uRz+CoB4kK3pe
         EmhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800344; x=1717405144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5BNAdc7fzStUp+7Ojtmy7LHh0vzwdBHulbKPGaS47o=;
        b=oH3sPvfqRLQovLvxy4RXLu6VsxT7HgRXAJwn5N/5HBx/S7pnjM+5bT2c0/5pMYmSPg
         Q/IOUzOV9sbepb1q96czj5tzGiWLoytE9YgYTZHinkN+xjoM6z39P7YIX00h0N+P2570
         46JbWEpyXkluz/KvDOhvRXOhPKhjp11vk2ATkazCkiFg2tD7Nczg+JSYXkjmQqPW85jp
         weHSsMKHZtrCYoaxNC8XUu3Qy5H8APnysFZhGS1iFs15XC9jag69lt74pQX6sjqfCKX6
         XreaZ8MpplWtVzf/evEdI1l4Q87RdrvLlsQfImFp6+KvLjIg9yL7s8uDpfZNLQ3ATmXY
         j8HQ==
X-Forwarded-Encrypted: i=1; AJvYcCXE+KNDlQy/ngaDP2Ue6VBfRt+zYVYkUTv/7hvUsFMtcHqYriXPWcLbOMbruM2EQ5w0HepbBkBtY/i2r0OIXJ4CQxbsH2w11eH2/Q==
X-Gm-Message-State: AOJu0Yy60vtDjzc1MuLX3DURPjfde/hv1by6qSJWtqfQp8+zRoJD8fcH
	LEBCwnoG7frgAk8RjQIU5SXGqe4KO9SZe10yVWzCFZvgo2pBLmvMqHebGxTU8lM=
X-Google-Smtp-Source: AGHT+IEN1e8NUNgsI1QLywlyg1XCpUhtQNI6su2WHQ5KSOYWn3ql/TkuY2yIGoxn75XSD1VEQHrSRA==
X-Received: by 2002:a2e:7a07:0:b0:2e1:f199:3853 with SMTP id 38308e7fff4ca-2e95b276994mr52810941fa.47.1716800343962;
        Mon, 27 May 2024 01:59:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95be0182esm18277501fa.104.2024.05.27.01.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:59:03 -0700 (PDT)
Date: Mon, 27 May 2024 11:59:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/7] phy: qcom: qmp-combo: store DP phy power state
Message-ID: <du4345tswno5pfeiux5ks5eo37bbydilvdzw3firnsps2ejgn5@avnoqzxbmzj7>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>

On Mon, May 27, 2024 at 10:42:34AM +0200, Neil Armstrong wrote:
> Switching the PHY Mode requires the DisplayPort PHY to be powered off,
> keep track of the DisplayPort phy power state.

How is this different from dp_init_count?

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7f999e8a433d..183cd9cd1884 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1512,6 +1512,7 @@ struct qmp_combo {
>  	unsigned int dp_aux_cfg;
>  	struct phy_configure_opts_dp dp_opts;
>  	unsigned int dp_init_count;
> +	bool dp_powered_on;
>  
>  	struct clk_fixed_rate pipe_clk_fixed;
>  	struct clk_hw dp_link_hw;
> @@ -2685,6 +2686,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
>  	/* Configure link rate, swing, etc. */
>  	cfg->configure_dp_phy(qmp);
>  
> +	qmp->dp_powered_on = true;
> +
>  	mutex_unlock(&qmp->phy_mutex);
>  
>  	return 0;
> @@ -2699,6 +2702,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
>  	/* Assert DP PHY power down */
>  	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>  
> +	qmp->dp_powered_on = false;
> +
>  	mutex_unlock(&qmp->phy_mutex);
>  
>  	return 0;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

