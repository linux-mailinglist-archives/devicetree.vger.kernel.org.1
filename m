Return-Path: <devicetree+bounces-12255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 653C97D88E0
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1CF1B20EFD
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34633B28E;
	Thu, 26 Oct 2023 19:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xaGn4y1e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B783AC35
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:21:47 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2DD41A7
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:21:45 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so19587941fa.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698348104; x=1698952904; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIxb/ONKHmSh9MGHpSB58CgpbgZspYu4kkt1AsE4v3g=;
        b=xaGn4y1eB3p8bI6QgzmcztmEtEcfo/XsZJKHg8j4zBgcqWdZ7wx4yADZYey4caS+YB
         xvf1FcYN7j724hlv3iCh9PXMaI5sVC5gmHcNIwpY5PyOYeA+7iO0+MTp+FezLa/WZc/c
         M0UxW8+VBZ/LW1zAj2VMgES9wl6ekNtjTyaXUH0E4aAxs1lNB8iPu4c2QRn80ZIpJBf7
         6hIzYX67Oz6Z7JzK7U0xDAu9sPAvewM9CegB5r3t1vmODNHZFPlTl6hJ3C5kRhVNeOWU
         amwGe18nXGMF0MrW0EniJqfRmfy0CiKd18DxCgFJIhLYASNshtcWYBvXhTnI4So+jz/H
         FD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698348104; x=1698952904;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIxb/ONKHmSh9MGHpSB58CgpbgZspYu4kkt1AsE4v3g=;
        b=eTvrB0m8LbymlAFVkBiS7FJdTLNZL7QY9hzwZL86W6LLi8qeGYTc+WPUKYPRfKp+KQ
         bBT0ZiEr+bfWNP9f4IWCRclVxoVr0vGk3vZvhBPYZy9gYVb61Rz1km4yzwf28e7VUHy0
         YMK0sx+Mww+ynsjDdOckNOE/lctIEjLIZ+96l7Kt/7AqrYfHCX3qwVRlEar6MayAgl5p
         xNBH81lx5mtq3aqlMcFEji/2Y/IvyrKg10tNB9BHeVfIz6Zl4uqgF0jmrFbMmP3rTy1m
         yDpp7+j/37VAaKGvzkbVnhKp/YBT3cKObSzqmbCwvmWHklFkto+Ac/Z98SFUg+xsZjiX
         WebQ==
X-Gm-Message-State: AOJu0YyR3TW2OE1VuB+awKQLqa47DjcZTtReupV4h8kSuCcqSLvWGeSC
	q0ZpjJ74Ux6uOZiQ0gWEbRSrXA==
X-Google-Smtp-Source: AGHT+IFUl7Jt4mUgiFchqCwIflupH794ffikoeGsidoDutS836DWxpG73h8f4DI5qAtR9B3+wiCF9w==
X-Received: by 2002:a2e:a16b:0:b0:2c5:13e8:e6dc with SMTP id u11-20020a2ea16b000000b002c513e8e6dcmr475562ljl.31.1698348103932;
        Thu, 26 Oct 2023 12:21:43 -0700 (PDT)
Received: from [172.30.204.229] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z13-20020a2e8e8d000000b002c013211ec7sm2872594ljk.100.2023.10.26.12.21.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:21:43 -0700 (PDT)
Message-ID: <46906704-3762-4710-a682-cc48761050c3@linaro.org>
Date: Thu, 26 Oct 2023 21:21:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: starqltechn: remove wifi
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20231024154338.407191-1-dsankouski@gmail.com>
 <20231024154338.407191-4-dsankouski@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231024154338.407191-4-dsankouski@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/24/23 17:43, Dzmitry Sankouski wrote:
> Starqltechn has broadcom chip for wifi, so sdm845 wifi part
> can be disabled.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-msm@vger.kernel.org
> 
> ---
Fixes?

Konrad

