Return-Path: <devicetree+bounces-43262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C22859C9B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D30C281FAA
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 07:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C5620334;
	Mon, 19 Feb 2024 07:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c54hrezK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82ED20DC5
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 07:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708326709; cv=none; b=Yrr3oxjzof/MZWDGrHS/d5BOW+Tpe3V3nyCgeO3K55Af/5jSbo9a9zNcmbroW3L1l+XmjKAMy4Jsgv5f+0YNBuMyPK24Y9AI2AFQefEW8DtMHG8NyTkIhQoOLxuTOriwehTy6uiXRHBwIiWdB3hf/6XQcEVZPNdUwYgyCTFB1/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708326709; c=relaxed/simple;
	bh=J5y+aCATLjiobgMkh7qS53oPvdfq92ig8/vEo+zC3vY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sjZkNeZ1D06X+SBg+0ka8oHqo2wZh8CvUnyA/4oFQcLT7FRREH/ZkT3GQN2eM+bi/A0keyQRzT4JVT6ek6ax68HOuCN32FxnX1mZwSRGDxmLaWwqJsv9ULU1/Dt/dZJpo5CVuRg3r9cVIoezzx2pddi+PKhGaiBo/eVaL6rr6Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c54hrezK; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-512b69f6c22so284658e87.2
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 23:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708326706; x=1708931506; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fYvGItjumstBSToPslryUkJweKqf1lNIBcvDM0i3AXg=;
        b=c54hrezKgkZTWKnCMt3bOtnjqzWmGrDWbBgPxM/ye1sNNkoBuW3v5t/BsuIEPnUNRb
         U8G0RHgou7Bd3JZwvZnmfNjAQ79kpdG8+fykTtf2pZlz4Ppx9fOCy//PcFKfK0Xjy/5m
         +IdTzo2O2/Q72kXzcarsDNmmeA7z01pARLCy09MUcAJiBdt224y0kWPxZ+p2nGEQ64Pf
         9WbuzcW56zXV3mNExzoDnoqqcfFIA/3tk3te3/k0fG1mhSBJoD0wW2K1wxCHrIIMX7FW
         lrNgUBuhRUFL6LgQMFNWx/8ScVeUJQ/AufRfKPWhvoRqivEZcrISayGSL51fCDz+ysCL
         VbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708326706; x=1708931506;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fYvGItjumstBSToPslryUkJweKqf1lNIBcvDM0i3AXg=;
        b=wik1ZiKnxJ9IxTv/pXcZUqHIu5OpXa0yrkvLarnwPMcGpQ83z00cJJvzA1tgztg+aB
         ZdOUy3oqtOfneGz5KPv0cFJ2ol7d3yIanAQ/IMh6sIv2odYCTBrEWC3OaAeB8MlHAIJz
         JUwuom+MqzjwfsUanzcb1InW0j8uIAwNIk6/yBO1MCoEyug2TnVtjHlX+rX+oaG3WJTP
         6Wp6tWgeex4xn3YxcgXWd/5zKzenAXEHy3PCMh32KW9SIVx7Gn+a1nrwUma76mFeYnDx
         GkJIUrOt5gMNY3C/HeBSNABi/hTRTDySpoiSy00csb+RwoFJxu+sfUi1DN/W1r6DAFJy
         LeUA==
X-Forwarded-Encrypted: i=1; AJvYcCXPtDAxQScFKvQJVXl4URAYFYP2txMJdb3KKIDdyvK0dvY219pPRJ6qZngKKpzk96pztVLki7wh2ojqzlWrmlLdk82h1aTsWtccDg==
X-Gm-Message-State: AOJu0YzD1xYvOmbprG+fNbgZbv2RPMaxGOJ1pPQEg5rWKSlxseLY41Lr
	pWh5YJmkhxx7BbbVVtJ9pEc+89q7D/TCHUzpRrbEWCLuSiZZ68lPje9HUpXOd5MwGAAaizEsXkr
	r
X-Google-Smtp-Source: AGHT+IHgm2Sh7nUO4Iz3xywIaoPwbQUCh9v7pMxlKOobIbesLCBKtWB3cpktGIPCCmdz3ymFePgQGg==
X-Received: by 2002:a05:6512:3f9:b0:511:9c4b:bba1 with SMTP id n25-20020a05651203f900b005119c4bbba1mr8122330lfq.23.1708326706059;
        Sun, 18 Feb 2024 23:11:46 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id je11-20020a05600c1f8b00b0040fdf5e6d40sm10488570wmb.20.2024.02.18.23.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 23:11:45 -0800 (PST)
Message-ID: <d7a29931-9153-497e-9195-652666896a2c@linaro.org>
Date: Mon, 19 Feb 2024 08:11:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: Add Qualcomm SM7150 DT
 bindings
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, djakov@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240218183239.85319-1-danila@jiaxyga.com>
 <20240218183239.85319-2-danila@jiaxyga.com>
 <d3a4c6f9-e24a-446c-acbf-75519f6782fb@linaro.org>
 <3488e5a4-df70-4ecb-a860-af2e13650347@jiaxyga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3488e5a4-df70-4ecb-a860-af2e13650347@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/02/2024 20:02, Danila Tikhonov wrote:
> I removed compatible duplicates from qcom,rpmh-common.yaml. No more
> warnings. I also followed your advice regarding the name of the child
> node. Maybe something else?
> 

Where do you remove them?

Best regards,
Krzysztof


