Return-Path: <devicetree+bounces-76478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC31E90AA2F
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 11:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CF611F233A4
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42334194AFD;
	Mon, 17 Jun 2024 09:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R13CoFP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6D71946B2
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718617205; cv=none; b=qaEUyyf+nEutsN4D8zzi0HRi5wlUEwRlUjhgQwA8Og/+Md6Y2rFYX9leWQ7oQPUtreBXlFdona+IIzUK0EAZx0Ty0qMXT4k8X6xAdXilUWi1Av9bWnshT+fGRDeU+jVEt+eQrefM21MI08UPMtFJu3P+qC5PKBBTrmaUfe9gD4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718617205; c=relaxed/simple;
	bh=kyIB1+ZBBv072lPjp49oYqQ7Ic3C9PckkBS14t7l6wE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Me73jQxJ7lOBfD497xgnQhflRCTRmECNllY4+ark9vWvIYevP2+ymD5V5lg1pg7vTcusSzSAQyGdIkHMw0Fmmxbr+5tdYT864B/wHsCLN3hH2QwF+yqa4qWOpnEQvf1wf+bZTjqMKkLAexvOmfpLNsyq/zFluckKP4I3QUtkplc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R13CoFP3; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so46395791fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718617200; x=1719222000; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4+S232WSxS6ZLLT0oNMw4Vc9BMwBNqpTcyoAp0ZbZMI=;
        b=R13CoFP3ft+9880OWHjeo0HtlzVfwipmX51FXAvGo/wABRWOIK3acmeHCRASrv8ryj
         Kz5DkEOcAutqxEL5kmtHrAiFH5gl63NvRILhT6m7pesVx22rvESzBtzg1cu/5TF4YIp1
         yTkAFFg/9kiak5ot0HrWd2RdniRS8CzUCNdd74t1Xojetc4XCJA6rzHTpDjgtrdi6Sx4
         ccmu2+j5XeWRBFalsMFCftJdewI8PODeQNcxkFf9dZTlLOUpnB22oD7ZWYp0xoJD879M
         cRAimp/o2MizFljpcFhjthMiFbJMiVx6ZRYPxH5LNvS1uLGpEV9gjAC+FvlhG+37Uu2W
         CD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718617200; x=1719222000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+S232WSxS6ZLLT0oNMw4Vc9BMwBNqpTcyoAp0ZbZMI=;
        b=nnVUAcQXydzI10pep11sesUSuRg9Q6BZAZ6fFQrXQi/UyuANHXe1xMcygldmYnCQUF
         PZISWU5EDEPdl56XqsCMgf3eCpL6wbxb+wQ6B1f3mJUXVxEXGu0x+Bo66VTXaCTMpoh9
         9b7phZqwKmRm7rCR7Esy1eU0nNKnr1DMUoIvPoo/Vs/ytSAoRNjshoOmzTP9SjKkJIQD
         7c/zyfckReM9eCKAEEbzjsFtdDqK71W2fPbfMTra/0L9EfFWThTD2Wa/JtDNcOoIrrPj
         Ri3tx7d4VDncUCRvp0EviXam5puIy8g485WerANiNba7j47dNoxmK/xJ6E5d0wBuVhkR
         UU3A==
X-Forwarded-Encrypted: i=1; AJvYcCVCPU031UnQcVDKwsFwZmgyTZaXEok/ssUw2YX94OF3q+fRKQDETJe+ICUd6SPFoYmO9bk+wxPOeKMfrBorQ5ap4Pd1U2Y6It4QFA==
X-Gm-Message-State: AOJu0YzRUOP8p94Cifgn2Y6L6P3na0yq3IJgE3SFoZu/hUsgFS9NvqMV
	2NbTHmfoI6/uR6M/rpqm57ZvzIHtOhA2xHgce3W1z9bUycTCF0nLXozkxkFpR00=
X-Google-Smtp-Source: AGHT+IGlYVvT0Ws/bjXzkYFWPhc39m6CuKC0rzf52NQAanWqjZRXNLVFHI9AxNwrxYAOTdWbtfLCTg==
X-Received: by 2002:a2e:84c7:0:b0:2eb:d8d2:f909 with SMTP id 38308e7fff4ca-2ec0e46deffmr66007861fa.16.1718617200444;
        Mon, 17 Jun 2024 02:40:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec18a47deasm9239791fa.132.2024.06.17.02.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:39:59 -0700 (PDT)
Date: Mon, 17 Jun 2024 12:39:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v9 2/4] arm64: dts: qcom: sm8650-qrd: add the Wifi node
Message-ID: <75l2xiopwaw4yysktkowwa6zj545rwoekiigrp63tgljgo235r@yqedjqqnqrov>
References: <20240605122729.24283-1-brgl@bgdev.pl>
 <20240605122729.24283-3-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240605122729.24283-3-brgl@bgdev.pl>

On Wed, Jun 05, 2024 at 02:27:27PM GMT, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Describe the ath12k WLAN on-board the WCN7850 module present on the
> board.
> 
> [Neil: authored the initial version of the change]
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 89 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8650.dtsi    |  2 +-
>  2 files changed, 90 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index bb0b3c48ee4b..903c013d1510 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2300,7 +2300,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  
>  			status = "disabled";
>  
> -			pcie@0 {
> +			pcieport0: pcie@0 {
>  				device_type = "pci";
>  				reg = <0x0 0x0 0x0 0x0 0x0>;
>  				bus-range = <0x01 0xff>;

Same comment here.

-- 
With best wishes
Dmitry

