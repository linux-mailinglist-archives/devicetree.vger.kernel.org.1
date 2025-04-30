Return-Path: <devicetree+bounces-172554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A060FAA53F1
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 20:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F322B4C07B2
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 18:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F09AE2741C6;
	Wed, 30 Apr 2025 18:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZtV8bycx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481CF266B50
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 18:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746038610; cv=none; b=fH1G017acUi0L0DKX0Ik9lDpObh8QTF98P2ouqKPCR2rrELDz7pR3nRvI2d4jPOoWRKahoL5SS4Z9XnnXhG0wDegSE8QD66Nit8m8G0oMiPZWoQDNBajikin2p9ltXYM9Migwmuf04ZKeRa2hE2dBpuyzXmghdRhLVR7NBHItgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746038610; c=relaxed/simple;
	bh=Pb/efMrKg4+HQ6/2NfMbs7Yh7bxImHsK9yrL75Whraw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KrkFDvioJMkl0qb0aDFYxiHjR/SOB51QYhfa6vrjdSdQ1dv6ueP1CQb0URo/ZcPVAd/tYUZg9pLhdeU3r4skNSiH8qjWyOhjCCCzHdSdi/t1wUt4g4rmtIhOLVuH3UPwGjcnrd1PyOwfrn5TOFtwn3CKs4Q/OCAplo9k3Rqq/Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZtV8bycx; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-601a8b6c133so664274eaf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746038607; x=1746643407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dRXIk2lKOYAihoanpH8QfdOUyxAwjsmIpzrb0u3+vUw=;
        b=ZtV8bycxyMd8Oo2aCtRDHSBqDpXEvKtPS13YV11fWJNa3apDicwVUT33iToiV32Jsk
         L6lPAP8s2Wox4fHf5VRJdPRnjBKE5zZJIQWEpaH/K9OqAM+27TuIbcjfGDRE9GfwfXRy
         FFcDh9TjW6VINlRGFLjV3IZnk9q1NuiZ2UtYtLywb4BxvdtQluuy/XudfUZBbksaHufi
         CEdfGBMLgCQrEgP+/+DTTAQfmm5dlEhQjNi21Tk6jTMCb/tLsBGd8fwi+AVs1VIVSBvk
         anhdXrudaY3V2uzuLn4fDzVwgD/DvVHYpuYm2fsafeNymG2ADng+oIUX7Hta/viBOWPY
         +coA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746038607; x=1746643407;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dRXIk2lKOYAihoanpH8QfdOUyxAwjsmIpzrb0u3+vUw=;
        b=hmAvfwLlYUhbCJ2lcHzuzLrHHE10YOq14gOClMLgzcayjDLGcXOZmNDTv1xlTUPpyr
         dJHYkcwk1zVU6LiKQYhj6omj+jUh7hUAxRONtr80e83sqX9HPLCHIIEnMw1MCfMXRSYX
         +3meuzkLXejf1dUq4C3uXwxyx9dfHf9DyWmcGuMmnRJUXJX4htqzcJ8QqU1Ze0kM8Hd+
         vitH7BtUqz/61wEPsFeywH3lLOYW02qh8f4kcDiy3rosYgpYcIHf4pnfZ8lrgDqHw7PM
         mBgHOCvwEwUjd2QD6LwqXN++fA672YPFHM1jaZMzOuAKBElhCckmSYl3Du3byYdE9MQQ
         4dzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRIWGkTQivoDdjJldnjBBLnLzXG0lJ0dO81xLuysuqeO0nhWDwcniaiepp6NQDRk6MGZwcI4cg+Vx4@vger.kernel.org
X-Gm-Message-State: AOJu0YzDftIzI1IrH0amtMnU7GjaPwmJPQZ9FbTppq6YzmN4DPjVRtwN
	29S7+NAoEbB2r8HqC4HvxxfSeb5IWfciDMDldzGqwFwTRVb3U+gkTgyHaC3g03M=
X-Gm-Gg: ASbGncv4bv9DCfGa8vYDkZQutrDYFQTPPGQTKyeCDyxI1sI856TrNqFioldSpD95Gys
	BMFL/wi8/Hjr1jz9VXagXUzUZ15kZox8mmoQ4PkR/dGJ2QTMDqdMV3lOMaObkSkwu+s+IGInMGd
	1WQUKuQVuh8K08z1LBwJqE8XXfu8sh/NXulzxGX+rmyOyBzovKCyToAAI7azER4h6m7aBtQATyW
	fqxucuuUxlfzh1aVfMd3ko1q0q4xFPASz3iR75pRwPzfxYRmM4J3/uF7uQMPbr39kVzbc8MY2cv
	VVINQqbglof4iKfrPHP1fbdF8Tlmw16PFOS5yduBnFUy9JoCobj6Ebas8pO4ytPvRGtaXqmvFpw
	/iQNRLT6KFN9k668=
X-Google-Smtp-Source: AGHT+IFJ7NsTI0Qgevug+avxKfif9V5H032u+ML/0KNagUrHEeVV4ThgLTtzw4bhB4wmXUjY6rLWXA==
X-Received: by 2002:a4a:e843:0:b0:604:99a6:4e90 with SMTP id 006d021491bc7-607df5e5f9amr353602eaf.0.1746038607385;
        Wed, 30 Apr 2025 11:43:27 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:359a:f1e:f988:206a? ([2600:8803:e7e4:1d00:359a:f1e:f988:206a])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60686e96dddsm884171eaf.2.2025.04.30.11.43.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 11:43:26 -0700 (PDT)
Message-ID: <996aedcb-f4f6-47f1-a818-ac89de0fa459@baylibre.com>
Date: Wed, 30 Apr 2025 13:43:24 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/11] iio: adc: ad7768-1: add regulator to control VCM
 output
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com
References: <cover.1745605382.git.Jonathan.Santos@analog.com>
 <8a04f8f1e9c14d57b1db2f38a8433a0367c0c9dd.1745605382.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <8a04f8f1e9c14d57b1db2f38a8433a0367c0c9dd.1745605382.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/27/25 7:13 PM, Jonathan Santos wrote:
> The VCM output voltage can be used as a common-mode voltage within the
> amplifier preconditioning circuits external to the AD7768-1.
> 
> This change allows the user to configure VCM output using the regulator
> framework.
> 
> Acked-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
With the issues that Andy pointed out addressed:

Reviewed-by: David Lechner <dlechner@baylibre.com>


