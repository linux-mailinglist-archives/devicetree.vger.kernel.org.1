Return-Path: <devicetree+bounces-220824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D08B9ACB7
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23E154A462D
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D482FC03E;
	Wed, 24 Sep 2025 16:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I5A5t1l/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A11313266
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758729601; cv=none; b=acerJrxTb+CTEX1G0sfDGT8/UDDb1GFb+Y2rntjv5Vw7Vs2sPJCOD8YkvjQB4GzDlULEXRnyS8PZNCJGgaxKwXtGrZO+0GxsEZuI0cQl4yB/HHzFK3rMj6zqCABOuuA+GBkZ/PIVaHPYF1XiF8XNuIs8Y4oLUyJqrKEpcwcyKWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758729601; c=relaxed/simple;
	bh=cPOvD0RWj5XRQ1X63jkqRBqkK//fpnkcUP8Ht39fsXM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jphwshyC21qxq4MQtjKY/gbJBdQDowAANOLgbt53QbOtlE9Gydnl6Mx+q0+eTOmwoFC7/ClL+PGELHFgWvES7ITFmtGPAvbBSlV3P7/SRspcJuSMuU+qr7A6tP3q6azeZ89ubtvJEM1Z9nqBM2Dnq6df4LaVF4qe9LmyDhIPV1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I5A5t1l/; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-77f0efd84abso3944232b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758729598; x=1759334398; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Axp+Y7n48EcMK3tr2yHFXpOpdW4+znYlp/0VpLugUQ0=;
        b=I5A5t1l/oeHQ3jm2MrtgudbzVZ3tOzIUVKTDMnspUEvR9XVault9+dDI9CmDDWTBkT
         DsOWdjtd2JHLSa1jin3mqnb+gkj2cR4om6MMRSpYtpdHG7YpeNvzrGnAaSpYiCAylOch
         HBW5Gr0g2JcxdEi2p8Rv6xHsSDpS8SLH5T8b0B0+s8Vd74zvzk6SHnCnRKsy1p6uAbSf
         TFpytHUNyWeU6L8XxvkoagPwbkvfvkEeEK1U/3WRGeIxCXyRFZTyhkayG0lvwwT6jabB
         W+Ncys1X1TmkLLs2LUbtshCTKwnlgYDCOxARiWNRSztbwArtCqL4nCcuENQhZQ3hbbOV
         kEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758729598; x=1759334398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Axp+Y7n48EcMK3tr2yHFXpOpdW4+znYlp/0VpLugUQ0=;
        b=jkns1J9554k33CZ321PnjSkqLBia2Mpx8ZnKxZxXWTLCNW7YfyObNhjyhjhf9NTUZH
         XcLRe0WVs9bPtHxD6w4hia59NvoSESkrRqRuzA5nVaS4WeM/J9xWtBySU+wHDGyZo0XV
         ElDLRQ4K2lwyMpG8WRH1tPVzUTQ+qdgL883Qj5HQQsQL7KMa3SEku1r9OpLb6zEAV3ES
         KmdrZda+dvNhvXSah+NDSYZsZuEg7oj9sywfDpYMeiepX0rDYqaB3qXzZvjZS88U/Qyi
         3CwZuAblqAaPjOxw/RtuzWkP4Ucpum8HHc6PUog4u3TjBuNMFMpqN/LCT4g2ObjaJIF1
         EOQA==
X-Forwarded-Encrypted: i=1; AJvYcCWmDYw0/0xRxU5PZxbK0SbRjLaPwskHOInoFXmO1CFNnYardKLvLD1l12i4XfEnXUcNv7Q8A5OK6wZk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy18yFr9sSTFAnC293TimTH/reNZdhq4W2bEhmahdk/QvPEy5wI
	/UYIAPNJ4JvkC0kveeFjq1XQ3N9ZIL7F2P3MzZz7nvxcQRLGVfQJX/ZS
X-Gm-Gg: ASbGncshmpE0LyHRTzCjRaovbkshm927HVH/asuG57Y202EonOBn0qYoxg3rXjKnvuz
	Bh3Lq23TWWec2EeYFLFl/6JxSsg+Q2ymgEGJfuWSdgsgz7vrsSpy9d2Mneivl0jhvIj2qlI17tU
	OlDCzPszCeZomQwqzwWkXZcGrqBSj0Tf4hvHXNLBLncTGKLfSaXnTKEewJ1kGnWeUCzLHzN3tnM
	P7iS3ZmjimQzUiyy7uE77tGOB2e9KXzIsFAhSbCFE/oivs2MmUDFItJX9VokSkZ6gk/AHhotjoT
	xs0M/wzntHANINZoIzg4sSv4gEJ2NXLDkClte7ntiultCJU0ZyRe0Lo3atWHHuMkhttH0LFUZAm
	RHVwmamWhz2xNYOtQ8LyJ9OyMcFw47C0d4V4=
X-Google-Smtp-Source: AGHT+IEaXCmea0lHklJdK2j0b9lkEP9FEm4EgHcCJQjQymM5qCQpNWQ5k2IXyH2sa8ZgsZ0NbBXZyg==
X-Received: by 2002:a05:6a00:3983:b0:77f:4c3e:c19d with SMTP id d2e1a72fcca58-780fce1f0a6mr534663b3a.12.1758729597476;
        Wed, 24 Sep 2025 08:59:57 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-780fc88c823sm416136b3a.54.2025.09.24.08.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:59:57 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 08:59:56 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Walle <mwalle@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>, Lee Jones <lee@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-watchdog@vger.kernel.org, Andrew Davis <afd@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 5/7] dt-bindings: watchdog: add SMARC-sAM67 support
Message-ID: <93fa6a60-1a12-47b6-b777-0f6f7775d49c@roeck-us.net>
References: <20250912120745.2295115-1-mwalle@kernel.org>
 <20250912120745.2295115-6-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912120745.2295115-6-mwalle@kernel.org>

On Fri, Sep 12, 2025 at 02:07:43PM +0200, Michael Walle wrote:
> The SMARC-sAM67 board has an on-board uC which has the same register
> interface as the older CPLD implementation on the SMARC-sAL28 board.
> Although the MCU emulates the same behavior, be prepared for any quirks
> and add a board specific compatible.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml b/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> index 872a8471ef65..0821ba0e84a3 100644
> --- a/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
> @@ -18,7 +18,12 @@ allOf:
>  
>  properties:
>    compatible:
> -    const: kontron,sl28cpld-wdt
> +    oneOf:
> +      - items:
> +          - enum:
> +              - kontron,sa67mcu-wdt
> +          - const: kontron,sl28cpld-wdt
> +      - const: kontron,sl28cpld-wdt
>  
>    reg:
>      maxItems: 1

