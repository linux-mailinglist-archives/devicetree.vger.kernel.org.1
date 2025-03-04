Return-Path: <devicetree+bounces-154020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFB9A4E84B
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55B51423F66
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2AE824EA85;
	Tue,  4 Mar 2025 16:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lJW3R7PI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC77624C091
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741106911; cv=none; b=pI6q85l42gx+9BVuT3GN8bbtHSB+dzkArfHNEfcGq9Tl7wQG/XScQ9CQostnsKrS47noW2M5x3CmFeKt5KF1AUe7mEB+2qLNaFgoCEQfVtWQil3U9o4GNqR7cAnRgj+x1gW5A9+hIpru8DSKTc/X7RpQefUzo5bRCqVVcLuYOYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741106911; c=relaxed/simple;
	bh=VEd/Qg03kECFeS4hFXnZqJyn3+4HfSz1x69E5nv1DKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gWX0hnywr2bKHXR9z/nkAbFttiiBpja4uoE2edr34LhGdjbNwwZCp8HoJFBA6vjya3a/cVYIxxJEDCkBP81+YYbJTN+fDe3JiAJphRCi2DSuwvJj1i6AXHyxPKqC7XGEPZ8UdPOTOk5e6KkerdEoMY9++Vea85vGix6xOexJEnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lJW3R7PI; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3911748893aso714241f8f.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741106908; x=1741711708; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=knwLaqR4E/krVUJDxD7fdWOUGWk2k+uH2ku8XnnCDG8=;
        b=lJW3R7PI75dtuLA56i6G1Zg8jO6gja2k2fT03iiWeuy+4qBuKtTy/DvmXRJ+1ntDfX
         4rQ82N8YYLfn24seGOcG7mXbSn5kxrtsvFBjKOhiy+SJyDawiuOBmuMCkMdm9bxe3O2V
         K4WhnrUK45BLMUOcbfkrWB/kxsrN27PmeIw5oeT/UGjs/pNEXrLPvN0QpD71Zp2JfQAN
         EI720YPLt1XhhrpYbpq8DRZh+8WxexeTNeViQstA5c7JBD4OEqavvTGxrN6aY1CCha3N
         WdoxHSIhAXjxRkEj96fDX2Kt7GPytikub2c32Pm5JeWewPolJJoQeWIPcU/eGFLL6HIV
         E5hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741106908; x=1741711708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=knwLaqR4E/krVUJDxD7fdWOUGWk2k+uH2ku8XnnCDG8=;
        b=OJ9sBukhXCRFFHBO+fJjvDysW25mIxtf6aLLL1yydFrbgFmUasf1Gt2gVQ/il8UAv6
         TVyfAYd7iXyQXKRu3s62JCmoTzaSl6/I4M884F95kuQuVHQAr4LDvpuYOVjqlJ6OM7EA
         d2zephminPTjZSL5wnOFZ9JdobYdkEGrOD4q1Qgf9SgpWjOPAHSYCmFP1gkqRtkrMzex
         QQwXwiT5qaUKiXTPeTOD6x6w4zZ/RclErfxy2auquWopxH1gAaont5LFWpWP5yDRkpls
         mg4B7cbyE2pLB6E8VEL3hvv8/Go/E29lmttwr/zfXSgC4CrcUotGw0uA4gFqxgfsAvFR
         CAIw==
X-Forwarded-Encrypted: i=1; AJvYcCWI/Vo+zApy96O7yGbBU8UeGCm+oxDGd/aJ/dKjMK560HaDTi8FzeXIsMqi8YEHf6ODVg0tTyi6JSJC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5NPzzAOOBH/aBWg7ohHbCLp/F1yI7DXkW4IuzlsVe4LIApMoG
	neNBCnrF63sHjAt6IW/WXIpCZrExDyEVpt66IJQVw8/VbhbkvU7G+0hk/D02hyg=
X-Gm-Gg: ASbGncvEomcYN6Z1OwmRWmn+ze2qoCSBznAdSQ78WK3dF49l4GJ/MhhQhY4zrLLjOXL
	6S6xlx19+3GSdgifHjiKzzyMyUpgAdl3TksF7lLhFF7Q5NngRcBeMydJvKUsYYvpT2SF1AS5J5F
	RUyrQOAD1b7LGfzvgCVzJORwQ7YvqXYFOSs5dtUyCWgkFcOYMzKmbkC1pKjqzoP6GArH7NajByq
	fD/dGj+OeZ9+3L/kuoO1TB1pwBHuMfG3urzeO4ei2sorXJHLwUDrelJ0neMFLdkMaHDXAJ685xk
	jUO142z8qOqA2MQ5BvR6mB0BV2+lfBJChO1zBHUEu0lLX0DIK3GBE4ZGX9CJ8mK4n5I/uOywgaP
	frUhl6mlFcA==
X-Google-Smtp-Source: AGHT+IFY41tyGQRHzMHyy9KgcsRF5vwNocdWNy72eFAv2Q9wjjxRggFSPsKEudgOviU58D9n9GBy1Q==
X-Received: by 2002:a05:6000:400a:b0:390:f6be:9a3d with SMTP id ffacd0b85a97d-390f6be9a90mr14711089f8f.35.1741106908171;
        Tue, 04 Mar 2025 08:48:28 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47a6a87sm18452789f8f.32.2025.03.04.08.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:48:27 -0800 (PST)
Message-ID: <438498a4-10c9-451e-94e5-c8dea899beff@linaro.org>
Date: Tue, 4 Mar 2025 16:48:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] media: dt-bindings: Document SC8280XP/SM8350 Venus
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-1-279c7ea55493@linaro.org>
 <6f7fea59-310d-4a7e-94f7-2483363012ba@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <6f7fea59-310d-4a7e-94f7-2483363012ba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2025 14:00, Krzysztof Kozlowski wrote:
>> +
>> +        operating-points-v2 = <&venus_opp_table>;
>> +        iommus = <&apps_smmu 0x2100 0x400>;
>> +        memory-region = <&pil_video_mem>;
>> +
>> +        status = "disabled";
> So it is the same...
> 
> Same comments apply, same review.

Ah my mistake I didn't dive deep into much more than the 
video-encoder/video-decoder feedback.

I'll see if I can fix the rest up.

---
bod

