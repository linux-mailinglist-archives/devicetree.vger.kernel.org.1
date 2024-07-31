Return-Path: <devicetree+bounces-90040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3929F94395B
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 01:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6064281CA9
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AD816DC01;
	Wed, 31 Jul 2024 23:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Eu7Xf06f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0799016D9AA
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 23:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722468436; cv=none; b=r4ckiU0vJZJTlPe/zDpfHBPHFjKPXxxP5u81hYfXLYvXt5N/DmaegWm2zpooJC4D3LG6XmoLlL8XAY8XKWfRxE8aAdp7AJXkoIQk8fX5lBibUtC98m0T2aX6ynu6+EVzi40+KpqFvfiy/gnA+vnzi4586zaNm6f9KtZhtqT4ijk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722468436; c=relaxed/simple;
	bh=osC+Jv/or7RkSw40QcQBhhqFoe0fXRWh+9F39bH4YvM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=khe818f8ir8nbHrkqD5ZnFFqh7yZUl/hPVdWV87W/kFef2wLHUcoRZ2secAMwuo46Vrj2Zt4khJflWlZXXxuLu7A+xqmgJo6Q/UIF8VNMMQ0lyhDNIo54Iixw0cLW9mipD4FUYp/g8v8ZrxQdGF1OCPjOGLoBNZeJuKojxvFD34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Eu7Xf06f; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52f008b40d7so1142468e87.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722468433; x=1723073233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dg6X9TSuUoLz0CO8UBCN+aKlm/Qbz7mWJXu2YJIlxpQ=;
        b=Eu7Xf06fkvTDOtup0PhuJHdtCvhcQ9UIJIoyqdaafuj/bZunSJqp46GW+GPQiuxR20
         VmMj+Q6cfpJWxn3CiuCb2Y9Dl5pjCjuHtoP6ertuV55GwvFRTz6UvVD5s+c0ShrPPtLx
         Jc1CQxLb3hchcii7Q67SckfSasHAnjtJJhod7PngUdca8oOsNrxSOjLGqUfztWkZr/pe
         pnHCLe2fSSxeUUJ1jtDOLie1uZLaUi10pmsG/ArO1VpAvl00wP2G2yJd3pf7+fj0XrWY
         8GrBXaUJx0Q76VwtAZExLYwIbo0Fwz78kpk/w/Hp3OM9X4eLBvuQbk20Hc71+t3UNh8L
         /ptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722468433; x=1723073233;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dg6X9TSuUoLz0CO8UBCN+aKlm/Qbz7mWJXu2YJIlxpQ=;
        b=YSf72hKhu9OPxBWzc/0gH/jo0sjD7lmfbnm3Ew91CmY5O/o0vvs121GG3NdDG+P0ga
         3QhArXajRmWzrROvsI5T/ExMsqnYne3iPJNDPlyUlEZdCdkI20mraJhzgJ1ZUvXAJJzx
         EAyG437dtoC7xAgg/5x//ooBo2DwIyQBfeCsKJLKIjL28ry8hkeH7OWEFFo4yQ5FoCRi
         oj27+XP4PtX5g9cejnnaPa3UJ4Gj2yf0R20mQm5TC2HVOP2iihjKzTskE2THgN7NIHU9
         LTgGDcKB4E9hHQ4/3QtPZdHJpWQIGkGEwgKbq3kfxATnv+nczNOctG2/eS26TqWpTD9g
         RtcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnBRlfjlyLkD9jfB7rOvRY9z7B81wno7douzGVXU0EgHKXTKLHVgq+eU3Tsy34HXKXqsN9odle1P6R@vger.kernel.org
X-Gm-Message-State: AOJu0YzDhHr4qgZK6OXzbaiW51jPO+BvwhMyv5GBVxjzqIxKM0GjKHT+
	yfyST9UUFkPkSaitfB3YTw7N9C78Pay9T2beIixS5tEq2qvCrBP5b2gFVrS/yzE=
X-Google-Smtp-Source: AGHT+IEtCN0/66Jparp7J5fI6MthqVedvQa5f0iIBZEguf9nOODChTp1nmrojH6h/e9HaE1UmmeLAQ==
X-Received: by 2002:a05:6512:6d3:b0:52f:4b6:bb4b with SMTP id 2adb3069b0e04-530b6218572mr148877e87.9.1722468432963;
        Wed, 31 Jul 2024 16:27:12 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bd12b4sm2401016e87.102.2024.07.31.16.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 16:27:12 -0700 (PDT)
Message-ID: <e0e0ac16-2bfc-4715-a261-e25740b304cd@linaro.org>
Date: Thu, 1 Aug 2024 02:27:11 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] media: qcom: camss: csiphy-3ph: Remove redundant
 PHY init sequence control loop
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240709160656.31146-1-quic_depengs@quicinc.com>
 <20240709160656.31146-3-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240709160656.31146-3-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/9/24 19:06, Depeng Shao wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Adding a new CSIPHY init sequence using downstream as a reference prompted
> me to look at why we are splitting up the init sequence into chunks.
> 
> Right now we declare CSI PHY init sequences as an array of five equally
> sized writes with a hard-coded control loop to iterate through each of the
> five indexes. One bug in this model is that if you don't have an even
> number of writes, you can't init the PHY as you wish.
> 
> In downstream the original code has something of the character
> phy_init_seq[MAX_LANES][MAX_PARAMS] which in upstream we have translated
> into phy_init_seq[5][SOME_NUMBER_OF_EQUAL_WRITES];
> 
> What the code does is take a pointer to the first index of the
> r = &phy_init_seq[0][0]; and then literally does write(r, value); r++;
> 
> The controlling loop that hard-codes '5' in-lieu of MAX_LANES does no
> special sleep, fabric-coherence sync or even a printk() to justify its
> existence. Our compilers are optimising all of this away anyway so lets
> drop.
> 
> Reduce the array declaration down to one flat aggregate init and let the
> code just step through. As a happy side-effect we can then also handle
> odd-number writes as the number of elements in the init sequence will no
> longer have to be evenly divisible.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Reviewed-by: Elliot Berman <quic_eberman@quicinc.com>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

