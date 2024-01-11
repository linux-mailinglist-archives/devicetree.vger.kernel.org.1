Return-Path: <devicetree+bounces-31447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D58F682B38A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 18:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7176E28D584
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 17:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3414F5102C;
	Thu, 11 Jan 2024 17:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htMtifhl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49AF51038
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 17:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50eabd1c701so6730379e87.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 09:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704992427; x=1705597227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A0AgdpPDajiFYZmAlf4PGLhKbMhRtCKLeFUUnGiUzGU=;
        b=htMtifhlVgNO5ejOFISHindmohVeOsuw1CUy+M/03nyNboFS1oIMuDRDNfiFXzIw8B
         px9ao4TCSNFPWmEdrcVPQ7Td5J9jpEjRf3ZlTSY11AslxNuVqTjJsrHpng/+QcBQS6rX
         RVcm4s3fIiCHHseINB933RFtTdUddFKOSq6oue/p7BosG0c2C3X+u5Jg5aYxg6Xxc8VX
         nfVRMl+s11rvLoPhna18xqIqwy9/I+YBe/VdWATmITS+sk5w0H8ub533eC59CyPXDQOa
         Y/ZVHdvxD2A6x68wlnRoXvbEGhyIvWLm0UA25CseZnQWcypWftpXkxw8UrGaahjRWctu
         f3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704992427; x=1705597227;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A0AgdpPDajiFYZmAlf4PGLhKbMhRtCKLeFUUnGiUzGU=;
        b=odkCJos67AhVDug5im5Lzx/JJHNpeAp2aUVUChX4ZMR1I0GPjDzyI0NPa9D2nyQqkb
         +hKXzChuvCcfVGaEU/ABNxeisDGSjrGCZs8tryPk5ncgvfUctfZ+5Yrwse/EFaEX+HQQ
         5zL87flgxDbg0KtHUI1mytU9/R1D8RPr15+54/z8Gd4BzSd0/8MRiAxCE21H3JMr3KQz
         ZEzsSZueMg1wyYBx55XrP8MoaX5OB5lF7FOTTuOA9ikky9ljcd4/pfOGszlR5b6y/uNi
         eDX6VmeCrbkaG6FNSsJWPF0E7y3/VoUqrj7fYN5iL5byWLmW6blLi8Ki0stlZ4VsgTVY
         s83g==
X-Gm-Message-State: AOJu0YwFFofxW/Rdv5dsHzVmrJ/ZbqRl6CqntMfB9p+5NhnupYJGPUMt
	uCFy7AtIV9AD/NQ5yPawPOoqnj8v8FK7Cw==
X-Google-Smtp-Source: AGHT+IE52ELMsNzae34xjGj8xCfc7ClJfC7NBee9boVX5N5hNd4tYekJXDz8kgS9UHu/ZviZdLmkKg==
X-Received: by 2002:a05:6512:68a:b0:50e:50a1:8321 with SMTP id t10-20020a056512068a00b0050e50a18321mr932994lfe.79.1704992426787;
        Thu, 11 Jan 2024 09:00:26 -0800 (PST)
Received: from [172.30.204.205] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u12-20020a196a0c000000b0050e64b558fbsm242640lfu.79.2024.01.11.09.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 09:00:26 -0800 (PST)
Message-ID: <77b36608-4fca-48e4-beb1-c31cf4579b7b@linaro.org>
Date: Thu, 11 Jan 2024 18:00:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650-mtp: add gpio74 as reserved
 gpio
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Georgi Djakov <djakov@kernel.org>
References: <20240111-topic-sm8650-upstream-qrd-fix-gpio-reserved-v1-0-fad39b4c5def@linaro.org>
 <20240111-topic-sm8650-upstream-qrd-fix-gpio-reserved-v1-2-fad39b4c5def@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240111-topic-sm8650-upstream-qrd-fix-gpio-reserved-v1-2-fad39b4c5def@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/11/24 17:58, Neil Armstrong wrote:
> The TLMM gpio74 is also used to communicate with the secure NFC
> on-board module, some variants of the SM8650-MTP board requires
> this GPIO to be dedicated to the secure firmware and set reserved
> in order to successfully initialize the TLMM GPIOs from HLOS (Linux).
> On the other boards this GPIO is unused so it's still safe to mark
> the GPIO as reserved.
> 
> Fixes: 6fbdb3c1fac7 ("arm64: dts: qcom: sm8650: add initial SM8650 MTP dts")
> Reported-by: Georgi Djakov <djakov@kernel.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

