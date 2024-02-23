Return-Path: <devicetree+bounces-45425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AEE861EAF
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 22:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9E2C1C243E8
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 21:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 817AF1493B6;
	Fri, 23 Feb 2024 21:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PvwCKxW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19B814939E
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 21:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708723167; cv=none; b=Sj91h1ktt6DcebMUMN2XnQZBanXWtGA8y7bK4sWgnqNKqHRibOT+RzWr08wlom/VjRTHCcUDWo6pK+xFz8kr38tGYSM6baEtS6AkwJ8QIukpbnOQKrj3YiFdQrGZRL/hDcMLrBW3cURgIcc6RUJYC39NADuQ7XfjxBYhEPVET40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708723167; c=relaxed/simple;
	bh=menOCAAOQ6GA297ltJDZn+QkR4oJCWvPKnpb3x4ZSyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZhxM+FZOD/6nYcyLf1RsukGJmjgVXqOe2/7iNYtmUoG3RxC6Av+vjA04Sj2cLvs9JUuvCoxdU7HivcsspLiui5lu/O1y6v8qc6jIwBofPsMt1KaKm6xeZ1tb+5IGo8Jy7v7ah4wcQpXQkl2NuxRcVTOK8t9DxoIiW72mJ2iGYP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PvwCKxW4; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-512cba0f953so1597697e87.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 13:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708723163; x=1709327963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H3c4pNgZclNZZAubgqGkUR7kdDgNY8n3YbBcoqnbFDI=;
        b=PvwCKxW4dqwWgG8WZlsAQtBJnYbszzY/cWdgwlWlQmTqMv+cnGU0ml9AJXgfOJrtEh
         F6AXFR7Bas4gP8hmVQUgK7fvMhDT8jyniwirFqGvVpfYeShoyhgH5GISlcTTyJ10i8Hg
         ncAjZbyG9OSd4D05NSRNYp0Q6BJWrXQWkqZgujGoRY/9LcOQYEntT1e+FxbjL3wmoiuU
         n/YipZOSkuo6EY8WZJcWCtrajkgW79NqmQtO0BmpRd2gGtHfqI6U1bUjITRQqz1P5NBj
         BaXpvepwKfUhQRFTYHJ/yMkCmU+7tfGayT5oAyijM+1bLXG7FwsQkjXGhxupd8m8pRsd
         kHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708723163; x=1709327963;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H3c4pNgZclNZZAubgqGkUR7kdDgNY8n3YbBcoqnbFDI=;
        b=i6cTqHkYzenXWKfEtpuN2BUYhfLmfISamkbvuJlPRmRD0GGSmQ2kRH9glyCnWauuY0
         7UOGP0DbGPEIsOv5J8yIFir0V6PRLVqwWT+NSi+I6NDQPH69T/B5DbYtzFh0D1FyzPdT
         JoBUL1qu5gkOraZv+cysk9qQe6focvNA8gFRQoBJyghCn9iWEt8v1zmIw4mBoeDrW3cM
         2ffY1LybGRpLumhXHRWDOEQUvVuplWqTNeuAtYLUjG6BrLzxNMcs9SSlzG5LNzLj3Vp1
         EKhCHgqq6oJ88iQYIBgCYg/cQX8Vu9vtg69p7gGYqzJb2ONyetLwwwrhrJRk2451MP1k
         foPg==
X-Forwarded-Encrypted: i=1; AJvYcCVXXjpslF27GdU7IDGCfD8b7VEhYXN6Plk4f9o3QI1KYPzLw2ugaaK9ICjjSctYyeGWitZITxdR2oOy06WZx8gxC8mbTq+pTOuRZw==
X-Gm-Message-State: AOJu0YwXejpsI0gckDML/mmt6v2i7ZFvpUqXPeBxxeHIsRP49vSxDR8c
	4jb1wx3iZNJjdQJrNsXi+BlMASUCMJ+gs2a6W7Y1VowipwgSB6XIdhHzTLAYE70=
X-Google-Smtp-Source: AGHT+IFPfcqT7RNqrkNJ8kl2r6X/UsFWhycQIgBYXBN+kSNKxmMcFIZPmsHc6dFpMDYAJqEoq42NxQ==
X-Received: by 2002:a05:6512:3b27:b0:512:ebc3:594f with SMTP id f39-20020a0565123b2700b00512ebc3594fmr775881lfv.10.1708723162753;
        Fri, 23 Feb 2024 13:19:22 -0800 (PST)
Received: from [192.168.179.2] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id js20-20020a170906ca9400b00a3f947c55besm1660040ejb.92.2024.02.23.13.19.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 13:19:22 -0800 (PST)
Message-ID: <81f4a69d-3b59-4d1b-b8fb-02fb816bb0d8@linaro.org>
Date: Fri, 23 Feb 2024 22:19:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: qcom,ids: Add SoC ID for X1E80100
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240223-x1e80100-socinfo-v1-0-be581ca60f27@linaro.org>
 <20240223-x1e80100-socinfo-v1-1-be581ca60f27@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240223-x1e80100-socinfo-v1-1-be581ca60f27@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23.02.2024 15:37, Abel Vesa wrote:
> Add the ID for the Qualcomm X1E80100 SoC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

