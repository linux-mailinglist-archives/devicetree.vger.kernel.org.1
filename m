Return-Path: <devicetree+bounces-42983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D6858EBB
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 11:30:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ACB6DB20EB5
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 10:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E272D04B;
	Sat, 17 Feb 2024 10:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h9MUxpqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CA82D04E
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 10:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708165791; cv=none; b=FaruSYUGiQMi4+ShuHPWnSKlKrch0UyKkXEzMAtfu0LBLbD2ISj3GQKZ1Fu8rsd5ei74bYoKhjfyVIpzqBQyex2iWUU1PQs12EXYGVbnsXfNcs+dgENl0KwqBLefKQQncdzxkFNryUDbRxCR3PCN7D5XVKEHXsnFWbwu1rKk1Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708165791; c=relaxed/simple;
	bh=NT8DC5X3XgkcoG3+xFXwkXJfUwAjKE1P0nILmc+APpQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YafYA+u5FmMHVYqN3NZKWapUrXrqDOPsuZQZsEIwjw5fkN9hhtdatWRHrTI9VhcxPaODp2rS1GCC/KtLb+oKhhlJ5mWY/Vnr3j/i+2LKV6zVUPYF51AJl5PNNXTrzNMNGBk7HOKUuQqAa2iRjDF23rI8KgMIZdBRizI+DWGgT8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h9MUxpqa; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-564372fb762so140428a12.0
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 02:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708165788; x=1708770588; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x0sXuPiwS/N3VsmEYSIHhSdwB1PYSlK3EW+sXEqivXE=;
        b=h9MUxpqamYpw8dImONzD3xvdJy4UJvukIMC17sdpgji1tAH16yLq/giBrw3iG7oOyj
         lr+Zow9RkW/+4bOqUIVi6PQq3LADQcFz/R0zRY9G4YhFZwEqXTzBeENurr3crxHvlxx9
         0M7oLWCNEpUqEQupjKDdxSCIxyO4QPlRduIpBG6CitFWXAwpM6nlixayRJ4NlW9hlwlm
         6ZvXFK6ThEFEvMbGqW2jEdcw3XrXQKp0NxubksQLL9tOgeRAAgjenK2xLRzl3E6gMHAz
         lQLnpJaTidTNt1ewweO/fmGbP3LLRNcdaNqTPCNZlVg24z4KbpWyXiwQhjRKRgSWB5x4
         ueDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708165788; x=1708770588;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x0sXuPiwS/N3VsmEYSIHhSdwB1PYSlK3EW+sXEqivXE=;
        b=XDEyNFLyeqKTmrqulUsTHqGYVnGfDTfAQ+ML5amo3BE/DENT2x9eka0JE85bqVrHtS
         eVMCrpr9OVMmE0BJy9NayKWTyUSRvujH2FG7aqooT5Nadq/3PXsLhev3/4fDwWB/FxjH
         I+NZPaWio+SasCA/DGz6N4x/Af/l8INsuOtpsm5+CbBENSnEZwR2qv/aR31aMuDAK6pr
         qJ30GLneVb4Q7Vu23sLSkpTukuj6lvTqJVIv80GNg+KjNd/wEulvH7Yl+/BYFuJ0UZdI
         jLYzPOhv7dCmLQu4xXGoFKUAECYlrczyJzUmQUrEjiUWIQuTymoeqFzg5Ue7bTJQA2Vv
         ip0g==
X-Forwarded-Encrypted: i=1; AJvYcCX6a/1zdA0hF/8L3iToxvQfXnz/qQBpQW1Se4ZrRhpKuegaJOCXEOfdHbRqxpjPTKoIYtifVvi6kti95MmHgU18Z9p9q/uvGcoIBQ==
X-Gm-Message-State: AOJu0Yzma5pBXwkoK6+jArlQkTKQeBeRfhdp6m81mVF+9rgOp0nCS/ND
	iJVp/L9H3Akwp1MMD4OWIP9UIRWuqpGJ1vm5NjNzbtEaBA4CxhtpynWg016h9H4=
X-Google-Smtp-Source: AGHT+IGm/HeuVf7XKH5Lcv2zRc/l+2GTv1yfvArJHZJYnn5XOQhvB9c/HTO5nElbKQY9KnmLYfeLjA==
X-Received: by 2002:aa7:db53:0:b0:563:f606:3b43 with SMTP id n19-20020aa7db53000000b00563f6063b43mr2664775edt.2.1708165788622;
        Sat, 17 Feb 2024 02:29:48 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id q29-20020a50cc9d000000b00563a3ff30basm836085edi.59.2024.02.17.02.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 02:29:48 -0800 (PST)
Message-ID: <dfecd473-dcc1-4977-901d-6c7bb615bc97@linaro.org>
Date: Sat, 17 Feb 2024 11:29:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] dt-binding: phy: hisi-inno-usb2: convert to YAML
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
 <20240216-inno-phy-v1-1-1ab912f0533f@outlook.com>
 <63b3eff6-49eb-46f3-a6d9-878eddf6de53@linaro.org>
 <SEZPR06MB69593B898A42192D134B01A896532@SEZPR06MB6959.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SEZPR06MB69593B898A42192D134B01A896532@SEZPR06MB6959.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/02/2024 11:24, Yang Xiwen wrote:

>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/histb-clock.h>
>>> +
>>> +    peripheral-controller@8a20000 {
>>> +        compatible = "hisilicon,hi3798cv200-perictrl", "syscon", "simple-mfd";
>>> +        reg = <0x8a20000 0x1000>;
>>> +        #address-cells = <1>;
>>> +        #size-cells = <1>;
>>> +        ranges = <0x0 0x8a20000 0x1000>;
>> Drop the node, not related to this binding. If this binding is supposed
>> to be part of other device in case of MFD devices or some tightly
>> coupled ones, then could be included in the example there.
> For CV200, this binding is supposed to be always inside the perictrl 
> device. The PHY address space are accessed from a bus implemented by 
> perictrl.

Every node is supposes to be somewhere in something, so with this logic
you would start from soc@. What's wrong in putting it in parent schema?

Best regards,
Krzysztof


