Return-Path: <devicetree+bounces-166855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 688C5A88ACE
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 20:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 012153A2B82
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 18:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4307928BAB4;
	Mon, 14 Apr 2025 18:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="k0alu5/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162CA28B4F0
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744654358; cv=none; b=KprSiRfNr0RB9z7sR6SS6hnX7NrLix5vunXhfEWM7EbAp2HdbRiKKQWkM0HY9pGoH1BN1WCMPnPqAKtbg0kr7VmAyYT9uZ0mM8grGlEONMgpiK6oewFPfgn4Zcncr1CAjuB4u7PoaL/xTX4zYn1+Nz1DHYjfECm9lSHIZLBxIRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744654358; c=relaxed/simple;
	bh=M88zxHxMuT5Hi+r12Pej1eNGbm2XjVO4O0bNQWtajxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P98m5OpTOcHl77B/itsnEpbdZRYdjs4Wu1AkXdsrjsAKdxbuWuBOgkuuY9Cf0cjfCGKvAn8PSBxo569eib1a+L9XkfbufdhuFymrMWnFLk3D/NnAbni1s4tUEmw0AVhFa0Kxg826/iIv4yREdslLQVV3L+FcxIng4SLvPtWd4+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=k0alu5/t; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-8616b7ad03bso82881139f.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744654354; x=1745259154; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uo0iy7MAQ4hbf5+c4Te/phX/shJ7ZZ2Na/tgJWtoOGQ=;
        b=k0alu5/tlamnZvfN2Ar7I9lIPbMJBJFhRfIhT74ju7BpbO7EDq8VZQGVQ5HH28ANaT
         cyhVUFbGdyY4ceh2aDaMBAF8Dp4l3pXkAThBal6jXexOXLpKsIzj/6TmozNFJ9nR9GIv
         3ixOvzVzAjlulrwANeQNLaRtft+loQoMrHN2f+B6Azz5+SiSS+zZ5V5Kxye8fiPoDI1Z
         unMQyhP2PLPHoKa9m4noPNWTSSYVPClgFJLsQOfGhyQZkN6e0kvygARdxJav3AOdEqQW
         c/77LLhV6fO6hw7W4BZ3Tz2OZpsk1DLrUFJnRD7XllW65MbAW2+w5J4z6ME70+Ee/ByL
         oBIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744654354; x=1745259154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uo0iy7MAQ4hbf5+c4Te/phX/shJ7ZZ2Na/tgJWtoOGQ=;
        b=YQxSXdjWKz1TTMjFbNgf0TACzHbj28T4Vyq0Lmas5UVTIcuurjjHIJsV0g0XQ+oVCb
         0z6+K3F328BsgKe3HV6sKfUqqDNom8OT1JCbf8TvL67Kue91J2U11HMv3tZ8FfsDMFkX
         /zsjqLCuf8Hah1C9W6xYvouhi+Jizb5/MBMI0zc8uT4NO1YwVNR0nDEJrBSCP5Tg+nq4
         DZY4A7zqXNzkwu0Z9W9YPPJOLYOQc0lzAB7+3li2dkqPKEyBj/j2JOAnTBqLMdfNfuOU
         fbNE5fo2ibNPY8PKhTjxkNmWtTOsMwyMeI8jB9NGEmKm3985+g7CwQJUzxw0mIUNAVGS
         ZYCw==
X-Forwarded-Encrypted: i=1; AJvYcCUdjm/oC3lqeJ4xROkWYNf/kfzWb2CEIKBnnZvJYZicqG2Y36+kLHhENQifE42u8nOAVPlTF9rd7OKL@vger.kernel.org
X-Gm-Message-State: AOJu0YxX0+GSKRP+XsxwegwlnQPeAo9kusmGphyhSqIR1c2nqdZhvTKT
	sLwBGqFwFTZsS7Q/63QSKcbdgMH8rOdBO2Bv99gR5OudYFNYkTlQWxX5ElE019k=
X-Gm-Gg: ASbGncsP3EwsONZ9TlSFBEp9acGqww7yY+myZTtVkTyrjCZcgkVwZ8jJf/8f23PCTTe
	gGjv7GCqTZ/+JwwhU/mosWNtIjeW2beLIJPcIBYgYdh21LL+htPChYvX8VboKX81ZYagCsy1y7l
	adyPC3HkQXrk+yK0pUKLHfpHYLA/fpd9f+/sW3y/2pUDdKDYnG3l1R41sCfSN6GwM+nYD3lUFiR
	PtCmGqoPIFtCZmmdt9kRGiLlccdSHsMtYZRaLPNTeWvipJgAkoxtVTeat+0ZGi65ZT3uncrxN8P
	xva/hoEXqPFh2qsJzhYziUdKCLAwxhmOLUdm1jIerVD+BHkgOKMLeyT/0Apf9o2cDZce9j7nmwN
	wL9kC
X-Google-Smtp-Source: AGHT+IEPulg8UQUye+ERWDwcR54kMX3JF3oXHebpwxdb/gMTX99uIyKUf+GhSeeH3MJ9K8PzDd2i+A==
X-Received: by 2002:a05:6602:3890:b0:85b:3e32:9afb with SMTP id ca18e2360f4ac-8617cc00bbamr1642828239f.14.1744654353950;
        Mon, 14 Apr 2025 11:12:33 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-86165428af3sm219588339f.15.2025.04.14.11.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 11:12:33 -0700 (PDT)
Message-ID: <eadb0ac9-f46b-4525-a198-0c6c289084f3@riscstar.com>
Date: Mon, 14 Apr 2025 13:12:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] riscv: defconfig: spacemit: enable clock
 controller driver for SpacemiT K1
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250412074423.38517-2-heylenay@4d2.org>
 <20250412074423.38517-8-heylenay@4d2.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250412074423.38517-8-heylenay@4d2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/12/25 2:44 AM, Haylen Chu wrote:
> Clock controller unit, or CCU, generates various clocks frequency for
> peripherals integrated in SpacemiT K1 SoC and is essential for normal
> operation. Let's enable it as built-in driver in defconfig.
> 
> Signed-off-by: Haylen Chu <heylenay@4d2.org>

I know Inochi wanted this to be "m", but you can see that
SOPHGO sets it to "y".  Meanwhile SIFIVE uses a default
value for its CLK_SIFIVE and CLK_SIFIVE_PRCI config options.

I'm not going to solve this, so I'll just say this looks good.

Reviewed-by: Alex Elder <elder@riscstar.com>


> ---
>   arch/riscv/configs/defconfig | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 3c8e16d71e17..4888529df1d8 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -250,6 +250,8 @@ CONFIG_CLK_SOPHGO_CV1800=y
>   CONFIG_CLK_SOPHGO_SG2042_PLL=y
>   CONFIG_CLK_SOPHGO_SG2042_CLKGEN=y
>   CONFIG_CLK_SOPHGO_SG2042_RPGATE=y
> +CONFIG_SPACEMIT_CCU=y
> +CONFIG_SPACEMIT_K1_CCU=y
>   CONFIG_SUN8I_DE2_CCU=m
>   CONFIG_SUN50I_IOMMU=y
>   CONFIG_RPMSG_CHAR=y


