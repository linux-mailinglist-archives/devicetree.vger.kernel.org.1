Return-Path: <devicetree+bounces-150085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB93A41264
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 00:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B637618943E5
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 23:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C878204C0B;
	Sun, 23 Feb 2025 23:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GvRt9oGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC88F13B58F
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740355014; cv=none; b=TpcFPbwSQiKAnBr/vQP/KCjtFoKmHaWrqwdS4oshkuRj3vs7RF/bsTQPN4ZNd80ZLR67gJC/7bm7i6oTYU2AUeiIvwGfibuzzM1LOQZxAX6AfeuWqYx4kh88mUlPVL4/z4FJCpUUH3QZlCix+t2GTcniUNmBMylWnVvpWSj5T+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740355014; c=relaxed/simple;
	bh=M+zusfD2VKVuEAnmyGa3eOk8yYx5cS2qKUUBEMHbkHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FZjb/WOwX67j0dety92lbH7JpSwReVWZTDp2RFKT8l7gFarD7nA1hVI8LvaTCXCuzub0x1B3h8TJsyt4dpOT8xVtrRcToMJcGwueoRewupEjzajQ3NLsC5no/qm61BjJY2c/8GqoNHWOidYnoIbIAPdILipsLL+4fLc4qqckwHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GvRt9oGk; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5461f2ca386so3381310e87.1
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 15:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740355011; x=1740959811; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r2DHKJmVwTszsc5jF4SMA+P5E4zML2jBXCCxXSpwdHM=;
        b=GvRt9oGktC89aPlk7HINfbpk4kpXShDLxajMqZ68AcKCHwzDSiicxPFR8UdNg12jqd
         DuxqzZOMnGXlk2ZT9N48BYvQmQeZ8gKIe/uEJXxQQIP6N3/2mJdflEWxsIStO5f4z0Ig
         GtiuzOVZkuj3ZyJAiEENfLN/U0oVwaYjHtkx+wtauXMu6l7QxMPJ97tn+LmDioJHeNYQ
         i3S0TRFdsbzlECL8KBL/+XxoeK13gXbOmtHnL63dc86+wEph4yQku1qvaJRQq6spupBj
         6EoGxqILslDJ74tP3ARi3pa+mmB/U2UvLBjmT7wYzR2dI0/wyynjX6LjU9lTdT9HRmju
         ztqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740355011; x=1740959811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r2DHKJmVwTszsc5jF4SMA+P5E4zML2jBXCCxXSpwdHM=;
        b=mP2Ma8bBgnTq8tQevrC4zWkqBsH6MPSdW5FIJDvMFsFdB6s1DLb+8w6aZtoKgbHZXn
         SJARV1Jb5tGpCEz3LLQQBfU0cCjiqAsp45nBttHwaynwryXmQYyB/79JdQsKFP9/sneY
         4SSqc4OVg0x5Idf2CjE0+D7bvVZy39Su4sUYS47Lt+9BWPwG3NJvyrq3P7W5+TQaMLI3
         O4ESHHqEAL122QjAZfSKqLzLg498z5+R7us/8p1JvZTrkaflmyNzTbVP0HiXgN6kPmpI
         QxWiNpyP7lDZPFzoEOsCqDcOFVlLZyQhot9PTh1ocdGe4n6iPRZVquThm9gWf1AuXuMa
         TNlw==
X-Forwarded-Encrypted: i=1; AJvYcCXWjRwlC52rbPudlg0nNtMa6jdnHuZljQIoCALPMTfiOne5jcFs8+zBCnf/3oMnQ9woFVI3/YnqboQt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp9NuD03G8ETuA8A3NtyakwoOPjwsSu8lZGp/ROxiM8w210Ptm
	AQqc0MqexwfVG+91Kwya8MhhzWhHrHy/3yqpz8qU5BY8Jn+bmtqF5tvNBfciAMQ=
X-Gm-Gg: ASbGncsLzvrxJJ8pk7wAHu4NO3SR4ZwI80my+Ime1LxyGFHXyqLaIHpRjqHz+PIwTR7
	LXMzv/2V7v6HWH1v0UXGnr3189xE3MOQk2iGGXtnyGoIe+EFbWA+30X6TZ2r9g595aOQyLYKINk
	R1bx9/WKQN/UI5xEUDs89kFP5D0vEbT+zt9Enpicao9Gg06IPoIrRqOw94OLa1aJ7HtxDmDvdjB
	V3TkyNGoXOJU0KIKXqyr/w3P8N0CljbIKTFcj7x/eCBGk42oUNkhhc1SKemHuyMey90aDiZaFzD
	zLZZfrQSGdMl3uQ3SHIWSryJgvpX42xvCQbecVZWHLnhKC6H5s+CDiUFYtN8wUXrLHbYdvSnu41
	yp4VNgw==
X-Google-Smtp-Source: AGHT+IF6OJYcSWoSlziCksaDaytWusPnVDJAPswi6mIFSpxY5wclK5bI3z0d9DXLCUpBnh5gcaD5sQ==
X-Received: by 2002:a05:6512:3a89:b0:545:2a96:34fc with SMTP id 2adb3069b0e04-5483914820dmr4522273e87.31.1740355010753;
        Sun, 23 Feb 2025 15:56:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5452eee91ebsm2863951e87.129.2025.02.23.15.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:56:49 -0800 (PST)
Date: Mon, 24 Feb 2025 01:56:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Fix clock for spi0 to spi7
Message-ID: <53bunpmzcdlmjg25k3g2a7aiif4jemzrfs5uerefjeefjbenal@5vkfrlnqr4ar>
References: <20250223110152.47192-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250223110152.47192-1-mitltlatltl@gmail.com>

On Sun, Feb 23, 2025 at 07:01:51PM +0800, Pengyu Luo wrote:
> Enabling spi6 caused boot loop on my device(Huawei Matebook E Go),
> 
> 	&spi6 {
> 		pinctrl-0 = <&spi6_default>;
> 		pinctrl-names = "default";
> 
> 		status = "okay";
> 	};
> 
> After looking into this, I found the clocks for spi0 to spi7 are
> wrong, we can derive the correct clocks from the regular pattern
> between spi8 to spi15, spi16 to spi23. Or we can verify it according
> to the hex file of BSRC_QSPI.bin(From windows driver qcspi8280.cab)
> 
> 000035d0: 0700 4445 5649 4345 0001 000a 005c 5f53  ..DEVICE.....\_S
> 000035e0: 422e 5350 4937 0003 0076 0001 000a 0043  B.SPI7...v.....C
> 000035f0: 4f4d 504f 4e45 4e54 0000 0008 0000 0000  OMPONENT........
> 00003600: 0000 0000 0003 0017 0001 0007 0046 5354  .............FST
> 00003610: 4154 4500 0000 0800 0000 0000 0000 0000  ATE.............
> 00003620: 0300 3d00 0100 1400 4449 5343 4f56 4552  ..=.....DISCOVER
> 00003630: 4142 4c45 5f50 5354 4154 4500 0100 0600  ABLE_PSTATE.....
> 00003640: 434c 4f43 4b00 0100 1700 6763 635f 7175  CLOCK.....gcc_qu
> 00003650: 7076 335f 7772 6170 305f 7336 5f63 6c6b  pv3_wrap0_s6_clk
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

