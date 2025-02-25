Return-Path: <devicetree+bounces-150912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0D5A43E65
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33BFF188BFBA
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748A3267F50;
	Tue, 25 Feb 2025 11:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gMVhCUct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90A92690CC
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740484444; cv=none; b=FeVSz6vub0STwn3S8KVKSGwHxf+U4Rh1VZ/yVpPpa1Dim2eJyCunTXoO3VKIzQWT28BPWLl+/bJdSpPTs1GFZNocnTaPqwSWpGeSqxaa5xVZq3jgzAiPiI/s2aNnLU/BgWepXdBZqB8kxJODEpXTOV9qSmknqTV5PHS7QqdMnCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740484444; c=relaxed/simple;
	bh=5wJRqoBz+/ML3qvHag7dgPsecxHpHLK7X3G2sCfdXLc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=thjMokGQuDdsYtCYcTBYBq8Whf0tTYYCObxtD0G17t8VY++C+2COc7Gr12pmEnDRjxKnSSEl2oltx4e66vkEst7z4LvTHBhqB4FH20ieinqLMPz/OD9wLzztPAMmS83CRm9FluE+xIuL2EIE2Gvm4etCCW254w23y1VbR6Z3xqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gMVhCUct; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54529eeb38aso4680591e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740484440; x=1741089240; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ymFmWqNzSJ3xiwIj3jzQDBcrIOV0GW7dIG4JzK2f73k=;
        b=gMVhCUcts7VkGP55IoZiRY2htS0d5LfWXIu06GTsI+vRzmxJAOSA06xsjVe90WFuAB
         z2LQehH+nY4QCxRRMQ+0ZZSISgb0Nvy/qVZoTcX2h2tPoNgy0e+o4Ph/m/9cENLkOGoe
         vIpZvkUN9htXefZTUagL9vSK0x3Yjo8ABL2KtXewwU4xumQ/tlXBAE6iSJQMYHTHoCke
         EsxlRJ45cE2ACRIcJljCPMKUWfX2z+bQRij3aMkD2w+rqWdxJIYnXKdQJGN9uT2sN88h
         tNDkUCC+5hNphbCKofQw8I6HHFzmI3sxQ887seXUPHlnrgFM82KM9MPkDB7LQ+/9QV8l
         aVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740484440; x=1741089240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymFmWqNzSJ3xiwIj3jzQDBcrIOV0GW7dIG4JzK2f73k=;
        b=NKAaOx4OCV9+0q5fS63C1suX2t2X34tRA5YK6zqS3JfwGbFJHSfvtqlwE+NQjlUvtN
         ZSaciXRVePB78/CSJYIhidX0wiiRmJ0itcahGbcDiyalW9ICK8vTe9Ks5T0CKxBTlXos
         XQTC9pGfuyk4B4nenkDCiQYQJ25D6r0j5ulCizWyyqLJN+33MQ4ZH2Io80n+iF34JLfV
         /0R1W72gckgGv7Ic5Nao9kEKsSmhWOHGVlu5aFJ8BbfE/qznBIViwNzm9tnCK4//uwSx
         k313E2mSQeZNud8f2VjgcZfiwslw1PG7V9uEs461CBno0HBfpZ+5MtyqpfyirFyDdIMq
         aMSg==
X-Forwarded-Encrypted: i=1; AJvYcCUFYkeId+keh2U9QEwlY9v7MubJt0a84C7UQzPIbQvymg5xL/GlpXoN2VsoWBH3K4SOM6I3aFBLmxs9@vger.kernel.org
X-Gm-Message-State: AOJu0YxaZfMZ2TSgalSfT48kBmrbg9VdYNbl1ah7MKeiJkLJkTzs9HwY
	w908tHBXNrI7TsKXM608OZpjw3Akfto0xJsvq+EoeUPuihnFKUy8Zex+xbG34+Q=
