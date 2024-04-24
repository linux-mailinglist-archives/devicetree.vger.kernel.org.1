Return-Path: <devicetree+bounces-62176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7578B0323
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:25:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FCFB1C24215
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 270D7157478;
	Wed, 24 Apr 2024 07:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BPpR8FD/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80695157A6B
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713943504; cv=none; b=fXgcSAzXOmzwOXRkeQ1/1Q4alg0VYhetB7BMcFo4mYhaRkISPca4pN3ntIcX52FfQAfJsotcUmhyIGZ9LcTu5BdnEKb9+9HEzL59+2PJJGyAX9Jd6TrdbxB2BpO5bL8LllmfqhNuvz4TPqnGC+F4AgUyUmNTRZ+oG7i4a9QYL94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713943504; c=relaxed/simple;
	bh=9qsghQEv080Etp/W4UImhMBwboB0C5Y9PvBnphwRfqk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sM3FkwtgJvR867j4FL1tCnGtZjDsE/vuJnX23yFS47b+C6fO/OkxTEXsT+oMQuHKSuuw1EbNtoEt52kbNZ6k0ZRtnTSHlRPhUxRJJaiaU3x5Lsgt0TUvRHAte5vDMeV7cP8ynGO6RjiCIegWhd55jXZ9LALkB0oUin/1OW3uWlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BPpR8FD/; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a589eca7f39so8008966b.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713943501; x=1714548301; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rM7v+TE2AJ80wGR9AkeIyyAb5sKBhg/DWR3W2WKT+Qo=;
        b=BPpR8FD/XJQlQncT6mPjESl2Cc0mBiLgqsLpSH62eszPmNNrwLLuhmNWW7FHD+SiCQ
         w1W35MFqd+ByFaxy/K/kLgWDjLjGx25EvJS/6KdvszDVDaFpYlhrI7rWtCgT4RZrFTbs
         4nUk3Bfiva7DMvbhuT6OOwLgj4pl1jv+c74aPFtzGjrz2n9ik9cpPqsjcncbe71UV+FH
         46T1+TlkfFtCcV8g3l8SDFsWGyyhlYIFcEDFfV2RlTdtJGwx7Zx9m8iuoZh4RWSuqbhk
         qrcrUT+iJ0y1u+2XJy3RP5IjzkT677SucVzZZyCd6Eqyg1AJAe6HXqg5bjiiDVlgrATb
         Mn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713943501; x=1714548301;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rM7v+TE2AJ80wGR9AkeIyyAb5sKBhg/DWR3W2WKT+Qo=;
        b=SEnl/EX4LbHU007PzPC6ab1d6/j99VAQNlxxqWNjhKwR3xr4sPDOBxY5eDP+FXd/0d
         HF9gbR4tQC02mLpThlCK2CEnXRctgzmQ+EEF4zTTIdLy0S0QKE4Acs7O3IQhbPWIy2wn
         yj109bAO65airXZYfC68SMRM6gTDZE5YkH/MQ2GyBM0t0c4B9jLMti9A1jCW+UV3MLqB
         h3ApU1WjdiNK1LVHF+KPDXJtEB8lCzQGIH/73LKMUOUB/Sypg+gbSsu62jhlyzG2/aU5
         WpCWTTnjAFn4vVfCwbcmJSIuq51250Jqgl2A/BTwDCNJynpAI4xHu8AkJROnmL3IoTB/
         cEMQ==
X-Forwarded-Encrypted: i=1; AJvYcCW14ALsSGgvBgR9ArlfhtSD/v47g4izW+HGm00bWn3zXMxkbILsludnPzCqBBh8IrZ6+jurCMFknuayuVwvDKbjXYeuIsMlFcQphQ==
X-Gm-Message-State: AOJu0YwQwDYqvKnAdUlj/0Y0B2GVV4iOvS2/0AU7kl9TYznemajbCSDT
	810bAEwgP1jR1yJlt0gnajfVoiwjsW1QNVD/mXaOU2EspatfD5edMib8XJh5sSg=
X-Google-Smtp-Source: AGHT+IETcPsgz1HGmBXMTSsSANWRtO69+EIuxtuOVne8hU7ngteU/5b3zdGqDH/gK8uVACQYKnsX1g==
X-Received: by 2002:a17:906:cb8f:b0:a52:6bbd:595d with SMTP id mf15-20020a170906cb8f00b00a526bbd595dmr1032795ejb.7.1713943500762;
        Wed, 24 Apr 2024 00:25:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906355800b00a524e3f2f9esm7984643eja.98.2024.04.24.00.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 00:25:00 -0700 (PDT)
Message-ID: <830cc6e5-44e5-4088-97c6-49d7a7fa8b38@linaro.org>
Date: Wed, 24 Apr 2024 09:24:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] sh: j2: drop incorrect SPI controller max frequency
 property
To: "D. Jeff Dionne" <djeffdionne@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 devicetree@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kousik Sanagavarapu <five231003@gmail.com>
References: <20240322064221.25776-1-krzysztof.kozlowski@linaro.org>
 <171394121882.41568.17609347008268237958.b4-ty@linaro.org>
 <A9A1C6C4-2B40-4769-9C9D-3A4DB2C27C95@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <A9A1C6C4-2B40-4769-9C9D-3A4DB2C27C95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/04/2024 08:59, D. Jeff Dionne wrote:
> Adrian,
> 
> IMHO, this driver should go through the SH tree.  Thanks Rob, for testing the patch.

Of course it should go via SH tree, that's not the point here. I don't
want to take sh patches.

Best regards,
Krzysztof


