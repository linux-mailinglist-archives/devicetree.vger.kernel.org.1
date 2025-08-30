Return-Path: <devicetree+bounces-210778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60021B3CBE9
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 17:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 038D8A0446C
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC00263F32;
	Sat, 30 Aug 2025 15:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="nlmx3XNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA05C25D1F5
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 15:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756567520; cv=none; b=eS6GiXB+2kBtN8UxL7n+c4Wn/jdlT1DmLvX8Y3lZz59/H/wr5Jdb9TXp63l5ridWhln+4rY/ridVV0CPeCCVatPCMpjCM6vD1pOARzb1BOKyIKdCjLAKIQ8QapYCkvAKZ1YfqorxqyhLTF8NTFZOQ+KNxZDrBgF1aX1g0z3G0H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756567520; c=relaxed/simple;
	bh=4Pre2iPR3cFdQiZxON1rzrA8qHFbR9ocqwJAPI1d5E0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QANdZ72eejlxFDFf9rpboFyCtmTYN5Kf9k3CyY681s3/2OTDlDj307pEibyRvB6xv8p6arf8s5Tq8MC7CmBkmWBQbiPoUZ2csmvEyvQwCGv9cHqcVPI+s9qYUUOe8HbjEzwf7h+JAy7vaprl6KaPl2XNc+LHHpWN5VBXmUflzgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=nlmx3XNV; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4b326b6c189so2143011cf.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 08:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1756567515; x=1757172315; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+vQXLaG2kcpMi6zISzeFWytxG/6ZsxQ37Uw+pok3HOE=;
        b=nlmx3XNV8gcjLk7cgcyvWlI7yq3yuEgE+b7QciP/KTn5hq8S6pJxz6IP1n69Y50YZr
         GXbM9UHv1SZCDpUtSFQjwYAqMKE2ugBeAVcutmtFOLK1ziZnJwBVRUcVFWG1padFUqZ9
         XzKZy7Zn6xiLnZbGAzeqasn0S2bpM/ZALaKqgb2fevC31afEdm3fwdvpLPrEuwxZ9jDQ
         aG41oGq6Q/XOI4X5VeA9/qysMVK7KoE34DtcN0RL5o7YsCo0AHvaA5JtJYcq8ckmyUe4
         5jBFpLPk5qpwa/hG7Q8GktkFxLmhgSg8snZWrWw9MB2hlTxv5O+z4ZEBTJhB+XPBT05x
         4vVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756567515; x=1757172315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+vQXLaG2kcpMi6zISzeFWytxG/6ZsxQ37Uw+pok3HOE=;
        b=xMAz/3CWfFX9GBQKVYpVo5WpubyYDL2TUrOzQUfZ5JThmB+nbhqszHCR0DzPwlgfLB
         UOdqxxwOF8+4jcRIP/+T4IhlhfRYKkuHI58TxtidKW188V456+a7D5DmQFMkWmQt8pCZ
         tRXyMjmokt6+M/Ci3ZKnwM5lbCP//jQH5DW9rH4tGXqCXfiqzsO9Q/7iC8uaWVPOtidk
         7EZezolaichClW/5fkXSdXckOwn+Lo/QFixSHGeAt6ReQFlA6lKVFxCZdRTxkpgG73vU
         E2ovfA5uIK/KdL1Oq0A6HxtLBtDMWFdXg1dRzDYkK6bB94sBhskQijzUa1N7yxT0rioU
         uKOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPAZIXMo4D41ujM8FH8RWYsDosYnpYEibXBiIoyxOrulmkpqxZm8jpiTz1ohLGVV/a3T883jqPZJWO@vger.kernel.org
X-Gm-Message-State: AOJu0YyzP5n+KXZGaNYzp1AlEoOGDtRc3ZOVfX0nyl/0MGRY2gAQRYh2
	yRJRz1Kk9a/kQsiNeXiDbwhy96Y39aTE4hAytrKyYt1ezluqgqgFms0lJKY3YSpz6w==
X-Gm-Gg: ASbGncv/Bq+InGRQgpKdnxnQPCacYa3r/E9mEuzjlH1emLYMZzK5/LPRbU1A/KBuLT0
	8CCMUKE6Lg2uVYbhdSA2sppxiq6Yaco/pUjj8qKaPfyIwhErSh3U4ckfkTdAXJ3l5boOdRmZZQm
	wfObWSSPvqYKNorxJK/4G2AwFAbI733F3UQRsf0btUSZzCZQ+iLC1FHrDmtPQoXpj+N6nBgJ8Gl
	87By4uivIvzFOcHMezGw7c6H223X65c3ifw0DMLdUh1QWeturtv/PatvCIv1FcXgGydLYMvBErt
	vcarCXwRySPE9K3qlgvcT/BrRJIWob8DPmxtwN7qXO4oJj+sO17UNxBJfK/njuSa4ZKdhog/ZkT
	mCX2VauOPrbFG/3w3XCae1JPinyLIbZKFVJawzc+p
X-Google-Smtp-Source: AGHT+IFqTzpp+i1c8d9FlbmpErvbAswo/o1qSIXruitHS83JpeUiodcPTxO3zJSo4ZrC4TsBR6h8EA==
X-Received: by 2002:a05:622a:448:b0:4ae:f8bb:7c6a with SMTP id d75a77b69052e-4b31dcceb72mr20637521cf.54.1756567514656;
        Sat, 30 Aug 2025 08:25:14 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::fd35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc1605fb27sm363814885a.62.2025.08.30.08.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 08:25:14 -0700 (PDT)
Date: Sat, 30 Aug 2025 11:25:10 -0400
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
Subject: Re: [PATCH 1/2] usb: ohci: s3c2410: Drop support for S3C2410
Message-ID: <fc4ec548-9a1a-44c3-9958-b6778e37d910@rowland.harvard.edu>
References: <20250830130101.142934-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250830130101.142934-3-krzysztof.kozlowski@linaro.org>

On Sat, Aug 30, 2025 at 03:01:02PM +0200, Krzysztof Kozlowski wrote:
> Samsung S3C24xx family of SoCs was removed the Linux kernel in the
> commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
> 2023.  There are no in-kernel users of remaining S3C24xx compatibles.
> 
> The driver is still being used via platform code for S3C64xx platforms.

This title and description are a bit confusing.  I gather that while the 
S3C24xx chipsets are not longer supported, the S3C24xx OHCI controller 
is still being used in S3C64xx systems.

So what the patch does is drop support for S3C2410 _systems_ while 
retaining support for S3C2410 _controllers_.  Is that right?  If so, can 
we change $SUBJECT to say "usb: ohci: Drop DT support for S3C2410 
systems"?

Alan Stern

> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

