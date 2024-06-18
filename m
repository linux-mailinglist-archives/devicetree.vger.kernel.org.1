Return-Path: <devicetree+bounces-77018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A4090D311
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:58:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16E121C243EF
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2520A15E5D4;
	Tue, 18 Jun 2024 13:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lrATvGNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C4C13FD72
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717569; cv=none; b=rumY0TR+SdzzuQf7ofeHNuocTIODnlbdv/YorBdunHD/mCPlP2tie7K/v3Q4lIyqdOHFU7lqKrErRBKTUZTrLTd3AS4PCQO1soFFewOZggCajkElLr/NY/uuhAvI1wdvmBf3flkgwT9H44C9n74s3KIUQ00urBKYXpkIExhTaro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717569; c=relaxed/simple;
	bh=GgzUktl0D9SwGZEeIDX+GZpiHGkGUQjZHSqKbu5zMQQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P/tW83uJ76JmKgP9WVJhkbSLsfJjY8gVsih0CK4FwJ8/MpeMNxLcLI2RHPZSc1nImxbmqu+pK0FUtBxZtAZqvIPysj1Gr08cbMXoUcnUuqre3LqG9zR5XNdUDYi+gM8AY15+xaXHnKfwETmGVL3Jjmgp6RGdYbA7B6j5PnBqS6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lrATvGNT; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52bd48cf36bso6233616e87.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718717565; x=1719322365; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ez+ZYdZ4IhLN/85Rh7VlX4Z1ctdZ87K4zP66/HgVbow=;
        b=lrATvGNTfb3AKMeZ6GDh4FIr9HLQ+sQLwBneZ+0q046YuhN0qi7YfCqOvWI/aVKv9u
         H5QkbixvqREmqRZJD7veJv5f6pix9eKiuDoo3syJM9yphx0gNWOs/S418FJwqbksS3G6
         E+zm+mJpuhxv6V8h/rASD6UGoTReaCpPQaIixdatJ1kCplWVPk4jb+9WCYT4eNpl2296
         7fGigkeQE1uXyFocdelDfRIpJxMt3Yxs91qKPGkEb1KXzBevXhQWpalKw0sl7LZqT9Ds
         KCrKFBP4kro+kADUtejSRlX1Bg0eWdznATrAnDsD3GIO8kQ/X0lwOyYHyaTeBrSLnt7b
         2PIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717565; x=1719322365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ez+ZYdZ4IhLN/85Rh7VlX4Z1ctdZ87K4zP66/HgVbow=;
        b=gLATbOzaRFlTV6gX+o3UO5dDSjlRx1f9IkvO6IHyYNJIpOGj0BEorKGhtjd7ow1nUW
         oHG/8qKs0/FViep8EcwQ3rTdoXbL2DOI7lu3FX2j/QWNWYkUmfZckUHkjEX+NQ05JeKH
         hYETTW0twEnzRA1Yv0ZmTLxIteOWSjU2hqRexs9+/VMeCaDXj3w4iKHTnzRCtcKlcJh8
         b2BAzBO2SBJ69ryLnA656xJ+Y6mx7SNul8mpOh50iTYjAWxPcfKL4sUgnR2tMMwQIYhn
         9n0pKKD+VNTY2TAbKSDbR+O3a5i/+V4gc0X/siDjwJYnpeT3PkGawQcEVdbuwlPm8kV4
         hs6w==
X-Forwarded-Encrypted: i=1; AJvYcCUdOPjsH0Sjs42p4w+sboDBTAKj07R8WrMWiLsOdxkug7P7gcqUbaLxe1JrR+FyfEV7KieCiP11rNTF8RQFAV6saqrInAVHo6TVEg==
X-Gm-Message-State: AOJu0Yy22RGxb62cYLIpwIl962xjDd0bEU5/86BPw5iFyU00gAYyzksZ
	ef3I3+lKoKmoBVoV5QO1r9xGon4/AkBg1CBYv+rLYRtHSDF3Q4ob8d9i7zYz5A8=
X-Google-Smtp-Source: AGHT+IFd8vm/A2hU7dX3aYosPwqK6rV2k2IpMC6TsKDAceEBhHhRIb3K8WkyukwOO/rCj6gYmrYeTA==
X-Received: by 2002:ac2:443c:0:b0:52c:9906:fa33 with SMTP id 2adb3069b0e04-52ca6e92f06mr8544246e87.43.1718717563886;
        Tue, 18 Jun 2024 06:32:43 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f3b6sm1503387e87.117.2024.06.18.06.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:32:43 -0700 (PDT)
Message-ID: <b53d7f5d-c619-4620-8a69-24e71d5d19ba@linaro.org>
Date: Tue, 18 Jun 2024 15:32:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: msm8992-lg-h815: Initial support
 for LG G4 (H815)
To: Alexander Reimelt <alexander.reimelt@posteo.de>, andersson@kernel.org,
 petr.vorel@gmail.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240403104415.30636-1-alexander.reimelt@posteo.de>
 <20240530135922.23326-1-alexander.reimelt@posteo.de>
 <20240530135922.23326-3-alexander.reimelt@posteo.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240530135922.23326-3-alexander.reimelt@posteo.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/30/24 15:57, Alexander Reimelt wrote:
> To make it easier for downstream projects and avoid duplication of work.
> Makes the device bootable and enables all buttons, hall sensor, eMMC and SD-Card.
> 
> Signed-off-by: Alexander Reimelt <alexander.reimelt@posteo.de>
> ---

[...]

> +	chosen {};

There's already one in msm8994.dtsi

> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		spin-table@6000000 {
> +			reg = <0 0x6000000 0 0x1000>;

Please pad the non-zero size part to 8 hex digits and use 0x0 instead
of 0 consistently

> +			no-map;
> +		};
> +
> +		ramoops@ff00000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0xff00000 0x0 0x100000>;
> +			console-size = <0x20000>;
> +			pmsg-size = <0x20000>;
> +			record-size = <0x10000>;
> +			ecc-size = <0x10>;
> +		};
> +
> +		cont_splash_mem: fb@3400000 {
> +			compatible = "framebuffer";

Doesn't seem like a documented compatible, you're probably looking for
"simple-framebuffer", see:

Documentation/devicetree/bindings/display/simple-framebuffer.yaml


The rest looks OK!

Konrad

