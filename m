Return-Path: <devicetree+bounces-114159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC00E9A9F68
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:58:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9271D1F23E2D
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 201AD199FAE;
	Tue, 22 Oct 2024 09:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cf0qjZCA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1787199238
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729591073; cv=none; b=Y4w+5r2g1ZBUuEKx9CwjJCXqf5EksEF494z44Pyh6pYSPOdNvjm9or6ylpb5u1pXNpoEs/tzdrrgS7326CXsIT0TAQjFBma1zbeS3CcMF1UVv/spo4dGtHAbnSgTfe/AZu3s9JEeR4Xy2XxE+bETSen/8JSBLLU42NWkKUnoHA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729591073; c=relaxed/simple;
	bh=Z6dKNwVETYKa4690g17q5VlS/mmQvHhfpIjCFuk8s2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H8Mmouqn1JX49/ySqVOOv5kNLuHyja0B/FMj/i2X0aVlBVyEDepJmN5W3Icqoum5F5m17Uo3Q5dmpmCcggJZy6Kdi2+c5/cZ7CnsaAsTIRhgTyJpASq/5d1QcvwNMbnjNojxhKd8cdrqn559Y8wjUMvc2O5zkIb4DPYCnusbfd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cf0qjZCA; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f4d8ef66so7202043e87.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729591068; x=1730195868; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HvTNyLNGAHIQ6cpxYTM3zWA6pjUJiTbrO2qEq3VuoYw=;
        b=cf0qjZCA0KSByW+TG9sIpgT8hhcKYEcg58y34rv7GLwquMdsHLBJIzm+2nYqY4aGRg
         PvtGF6QrGspqES7yQY5N+gIxZMK1KcfMwr4clar2OPCOIPB7X4hxVUfFsabQEiUe/Nkh
         1BMf4IRyvGTLbeN8ufihN+d/+sUem9KVZ2zH8jOUIy5TjacS7Y5c7Yg9lzum+1hwPvI2
         RhAdubp8vXEsZ+21Seukv0eai1g/PB5Lj/nyNinwqQLEB6rjn8mN3YS0RNUuW+n5Zw9e
         d+PLTVR6MZZxcZ2vrdHuG6L3UF2e1IEP8JaL6768JTj1+ZPWMBoiWl1UQ1hRZjkzn+Pp
         sf+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729591068; x=1730195868;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvTNyLNGAHIQ6cpxYTM3zWA6pjUJiTbrO2qEq3VuoYw=;
        b=sePdGDnCiXd8o8LJWKBtEigLX3LbQWopML+0oxOqpLKtLLma+Aku1a+c21tmnMO7Hk
         Za1glWhXP1/S9gyVUe7BjMxz3U/okLNYV3a/iEorriEXrvEHCoQzLoQqFZ8FM4l3uCXh
         4fR8fPq32e6PQvwU/TYjoCmQsIN7QDpDbxSKwRFxMxIhqjEeVz5L47JugvpzZJrq/44s
         nVkStLVlDZA4tqHpvdocUg+4gLhtURvuYG6y24Lg4EgD8KyOTZBFIfsZ8jRIVcMhoK6A
         VY1QRyeJw0AhO1EGz53XLW3RTLCHowo5yyRlaGePnhs0sMdaHsTv/Lv7YOoQFvCjsr7u
         9r6A==
X-Forwarded-Encrypted: i=1; AJvYcCUpe9yiLQSIBkJGhf3FuF25+FadNr+4CAA0j7DOnndOWzSd8g61FYZu6raJzZoavD5p5b1G7O5w4iK7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/LDhR84y2PX3Ne2hmlAnvDf8GFcLPHd1y8mfpzgPleePbN1kf
	nclNACtL/XrtGTqqj2eCEHitNhgdGvWNjGJPJEr9pt2RfhCkoU82/KJkxsLX1Q8=
X-Google-Smtp-Source: AGHT+IHVu91T26e5E//xB6XfjAMTT+PWPADj71F+BMcbekDOXThdc77eC6SbwTZMrGx5Pm1w5zcDNg==
X-Received: by 2002:a05:6512:220a:b0:539:da76:c77e with SMTP id 2adb3069b0e04-53a1520bd15mr6361012e87.5.1729591067825;
        Tue, 22 Oct 2024 02:57:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a223efbcesm728504e87.72.2024.10.22.02.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:57:47 -0700 (PDT)
Date: Tue, 22 Oct 2024 12:57:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Miaoqing Pan <quic_miaoqing@quicinc.com>
Cc: kvalo@kernel.org, quic_jjohnson@quicinc.com, 
	ath11k@lists.infradead.org, linux-wireless@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] wifi: ath11k: add firmware-name device tree property
Message-ID: <smgbishqbin4kcpshqvue3ivvfko2l6rj2w4ikwydosbkq6kde@pdbzhklj7znm>
References: <20241001033053.2084360-1-quic_miaoqing@quicinc.com>
 <20241001033053.2084360-3-quic_miaoqing@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001033053.2084360-3-quic_miaoqing@quicinc.com>

On Tue, Oct 01, 2024 at 11:30:52AM +0800, Miaoqing Pan wrote:
> QCA6698AQ uses different firmware/bdf/regdb with existing WCN6855
> firmware, which is customized for IoE platforms. And the 'pci-device-id +
> soc-hw-version + soc-hw-sub-version' may not be enough to identify the
> correct firmware directory path.

Why is it so? What makes it so different from the existing platforms
that you can not use WCN6855 firmware?

> 
> The device tree allows "firmware-name" to define the firmware path,
>     wifi@c000000 {

You are describing platform node, while the commit message talks about
the PCIe devices. Could you please clarify, whether it is a PCIe device
or an AHB device?

>         firmware-name = "QCA6698AQ";

Could we please follow the approach that has been defined in the commit
5abf259772df ("wifi: ath10k: support board-specific firmware
overrides")? In other words, instead of creating another directory under
ath11k, create a subdir under the WCN6855/hwN.M/ which contains your
device-specific data.

>         status = "okay";
>     };
> 
> Tested-on: QCA6698AQ hw2.1 PCI WLAN.HSP.1.1-04402-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1
> 
> Signed-off-by: Miaoqing Pan <quic_miaoqing@quicinc.com>

P.S. please CC linux-arm-msm for future respins of this series or for
all other submissions that concern board-specific DT data on MSM
platforms.

> ---
>  drivers/net/wireless/ath/ath11k/core.c | 12 ++++++++++++
>  drivers/net/wireless/ath/ath11k/core.h | 11 +++--------
>  2 files changed, 15 insertions(+), 8 deletions(-)
> 

-- 
With best wishes
Dmitry

