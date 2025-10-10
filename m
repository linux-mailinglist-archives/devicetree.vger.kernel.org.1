Return-Path: <devicetree+bounces-225448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E5BCE2B5
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D233319A36B6
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12753266595;
	Fri, 10 Oct 2025 17:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2X8FmCYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D252E224249
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760118944; cv=none; b=SQ2MbkXo9/0kJ20liR/ZH02djhT5MArqo1XZ6NSmmlRBmr77qK3gQ+vMO02Y5NxqjSu2nBhqIX4GEd26X5139coxkLWe6japAlaWxWZ362gb5JnSvi31gZqKSGl2HFSpCP9FNnxgypPiD/chsSUXEIO9H05b94n7hrOO0t/gRXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760118944; c=relaxed/simple;
	bh=wNIzmMRkLHrQdGJ9CI3n8s5+na28Lf4RqsVWycxkjMY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vq2WpqwZ76P7hd9Uj03RAb1xV4sC+zASUkB0elqOoIkeJkdw3FnW9Xhkk//Xz19prw63fmvqK9pzKhZt6rhFStZH+F68IWdGSpIX94RxST2d2LQxwGIR/r9LE9GG+yiodwf68GY0bv4JHoRTWabSs1JXKQopCW8yPb7rLDNcQFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2X8FmCYb; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7b4f7a856acso874970a34.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1760118940; x=1760723740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FaMtprRJaiBLmGg4i/xmoof6gnqLK2TnSEKb/a6bsk4=;
        b=2X8FmCYbCmsEgdEvV9AoAjXb9rV9Q658NP8FIpS3wl6JBzf0t45LSRtZ3E+IGBVR1c
         AoQ91MXTGGWJQyE7NrjZtEDdOFBxSUx5aWtuzVovhzo4ziuCT/mxE+G7mBRdn/DKqdUu
         9/InSeCO5zVi1ypsm2d+224lGG8cPEGg+ADeeCwWSi+oF9srAUkDg6snlTip2pYPlHXM
         WrQpCKinX6gLdvakHZWGst17awDi4QChgiW8elZ4TQMnFKGSz2WdR4UI095Rv44o+YzK
         KlCE2i6eJS/q96YbK6N4vu0YIs9CaZmzpBdg9B1DR9Iv7lCsjAhaABcNamq+Z5T2VD9d
         r4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760118940; x=1760723740;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FaMtprRJaiBLmGg4i/xmoof6gnqLK2TnSEKb/a6bsk4=;
        b=ad5cqGie9Rwev5Bi8Z2OO3ThwAXl55IkrMaYVU6UMoz64VP+/4NDYLKT68ccrt8Ksw
         kpegpTc+2ONr4a3IIg8Gk9ukCj025T0Ix2eumvEO7xEvBTHrgqDmav3ZOkhCum0M81dj
         CrSZlgO0TfblqElbLiWl4RIpSPZM3xoU6R374teTLn8AyQ6sx98G21xVphgoZlJbC5ch
         Nr6ZgFk0Gf5wQ04PeoBMLEqtX/dFU9dfZKaiiK2l8W/4RYa9GvmgtrgVx0TfO1VsWbHy
         DdhRnP+cMKKWckDoVRQWbAuPQvC1ALdpgOGQeoWdLKpfvtvaDdKGkmN1d0gLAzwBGhlF
         WdVg==
X-Forwarded-Encrypted: i=1; AJvYcCUKm6GC5U0HOSE8EzRvYrPtoe7NkHZqw4j5luyaZd/Ve5L/ifZ/Jp8ffLapjliZZLVk9yu5+sMucksi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhh/QCE3bCMwqCKz0hJp2FOChHGc5V+xEagzJ0ReJGtb588tXL
	Q5WgfiDaBLjzdNU7CeThEmCvfntbOSTecuQUPL2+oiPqO0+zOC+goP/fn4aEWEq5rsI=
X-Gm-Gg: ASbGncveq6CzyawwO72r0GfTXSb/lDyo2FJW5AEVVoENKJo60EiXX5XHPQsf4nuSNWW
	wQc7FrW3BxugZcljU1M46GhrHYaZojTAOD0z/A6LGdtYj+WvbpkhPlTg41kofSdxJvbnnlxD+Vm
	ONBfxofs/G34l55UwxOEIP0/X6NM3gIr3DewjIL/5/NFAa9XvxuSgpmpJyyHyhlGrXymN6dconj
	EpSY8NwPYQnoE4lw0LsvcsREqtT5XOlLAQHiVZ/KxefoMh5BmWUUlDWhCfsGc0ATyFtglet6ftP
	iPYonC2Fd/0jta8G/w8SpNASKtVeby0/h66KaZJUeGEr3MatdeUjwYL14p03/ED1Wnt2Tv9RKN/
	WOArVaB8NGgc1UlHvTuFylydcZc1a9DUlbx/G+M0kjjbT8m4U2rzLLfNcoI/EWyYud1scbi5lrf
	DF/AQbKYweC255P7ui+TWRU/Xwgg==
X-Google-Smtp-Source: AGHT+IEK9+fD2C2mpPvsDARXpusuog/ajtfLqTbuc/LGs1+ce/f70c+jW5JTLJ4ttYcpUKSMQljjjg==
X-Received: by 2002:a05:6830:700e:b0:7af:1367:4f85 with SMTP id 46e09a7af769-7c0df82d758mr5830865a34.36.1760118939948;
        Fri, 10 Oct 2025 10:55:39 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6d3b:e3bd:4210:32e2? ([2600:8803:e7e4:500:6d3b:e3bd:4210:32e2])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c0f915eed4sm1027277a34.36.2025.10.10.10.55.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 10:55:38 -0700 (PDT)
Message-ID: <abc4209b-eebb-40c4-902c-b584028bb611@baylibre.com>
Date: Fri, 10 Oct 2025 12:55:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: health: max30100: Add pulse-width
 configuration via DT
To: Shrikant Raskar <raskar.shree97@gmail.com>, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg,
 skhan@linuxfoundation.org, david.hunter.linux@gmail.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
 <20251008031737.7321-3-raskar.shree97@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251008031737.7321-3-raskar.shree97@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/7/25 10:17 PM, Shrikant Raskar wrote:

...

> --- a/drivers/iio/health/max30100.c
> +++ b/drivers/iio/health/max30100.c
> @@ -5,7 +5,6 @@
>   * Copyright (C) 2015, 2018
>   * Author: Matt Ranostay <matt.ranostay@konsulko.com>
>   *
> - * TODO: enable pulse length controls via device tree properties
>   */
>  
>  #include <linux/module.h>
> @@ -54,6 +53,10 @@
>  #define MAX30100_REG_SPO2_CONFIG		0x07
>  #define MAX30100_REG_SPO2_CONFIG_100HZ		BIT(2)
>  #define MAX30100_REG_SPO2_CONFIG_HI_RES_EN	BIT(6)
> +#define MAX30100_REG_SPO2_CONFIG_PW_MASK	GENMASK(1, 0)> +#define MAX30100_REG_SPO2_CONFIG_200US		0x0
> +#define MAX30100_REG_SPO2_CONFIG_400US		0x1
> +#define MAX30100_REG_SPO2_CONFIG_800US		0x2
>  #define MAX30100_REG_SPO2_CONFIG_1600US		0x3

Would make more sense to put this new code before BIT(2) to preserve the
order of lowest to highest bits.


