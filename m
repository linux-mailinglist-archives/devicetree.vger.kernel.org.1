Return-Path: <devicetree+bounces-245811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E4CB58CC
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B82B0301791C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EED306498;
	Thu, 11 Dec 2025 10:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfk4bb3z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B088F305045
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765449981; cv=none; b=TX14yT7413KcEuYA3IyVaiZH4JEhfn/MydDwS8bWTh1xWL2YwYthw2COWyIrC3M9dtj1WImhRaqFLSwD4UhF5QGeukHTNP2dqRoA2Srget7vEGQW/ONDTOlU5Nlx4Z/TVABi4uXtrFF5/DjM3qK9pMenbFzSzbob3yjjBEd307c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765449981; c=relaxed/simple;
	bh=7nizhHjO3b9Dw9M3chS4sgZFznZhBTrr/fB3xTkLVf4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U/4VgK+/UmOZV21HtkGvF78C4KPxuU8sPPSj00x5KBhDZpU5iGaiWs9tPWpBv4agkOsw8WC2ioVnjbyJpTjrU1JnmqRwjQX7OYgavLSD+Ar9D1Z5PtMlY4AXqUVvlVH0TTd/9MAVojPjt9Is7ePJZr31udduDtvFyUpt09GHGfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfk4bb3z; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5957a623c7fso133382e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765449977; x=1766054777; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=go1f5cR2F7EaH8swZCcuA0b9ZduXHeBI/V7kRO1y+wY=;
        b=kfk4bb3zpYKmsMtIEyAC/fHXA4XdnfhRt4d/5nQXgtqg9/PGvAn2w0DesQYBJjFzE2
         /ywhvHH0oa20AgG7lNjn+9fthibMXaHAZNNZkxYBZcDf1TOUK9IqMigahhvMyv5PuALz
         GzeLLhjjtfpnTqMbHRWQR4b4VYKVVD9EdRl4I7XAjlrenAS7etyth3MDsoiKwM/IbXMD
         tbUijkOmjYxFv4W9wpmDZPUZJjzGs3M3aIfcPp/klgcFTA3Fv4Vfvi5jr/IiGdSs2d3X
         fxJ1JhkY9bYunE+xe7xBoZ0jDBtBC+E2ETM/2MJPDUnj0Vc+g2r2lkdMQkUCcn/DkvxP
         j6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765449977; x=1766054777;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=go1f5cR2F7EaH8swZCcuA0b9ZduXHeBI/V7kRO1y+wY=;
        b=L3IN8SBn0pdnC8XR5DDy3iIDDfWQsBPqnSADXqgJwF5zZTyh2qM2CfCqa57gkYoLnV
         rtFUAkXGSHrILb/TlNJ4EksT5T5Ejt1gaBR0t/vFyXiBDzeNmV3/cXtJTXyBEYIg4E3M
         pEVZAz1cv7rgXwyJzG+W2W0zV/djfOrRrOg93uyr6erIh7dHwmRe6I0R2jDDxXynaa30
         zlCeME6wG254Snu9fXK4cPZg253VAOxJl66ZI3R0S9lR3bA/he6+JIB07XH4zSYaVFyA
         hU3vDl6IO17nXXx/t+2mBY2xs1cLM/7Xfa5Ly81u8w6t8M5surmQnRtSI0x8H0v1e9dU
         mN4g==
X-Forwarded-Encrypted: i=1; AJvYcCW32WGb4jglwhNYsF8yTmKSyApPIsrfQDa8JlwuXk6q3EQslWtYYYdsblWrKrd5pIlPayFxaE0z/5Cz@vger.kernel.org
X-Gm-Message-State: AOJu0YytjE2LqFmUE9j/fW8aaYzxBwm1MWQbinEqksT9KcowtavotpI6
	bcJ9kcz1j3q5HEiMbLzKXi6ZDm9fz9seOBa1WUazvbzkOJYRAqgk+5na2hS8J2aUMmk=
X-Gm-Gg: AY/fxX4b5ykJM51BeLfsPIeD8gaFoGm+vj/MAUaDLAGspOHJFb6oziYLcx1wumLGli1
	dyG2+OUO7W3zfWJh06MTPYddbf+fqlvi4JtFQzZtLveP6oEmLiuP+EURToP47KGyU8ZTyQpVjta
	AbmIj7xx+PsY2ACJCbYhi/CAjaVynLJlwuUHjhQoxr9qeudCWmtQijxDNdUsTEbX3GT7hWFsFLT
	hq+QWTwN0CddFvluloiWn3EGkX0ZuOzcrnvzaSwomYM2pA793g+zKZp/wVdZS5bkvDJ464eodUU
	IOAm70OUDmKaKljl136o7TCDJB0vuhCO8N17vPhaETz+n8npF9AFqQ7cTQP0ex6ktii+wFcsC5v
	4tv4fMn3834GiUmezkUVfS8apJeN3jfsEEDW9vgFewtE6t2L8aQPle7+1Av27Kh/wAqnh5GcRwX
	u2ZsHV1I7rVYCRt3P9XaUXsOZUHKUMRmBYmDfoZmQtT7a8OxEDvNzEkJx7EKlJEoksiw==
X-Google-Smtp-Source: AGHT+IE9M+bCShDEmQtEErnzK0/+9MOvXjCquSMAEdTJbHAqDbkRp/jSYuX+hNEV5JitECiyFFHZZQ==
X-Received: by 2002:a05:6512:130b:b0:597:d790:a1a2 with SMTP id 2adb3069b0e04-598f380609dmr399134e87.8.1765449977401;
        Thu, 11 Dec 2025 02:46:17 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3199a23sm755322e87.95.2025.12.11.02.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 02:46:16 -0800 (PST)
Message-ID: <32463967-8256-4681-b823-7ddce29f1c00@linaro.org>
Date: Thu, 11 Dec 2025 12:46:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: sdm670: remove camss endpoint
 nodes
Content-Language: ru-RU
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-4-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251211014846.16602-4-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/25 03:48, Richard Acayan wrote:
> There is no need to add these by default for all of SDM670. Originally,
> they were added so there could be a label for each port. This is
> unnecessary if the endpoints are all added in a fixup to the camss node.
> 
> This is required since dcf6fb89e6f7 ("media: qcom: camss: remove a check
> for unavailable CAMSS endpoint") was applied, forcing all endpoint nodes
> to be probed, even if they are marked as disabled. According to the body
> of this commit, there is "no valid or sane usecase".

Right, endpoints are not devices.

> 
> Suggested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Link: https://lore.kernel.org/r/488281f6-5e5d-4864-8220-63e2a0b2d7f2@linaro.org
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

