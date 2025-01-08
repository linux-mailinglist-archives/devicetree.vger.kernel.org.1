Return-Path: <devicetree+bounces-136778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9C8A06252
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E09DD1889BB3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F9C202C5D;
	Wed,  8 Jan 2025 16:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M6MjskTG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488141FFC5C
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736354419; cv=none; b=C8XC7eDqx6tbrXWEEb11aoD3IPnSEx9by4UI1/PnhpCjmKYzMQL5ZzULu1qx1IXeLjTHI5zCOOYzg7VSGAM7MKIjntjwAEpfVMlDUAImEazLiAHkHvhXxW6zZaHRzM30S2R2vdEQO7ayri24LRzRqPFF/eC2GaxXdR4nwOmCgxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736354419; c=relaxed/simple;
	bh=WcjTfDkH9dXfEqgNl1DnowyrGJESQ3gBR/y+8lDI0CI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q3M4XYB2KgVICYz0w4psW4oeEnW+ZF28zMGn3YnYgm5uZObMhLU5UFV3N1TpVAroljGX+N+r2DP4oDSVms64do4epaBb2TvgqutvT7k3qN4jRW/TOzMIQO7XAdpaRYEoAcA4HlCv5iWoODYS9fU/+yiyDH0kJBU8GtvJqdVfM8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M6MjskTG; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38637614567so7790100f8f.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736354415; x=1736959215; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=deCdOEFNOf75jPBBQAgdeMZQiPxVvZH3Ou1tOWSHr6o=;
        b=M6MjskTGFGI3QL+xtNc/Ke4HbG9jUGMtzX1URRKgeAgZSG5EM3eDCSuMIHGcIZVoal
         zK3HLG3jKH/K/ERWUyIATPKKepTiFSoQPA3YCW9Zw9ZqBA7cDuCazmsrNZ11qzshJLa2
         MD7mDng4boOJpjcyCEjcbPYaDrA1mwtw+nlG+DFs3tZOJRYtciUgWu+RMEa88JrTk/sY
         6Jxb4gOm5EOVCJ0P4XHtpDH6fVXN3M/eo8qRwh6ZI+l6g7QGSMzAwi3LBciXJG4SVWqE
         EzW47aDjuUddczdcE+MIui1rMg0tlIJIpBBjR5dh9OutHMtlRNxrT0rrSoNO1u0Z4Fsm
         XYXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736354415; x=1736959215;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=deCdOEFNOf75jPBBQAgdeMZQiPxVvZH3Ou1tOWSHr6o=;
        b=UGCQCVTVrrTJ34hHuBztPsX6kH9L65i4zcPg006/ve9EYBVmA150pqxUA5CiVsKVPc
         V3P+H6vB45xA3rNkpRj2hdl82bhCYqHCztSU5D72UJrWCofEFuo2cKHDS5ZOjuP+Vb67
         st8CS2oQw8ZplzXSdPyQIftTe/Pa7e3wCr0bK+JnGQs8AC047b2aIVxlWmlXwq00/+qT
         8snZh+Cb2NfmGCK8QLGBIU7zf5yphr+bA5FuhdvD4uS8NbUWh5lT61e4R+irQgGuFzqr
         YnpBk+vlNekymuVE2Etx0f9N3RZI7XfbTeCV6v67UFnzo10H8tDD0JfccKVfaFm1nUPY
         7AeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFhN9Xv33ATIB/Yg2sWFIA62yz1/RbjBEBBfB+9AVN3fe5wxSqSjebCiFALPLkrMn122pfbvvZ/xyb@vger.kernel.org
X-Gm-Message-State: AOJu0YyW28SaNrFp6cBWMOSFVEhI9kN3NLsQW/yt7VYrkBQUOaIB2pJq
	tPTIqhyP9TR612FX0Oi943cISEMVdDPZnBZZfoHiB7brmD8zGfC8KK0VIkWdyfU=
X-Gm-Gg: ASbGncv39Q9UBD9g1dNvkEeheHlMRnt00yeZalDcLY8w3WWt73Qn3HISigIZ6OfIurc
	rOPKf7gqYjiuibtq3Bf9kdQ7KLBbmmTyZoyNcUBaUzHrn1k3fI95fNPNcTWQH11iT9WbKfCU6Gf
	MQWTUkjFPAp3ef9P3YeU7VREZhlF/6mdPRXQXDwaRsrB3NVieEdUJI4adWy26GM0rkpmPmr74jP
	OhJ9uHBYkH7+TrQFwHLKFbO84jjq0NbrXWVDa0GOk3NEn/KrZiv2N1Bai1qiQC6pbNq7nhq6EAY
	CTLfmxLvOgzu0Syhj4Sh
X-Google-Smtp-Source: AGHT+IE4abllXEGQrABSU9KaQSrAPNt2UJoX+UrddjzVaSi3eoBYN+JcyuNs9drr9UEmuphRRteJdQ==
X-Received: by 2002:a5d:5f52:0:b0:38a:50f7:240c with SMTP id ffacd0b85a97d-38a8735760fmr2780072f8f.47.1736354415474;
        Wed, 08 Jan 2025 08:40:15 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e2dc0bb7sm25990875e9.16.2025.01.08.08.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 08:40:15 -0800 (PST)
Message-ID: <076daca7-55e0-40d4-8ea5-93254ecd19b8@linaro.org>
Date: Wed, 8 Jan 2025 17:40:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: timer: exynos4210-mct: Add
 samsung,exynos990-mct compatible
To: Igor Belwon <igor.belwon@mentallysanemainliners.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20250104-cmu-nodes-v1-0-ae8af253bc25@mentallysanemainliners.org>
 <20250104-cmu-nodes-v1-1-ae8af253bc25@mentallysanemainliners.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250104-cmu-nodes-v1-1-ae8af253bc25@mentallysanemainliners.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/01/2025 21:54, Igor Belwon wrote:
> Add a dedicated compatible for the MCT of the Exynos 990 SoC.
> The design for the timer is reused from previous SoCs.
> 
> Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
> ---

Applied patch 1/2

Thanks

   -- Daniel



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

