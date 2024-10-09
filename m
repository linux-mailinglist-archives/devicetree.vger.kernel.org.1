Return-Path: <devicetree+bounces-109525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB04C996B21
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 14:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CD8B288AE8
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 12:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6EC198A39;
	Wed,  9 Oct 2024 12:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S1L3Gnu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D100194C6B
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478589; cv=none; b=RREyK4IE06zFBBrgPb2LxMKnA1LJinVy49hDLfoLm3ROAIlLYlvNF/aN34iUtg5Uqzhia9a1ScZv4YjZWLVeJu/nIZdhpTVciBIuq+BqbnTtbzHp54B/hJwAUYrD9HWtkWBOkLVRMUWPDu2yGcrE60PXbf9318LUvhLRk05N/Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478589; c=relaxed/simple;
	bh=BzHwO0HVNSCPTkdW4sOH9m7n3if2cT36x84Oh1WxYgc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uOSZYAU+/3dw6FzhCygzfDi7nEYL460SzPtL9uLqRvdTd1gbLArp2akaItFLKmQIj9ELysw2Efm5MI3+8XteRdmPrXiXD1ipFRjSPaD8wRpIyPkWs7eRYX0HjeYDjMFo7ZR0X9CJWXVAq0c3oC67Yn8PTvB++g8bnHkt/CRKP9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S1L3Gnu9; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9982159d98so203722966b.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728478586; x=1729083386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=we52H+PqGl2UFcNZ0zDRjS0MhFKCrVxp/mcpe6Lruw8=;
        b=S1L3Gnu9JbqdAt9dawU0RB8AihflJ80sMtARYob0tHOGFva91L+OXQ5lzmM5wbu7CD
         ebjMN33XAmvnY8CDYJwxKg1ZUJ22VsAI8eng0DmiLWPKra4UiU4bJYyM51Mga6sXReZ4
         n18uWfVBUQlibkEu1xwI0BV3I9GdoQP2XiDui5a1FrPyBZ0UzkBR7ZG+GEAv8kws3DKL
         dF6qlGrnP5QVnygBPNCGs9tcyp0R6hMWYtW7rLPf3ahJlRUFQrzKl6dul4MQXNovIHfR
         9JTAZHWZTZTilQK5zzBSEsl1tTeRGCBG/dFKD+HSg7FZgEvIs6xV3dIoaGtIStUA7l9C
         3xMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478586; x=1729083386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=we52H+PqGl2UFcNZ0zDRjS0MhFKCrVxp/mcpe6Lruw8=;
        b=EeA8Q+dU5LiUozcG4ZbeL+DYfHIMBH6AvaWvUx0TLSZAyN1yhp3tTiD8NdwocZDG6w
         wg+2ZHFz/fiZGD+QyYXre76p2++bfjac++YOksRwYjNhjKj66Dt+0tUo/mTTCfKMhMaB
         AEEgZWvieU4O9HKiZHnCjVeqN2i3WB346VRrXWYYaSOSloziUVPAdVApo4tyNcB2XwyX
         4Cfq/LiHQTASu2FMojjRJ2jENGh6TlbfwZH8/SHMRWfVgMRU6rYAlF9UMM7cifMS7kWb
         KoeXzlTGIDEfnKPq8V/Ru7QJw/0F1Eg6JMvL+hb71hhqKplmaOXDZl7suSaF3aHy/9/k
         eD2w==
X-Forwarded-Encrypted: i=1; AJvYcCXZYXRORhtEKQdcsOT5dnHof3s1Gl6yyJz2871R60kwuHZ/oziTOE6Llu6bpiGbhiQWTNirL7YCML9R@vger.kernel.org
X-Gm-Message-State: AOJu0YwRanIdN8/wyCent2lfyMLEUNlgWlUSLzrSUFTFsbFT8fVKD8pD
	WjJehb3MkR/JYWcFdsLuWixa3ExG09coZhsZYkJzK//4qAYxkd9TTuoPryPiqd8=
X-Google-Smtp-Source: AGHT+IG7o+zK+7s0k4UZSLCZlAlz1wKI2/tOk3cA+62NZoCODJY6Oisrg6uIHkxnZNnCDq2az7uFrw==
X-Received: by 2002:a17:907:d2c9:b0:a99:50e2:7cee with SMTP id a640c23a62f3a-a998d20766fmr244628166b.31.1728478585810;
        Wed, 09 Oct 2024 05:56:25 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a995ae4d0d4sm359363966b.75.2024.10.09.05.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 05:56:25 -0700 (PDT)
Message-ID: <a5c836c8-5c72-4da0-8f62-e9c69ec3e59c@linaro.org>
Date: Wed, 9 Oct 2024 13:56:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
To: Depeng Shao <quic_depengs@quicinc.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
 <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
 <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
 <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
 <27f39cda-932c-4b79-84d4-be78d266ebdf@linaro.org>
 <c18a92f0-5824-417c-94b2-ed10f4580cfd@linaro.org>
 <bb138ed9-2abe-43ec-80af-2d77b7349b37@linaro.org>
 <86d95099-4053-4c3f-a36c-cfb4b63e627d@linaro.org>
 <cdeec240-5a13-472f-b144-fc0012facc6e@linaro.org>
 <82a302ee-f0e6-4b65-8c4d-12f79701aa57@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <82a302ee-f0e6-4b65-8c4d-12f79701aa57@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2024 17:24, Depeng Shao wrote:
> I have checked this, the trigger type of camera interrupt is _Edge_ what 
> is listed in Qualcomm ipcatalog website.

Nice thanks for confirming.

---
bod

