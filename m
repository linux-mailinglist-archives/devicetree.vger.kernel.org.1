Return-Path: <devicetree+bounces-173623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF88AA91E1
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:18:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB2061898F23
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7199220127B;
	Mon,  5 May 2025 11:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N1RSxx8v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C459156C69
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 11:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746443883; cv=none; b=dMI+oVE4bKCvQNJRF+gSdMDx+h9+Bp511Y2X3Aoc8svbpR34/rz8wND3TXZ5raAuEPkJ8Gd0me20QY0Acee7YicK8BbdmYt6UzJlkPmgkf4k4VOk9gm4MT1znsaRviZ3eOWFn2KW0jqL+ZhmDflkTXnkNbq81b1j5ZBbvCfaJSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746443883; c=relaxed/simple;
	bh=y1har2ncqSYeMcbNF3xPx7v4qVPXDkt+yqHZ2rV1WIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AsEbbri+t8wuW0WLRItaN+u/qPkheZhT9Js9fqzJev+Zo+wgx0VP5bXUqpeM9VT3WNaIs6MA6sSzv/YwFOoYF4BEohA7ih6LRtGr0F9iHqpN+4PzjpOf5En9GBI9AsacvkHlF8/fMkCTcdT86cIah71Ot5kj/De2GaWkTbpcMxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N1RSxx8v; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43d07ca6a80so15624175e9.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 04:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746443880; x=1747048680; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MSIHoJjmQEmR3SwhanBXvMF/GyBvUaOcIuvCYJy1q/g=;
        b=N1RSxx8vLQBckQER05uOQZhi4vpPHEjHfdPu7EwavZSILPhuPkRoB87Dc9Fyu7bIMq
         YtB0cese4w6FW14MbGiqe8hZk7OwQpneyxXFElsiwDgJ8zsDtv1PDHZCqfYUIO0CwCJO
         75FvfVHYILmMdAt2DS5I0jfA6PDzOhIy4c+TxKptKFDlSc4+6TarpYadmRy2Ib3engx9
         yaSHFAb7Zrm+iujx1Da98Bta29e9T54KnO/RwxekVVcuqpdXaA98FL0G866POoTz4Ols
         pPPFEnJQu9lS/iTKzajLpK9JXQ6ftNlcI2sGW9jqhn51cDra1TRVGeXL0s6QF8Co/Sjp
         oooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746443880; x=1747048680;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MSIHoJjmQEmR3SwhanBXvMF/GyBvUaOcIuvCYJy1q/g=;
        b=YLJHhEzuhR8V6221OexzD9YANLzMkU7HPVH0rinCQKVH+E8IHAHsldKaVVaQdn1K1F
         HEs4lDI7zjaimomgfGymN9f21jaJHIhFQCuW9ChiSy9X9AnWb6pydjwyGDdMjJ85z/9A
         8W0SWEWeKb2LqdPHLI3OACo7YhHt77LSlrYFEzyBdduMJ/VM/2Uq/x4qYHHYbEYaUjBd
         W2J53+PBjQVdl4l8R8iHJMUzvL4Sxu3GJacSbVwTIUrclN+4QkhKeSmCxD3FBHYRe3EJ
         3kH1TiyfO9ISkzrlf3Absm132DFBgfQDVp+AGgScjf1Pl+UXM+Hgj0XwnyhE8kl+EAOd
         Sw6w==
X-Forwarded-Encrypted: i=1; AJvYcCV9SGzRzRVd4PtBerGvy8ohlO9tw/24PSZD1Jcoq00fL6cICSYC1Jk4HUa+2znp+7Tjao0u+T1dN8vC@vger.kernel.org
X-Gm-Message-State: AOJu0Yznibp5poFNsqFRFKLdL1OYHDCI+5kL/id+a4Ha6ANQ8iZesLNz
	w1dYiPjYDzn2ew+M6Jfvh1E1sJ3rfc8AOZTHbcqm2vlOVoPA9VGOJYEUg+EVC5s=
X-Gm-Gg: ASbGncvl38p4QcRgg9sYGMRYxNLhoDGCK5sS9LE4YD6ZzEVvBVmwLqootWMBi7MX1jr
	U3nBDWyG7oWzljxMjUMqBVEr2WcYTPXPzjOa+dC/+cQidPqFYmA/ec1aG9w+vrjoqfGDjSz1+1O
	O4iD5nK5pZzy/l0bvd74/NY2jQuEaCgU3L3GpVXPJ5JAZGSW2jIeW0fEF4+QjuSuXByhEGcqmDY
	HgcjrbzJMtfjgkjLpmDaTG0nRbOiPB0KM6Su4UcPWd3nn9+TQR6v0Ub4B+DlmVgblnk1wRc5b+s
	FKmg9EbLApDT9Jwkvd5jizwRja5UK4Y7eptJOWrplwWNl0SsoGOC/UxGnRoQrTQ6upd0NcSQ4f8
	=
X-Google-Smtp-Source: AGHT+IHtLeAYgDITpx3deW3jXAAdVKG9LHkQfNIbFqRoTGdWyF2rh3YZeh6jK1CDMoX4LIkyoL6r8w==
X-Received: by 2002:a05:600c:b96:b0:43d:7588:667b with SMTP id 5b1f17b1804b1-441c48be172mr62376775e9.10.1746443879877;
        Mon, 05 May 2025 04:17:59 -0700 (PDT)
Received: from [10.194.152.213] (71.86.95.79.rev.sfr.net. [79.95.86.71])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b8a285c2sm129777475e9.32.2025.05.05.04.17.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 04:17:59 -0700 (PDT)
Message-ID: <33708722-6986-40d2-92c8-38832467b857@linaro.org>
Date: Mon, 5 May 2025 13:17:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] MAINTAINERS: Add entry for newly added EcoNet
 platform.
To: Caleb James DeLisle <cjd@cjdns.fr>, linux-mips@vger.kernel.org
Cc: tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tsbogend@alpha.franken.de, daniel.lezcano@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 benjamin.larsson@genexis.eu, linux-mediatek@lists.infradead.org
References: <20250430133433.22222-1-cjd@cjdns.fr>
 <20250430133433.22222-8-cjd@cjdns.fr>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <20250430133433.22222-8-cjd@cjdns.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/4/25 15:34, Caleb James DeLisle wrote:
> Add a MAINTAINERS entry as part of integration of the EcoNet MIPS platform.
> 
> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> ---
>   MAINTAINERS | 12 ++++++++++++
>   1 file changed, 12 insertions(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>


