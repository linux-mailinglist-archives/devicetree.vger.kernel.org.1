Return-Path: <devicetree+bounces-82169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DE191EA0A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 23:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 995071C2118B
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 21:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD6ED171650;
	Mon,  1 Jul 2024 21:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y02spQQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202268249A
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 21:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719868431; cv=none; b=P+WGFvMnZmiUlcn4Uei9SLm1VmrVJ4Fw+EfPlGArhwgTIFchO0+vkGKSMWj/ad0U9Tivk/HO76E9VI77FWFNq/7Iwdbht4WXR8DmY82I2kuzCza3Jz+ZXzEp4CsXV3UlUY+aIiKvbYc6Z81e496H6LUBcNZdJL9e83p2ZTBQf2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719868431; c=relaxed/simple;
	bh=N9uOqUVYxAGpmBSqVCGR2aqU3MIpbs8kOF1uwgEsfQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WoNvQfhYFKkztVv/CS7/sy/D89ATUaO8FvaKOKM0+XcrDnq18CeqNWqXEf6S/yKrHIKQDuXGqaw0gfrfVUnOQIT7NC/SiWTFOtZc5+OVA3g9kPCrkWOJOu9vbm+SHRy0MdAEXHeCNTNghLyHqFisbS5KKrRE0x1jrBsKU1AmZpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y02spQQa; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52ce6c8db7bso5175014e87.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 14:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719868428; x=1720473228; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ptVgN4YYQpEV6K7/5QCI7DKm+XnNleCgayxUZPXecLo=;
        b=y02spQQaNA0dbUWo+YMIEmzeEgyqqYyUkUGkvRCBfCRPx7/E7ZJiK2l6nit7SpeGuR
         Y7iPJOVaC0AHh8r48zLN66BOmN8gsE3288zBt6V8r7VBoO5cS9tD1Bv8wuGIdcWniglR
         BG6EstFIq36ZKl7DFAdzuTOsdTnao/DkOd4vZkJw4YC83OOrN6nKm2xqrEpbcKxb2O+9
         GCz6IzRFAd6VioER7NhcKiGidsm8Usdx84DeY4xLa1yewOqZvtI+jMm1tsaBKPmWx7ts
         4NSrSIG/J3mLUpmV6rGwC1XWQ6Y1T71/k5Ny6H5j+uDyE1JrDSSYH7Y50Kgjnu8vcOWS
         tuBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719868428; x=1720473228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ptVgN4YYQpEV6K7/5QCI7DKm+XnNleCgayxUZPXecLo=;
        b=l2d2EHnF0IzTIvMwYQLYsq4baz2deNHXLJcRlm39romtsqoPcEdtU+A7nN3NOrb1b+
         V2g5RJwswOAdpZiwUjBt0TMxDgSwDqWmmY0neeT6E9Kx02c4C1QbREpWPotLRXFAEHiG
         Nbim7pE8zr+je6mB+W5vf47jBJqJcekNvBovE3Uc/LZovT6LuW9m0seasWA7iQKiOz4W
         6ao4rrjAohE/Rm7BLnMkz0OTcUIG8B9jox1DC54QxWaYdxIXrt9pEgdNO21c+aRj7ox6
         SmEKp/49hsM4LdwRJAFTAGzpBWE12fK+us7bDK/QEyK/MDHiH3IIgW4WuR6EgEVhQ2hl
         3dnA==
X-Forwarded-Encrypted: i=1; AJvYcCU/6uQA0iIc/MPxuEFqlsIqu9Un/5lqq/mENh6eWsCKClrsfcuOnC2OuWRmsl7WeyN4ziVmXX2KL6CfQvKRp2VPIk+SG1aoc2QcoA==
X-Gm-Message-State: AOJu0Yyu5EFgNVSPMVgh5WJgfOjATDu45sAC450tqx77tL+eWEJsl0wr
	qCT568OUZIUqcDfE4d7xQlbXh1FOTVnsX2UIbQ/rz5ICIeOoGmheuU1E/7LBsYg=
X-Google-Smtp-Source: AGHT+IE+7PRGx08DXH7bHPZX83Ev55PRXCk/fMJ5OekuRsZQMTczkCluMwsrIcyAiP+bY+Xpuud/rQ==
X-Received: by 2002:a19:e010:0:b0:52c:d84b:eee6 with SMTP id 2adb3069b0e04-52e826932e5mr3754518e87.38.1719868428177;
        Mon, 01 Jul 2024 14:13:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab278c6sm1557144e87.157.2024.07.01.14.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 14:13:47 -0700 (PDT)
Date: Tue, 2 Jul 2024 00:13:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] ARM: dts: qcom: apq8064: drop incorrect ranges from
 QFPROM
Message-ID: <65yya36amcxdvdob7impc3nlwkklzxbnsi2vpx3scbbjqxloty@y5tj256dtxvq>
References: <20240701062253.18149-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701062253.18149-1-krzysztof.kozlowski@linaro.org>

On Mon, Jul 01, 2024 at 08:22:53AM GMT, Krzysztof Kozlowski wrote:
> There is no direct mapping between QFPROM children and parent/SoC MMIO
> bus, so 'ranges' property is not correct.  Pointed by dtbs_check:
> 
>   qcom-apq8064-cm-qs600.dtb: efuse@700000: Unevaluated properties are not allowed ('ranges' was unexpected)
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406292139.yqPYyUfi-lkp@intel.com/
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

