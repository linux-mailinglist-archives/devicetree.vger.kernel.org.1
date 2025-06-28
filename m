Return-Path: <devicetree+bounces-190783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9884EAECA0C
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 21:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26945189F978
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 19:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914FD24728A;
	Sat, 28 Jun 2025 19:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QdpGTVRv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932F61C8626
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 19:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751139302; cv=none; b=srkC21qWEgDIEXvDUde0MzhYd7jh9jPaMGiMC/SiOJaV4U43yqzO0QbTiKmRjY4wDBIEbVgWX+jGVb8mKMZ5Fh8jDF9AD9N3nDCDXbmslPSyjU9JNO2ay4Eym0AK7xy2o6Usf6NTjiredItbmBCkQUpmBbKHa96tAeo21+7U2d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751139302; c=relaxed/simple;
	bh=me0GBiFpCPuIttbulTyQIXZU/0+othOGnQ83X3C3dWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aOq97E78qSfvbJZHtRb0wS6Fz/a8o/SO2Ofd//gesA22dNxw17GwhDcJq81gKfX4bLO2JS2o7lx8F0BJCRnQlWLflrdx1VwfKopVfPUmmtX7SVqd79ib7YTzPSjGnnaHYJ0aesrrPKqKFSpB4b4AQBb4dvKa5D8einEL+SU6Ji8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QdpGTVRv; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-234fcadde3eso8482585ad.0
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 12:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751139300; x=1751744100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iHKDnUlLTqmdXQjkvRCxfzluB2rJv+pX3lyahvfq2jQ=;
        b=QdpGTVRvkeFW7IdNuTbgvYagltuOMuqRYFpy5I9hWcBUf8KfYhyxFX8HAWCWSLALmQ
         DXGEIO5hmi1OmHS1dc8SygA2IeaLsvT4MfFJYa8E3FNGaahYMl/R4I4O6ix+V4d+77uQ
         EIHZipfTjZ21olOSRklLhd+175ugR975k8vkJMv/+oJTQnPBggA03aLcXIL2ufJckf6z
         RFHEduq0HrT5njjsS6hshP+gfg6Wc7A1jqFt8npsCuD+IBbgKjnTO+vRgGSVqxHODkPe
         hxpxdywM8/BdxfXiYXmt5em5UdIS704dpW7TmHPfesLLppGPxt/tFhkXKWAqMXbnJ2Vx
         5Tdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751139300; x=1751744100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHKDnUlLTqmdXQjkvRCxfzluB2rJv+pX3lyahvfq2jQ=;
        b=dwOlfiWCnHdoDqyWSnUIkLnRD2sIF9+q8X2FOJKrVxKBbywFxLZHQrGAiW47Dfijzo
         z5Kj3KDfXlGZXfxYPAwbcKnxfmB7ur8zbxNT4VNfyKfzegQnWW7vlnvlfemPPhFd9zN6
         yWPiDOlPU2NV4NkEew090X7ML19ZRvjpZfPxOSwsjmNPVrxDXylE7YgP6TRTmjU9Vflo
         UPdPHiJfjqrIqzDV9boqfKrM3ZW1GWnuZ4zHFNfSEmOFYPl4oTOFWLDV9YNu4grN1Z1R
         NBr6kmv6UZmWKkewH74vz27TXm4zx/3UqQt9c551KL0w7yoofUG0zDxx4AmubVhooU8V
         4A4w==
X-Forwarded-Encrypted: i=1; AJvYcCUrCqg4M9gSowXqvYop8J+zhbUhMV1uunjLKGF6vxwa/a9kPqpjtZrYHZJS4kYOnHu4eLUlwcNZYw0z@vger.kernel.org
X-Gm-Message-State: AOJu0YxOPcoXRXoOrC907NYYD6UMx116GEHQyoQb5HVYHidsLud6TqwA
	Y+hHMV1EAKeISnYdxDatHyHtQlSibQzF8dINAurD5kiFxC32BsFo7w0wI7aCgZNZ2Ac=
X-Gm-Gg: ASbGnctBcoVOlOo1EtiIJW2LAjpK4AYLGYq3KpQZB6bGcQCnmWqw0MvaK8QEMZzdW8B
	jbfUMl4/N2Q4wv0oOpvSp6mOIf/nFvInQU33lYD8AVBA5+ZcfTUYUuZLPobxIpHsWYTDl5rULCF
	HuPeR4swls5VqU3MSlRxnD2xm7VvrS0qPieC4V8G4pgQLaQUwRkN1LsvPSBMwoFybWRU9OCAZpb
	ICwzvVu56K6L6xvmERdW1NTvkXG4bu2oklocr8cjEJBUwBDyErUtUinrnTTDoew7wz3YcSzYdA5
	LTev1yq1mwXIuFtxak3N9F5pW34Yr5VZ6r+UjMQXWNe4oUQ94+yLD1FHqIh+R4iGTxIu1aLaN4T
	abTM9RKp88EPDPQWoakn4uw==
X-Google-Smtp-Source: AGHT+IHeu4su47hMzl7j4en+VxJcuaRJIBgkjqjt+h8WPfbb35xW3vAml+KgyRy3W91TVd/V6Wf5/Q==
X-Received: by 2002:a17:902:e849:b0:234:986c:66d5 with SMTP id d9443c01a7336-23ac3bffbc6mr149337145ad.5.1751139299978;
        Sat, 28 Jun 2025 12:34:59 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3ce960sm43929425ad.250.2025.06.28.12.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 12:34:59 -0700 (PDT)
Date: Sat, 28 Jun 2025 12:34:34 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>,
	Nishanth Menon <nm@ti.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: iio: adc: ti,adc128s052: Add adc08c
 and adc10c family
Message-ID: <aGBDytRlnOalhicd@dev-linux>
References: <20250614091504.575685-1-sbellary@baylibre.com>
 <20250614091504.575685-2-sbellary@baylibre.com>
 <20250616-wandering-blazing-pug-ea09cc@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616-wandering-blazing-pug-ea09cc@kuoka>

On Mon, Jun 16, 2025 at 09:19:07AM +0200, Krzysztof Kozlowski wrote:
> On Sat, Jun 14, 2025 at 02:15:00AM GMT, Sukrut Bellary wrote:
> > The adcxx4s communicates with a host processor via an SPI/Microwire Bus
> > interface. The device family responds with 12-bit data, of which the LSB bits
> 
> You have checkpatch warnings.
> 
> My ACK was given with conditional - PASSING checkpatch.
> 
> Does it pass? No. Don't add tags if you do not fulfill the criteria.
> 
> Drop the tag.
> 

Thanks for the review.
Sorry about that. while rearraging the commit message, it slipped beyond
75 chars limit.
I will fix this in v5 and will use the tag with no checkpatch warnings.

> Best regards,
> Krzysztof
> 