X-Gm-Gg: ASbGnctrJEn6jBxv7EzLpmHTSf574MLl/dMrSK2IBBVrnIX+jzQdpf0cxUXuzlwnbTQ
	oLUwDJkOxg2SZ8PggNmL3cs8Zh1ldrJWrT7kn01Ie/MaZvgYgabEHG1I0ojYeJgRv+zv2/Pwz45
	juzhd64/Qwt8HiONXSIc2CUhhJDejITv7pinxJlCjqgqrPvTMbRpr9p32/chLA4Fy1zQfUrwM21
	XnDd+/F9alpBvAzgeDazmER8eT8uoQhFgZl5VMuLI6rUYqjlKkQz6sYs24Bq8Tmeg4I2EpVl6p7
	0AZVecT1gzXlL34XPEK85PSGGTiCxvJR58TpPF0y5DN4X/RZBjMShZ1iux+JP5iB+iA0eFYE5c/
	FuaTd3A==
X-Google-Smtp-Source: AGHT+IETnRRjgsI1fqXk4lWiJqW+iKf/4tgebBXRXt/PZ6XSX/tsgllgQ/Pcz/grRT9jf15M1s7TEw==
X-Received: by 2002:a05:6512:1305:b0:545:48c:6352 with SMTP id 2adb3069b0e04-54838f796fbmr7589865e87.43.1740484439781;
        Tue, 25 Feb 2025 03:53:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a819e0c49sm2094591fa.10.2025.02.25.03.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 03:53:58 -0800 (PST)
Date: Tue, 25 Feb 2025 13:53:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	chaitanya chundru <quic_krichai@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com, 
	amitk@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v4 08/10] PCI: pwrctrl: Add power control driver for
 tc956x
Message-ID: <xpcgr3e6rbviuw46xh4ffmx2j3iryr7tfdnipl5z3ndwlu6k5c@uryhj2z7eduq>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-8-e08633a7bdf8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225-qps615_v4_1-v4-8-e08633a7bdf8@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 03:04:05PM +0530, Krishna Chaitanya Chundru wrote:
> TC956x is a PCIe switch which has one upstream and three downstream
> ports. To one of the downstream ports ethernet MAC is connected as endpoint
> device. Other two downstream ports are supposed to connect to external
> device. One Host can connect to TC956x by upstream port. TC956x switch
> needs to be configured after powering on and before PCIe link was up.
> 
> The PCIe controller driver already enables link training at the host side
> even before this driver probe happens, due to this when driver enables
> power to the switch it participates in the link training and PCIe link
> may come up before configuring the switch through i2c. Once the link is
> up the configuration done through i2c will not have any affect.To prevent
> the host from participating in link training, disable link training on the
> host side to ensure the link does not come up before the switch is
> configured via I2C.
> 
> Based up on dt property and type of the port, tc956x is configured
> through i2c.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/pci/pwrctrl/Kconfig              |   6 +
>  drivers/pci/pwrctrl/Makefile             |   1 +
>  drivers/pci/pwrctrl/pci-pwrctrl-tc956x.c | 625 +++++++++++++++++++++++++++++++
>  3 files changed, 632 insertions(+)
> 
> diff --git a/drivers/pci/pwrctrl/Kconfig b/drivers/pci/pwrctrl/Kconfig
> index 54589bb2403b..ae8a0a39f586 100644
> --- a/drivers/pci/pwrctrl/Kconfig
> +++ b/drivers/pci/pwrctrl/Kconfig
> @@ -10,3 +10,9 @@ config PCI_PWRCTL_PWRSEQ
>  	tristate
>  	select POWER_SEQUENCING
>  	select PCI_PWRCTL
> +
> +config PCI_PWRCTRL_TC956X
> +	tristate "PCI Power Control driver for TC956x PCIe switch"
> +	select PCI_PWRCTL
> +	help
> +	  Say Y here to enable the pwrctrl driver for TC956x PCIe switch.

If you were to resend the series for any reason, please include the
defconfig changes to enable the driver. If not, please submit it
separately.


-- 
With best wishes
Dmitry

