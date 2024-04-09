Return-Path: <devicetree+bounces-57380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B650189D5CE
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 11:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 20871B23741
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 09:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0320F80022;
	Tue,  9 Apr 2024 09:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MXZnQXLy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467EC7F478
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 09:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712655939; cv=none; b=UuBvrNvYlnS6yGF/ecEwR86HiiRt1jXCkZIysHu7MVOwnOA0EOCZXRrS+DG9jHLumeqLBsbs70NoY2w8WVvH8w3Wd/cikA/6h/lv1tfiWRtdidQ20TLlAm+WQAFul6QuEHTmzqDIaSs0cyK5cjib2PD8dtcVie/WL6zXXq9cVSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712655939; c=relaxed/simple;
	bh=vXHPhWoqvDe9SoBoLnbihQeKn1FbJdKLOtbiMVbqAbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jrm6M9GPatPs+I29DPSVajd8TRp6cNYxS6F6qU3jOJhU4exsqA0xgbL3uX370UsBrsx9R3naj9nqFV6j1XFa9P5dsY12Cl14RX4sC/WvOCWoHOxUP1S3Ufd0Xsa9NWdtJIYIL4h0WSIUw+nGG82Qq++nPXhNQnyULlRTSR1a3Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MXZnQXLy; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d886f17740so22932431fa.1
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 02:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712655936; x=1713260736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XJVBzSjAv8j+mAl0LlHvG0rXd1n1n6iiW2X1MSaq45c=;
        b=MXZnQXLygJIljcY1B7fe//uaAhDX0iiCAR6HVLcQ1hYUcOquXT+UJRX/Uv6AaS1hHS
         fqwcS9CVw58t8VXEIsd/Gm1vkbePpHtuxr9L+7vhVInUvVPJmL8GDB3zquJdFPQCtmyF
         XW7WxQFXF3WLgQAKOBl7gT0F2e+T9ugKgXWA8flVohrgkVVeHQ1TB7+g0cICHkWOagai
         BK6xPiMWTbISZQ7dH2XuFnvlqxQLnwFQX2B1l5kj8LJiCVno8dVzdYxOgXLz30pty+c+
         v/2Jkxz1k+lWsFyiLiLoOwi1IDJjAzzqIg1kjXqI77y8yPmBrnbPpxWz4Y7ysHSN9IaK
         AQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712655936; x=1713260736;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XJVBzSjAv8j+mAl0LlHvG0rXd1n1n6iiW2X1MSaq45c=;
        b=twUQd5F7tQ2CLNiftLAkETnX14yGnRLacVp/9pQ96DxYsZj7TZpuBTdPGKVN4KSIQL
         1asPxLgY9z2dVxBaHSXacyRD65htGoyHri83Q/uqO3V8pV7EJJwbBCIYbD5E8vxZ40jP
         DO4X6OoxPnW5ml8gyjg+6df/irUDTj1Sx+AeDggcWGhpzkoCSMx9+EGwcnJqs7h7FwTH
         zFJzrY4xj36FqpwbV1PazMmCx8219/4jJR16uHk0/z60alLvifPa9cs7kA37GoiLRxii
         UlFgE+kLIVYJTf4OIHMvD8BcVbBWuCJhtRuZ8yeoiAZ+YKxN8yxtirEh/Pjn8Bsa6oRR
         r6EA==
X-Forwarded-Encrypted: i=1; AJvYcCWvaA/TogyXtq37gxtAMA8YTO46duNDKhceACu/YXs5GhF8VlHWqhStThADEWjhaTbzS4b0ByeXHCKuhvt11TXYayvSfi7yEiN/4g==
X-Gm-Message-State: AOJu0Ywbz9u9TxWfig79xGdh3qvwNaPReedc2xEFChcBmwEmppa5tAAq
	VWcElSF8IePwaIPyGWa8rzH1ZKgFYd6UBlK+C4p5OzmAv0JHHrMBscAMkONkIcg=
X-Google-Smtp-Source: AGHT+IFVQw3hTm/r82e57pPJEd//3j8umE7yW8hXMf5w/xNKd9bHXRunOWLW2qOur1/VjZnoHstVkw==
X-Received: by 2002:a05:6512:488d:b0:516:d24a:3d71 with SMTP id eq13-20020a056512488d00b00516d24a3d71mr689091lfb.11.1712655936555;
        Tue, 09 Apr 2024 02:45:36 -0700 (PDT)
Received: from [172.30.205.99] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s17-20020a195e11000000b00515d4f70b69sm1504520lfb.98.2024.04.09.02.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 02:45:36 -0700 (PDT)
Message-ID: <0520fc7a-d94c-4204-9c4c-070de1b75be0@linaro.org>
Date: Tue, 9 Apr 2024 11:45:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: Add device tree for Motorola Moto
 G4 Play (harpia)
To: Nikita Travkin <nikita@trvn.ru>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ruby Iris Juric <ruby@srxl.me>,
 Stephan Gerhold <stephan@gerhold.net>
References: <20240405-msm8916-moto-init-v1-0-502b58176d34@trvn.ru>
 <20240405-msm8916-moto-init-v1-2-502b58176d34@trvn.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240405-msm8916-moto-init-v1-2-502b58176d34@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/5/24 16:06, Nikita Travkin wrote:
> From: Ruby Iris Juric <ruby@srxl.me>
> 
> Motorola Moto G4 Play is an msm8916 based smartphone.
> 
> Supported features:
> 
> - eMMC and SD;
> - Buttons;
> - Touchscreen;
> - USB;
> - Fuel Gauge;
> - Sound;
> - Accelerometer.
> 
> msm8916 Moto devices share significant portion of the design so the
> common parts are separated into a common dtsi.
> 
> Signed-off-by: Ruby Iris Juric <ruby@srxl.me>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> [Nikita: Split up to common dtsi]
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

