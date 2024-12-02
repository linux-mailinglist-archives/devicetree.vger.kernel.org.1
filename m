Return-Path: <devicetree+bounces-126265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFB89E0CB3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 21:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 698871658D1
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 20:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133311DEFC1;
	Mon,  2 Dec 2024 20:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eLoILcxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE621DD863
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 20:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733169647; cv=none; b=F3pMAEi1gzcJOJeX/a8serh+GJI5onLbw0ANRRlOelhst9RyKcdKw2sJF5l762/+JlYCckMiYyaFY5c1KALTJlhqaE7iJ9pHfSUQf2dfSq00bWfNmRgQzlT6zNX54JfFiWGIiW6dIDnwViZ5uZ/k+SoK7qVdlq5VbHaWW9RZb2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733169647; c=relaxed/simple;
	bh=ZwT9XETIGPRtoz06e9/Bz1xnjU0UUFwfd1/wc/ZJOT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ojyDZ3DM1EXnat7bWLJyzXhKl/LI2JsfYJGY2aXXLQT0VfeCQ947s0z12SDMIlPSoSGFvqTjKe8RhC+2gnhPWg0KfgaoNT9gZHm8sGihY7bPeYOYKopcjrnTxQXmvWlG6C6IMbr4Dd2eLFAxaqRLa8iQuD6XNL4KPoZpU+AYgUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eLoILcxR; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53de556ecdaso4718586e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 12:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733169642; x=1733774442; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uXAhtq60I6waVpW/O2JwlPsYrhNNVeFfaONkbV0wS/U=;
        b=eLoILcxRM3AmrUCxOGkNENSkBe1t/WhBa7Srj5s2SrXQoKOshUxRyDoap0Rmn9IuNk
         0RNMdwzGZkwbcPANhyF5bzB4a9dHHtE/Mb/VJh9a7ovFx7YmWrcHXxEQuUlrMxtK9gF5
         Fee6fVsy1niD5nt3VedUCT2slYSrdlLskoF5WTKJfO/YEQgnpYWrKV5PY3tr+PMu+/Uq
         VkYj4SerPwlc1jKuZ1QosIGA08QfQ6BlRiPKtahnopZQ3pAPbDW2vOCV8JVe8pE1KfoM
         K5Bfd9U3d4NB7w0nRUQVKyYrnnS5O8PMdtfKYsWOACxb2ad5y+4jUatNJSY8XP/KLlh7
         km2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733169642; x=1733774442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uXAhtq60I6waVpW/O2JwlPsYrhNNVeFfaONkbV0wS/U=;
        b=jb0C+Z3txEni/9ZnZuJRI5R3x5k+eIjlvopIzOQ/d9gdLlJwJRePKfIworp3syPhF+
         S9tCm3TnkCWNgxDxak5mKYiVaA4XjGXwldfmZ1pkDSJJ2zYJlUAnIKLzCXC7JDKoGvm7
         ysowKfvwgqCsrNCy6o1RNkgS9Csc8SmlZ2+RjVKL8Yib1LqH2yLVXcY8IOcSHaWatbu4
         UIDPnmyJ15u7F76TsKOYIhe78rclxSzC37XncWdilTBKSOtuQz7yQ9rnHxeYh5sFTrCp
         xZy5aYodBkpcSEV4q+cRJ1jYFRvIHDHW6FtGWUTpRN1v7SMZD9b+anNzkG8qAsHbxYnS
         +7kg==
X-Forwarded-Encrypted: i=1; AJvYcCXlNDHNiOkhoDysMOvupOrrPGFWzlkDGvxRc3+wFUvLIn8OyTU9euD7Cfefj5XDnwwlveRWiLvjz9Ky@vger.kernel.org
X-Gm-Message-State: AOJu0YyY656j0nFR4eGGozp1T478cO8Ovir6YYA322tOLEe/afaIOUtd
	4fhtLI5X1UauuaNjPl5/EX0Np1xQa33mWlKRgLSl7KicrGzDee2yjmxG61kiRuY=
X-Gm-Gg: ASbGncufkqc4sbRquyZgSpJWdvs/KrTK5bevGi20Mtubzk5aMVdZa0Yww1iyLOpVFG0
	Z9sWaVQlqgAfQ/25Kd+rVj51GUdNEdEs+ET+AfrrhGuKC77JBdV1o1dcFFWc5BXCNqkwgKm/8mP
	Q1Y/B87XGE5Tw31xVke1X9Pn225m1K1i2LPd2tBf0FnheM7TiGT8OAcbqRBGPKB2C91W5+RrfbP
	iPS57RlIrCNeJwzTuzPs2gL4MyGxOfE8Od0hziwJARFey4Q1J3ukx5P72TRo/cu0eRey507J67t
	XPK39NA1PyZpqsBBGoPwOOu+HCPK5g==
X-Google-Smtp-Source: AGHT+IHlBla2bkS939rzD6EaoiaSpmSshKV9IUflTjWZle/0CJSDrrxy8jwAJY6npjQNBvZiqQHQNA==
X-Received: by 2002:a05:6512:1286:b0:53d:e88b:eb4 with SMTP id 2adb3069b0e04-53df00d1ba7mr12812129e87.21.1733169642056;
        Mon, 02 Dec 2024 12:00:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df646f136sm1550171e87.166.2024.12.02.12.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 12:00:40 -0800 (PST)
Date: Mon, 2 Dec 2024 22:00:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: power: rpmpd: Fix comment for SM6375
Message-ID: <yo5cc3cvvwwdrqrrgwlquztj52sijip3ffyyqag55jrnztxi2m@hn75ylkhnxie>
References: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com>

On Mon, Dec 02, 2024 at 04:45:02PM +0100, Luca Weiss wrote:
> During an earlier commit, the comment from SM6350 was copied without
> modifying. Adjust the comment to reflect the defines.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Fixes tag, please.

> ---
>  include/dt-bindings/power/qcom-rpmpd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
> index df599bf462207267a412eac8e01634189a696a59..d9b7bac309537cbfd2488e7d4fe21d195c919ef5 100644
> --- a/include/dt-bindings/power/qcom-rpmpd.h
> +++ b/include/dt-bindings/power/qcom-rpmpd.h
> @@ -65,7 +65,7 @@
>  #define SM6350_MSS	4
>  #define SM6350_MX	5
>  
> -/* SM6350 Power Domain Indexes */
> +/* SM6375 Power Domain Indexes */
>  #define SM6375_VDDCX		0
>  #define SM6375_VDDCX_AO	1
>  #define SM6375_VDDCX_VFL	2
> 
> ---
> base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
> change-id: 20241202-rpmpd-sm6375-06582e126d7f
> 
> Best regards,
> -- 
> Luca Weiss <luca.weiss@fairphone.com>
> 

-- 
With best wishes
Dmitry

