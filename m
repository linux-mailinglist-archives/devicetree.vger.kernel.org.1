Return-Path: <devicetree+bounces-238253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A57BC5951E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:01:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 153894ECC8A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71F62EF67F;
	Thu, 13 Nov 2025 17:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tkuf4I92"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA02A26A1C4
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 17:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763054315; cv=none; b=cnZiRW3P/4tTBak+DMBSNwT50v6Z73SU9aiA7w2Rt1WgDX0TrfzBkLDJxRcdoxDvvnulI9TAFK5gYLDYR9lCA6qDSHSx0lyeuEXoTU2ZKH55RkE2MWcHBvtj7ptq46LpPASxeSG01H4ctPAcOOvcd8YWRyuntMDmxo5KUUO9LJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763054315; c=relaxed/simple;
	bh=SnVL18vcQZUAN6xgjrn+FRb1WIhCgUpcajyf8u1AR0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OzGP3MrJtjihY1kkvxrDgxZuhct1HXtESMEDnTe9FVk/dbtKBsrgg7tEM1qWxPJX/+U3zTubRn9zTmXHAt7hOEafJRXpo2940IKvVZLVf7YtmpQeCt/XwOx7Nn8VeYf7UEoTlG7DcWgC+VVU+BKAsAuD668VE2UXnvl4ubmgvyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tkuf4I92; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2953ad5517dso12714755ad.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763054312; x=1763659112; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLU6yk0Yztb2/O+GWzRwbmOA/G7sPQL4gwZtot3K55k=;
        b=Tkuf4I92HP+RgME0wfOYC/Ueh4Iv6RUfYTXbfsprXS/g0OKDuV80A7sJ90v8dYarbp
         gwPEfgXi9GEGXzWMsyI2hAHj33vH4tt49wtjCegW5pu8tmdexI580lXG+FiTIqRB+Jrj
         X16SSuAylnMKTgee0PYigdUZw3YbIkCts3dVHhxZHiVvPHOkd7mRy3WHwdpQfYon/sKd
         FKqli8I6D04A2lbZA2IjtS8cR4G6ZbcFZa/vazXQXPQRXHTioX2ectwoAnxISFsUbgEG
         gBgCeYhrGTLqo5252Rj69Z05WvTdhbGPOr3Be4M3UENFdn86P6PCCYL+bcewSc+7Dgg/
         8evQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763054312; x=1763659112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CLU6yk0Yztb2/O+GWzRwbmOA/G7sPQL4gwZtot3K55k=;
        b=HjmfYlqzbzMHpwOgF2Frm0zjBrmt2dsp0dvbd6oADcjnyaauxLAhTpLlWletiNFVo+
         shnjNGydPaAt5aPqCH+mqyri+xfOVQZ79+7VOpQP9rY49/eDwUoV69PoTr1NZFl0bS8X
         FBkYG5+8+NZ8r43i0tsIpDf0CaKVC3V+bapie5UWTTdaQOFjdO+qtLxSeK+JJv8OhsT/
         8cKhFxCNU1S55fcoL7hMMlZb+ApSrK26T51s/AUTlk34JO39tuSk+p2/ajRVgbv9Qa10
         VtO2Gua8rHAd7Nmva8vYFYdrLoKACBkMvu7ofTCottDe4rsHA5Iye67d1up6H266HXWr
         +ZFg==
X-Forwarded-Encrypted: i=1; AJvYcCWzqZ1JvyN4kwJgBElS/F9/7Zkx8T37BkACxnXGbt0OLZE5RH2L1kz8/1rQlYc3Xvseozz4FzO7IzUF@vger.kernel.org
X-Gm-Message-State: AOJu0YyAp0uMOzv7qD92BeowmB7A53ZjURNz2q4WK+zjY9B/pcV+iFLv
	VhWlZzlSTJ/uhj2u/V91dHVnz+IlXVn1Nlooidz7tSzw60YOlkQja9az
X-Gm-Gg: ASbGncuuy8w+2xkeFgapmqd4jKp2PGypSDiFBJpgQVcnysjRvu1LOsT4tx9ci67mL9w
	sIeJQY4f2YRekfXuV0VBWy7wBuoOEJuXg0TOGTnnMOrbzmKnsS+MHUpqXTfHTVAgO1lBA8Aku3L
	9SyKAI1ga+zWuwpQqy4HE9RZ23S6Obz2Hnvy2tfUjRiu7ZMQpPctf1R3Fq3vc9qwV25D4uXz1b/
	2T6+quG6FE3dEfAk/8uyn5T0mz5FExe9sajlyu1hj5Ud/9NEpPf32EB4DTzes6xc37JLJ2AvVkE
	zYzRVgIN43KjQbpAkAJOlXrI/VezxdSBfKh02stpOsD1nHv+J0Wo4KeBz6kuFhhvzwfxGMHzJWV
	jVXDeFML2EFLil2d8oVvbN9uaF+nSHN8TiI6SVzfOFS4oVDqlrB/o2YigpfnVzcluj+Z7okdiS2
	dLjYIHFbBCI9P0Sl1zYUE+ZkU=
X-Google-Smtp-Source: AGHT+IEotKYkYq6nQaDTYNyp8wTjepFyxltQYF4u8CLaKcnh2+F8uXTp+00cxCEmCtT4klCHOp8owQ==
X-Received: by 2002:a17:902:e807:b0:25c:8745:4a58 with SMTP id d9443c01a7336-2984ed7a011mr103510485ad.3.1763054311942;
        Thu, 13 Nov 2025 09:18:31 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0bf0sm31722695ad.71.2025.11.13.09.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 09:18:31 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 13 Nov 2025 09:18:30 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Wenliang Yan <wenliang202407@163.com>
Cc: Jean Delvare <jdelvare@suse.com>, christophe.jaillet@wanadoo.fr,
	conor+dt@kernel.org, corbet@lwn.net, devicetree@vger.kernel.org,
	krzk+dt@kernel.org, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH 7/8] hwmon:(ina3221)Support read/write functions for
 'power' attribute
Message-ID: <79da1c83-0529-48cb-a20d-23512f68397e@roeck-us.net>
References: <20251111080546.32421-1-wenliang202407@163.com>
 <20251111080546.32421-8-wenliang202407@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111080546.32421-8-wenliang202407@163.com>

On Tue, Nov 11, 2025 at 03:05:45AM -0500, Wenliang Yan wrote:
> SQ52210 adds power attribute to report power data, and implements
> read/write functions for this purpose.
> 
> Signed-off-by: Wenliang Yan <wenliang202407@163.com>
> ---
>  drivers/hwmon/ina3221.c | 79 ++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 75 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hwmon/ina3221.c b/drivers/hwmon/ina3221.c
> index abb6049c8eab..ea01687ad1fa 100644
> --- a/drivers/hwmon/ina3221.c
> +++ b/drivers/hwmon/ina3221.c
> @@ -348,19 +348,16 @@ static const u8 ina3221_in_reg[] = {
>  	INA3221_SHUNT3,
>  	INA3221_SHUNT_SUM,
>  };
> -
>  static const u8 alert_limit_reg[] = {
>  	SQ52210_ALERT_LIMIT1,
>  	SQ52210_ALERT_LIMIT2,
>  	SQ52210_ALERT_LIMIT3,
>  };
> -
>  static const u8 alert_flag[] = {
>  	F_AFF1,
>  	F_AFF2,
>  	F_AFF3,
>  };
> -

Please refrain from making such cosmetic changes.

Guenter

