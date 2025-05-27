Return-Path: <devicetree+bounces-180819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46130AC4E8F
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 14:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0ECC116ABC3
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5ACF25C6EC;
	Tue, 27 May 2025 12:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dyP5NI3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE32B1DEFE9
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 12:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348267; cv=none; b=gCGkyM5jWAvONMzv0JM7pWtXwMDk3kk1Ei7rpl5+LpnfxP/AusLuRlavZH3kYHpb5p48811VLzjBAz8A6mqKr7uTurCHWe30qqIZo6aZ/LevKzx8DhOVIlS89/qRZrzEJwqQwc+xrtmFPjgxEn2S+69lEXOqIZ2GwW7GXnVwvnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348267; c=relaxed/simple;
	bh=Ylm9TZJ9JkndLpjMw52ERgTwWR226WeENwt4n1DE02o=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=gnhCJ8npPJ8FYADUr25tNgaEAG/3KsRWJQWO+5vBekyr0e0LXw+zFuFvAKADyMqiFc/mnGN71RiPBrWlQrum3WnP04Lm4blmfwPdgxk/hgt77jK/v8D2MS8swZcQDqrnWSnD298QFk+Y8SNDOFSmin0un1mwUXLCa1l4mQmhvmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dyP5NI3y; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-553279c552cso118853e87.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 05:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748348264; x=1748953064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UU3gcdYYcPnZcFhSfcjGqd1s2zKjYa70cKw5uOmkCvo=;
        b=dyP5NI3y3fcEvJaivVYiK6RFXsv0TC+rfMOGtJfiilGPObqL5j42PLrze7re5kj78I
         SQP+lLqeYbq0xEPSgp3SHa4QTcvPblopDpR7b9L7eAZSHqy11uwKIdDHl1xwrtKZMPeK
         5LdoUatKDT5lJKqaVQBoTve9wi+GwF6lkr9kiHaG1mc1+mq4hYPonyGDiV2aL+PTiSid
         D9NnETvUgqWylTdW/T6SuEo29ixyRYqrrLr4g4vCwvH9dHcb8FaKAP/CIT2HOUQpVTPR
         4G6F2YSJ/ZhIpRA9EW6Q+b+Qq95pcZFX3vtItYtZIIiE+QK3Q2+IgN9zhxmrs0FxmYWJ
         lr8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748348264; x=1748953064;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UU3gcdYYcPnZcFhSfcjGqd1s2zKjYa70cKw5uOmkCvo=;
        b=wvyTkXoCV53NG15BhHekmOOSpZK+cHwqroob/dNO7Om2e+a/DUc+52SmPHfRfV/wsR
         deSJRRjjzjELk7fQAf0fTOFPfif89qxo/H/akYAOtztmDLUGbnGijCrqTxSzSfE0ggZI
         kFT2Mt8WfT2g/eK3i9rML6+PsaOL8PCRD7gEV4fgOtJNAWCW/yyEdwQhZAwpReMHonfR
         jdoxwCRR5iKUGJuAaJ3MRaZkTrwPZKyRuUCBXYBlmW/7gS2YM3hRU/lKKYnFBWAS37z9
         vd1TLfMzMauVN9cZ2Vam6eXb7vTJOnHTFrvFyckgIp6JFdNKtSf1iSBMoG2pxORGEoBc
         Nr9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUgAHCEU2CF9AtP6Fd0y/bBuMtxI5kzTVllYTceenqHWW/0AvmbLi59pzuR6+LKCoaCigb38K2nMkK2@vger.kernel.org
X-Gm-Message-State: AOJu0YzaGttOJnC7cb8kc+hMhyC+zw2n6ZW4M/uUvyOHWHF0TzxayUfA
	MevROeyXZTP0rLNEqnU3mzP3BmChFKgGpyRl/nWNBX3Hlb+Q4zBDjEr2GmjUuBt3tx31TjvXy4H
	gDeEL
X-Gm-Gg: ASbGncsRoK/47R1/77M9wm7je/SyHvrFEdvqYjayrmnQoeNnRNN6q6+8mUEDcTBN4JL
	jaAHzLidT/ISUrI3/UNd+Ew2ozra3cf9RgEKDsGLUad+tBLYZ8CKJGTVeFrn6KxDdnZiKr7uPWk
	R4xCqpflKC912rq92iU5I4FRKNzAoe0H32nWmpqXsBOfWOfo4JwqBTPGlGW2GYRQglilBqI+9MB
	JGh6iCmPhEnI8AC1hK+ojF5Dznr8xinQZ7UwAhWELJsEdgvZVg9ac8CBgbGPC/f+r0hyM5wJt3Q
	sHcZvDXkTho+so2FnzEOyOM5hbNclh5jUhSnePhGl7hld3Ij6dBrF20fSdkcKLDPfzI=
X-Google-Smtp-Source: AGHT+IF0yMInE3RYqpl2vNeTub6vt1aTbzbYIVRNV0IdfEePqEXTaxqSLxxOXpwZobi0Wf7bZQrPQQ==
X-Received: by 2002:a05:6512:2c8c:b0:552:2081:bdc0 with SMTP id 2adb3069b0e04-5522081bf9cmr1050281e87.6.1748348263804;
        Tue, 27 May 2025 05:17:43 -0700 (PDT)
Received: from [192.168.1.106] ([91.247.148.4])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532662f751sm461418e87.54.2025.05.27.05.17.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:17:43 -0700 (PDT)
Message-ID: <538a65e9-85ac-4ae7-a567-97343122c547@linaro.org>
Date: Tue, 27 May 2025 15:17:35 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: media: qcom,x1e80100-camss: Tighten the
 property regex pattern
Content-Language: ru-RU
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
 <20250502204142.2064496-2-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250502204142.2064496-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan.

On 5/2/25 23:41, Vladimir Zapolskiy wrote:
> There are 4 CSIPHY ports on X1E80100, it'd be preferred to tinker a too
> loose the regexp, which covers all these port names.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 113565cf2a99..680f3f514132 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -133,7 +133,7 @@ properties:
>         CSI input ports.
>   
>       patternProperties:
> -      "^port@[0-3]+$":
> +      "^port@[0-3]$":
>           $ref: /schemas/graph.yaml#/$defs/port-base
>           unevaluatedProperties: false
>   

I kindly ask to review this trivial change.

--
Best wishes,
Vladimir

