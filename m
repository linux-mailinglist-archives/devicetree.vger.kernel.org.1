Return-Path: <devicetree+bounces-57382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 373E389D5DD
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 11:46:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D08B11F242CA
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 09:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68BA780028;
	Tue,  9 Apr 2024 09:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rkhzI1rB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EC47F478
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712655996; cv=none; b=EOBizOzeKGqD2Cdwbs6KhC0xgj8SIUNTRQKirrLb44w5WW8g60DuxZq6SwMnqsnzE1TBfmvKgbDPSqnivWFjOon47wMnIns0fNjF86MZ5Cg0eH9YHZ2fLVxTHNGcoVU5A6FOe2ugWli6eW+Vu+30ikNPSnqnYV79SJIIcVY6oyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712655996; c=relaxed/simple;
	bh=Lhll4Ya8gvkYKddGbyKns1zLoe9n7V+SCV6zEQrpnMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XRecci+SXbOqxx0CJxc6RKAY59JdhhbjnSPi9T97svMGuJ8sEKH0qwVjtk3bxCCxJhUCXsoKQ3kQqIAd2/Hus97JObvh31a41a5r1BCYz3xLSi4Mr+IeJhpv3hFbyHqnbL0ZQeR/zO0kJAt6dyJ9QGEh9smDviSW8TzGViqHJ8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rkhzI1rB; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d82713f473so92331331fa.3
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 02:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712655993; x=1713260793; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Egh+t0F7kstd2Dcv/3ADKSuF91+/JiZpQiMUf3T+HAY=;
        b=rkhzI1rBSyFNMU4h9AVAM6+rmJ24uK/WvkOcZu8fRXo7xyJop6fduA+JmeFSr+D9MD
         GF2bK5QpMsi1dw2aKsOY9zL0kAqCu+FTkmD4eiQlusqAI1wMdOckgAJ2IF+vGPrwa2d9
         zg6YPL5xaVpsBEpSOx7Rf/R7JTrZNkkCZH1xRsC2TlOuXL6hFimfGjgIc8hdwqKoGErs
         BBmMZqVAxT8m/akVR0oh6/b+oTq5pnK7F71wl3APGevYH81DfeYU1QfZ3UIvwwjI6nl7
         75K27v9MlGjBfTB1MIlZAqEd8i82lbt4gEh0/mJfD+44viudugAoEYTc/TsaI8fV8J55
         pGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712655993; x=1713260793;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Egh+t0F7kstd2Dcv/3ADKSuF91+/JiZpQiMUf3T+HAY=;
        b=PLVpz8maKZZGpuZLFzRjME/AcjavGjurMLylsiUqcl3JD1Do3fShD3ZqfNMWreIQbH
         7m+xzmkS8PIJDKNek3N1g0fr6s17tM5RHzzKaHYoiId5NBb89KsGol087WXwVe8/+D48
         47Lr3qn2QxWlD0eJABGscZVwqL+/iJQPkgfItVYXwtJioMXpfo5bY/TCntTqHsddiuqQ
         7CNU7f0sxLw5ParFUYO5u5czaGNhMPcUHHIqXrPZeHiAS9BhkbfPQUr8Ax70oyoBvZaV
         oHkAH43fe8AE56G3oVeTHEoV3giwznCCwrtTkTrzFRTu2bjQN7SzMTigVmJQYmTFn5vZ
         g0ng==
X-Forwarded-Encrypted: i=1; AJvYcCUgPU5/dR1glFZmnQbfZ5kL+ox41GfcWofYRcgR8oa8EpSkp6oPPMyPqsOxxXlhdfEDLgmJ9SdUnKTrCh9e2P5yWMke4EM+CK8hAg==
X-Gm-Message-State: AOJu0YzotPI/auoShnYq4HdeqLqzbk3w/DY3fmSfwI4jpTJuu/+k565z
	v5KMSeAPWWA3V5peaqL7/sIuK/t54ov+25p7sPSjp4LZa/ywsvIbIwgsRzAmMPU=
X-Google-Smtp-Source: AGHT+IFlaEzNF5o0Ls/6Qgk/MBgGQ4kPQ8KXJ2uZuOCbPpeTHs++XApTTNl/QNR48dam9TbOlCOEIA==
X-Received: by 2002:a2e:9042:0:b0:2d6:a609:9a33 with SMTP id n2-20020a2e9042000000b002d6a6099a33mr8296135ljg.0.1712655992794;
        Tue, 09 Apr 2024 02:46:32 -0700 (PDT)
Received: from [172.30.205.99] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d12-20020a2eb04c000000b002d70a040f21sm1444570ljl.91.2024.04.09.02.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 02:46:32 -0700 (PDT)
Message-ID: <13da735f-e109-4dc1-b246-cb8c7928f352@linaro.org>
Date: Tue, 9 Apr 2024 11:46:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Motorola Moto E 2015 LTE
 (surnia)
To: Nikita Travkin <nikita@trvn.ru>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, =?UTF-8?B?V2lrdG9yIFN0cnrEmWJhxYJh?=
 <wiktorek140@gmail.com>, =?UTF-8?Q?Val=C3=A9rie_Roux?= <undev@unixgirl.xyz>,
 Stephan Gerhold <stephan@gerhold.net>
References: <20240405-msm8916-moto-init-v1-0-502b58176d34@trvn.ru>
 <20240405-msm8916-moto-init-v1-3-502b58176d34@trvn.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240405-msm8916-moto-init-v1-3-502b58176d34@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 4/5/24 16:06, Nikita Travkin wrote:
> From: Wiktor Strzębała <wiktorek140@gmail.com>
> 
> Motorola Moto E 2015 LTE is an msm8916 based smartphone.
> 
> Supported features:
> 
> - eMMC and SD;
> - Buttons;
> - Touchscreen;
> - USB;
> - Fuel Gauge;
> - Sound.
> 
> Signed-off-by: Wiktor Strzębała <wiktorek140@gmail.com>
> [Valérie: Sound and modem]
> Co-developed-by: Valérie Roux <undev@unixgirl.xyz>
> Signed-off-by: Valérie Roux <undev@unixgirl.xyz>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> [Nikita: Use common dtsi]
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

