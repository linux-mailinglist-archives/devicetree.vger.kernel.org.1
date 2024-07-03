Return-Path: <devicetree+bounces-82731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E689257EF
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:09:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73DF7B268C9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA72143C5C;
	Wed,  3 Jul 2024 10:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jJoCd2Ty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294B41428F0
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720001299; cv=none; b=IUbtn/lGDPwElrVQS/j+7Fc7qJYLJlhuRJv5UDgfkpMq5gmxnaF7w5FOmqZfn0i4/n0CdH9B8yU2YhaO0N59/WMPlOAfgpkPJswQg4XT4k9oZ2Op+TNRL9WEs+QJvZES2L+oboCgh0pQCWQJRUCrC8N15TnIAIRCqhxTKBh0G80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720001299; c=relaxed/simple;
	bh=ypzrZcIwZiiS+8SrhLAXiVNNIok0NmG+vdJlnoa5bEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oBIyIqF9WCo+7JugWoYjCp5sqflVPm90qaSY26K46tfrJS++LIDS13UeT789M+2rDYlg6/E/GcI2U3Viedv3iO4MzKJFaCeOYVHPnYN15ZGJQhL1T+51qRZwsy+c1TE48xSwTBi2AEfD2YHLW7psDqGQ4kUKYgtj79OdBIep3jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jJoCd2Ty; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ee4ae13aabso54729551fa.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 03:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720001295; x=1720606095; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4k83HUkLUmDIGlVbWOWQ6orsM1XoadeMJUgBNXrUMAg=;
        b=jJoCd2TyYmA+46A2tieUao2dTPBDhYoOJREsCpr7kaidkDboUVRfE7ZyCorFyHuFnk
         cvncfKMCA57mM/6HBHMI16aUHlKWRod7Nuf9HIPzLBbqkWsgJxbRQIA+c/TcmC/KzyIp
         DGg5AJ3MKOb+aVstjiNHLfvnzj6ZHD+Ynl354q7W4rYs2S/gDNi6c0przU3BKthcFxSC
         vvooZR0T9VEp/NxeofAcQw7s2GENN7zIZa5SoVpreCTlsNhJczN9FXfTLwp5f0F0q7Oi
         kQAsxvarjMHFmoyOtkEIJwHK7HtUr3IVfYYuSAU81iZW+EY/xyY+X4LsOkNT5Mq5c5dt
         aiKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720001295; x=1720606095;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4k83HUkLUmDIGlVbWOWQ6orsM1XoadeMJUgBNXrUMAg=;
        b=hUln+7m4CTYe9dCjaJ7p9ea0rCiLfvRjC5JwEaDkAGeCMIltdwbECMykmNu3rm/mHG
         GO0DxIMKkG7xzUhGCyP+zCtpuINAe2TYePB/6ahM/e0poExdxBpz3zDnBNsTXrJJvAoc
         qwgM5W3VGRhAg3Ozmz+lMkrZN88yd7PyNGq+dwVrO14SwygG6ki05Gkf8+Th58Vu1+gE
         G+zs5wbk/fiSTcfy0zg5lQa2FxLsvHlE/J6YG4rXh7qDntvvNNOW6RCMjA/zhf1opPtQ
         PE40eOoQUnifmg0p1KHaQ+wk7DN6vuLD1O5HJzVXYe5SNsXLpA39+xl0bphfjgaJZ+AR
         cu8g==
X-Forwarded-Encrypted: i=1; AJvYcCUHiZUmVRTB2CxnhlbGH0l3lHEQXLvetMbAognwPlF7LIX6/epgNQ7jUcEKICsdUpOuz/gNuZDqTMhQeigUCXZK7JHX4Zfh9cp4ww==
X-Gm-Message-State: AOJu0Yxv0Gz/BxHvz2oPc9s6Fitu9HwkdVKCSz7ovU2WAxNcVMXUjuGj
	8Ykm07rCt+HzjJu8Rwtm+cN+NfeJMhp4TozhMX+sLEU248wMlCDl2+P4fYV7SZA=
X-Google-Smtp-Source: AGHT+IFeGjoeFVuYs4mjQ5B1qszzT/eYdaDEn12VXFnuiHjLpsvLv38GLADABzzvIgEg3uJdpUVMZw==
X-Received: by 2002:a2e:a813:0:b0:2ee:6b86:b0ab with SMTP id 38308e7fff4ca-2ee6b86b2b9mr66901001fa.20.1720001293291;
        Wed, 03 Jul 2024 03:08:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee8758e4c2sm748241fa.110.2024.07.03.03.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 03:08:12 -0700 (PDT)
Date: Wed, 3 Jul 2024 13:08:11 +0300
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
	Jagadeesh Kona <quic_jkona@quicinc.com>, stable@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 0/6] clk: qcom: sm8150: Add camera clock controller
 support for SM8150
Message-ID: <qf6vv2eyvhl74qylx3da5c6wa5vzz726mnwi4dflehlpfubqwd@e522wwslmgyn>
References: <20240702-camcc-support-sm8150-v2-0-4baf54ec7333@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702-camcc-support-sm8150-v2-0-4baf54ec7333@quicinc.com>

On Tue, Jul 02, 2024 at 09:20:38PM GMT, Satya Priya Kakitapalli wrote:
> Add camcc support and Regera PLL ops. Also, fix the pll post div mask.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
> Changes in v2:
> - As per Konrad's comments, re-use the zonda pll code for regera, as
>   both are mostly same.
> - Fix the zonda_set_rate API and also the pll_post_div shift used in
>   trion pll post div set rate API
> - Link to v1: https://lore.kernel.org/r/20240229-camcc-support-sm8150-v1-0-8c28c6c87990@quicinc.com
> 
> ---
> Satya Priya Kakitapalli (5):
>       clk: qcom: alpha-pll: Fix the pll post div mask and shift
>       clk: qcom: clk-alpha-pll: Update set_rate for Zonda PLL
>       dt-bindings: clock: qcom: Add SM8150 camera clock controller
>       clk: qcom: Add camera clock controller driver for SM8150
>       arm64: dts: qcom: Add camera clock controller for sm8150
> 
> Taniya Das (1):
>       clk: qcom: clk-alpha-pll: Add support for Regera PLL ops
> 
>  .../bindings/clock/qcom,sm8150-camcc.yaml          |   77 +
>  arch/arm64/boot/dts/qcom/sa8155p.dtsi              |    4 +
>  arch/arm64/boot/dts/qcom/sm8150.dtsi               |   13 +
>  drivers/clk/qcom/Kconfig                           |    9 +
>  drivers/clk/qcom/Makefile                          |    1 +
>  drivers/clk/qcom/camcc-sm8150.c                    | 2159 ++++++++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.c                   |   56 +-
>  drivers/clk/qcom/clk-alpha-pll.h                   |    5 +
>  include/dt-bindings/clock/qcom,sm8150-camcc.h      |  135 ++
>  9 files changed, 2455 insertions(+), 4 deletions(-)
> ---
> base-commit: 20af1ca418d2c0b11bc2a1fe8c0c88f67bcc2a7e

20240228 is very very old. Please don't base your changes on historical
linux-next trees. Currently your patchset doesn't even apply cleanly.

> change-id: 20240229-camcc-support-sm8150-d3f72a4a1a2b
> 
> Best regards,
> -- 
> Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> 

-- 
With best wishes
Dmitry

