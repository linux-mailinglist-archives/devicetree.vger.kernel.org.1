Return-Path: <devicetree+bounces-210967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8930B3D3DD
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 16:13:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85F893BF785
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 14:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD09D26E6E3;
	Sun, 31 Aug 2025 14:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="O29geZKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BEC238149
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 14:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756649605; cv=none; b=t+q19uLBBoJ4HH15r2MBxgvO5p1/ieNx5NmTnBoNL9tc47pTeZZLXLQSl0YLvrOF1oxXkklpG+l3YC5D1M1bQJHWcx9xRlwsQGIDdGsEgdYobuL+x1MRiHbto6JSVSJkCKHeejlJYQVgXeDMmA4GL3+uD1nm2KXfdJAaCLPjq8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756649605; c=relaxed/simple;
	bh=NNaRzc54R7CkH8DGod84aqEZIb1kdPD8DIczOdskT5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LiOCFsTi2ai4lcRpr060RsHe377LpI8Suf+HTrOF42b+UCs2GBLW+6K2IoQlXCnTXMujyt8Sa6mZ26Qbn5R0aF9GaozRyxF41IxEg562sGhpOzFRyt9NbVlJgoUVqVpcjmA2QTyxxTEJW+CVkMIBafP6D8wCxh7/cVAsyex9SwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=O29geZKM; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7e86faa158fso369458785a.1
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 07:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1756649602; x=1757254402; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cZYLdktZ4EPO06YD32v1q0DpK8GiNv05c9EBnf+HoCw=;
        b=O29geZKMmzrLZzRwJdLGYMPODpfdZoO4R5zPykibV8/KA6hWs1WzLvzch2KWTutR1Z
         rl791j0cLnbpDlo8A9rT/DipI16oUUUloWeCd/8VKM+oEXB0qrmldl6Wn6GoBJQt85Aw
         eQ/jNuKHtNLYYwnjSdSgDGABnuA0lzGZ8MHoFBU6FVbY83lsm1+eNFNlPOuroC5XlPM+
         Phue281M/aqU4I+UaeGSFruxx/IlxP1NRxyNswtAUhE/de8VSx8/rbQzRqqTBF92jpc0
         1c7cKkay188khUT4k4brf1p68kP/X6kn1cfwnSbJBAFqxMF4nwT/lj00pTKDhS2V7oL7
         gi/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756649602; x=1757254402;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZYLdktZ4EPO06YD32v1q0DpK8GiNv05c9EBnf+HoCw=;
        b=uPZoFnPx85yOpnX6qSo6kh/n1OXIgCpztslfXFEkAY7o1sE+yQBgn/8c+3om6QVDRy
         HYwSt33IT5+a2zNL6aW3JEKNlNa1AE5C11PFrUed+ycljdqrmQS3DfJnIqyoboRt7/BO
         5ZHHwtRUWeuAXO3DGAMISjLFDw2pvhQ5foPRKntTPVlHjPj8Xmvy+DzLrC7gqkciFPK6
         32DGAlDjrOYfaJGU7sZuQjNqJP+DA52bHDzPjIrDlyV8mXCjQtg6VtZ2Tv5KQC3fQsQB
         LIJdXsAYTlFPe2h8V2s5L677wA+BELjBGgAwbkBBoQ5w35h1pIwFFLyjmsIeflpAcVEi
         coSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjilovS+2yCAlWr+wHozdJ8rERe763lW9cbVANwQgHA6+MbLoHt5cNCHylcy+h4Newim+zozhb9+Q2@vger.kernel.org
X-Gm-Message-State: AOJu0YxshMUyiXmpn7Mefkr7zBsd3p3CUuhxu7IMXzShR54SLC5o0J1F
	1bJq2BjSdbI/zCB8sH3dzklYUX2PoaW460Ct9y9jK+t4o4nZ60jhKBfFSW95kkteeQ==
X-Gm-Gg: ASbGncvwP0CvSrJBJ/OZwAT1Oz6xILseEITmaH9sNC1pm96V3dQYvMQdxQNjs4scuLx
	u7TKfKMKUS32rteIfPq9zqv/nhna3InQifYqOY43onITulLLmXQZC4UDmGAx/CPI5WSV2EndBBi
	0ykC+w2zwn5IDyF6KZofn+INXcSKE1O0zEUJ9N/0HVbpUNqxkjh2jXR9Eof0vTfhUC+39u56+Oo
	b7XQUpWvVYIi72fkBku9cvfZRDDRlOs2KFNL/rtrVJIQsGoKAj0yjUXD+UspC54yy2U55TFXJH9
	Ae+cZnhMsRiWkio750IZbUk8POraS+NCDdwsRUHKLuRlRQ7QgywRSeLM00rIuMD1UNK9LzBNDpY
	nDripjH3chQeRsvCXrHREjOKYHLm1Dg==
X-Google-Smtp-Source: AGHT+IE8Mqej1JDZrtuPz7sl66EYUl3Vb5Z2gtzRXa0W+3TefhnO3F5sshyISi1xvDod49i2QcLnew==
X-Received: by 2002:a05:620a:172a:b0:7ea:61e:3ce with SMTP id af79cd13be357-7ff26f9fd08mr460588985a.4.1756649601956;
        Sun, 31 Aug 2025 07:13:21 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::f777])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc1484a7a8sm512990985a.43.2025.08.31.07.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 07:13:21 -0700 (PDT)
Date: Sun, 31 Aug 2025 10:13:18 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 1/2] usb: ohci: s3c2410: Drop support for S3C2410
 systems
Message-ID: <188881e4-09a7-49fb-8128-ea7ee85147a2@rowland.harvard.edu>
References: <20250831122222.50332-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250831122222.50332-3-krzysztof.kozlowski@linaro.org>

On Sun, Aug 31, 2025 at 02:22:23PM +0200, Krzysztof Kozlowski wrote:
> Samsung S3C24xx family of SoCs was removed the Linux kernel in the
> commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
> 2023.  There are no in-kernel users of remaining S3C24xx compatibles.
> 
> The driver (named s3c2410) is still being used via platform code for
> S3C64xx platforms.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

> Changes in v2:
> 1. Commit subject (Alan).
> ---
>  drivers/usb/host/ohci-s3c2410.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/usb/host/ohci-s3c2410.c b/drivers/usb/host/ohci-s3c2410.c
> index 66d970854357..e623e24d3f8e 100644
> --- a/drivers/usb/host/ohci-s3c2410.c
> +++ b/drivers/usb/host/ohci-s3c2410.c
> @@ -448,13 +448,6 @@ static const struct dev_pm_ops ohci_hcd_s3c2410_pm_ops = {
>  	.resume		= ohci_hcd_s3c2410_drv_resume,
>  };
>  
> -static const struct of_device_id ohci_hcd_s3c2410_dt_ids[] = {
> -	{ .compatible = "samsung,s3c2410-ohci" },
> -	{ /* sentinel */ }
> -};
> -
> -MODULE_DEVICE_TABLE(of, ohci_hcd_s3c2410_dt_ids);
> -
>  static struct platform_driver ohci_hcd_s3c2410_driver = {
>  	.probe		= ohci_hcd_s3c2410_probe,
>  	.remove		= ohci_hcd_s3c2410_remove,
> @@ -462,7 +455,6 @@ static struct platform_driver ohci_hcd_s3c2410_driver = {
>  	.driver		= {
>  		.name	= "s3c2410-ohci",
>  		.pm	= &ohci_hcd_s3c2410_pm_ops,
> -		.of_match_table	= ohci_hcd_s3c2410_dt_ids,
>  	},
>  };
>  
> -- 
> 2.48.1
> 

