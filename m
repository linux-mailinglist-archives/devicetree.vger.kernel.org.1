Return-Path: <devicetree+bounces-144208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D440A2D607
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 13:17:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7794A3A959C
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 12:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 109E2246323;
	Sat,  8 Feb 2025 12:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vz4WbChs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375961A5B97
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 12:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739017039; cv=none; b=dOhXRqqn6hKYw/+RfKTSJ2cNp2g8doQv54tIigyt3tb8oT35AvAyWGBElaQJxItfXFK/iwFRvv2b6XbJ/1xRaUnvyKV5YQ9PrmILTOkfyiEebLlqg2cHAnT4JqJvVE69rf0vjDFyhqVeig43FoXzdl7sXlsjRgI3zo+4cW+Ger4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739017039; c=relaxed/simple;
	bh=T4eIb3bqRCOm/qgXKt5JXRdNtc/g3t2rmHuZgsY86yc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UvhPNMq5IxWuHFWxfNnOhxPUgoh1Hiapa00thfiknrO+59yx1Wn4vjdJniQPKbj604Ws5YoSFyIw/g2KS5xo+WpD6NIksL3MAuOdWM3hWmGy1n3DjrUa+Bk+fjUIzRaoEfpVN4d5BweTJEClW8703oHuJ6T4RGmqeFh2vklvng8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vz4WbChs; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53f757134cdso3048566e87.2
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 04:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739017035; x=1739621835; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=86n5+Q0ZSLD5Q/iLrsvS8vsVVb/euNtkQzazsN+zt/4=;
        b=vz4WbChsrYzHJeJBLC/mlxlljZujRZ0PfRVGAH7rcTDuEDV7gxQWUZkvPhGv8jrfdV
         svOkbRMHQeQmR20yjY2DYYC1dlNPLF7DvoIYQbumt2OAbD43o304uC5av1GxI/eaTICd
         c8ZBOgFnLWkFT83MdOhCKra+e9+fs9cXscdRxUbP62QaklwRIDBLN8qF/QLvx4l7cK7d
         xY7u4E+D3KHCfCDt6nWwTWCWemCsNek4th61UkEBPjInpfsKP0/bF4J6CX3+Az9rh+oh
         4fjFDKIRdqu1e+zW2XLNQUReMcG4S+beFnqXxsFZ44eEubVg3n5ncCD2SSrUCHfRWhQO
         Ikfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739017035; x=1739621835;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86n5+Q0ZSLD5Q/iLrsvS8vsVVb/euNtkQzazsN+zt/4=;
        b=TS+GGXLYuk80zOsGJw2y9g9elIP2bWaBqOnJHf3I++a+n5YEvLg6ZlOy73TSGPV399
         oyptdgBcFKymg6mvGnwND+cwj/WIal6vNx+MippVb/yTbYX08bMa7cYQDk98VoscR4xE
         LqupaftKY+KphHrX/MAXVN745puHGLj5+ADSAY4xo3ReAcdJeFRbonNi8yNVw4olKuq4
         CmcoXdvbgbVGK0/W4eLJPcihI50yX4aA8gO3gLIQ18tWuYW+2fMu1uxrVTJNCbVPvvgL
         Oz+8NLukZc/3KmyGGZKiYd/8DH/ehPxn3EDAUCbkWRAlX2QKjnFjl1dBUW720JtsCh1x
         Q5qg==
X-Forwarded-Encrypted: i=1; AJvYcCV41N1D8RwFn+tdXH7Tr64YSunMqyNZtcVufJzldvS4F66iZtwAITTcqaVrv6Pt/0HpjkzCQ8vmW5uG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmy7vcI5EHLqYhOQrniBbLxu9FSYAOOLugyb60r89xKj8Iohmr
	PAy3Vx1/2h5aV4/Ynk97ivne+dwQEkxd6A5GUunlMxqUb05oyIjzjaFDl68tOJImZD242Rngi8I
	amYw=
X-Gm-Gg: ASbGncs7JNpadZ180TkKZSdMeM+wno3sC5UulGvOFZfeivvM86dvQoOTx6oeqEyJ1UQ
	vL62xvAbGILmG9zxdanOrH6CcLuFZ1Z4FJWeAcynUvEDRaPXC+S327RFrkKK+YMZmejJ2MiCiK8
	82ygpNQy0ic1zuG2vuD+V2XmpqDi2M9hTIoqotuyBzHyViQDUkLT5mlHgka0jeCxKoBdzQ7+5Uf
	MZeH01HOE3+XVTXVSOKRFDB34u9TdlJBRiHPXRPk1CWhpIWHPEqo6C02cRA3kHVz0s+S9tVLNwL
	QI3cMvWZZJxiwdslca3f2IhcBt6uAOdeTr5slBur8/n1/Z1kDkH9LOxX1Hfd1n1DsxUz+zI=
X-Google-Smtp-Source: AGHT+IFwIWTeNKS4wN4R624q3kbyJQojVN74fOV9zot7wxyHPiII72LWtpH9IvPMBK8s7MHZJcW8Bg==
X-Received: by 2002:ac2:4ed0:0:b0:542:9883:26f with SMTP id 2adb3069b0e04-54414aee2c3mr1807642e87.50.1739017035188;
        Sat, 08 Feb 2025 04:17:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54504062523sm191475e87.79.2025.02.08.04.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 04:17:13 -0800 (PST)
Date: Sat, 8 Feb 2025 14:17:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	konradybcio@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/5] arm64: dts: qcom: ipq6018: move mp5496 regulator
 out of soc dtsi
Message-ID: <x353yhiu4zsdyu5dpgfe6li53bq6b25rd3rhsquab7g4cbzehl@klbvqidc2sac>
References: <z6vspyykbj7e55uequibwacdx7uuwubtuabnsxagcudmqrfwn3@4gfna5rqiimc>
 <20250208080015.553458-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250208080015.553458-1-amadeus@jmu.edu.cn>

On Sat, Feb 08, 2025 at 04:00:15PM +0800, Chukun Pan wrote:
> Hi,
> > Wouldn't it be better to move it to the board file without having
> > intermediate include files?
> 
> The intermediate include files were suggested by you:
> https://lore.kernel.org/lkml/xmvtbib3q72tnfpcaic3vbgwilpo7yjnqimr5uk2myjgtslbgm@mlp2kqvljayc/
> 
> Unlike mobile phones or development boards, the pmic (voltage) setting
> on routers is relatively fixed. (Because QCA will not provide relevant
> documents). On IPQ60xx SoCs, s2 supplies to cpu, l2 supplies to emmc.
> The downstream vendor kernel puts it in soc.dtsi (no device override),
> so I think the include files is more appropriate.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

