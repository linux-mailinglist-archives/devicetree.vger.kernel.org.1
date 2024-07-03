Return-Path: <devicetree+bounces-82734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FC7925845
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B90A91C21D11
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E1115CD41;
	Wed,  3 Jul 2024 10:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PCQNec1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BD4143C6B
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720002048; cv=none; b=h+BzBrSY6Wr6E55cysQevottOqQAH728B1R1Ee/UDtnXi9nIpyBdNB3r9beVewMiroaNjoF4Oty131+BVJGmGGi+TaYVho+EY89XGW3Szfx719Z3riLQV01gNVxtieTXG3vnfaJl5RzK5UsPxXe9Z7G/Ei1qjnXBItLCS4ROcOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720002048; c=relaxed/simple;
	bh=qcsPx+KivTw8iXF20LmIfeCsQUVmqptPLE0ZJ87n+Oo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qh3VH+7XzOvZsSJCGry6WY9pRzt+O/3x7gQf1w3Hm+BRCINoNfjmobF+1+xKkkhBzic7auGV3UZ9froSo5mQhBFQO+LD1wvIqBBk8kORmvhH0YRWcVfoh13yE4M3yDW+9IRGgFhCfANw4ia4O9ubYbcuS04ghzWsZbzdi+/NbhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PCQNec1U; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52db11b1d31so7267618e87.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 03:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720002044; x=1720606844; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5taOoR0Y0Dzy5R91jQuwaJ5ffdU02FaiXhjYh/HF6lg=;
        b=PCQNec1UbPxb/gZ2TwexLDHbWahmaCbZCRQn7/z2o4wdSDUytLhJT8lZKOwplGQ0th
         Im/Q0rty1Tb+T9i0U2rauvfwVUDnFV7RyaJMrCtwxNWgQLSWR1HilXiJGP2BqoqVwHOc
         GKP1LG1wYNF5TARylXRj0oDhH7nae1wzulxJlJn+GjNpKZ0jL+4lCNORPdcZaiaak+/A
         zRamFlkwWQDF6DgDtuyU1xZlnxz8ZOxEh/iznxg1JX+d7q9zi8hWLQJ0UeN03ptPAGwl
         1mhXsd31XO720gRBmF0+r/v2xcJKKOV9c66poCk9UgCEMxA20zqSW72qc4OsDg2ZWR8i
         /euw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720002044; x=1720606844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5taOoR0Y0Dzy5R91jQuwaJ5ffdU02FaiXhjYh/HF6lg=;
        b=HOVTBVxhP7ojbRPQ3FWQbzS//yDQV5jLfOBGjuSYGCLzdT0iy8+FBBghWgz1/dqJXB
         EWLZUzH//uPyXqNKFLWr7iFBmKTX5KPwF/WbQWur7LOwCE5vsFPqocFN2vZGLVcsJrVQ
         qpXiUQGO8yorXUp6D9t7l2JtnmLj6XYrxRIOjMM5+N1lO6fUmvbBBXNn+44MrpQKe70J
         VENpd5zyoTRHAloV4yYNy7Mu15bkpFXKayvEKXB7ZRh+t+4uMdEU90+YhJ2NFNVwfVKK
         jSBBfexhl6kiG2OsnLSjLImJqgczKNF5jTn7ZEh6LLdzQje6otad/k1rTHTawXPK3bnd
         Gm6A==
X-Forwarded-Encrypted: i=1; AJvYcCXM4a1+Jwcr0PhWhPXAMyJCIUuH+tbXi+s8JsMrepqD3wi2JVIyN4J1kXlaQf+jSxvbSXFCNBJwDqlKMJAloGHh1NFMVN3H3cg2uw==
X-Gm-Message-State: AOJu0YwFi5FWSQInrxH5uOyToDtgvMYqVadWgbdWqkTq3DgosDlj1WDq
	F6S+2PwztButfXm4Xt148QnUnHOgHmDIQRmqK+/45Ml+q2PVckxpDzpU0Hsnvzs=
X-Google-Smtp-Source: AGHT+IGKIa0XD0fcaWip5lmRN/9aY2Ecb7ckydCu8fEYpC2X6R4ZAPqT/yNSktLHY44OcKucRamHqg==
X-Received: by 2002:a05:6512:3124:b0:52e:9ac6:1fa9 with SMTP id 2adb3069b0e04-52e9ac620cdmr298939e87.25.1720002044092;
        Wed, 03 Jul 2024 03:20:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab0b81fsm2094616e87.46.2024.07.03.03.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 03:20:43 -0700 (PDT)
Date: Wed, 3 Jul 2024 13:20:42 +0300
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
	Jagadeesh Kona <quic_jkona@quicinc.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 5/6] clk: qcom: Add camera clock controller driver for
 SM8150
Message-ID: <xbe7kmaxhfwy26qzxrmwgiijaaiap4kdkruaxjs6ymihaw5taf@hvj57wyncfea>
References: <20240702-camcc-support-sm8150-v2-0-4baf54ec7333@quicinc.com>
 <20240702-camcc-support-sm8150-v2-5-4baf54ec7333@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702-camcc-support-sm8150-v2-5-4baf54ec7333@quicinc.com>

On Tue, Jul 02, 2024 at 09:20:43PM GMT, Satya Priya Kakitapalli wrote:
> Add support for the camera clock controller for camera clients
> to be able to request for camcc clocks on SM8150 platform.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig        |    9 +
>  drivers/clk/qcom/Makefile       |    1 +
>  drivers/clk/qcom/camcc-sm8150.c | 2159 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 2169 insertions(+)

The patch mostly LGTM, several quesitons:

- There are no cam_cc_sleep_clk and no cam_cc_xo_clk_src. Why?
- Why is cam_cc_gdsc_clk not modelled in the clock framework?
- I see that most if not all RCG clocks use rcg2_shared ops instead of
  using simple rcg2 ops, could you please clarify that?
- RETAIN_FF_ENABLE has been used for GDSCs for sc7280, sc8280xp, sm8550,
  sm8650 and x1e8 platforms. Should it really be set for sm8150? If so,
  should it also be added to other camcc drivers (if so, for which
  platforms)?

-- 
With best wishes
Dmitry

