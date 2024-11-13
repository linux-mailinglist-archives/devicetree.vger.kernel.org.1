Return-Path: <devicetree+bounces-121570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD0D9C78E1
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 17:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 920DDB3E06E
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 15:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18818158DDC;
	Wed, 13 Nov 2024 15:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZvypvoiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39846152165
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 15:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731511346; cv=none; b=MomoAHk2mUKuo55ddygdk7yLTAA6Aybr+34dyYoPmsR7apKVWUq3mJ3Rkksu1iek7VXpVjfSreHbErUUpMLYIOKyYezwfIbWvU7D2PO8xUUzyOQDBBuTAmjIdfaY7lcN/znThfs4/ol/7uxAVl3ip9lruRV2IgWQQF1y16aOQHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731511346; c=relaxed/simple;
	bh=HhOwop9BJOKj5T+Nes36w0KnTxUb3W599pW6+HWRufM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=se5uPmK+JiarzYqxpk55HG68tvZSX7h7qj4CHSO9pFoEDFGOX7fjCNyRZNBtwCG18J8zYNDN9UWE48C4jbCh5vVPoDpXC/tbTHyXWQmk5V9/aSeHCxze5T+xPqI58FOXzerNDgI419AWAhywdTbFqvsgnIvVPXzBVkqvPUMVqw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZvypvoiL; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d3ecad390so531276f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 07:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731511342; x=1732116142; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kyz8CAV7UjnZy1sBo5de6wt5Xr9fxxfh9Ju5xZPyESI=;
        b=ZvypvoiLGObdI4KrWN+1x9ps2JqhAUf1HvISHylTFaTGM+hD6xJQ3JQEjTa9kgZbQY
         kKYZFhV1jiNqV4yrfToK9XZJwvRSmIqmlrtK2W0zJEu3lSXPBbKvP8SB83qag+dwC0TM
         xzIbvJPeV3oKe90AUlHit41TVUWwiv8wmlr7xDJa05q93n5a4nAmCjflysbPN40Kx4pl
         SDTsLcEKzGj8O7ipUyyeZHYW9Rjx5Dj73ZKIIBHxqYhjOWZx2ixvxXernl3iZWNCtSiQ
         2gISQUDpUP1ZtpNa1hiiMjxHKllwBDxkYQp9cghn4NTlVHumlKmLA/l4n/AiEC77/Z9s
         mOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731511342; x=1732116142;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kyz8CAV7UjnZy1sBo5de6wt5Xr9fxxfh9Ju5xZPyESI=;
        b=WO7W6oX2tWAvX/j5ztsdrY3lxHywP+aCnpnU1TNWtYdlV/+5fL8cATHvKzt5g2+Gqc
         MSCvV+astjGdOtIlhO9KC3w7RW5dKRKkMq1xGlhKLAOKgXGu/gVCqWBV17wdP7otsLqq
         3QbOT+3NfbcDEzbL9hyyW0r7pru/OOG/9zy1tU0MaqGQgsbpyAw7auEznompZVkYfSP1
         VcgGWm91zXNi9XRXOu0Q1RIJWUQ7gFth4HnQSv4o//qWvoqtJEQXqPfB13cJchZRe9v/
         wOCgd62PHCti/X5eFc501QzWpCOuIO6jiIakxkwt0EZfkqyRoluWWF8iz3/pEB+Q5ufQ
         SxaA==
X-Forwarded-Encrypted: i=1; AJvYcCU8BG4UAWETR9RVg8cNLgHyxNmVDGRbIthQstwiC3gImx07YRXH244KeDy9cwobPIVch6XRjh3Nfzcu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxd5M3emQBMOHAh2ajliKY822ILCjIwwJJhOxsez62kiclBr6K
	Yvje83n/WH5mKy1HJy5f8sez8POkMohWfhm1O7cqHuCA6+p1rdNEbQGUjp9JEgw=
X-Google-Smtp-Source: AGHT+IGkBBKScUdnq+eFrrUWl5WZg/WDJVAp06eoD/G82CPwKOfPCXQv+8oY7dXz8ArJe9wVy2UbvQ==
X-Received: by 2002:a05:6000:1f87:b0:37d:443b:7ca4 with SMTP id ffacd0b85a97d-381f0f5e2ddmr18929643f8f.14.1731511342593;
        Wed, 13 Nov 2024 07:22:22 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-432d54e2cbesm28265185e9.4.2024.11.13.07.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 07:22:22 -0800 (PST)
Message-ID: <cfe27773-383f-4178-9aea-d92c2bcf8991@linaro.org>
Date: Wed, 13 Nov 2024 16:22:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/10] thermal/drivers/qcom/tsens-v1: Add support for
 MSM8937 tsens
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-pm@vger.kernel.org, iommu@lists.linux.dev,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20241113-msm8917-v6-0-c348fb599fef@mainlining.org>
 <20241113-msm8917-v6-5-c348fb599fef@mainlining.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20241113-msm8917-v6-5-c348fb599fef@mainlining.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/11/2024 16:11, Barnabás Czémán wrote:
> Add support for tsens v1.4 block what can be found in
> MSM8937 and MSM8917.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

