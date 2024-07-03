Return-Path: <devicetree+bounces-82726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 212189257AD
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D773328577C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B251422B5;
	Wed,  3 Jul 2024 10:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cOnYZ6xK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EB313BAD5
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720000906; cv=none; b=Gsll3jo/kqHKXOWwrFqe2e4igp9i2+RWKojd0R7S/VstRsBaRPbxzoXrhed2E1rNHkLChr27jq8hckZResjvZqzuTB1JcUe6vahPx1DwuHq8lIKpgr6dgivbEUUwGo5c6VCiU4WkLW3k0w6FckVnPH0eUI6YpJV1O3tseRI2Uy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720000906; c=relaxed/simple;
	bh=IoztH7c3ObPzPyOJzXRpFf3OvcHSvttFXXjWl6mAImk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YP8OQhEXDzkWG8zIsMr2Vx6JvJg7cDbjB/86HQ8S1JvXnaaapw6mC46tI+agAXExys1HA+Gf2U51eeAcduHYIatHDbrWaRh9zeKggtV3DxLHwnXnWAOX87ZZzg2BgviP6pr1DcSsSeevVwfAU4ZjW5bL0akkAOgof+53lwrLTL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cOnYZ6xK; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ebe785b234so53566111fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 03:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720000903; x=1720605703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ba8TVs0WiPW/mrVDZB1JnVEfDtu3H86gU8ZQ9MafN2c=;
        b=cOnYZ6xKRBAttW8/AJvS8G3KoH4Xq2Pua85oqMMlKvuZnD9DaxAk1oNZ91SIqt9BgB
         YJ+EMEOmZgbKA7m8b1oky8TZjPibE4vdTr8Nx+EhMa2rYI9RGXatFmFyZhruLz6Az+it
         HmQJdRLPwJ5ILE7IKV5uNq8jQu9XEJdAGEtSN/+vkb/vt5qtDFuKrMd1MpkwyDPHv5I8
         mov4gifDGzBZRkRMQHn1wd6zF5xRHf1RDXU1bz8FXXdLiZju9SZsqDBvd1nICZR1hGaD
         jG7+ab8VaTLiN80H20o/x9Gkuxw76DOL+QoCJLC4LfCZST9fOJkqzOESlyyvHK2s6Q3l
         xfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720000903; x=1720605703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ba8TVs0WiPW/mrVDZB1JnVEfDtu3H86gU8ZQ9MafN2c=;
        b=uQOiXQmgajuXfHw0Gz1w6jKetCSKus4/VNB517i9eYt7/FOECiRDjM3ZhnFOGjWojN
         k6mR2BYlIEyMx0Q45MQSygdgSQc+nHB1tXSHrQyNcE0NpmqYU27tapK4yWhsFpHZREPh
         NAj1Kl1MNmYFieD6T+ZA8FUL/rwqKt+usvp10LpZu+/B5ATItm4F/Wlv4kdEtBnj2mnO
         LcvBsfwre7I5ubmgRXAPeIBoI4USbQRwHltbRJ4aIa9hJnhOzQnLvsLJ4hmapwUMb8LG
         dxWuztE8pfbhgazNaIr/NbHlyec/w0XIItKIrGMDTdRV4Y/9zyLdHfww6TOTMqtliVKV
         DjIw==
X-Forwarded-Encrypted: i=1; AJvYcCW/mNy007NUDr5ofO+6R9VB3307CveNzBFuag798A3ncusRVqWW5CIMCeORFAFLjXP0YB4RvF0D8DbhURMevMWZbbBtaR0uAuYlUw==
X-Gm-Message-State: AOJu0Yy6bSxx3j5Bx7GUyv9Mqq2jkNT4xHPf4eb5Vt6Ypl2Q4kHBhPZY
	EG5V7gTRi4+p54adX2iNGotzCopLuvS7jySYuYrxnlhDq5hwz+TyiHk7j97PWJ4=
X-Google-Smtp-Source: AGHT+IFt0NIPlTRfTacZKad2D9AAb0rB8mNH1GSrB71JnEIIs0lwsvAcQ1VQLk1LTElL0scOqic9Gg==
X-Received: by 2002:a2e:9849:0:b0:2ec:4e59:a3e with SMTP id 38308e7fff4ca-2ee5e4bb7a5mr70347281fa.23.1720000900854;
        Wed, 03 Jul 2024 03:01:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee59fd21a5sm16276051fa.129.2024.07.03.03.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 03:01:40 -0700 (PDT)
Date: Wed, 3 Jul 2024 13:01:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/6] clk: qcom: alpha-pll: Fix the pll post div mask
 and shift
Message-ID: <gx3vhkjvwwzxvbh36c3bwp5kw7pxiki2rvsp7ig6rdo3gw6fju@afmhwuwdqquj>
References: <20240702-camcc-support-sm8150-v2-0-4baf54ec7333@quicinc.com>
 <20240702-camcc-support-sm8150-v2-1-4baf54ec7333@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702-camcc-support-sm8150-v2-1-4baf54ec7333@quicinc.com>

On Tue, Jul 02, 2024 at 09:20:39PM GMT, Satya Priya Kakitapalli wrote:
> The PLL_POST_DIV_MASK should be 0 to (width - 1) bits. Fix it.
> Also, correct the pll postdiv shift used in trion pll postdiv
> set rate API. The shift value is not same for different types of
> plls and should be taken from the pll's .post_div_shift member.

Two separate commits for two different fixes, please.

> 
> Fixes: 1c3541145cbf ("clk: qcom: support for 2 bit PLL post divider")
> Cc: stable@vger.kernel.org
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index 8a412ef47e16..6107c144c0f5 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -40,7 +40,7 @@
>  
>  #define PLL_USER_CTL(p)		((p)->offset + (p)->regs[PLL_OFF_USER_CTL])
>  # define PLL_POST_DIV_SHIFT	8
> -# define PLL_POST_DIV_MASK(p)	GENMASK((p)->width, 0)
> +# define PLL_POST_DIV_MASK(p)	GENMASK((p)->width - 1, 0)
>  # define PLL_ALPHA_EN		BIT(24)
>  # define PLL_ALPHA_MODE		BIT(25)
>  # define PLL_VCO_SHIFT		20
> @@ -1496,8 +1496,8 @@ clk_trion_pll_postdiv_set_rate(struct clk_hw *hw, unsigned long rate,
>  	}
>  
>  	return regmap_update_bits(regmap, PLL_USER_CTL(pll),
> -				  PLL_POST_DIV_MASK(pll) << PLL_POST_DIV_SHIFT,
> -				  val << PLL_POST_DIV_SHIFT);
> +				  PLL_POST_DIV_MASK(pll) << pll->post_div_shift,
> +				  val << pll->post_div_shift);
>  }
>  
>  const struct clk_ops clk_alpha_pll_postdiv_trion_ops = {
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

