Return-Path: <devicetree+bounces-119948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 308939C0A68
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 16:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3095283E29
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 15:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6319A2144B8;
	Thu,  7 Nov 2024 15:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RNHypDoW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F112144B1
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 15:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730994695; cv=none; b=H88GPmUdqVNv9nb/2k+sjwbas0fp00rd6brJmif5ErVyhmNQyV7Ced+8MGF376sEi/D7pcBuuj4p91cw1Cb385VGu/CkQi7q3HE+IuB5PYczgD/+FDbdiSDGfq+LgO8pJsqYShzkRFpU0ysDUcX/bzbVFXQfM6Xd8/yG9OsaVZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730994695; c=relaxed/simple;
	bh=3OIf/gX0ZDNOZhMPo00YXj5sJSXF/V2U3ogbTioMzBA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lij9CCBoP913clHkdf9GOWB8bDhvxGLmRlKxNSfQ4833NGsRO+N1BHc4uz1IVdk8yn8KnycBUWYtmM66+t0YyIv6+Olw5Dmzri8mlVv9xcDsYfrvfOwbrlhweeSAd7pypJDC3nMv+/j/MkvTu/XomkRXDJkHBtA3X+qoLjNKrHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RNHypDoW; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43193678216so10232195e9.0
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 07:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730994691; x=1731599491; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BR0AsIIvsAZoNbnhltKsghMop/uYVJqzbFLsrpgQQDQ=;
        b=RNHypDoW7vDwNsAMZnKx3q5/Sc2TlNvKBj0MVde11xUXSvzHGC3wpMEZL4tpgEPXE+
         QIZJn9Ms2RAPZka1UD02VxywD1ZDSvTeELDLyEcrWwj1KykU5WLsUT7Eqyl0f0Zxwt5r
         GSr2RGnHMEL7QeJmGzvKZ20+leekQBt1/dpKWQ3PIH8hvVXHMSnas3IvtSjPbrlmxlvd
         KibuFVmBSpJqbBnhI14QEoWlrNmwwoPPQpuAotOXHETUWvRSjVnwVtkl+ivtmOalR8QZ
         5/ZVh1tKXCYpF5BGX6sQNI19F1ujHxvhXrXtkn52XfPXYsnBXVgoeFz198Pf63QytAqO
         xmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730994691; x=1731599491;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BR0AsIIvsAZoNbnhltKsghMop/uYVJqzbFLsrpgQQDQ=;
        b=xEJ7q4jrSPoX0CjuJuR7wI088v/IfN1E+RrJydMn7kEyQFv1xH7+xKlA6ltrR/rxcb
         5Ksy3N9Szm83mmbtff4T8dx84H6rsUcUCZogg1gxzGIsI7oJ3vJp2KUC2wy6DQS+7l7Q
         tXPHw2VCtkROsIMxZ9kibqcv4Jsv4S/0hQyQybNy3fZo5dClqwRU3ncUY1t9l6rBxSzV
         2LIw7gs8KkThqwrR6WM4hN5PWvlnJif7fWOVdzFnbjsZYXsZ0H+LGO+yBMMm7VffOrIy
         hnF8ghsFrGZIOHzvx/A3J23lmxO7BqRPxck9T+zCvCWaVTvVSVMtMgdi74Wn2KOHGxO3
         5SIw==
X-Forwarded-Encrypted: i=1; AJvYcCVD3hr7kVFLYu98iZ6gVE4OdfEvtlwv7YGros9s5gzi5db2wZHDA03rtE9tKxbe34+EhW2L9zqZUbXQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2KuFgAYCj03nB5fHQCMCIUBLgBX/Gm/iFBq0jsvoVWWHTZvRp
	IVRK0v03FFgpklPFRgrdZL9vPAbqaFqkn1UpQVl6mymqSz4GsaC37Ktxa1qTgA==
X-Google-Smtp-Source: AGHT+IEVBKlv9ftF8S0QzkPYuWh8G8yEuAdxmNVdUuhvUI45faLCdmmUAl+VK6pETw5Od9JRQmScxA==
X-Received: by 2002:a05:600c:4a88:b0:431:9397:9ac9 with SMTP id 5b1f17b1804b1-431aa292eb4mr312298635e9.15.1730994690676;
        Thu, 07 Nov 2024 07:51:30 -0800 (PST)
Received: from thinkpad ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6c11f8sm64356935e9.25.2024.11.07.07.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2024 07:51:29 -0800 (PST)
Date: Thu, 7 Nov 2024 15:51:28 +0000
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 1/7] scsi: ufs: core: Add
 UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
Message-ID: <20241107155128.paqyo7een2ggzejs@thinkpad>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-2-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1730705521-23081-2-git-send-email-shawn.lin@rock-chips.com>

On Mon, Nov 04, 2024 at 03:31:55PM +0800, Shawn Lin wrote:
> HCE on Rockchip SoC is different from both of ufshcd_hba_execute_hce()
> and UFSHCI_QUIRK_BROKEN_HCE case. It need to do dme_reset and dme_enable
> after enabling HCE. So in order not to abuse UFSHCI_QUIRK_BROKEN_HCE, add
> a new quirk UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE, to deal with that
> limitation.
> 
> Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v4:
> - fix typo
> 
> Changes in v3: None
> Changes in v2: None
> 
>  drivers/ufs/core/ufshcd.c | 17 +++++++++++++++++
>  include/ufs/ufshcd.h      |  6 ++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
> index 7cab1031..4084bf9 100644
> --- a/drivers/ufs/core/ufshcd.c
> +++ b/drivers/ufs/core/ufshcd.c
> @@ -4819,6 +4819,7 @@ static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
>  {
>  	int retry_outer = 3;
>  	int retry_inner;
> +	int ret;
>  
>  start:
>  	if (ufshcd_is_hba_active(hba))
> @@ -4865,6 +4866,22 @@ static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
>  	/* enable UIC related interrupts */
>  	ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);
>  
> +	/*
> +	 * Do dme_reset and dme_enable if a UFS host controller needs
> +	 * this procedure to actually finish HCE.
> +	 */
> +	if (hba->quirks & UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE) {
> +		ret = ufshcd_dme_reset(hba);
> +		if (!ret) {
> +			ret = ufshcd_dme_enable(hba);
> +			if (ret)
> +				dev_err(hba->dev,
> +					"Failed to do dme_enable after HCE.\n");

Don't you need to return failure for this and below error paths? Probably you
need to skip post change notification as well in the case of failure.

> +		} else {
> +			dev_err(hba->dev, "Failed to do dme_reset after HCE.\n");
> +		}
> +	}
> +
>  	ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);

Is it possible for you to carry out dme_reset() and dme_enable() in the post
change notifier of the rockchip glue driver? I'm trying to see if we can avoid
having the quirk which is only specific to Rockchip.

- Mani

>  
>  	return 0;
> diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
> index a95282b..e939af8 100644
> --- a/include/ufs/ufshcd.h
> +++ b/include/ufs/ufshcd.h
> @@ -685,6 +685,12 @@ enum ufshcd_quirks {
>  	 * single doorbell mode.
>  	 */
>  	UFSHCD_QUIRK_BROKEN_LSDBS_CAP			= 1 << 25,
> +
> +	/*
> +	 * This quirk needs to be enabled if host controller need to
> +	 * do dme_reset and dme_enable after hce.
> +	 */
> +	UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE		= 1 << 26,
>  };
>  
>  enum ufshcd_caps {
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

