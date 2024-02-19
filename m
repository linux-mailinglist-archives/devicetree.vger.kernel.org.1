Return-Path: <devicetree+bounces-43318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 45208859F25
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 695001C224DE
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908DE225D4;
	Mon, 19 Feb 2024 09:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FAusGYtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD413225CC
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 09:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708333507; cv=none; b=o0Y26r216pAwxUVnBk/VvzqHtDZmfEglsPJBZ5a+wyFbhgRp/S4xuHbXeYCfJ5fd5nPR+CBaY6nUcBttz903OelXLV0oNVDTpvIw3SuCUZXL5rN2+1r8WSGMP0E2CRgOdlu6CVAcd0lnN1GaFDs2kVbfy6WvlnBHatmXI3gs5DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708333507; c=relaxed/simple;
	bh=KchOoRj2gBO9dOQxRt6FPyAf5CbGEopuLTw3fDZsyOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=poUoLkwDNmyXCqatiCtWEmYlZF7hbs9kj0zFK11ogEI2PCrhvGTzD8bqa6Tfq9/dhvKfGAhAHSZLniwpMaTVvhP9zKK405NHFHsu9Y2ihcaquRLia3YulFbca50bFc5sKf55aySfurtd4W1yVuvnYlg5rG/ahjJPl5034wOHub0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FAusGYtW; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33d375993f4so596074f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 01:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708333504; x=1708938304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FtWSvwFIbUDq8P/mK3Xub7gf1TnGsxMbiHIph7i1MUQ=;
        b=FAusGYtWiKCDjvcoSM3C8rILFDPJIoatwSSc1DQ052g8x0q0ocNifttbsehaHy7cml
         DlwUvX9Cohr34vL+Mx1mYXXBoGYU5Nm5MrKasBkw5kxdZGFLANv9XCXE+kh4gKykfabP
         u1pObYbe7jZZaJ8OsvWlyTwhGv8H+ptjLKVghdKPblJoDWrBT/C6q0goZi7BWNAVTkNV
         VFlCTYDIRreNXx67WGbCYXceA6vE3pDXiM/kia/vuduKPmZslW0PW2DSDVnLcd4kXyM5
         G6hveg27NYHT/SnGFQAq2P6/qc3VVickebSByxBryHXgBi78jruRmfq3Mpm1h9a4t9Wg
         P/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708333504; x=1708938304;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FtWSvwFIbUDq8P/mK3Xub7gf1TnGsxMbiHIph7i1MUQ=;
        b=QBue++eiWIcJtvAT4on3TJaDtNxgOT86oMwuaLo3B29gZlhvV5h/wr6wFuHWD5uxsw
         W9P38TD9+n1aoww2qcBO3XtxSZjc1cVbYASuqDCmqqItJzswr0gB9Vgzbz/JoMcbifsh
         lUzlTgQBDGLV9E4PNeq9hPt9vsPOSAjbDniD9T1F3L1qArFHQndkjWDynghUyweQcnVL
         pdFC7sZTN9b6E7suUAEx6DRjlzgaGG7BDl/ttxkV4OOJkRqocTyp9NhCZw0yuCQaJu8o
         5XbJtOmQQk2Ii2TMBplosS0d3r2d4Vh6KzCtR6hjJ5MCEYEVFyTbgVlqB+Oxs3aNKW2f
         1BSA==
X-Forwarded-Encrypted: i=1; AJvYcCW2E62Hxbm4MTFstxdaXBuw8fcjKAWlwmOk6dllvP4T6+QSmElLfTxaHNj4hkaNnxH6x5WOKtPkx/beqtxWCg82e5fJqUoozUZi5A==
X-Gm-Message-State: AOJu0YwLRgWAjkJIuOie6OaQx6H5ZnkTVp/7BQYo+qJG2oR0eqSn2VDK
	6To15kQ9cwU6XtV5pnf7mdl4Izjkk00LxqlnIKkAXDyROOYEWtW/Qvmp0F1JDds=
X-Google-Smtp-Source: AGHT+IG70f1WwbydxLUZZi2Zn5wDhTYKIBtl8AnSmblhBQ3vkelGmcQpYBHJ/gL+Dxm0YJC2aP0SUA==
X-Received: by 2002:adf:ed0b:0:b0:33c:df0e:7579 with SMTP id a11-20020adfed0b000000b0033cdf0e7579mr9187464wro.37.1708333504362;
        Mon, 19 Feb 2024 01:05:04 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id z2-20020a5d4c82000000b0033d07edbaa6sm9725160wrs.110.2024.02.19.01.05.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 01:05:04 -0800 (PST)
Message-ID: <80806260-ac19-4801-ba05-d4257aca8df0@linaro.org>
Date: Mon, 19 Feb 2024 10:05:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>,
 Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <170833286959.1749763.5981999865888937241.b4-ty@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <170833286959.1749763.5981999865888937241.b4-ty@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/02/2024 09:54, Neil Armstrong wrote:
> Hi,
> 
> On Mon, 12 Feb 2024 18:47:33 +0100, Marc Gonzalez wrote:
>> Add support for Freebox fbx8am boards
>>
>> Marc Gonzalez (4):
>>    dt-bindings: vendor-prefixes: add freebox
>>    dt-bindings: arm: amlogic: add fbx8am binding
>>    arm64: dts: amlogic: add fbx8am board
>>    arm64: dts: amlogic: add fbx8am DT overlays
>>
>> [...]
> 
> Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)
> 
> [1/4] dt-bindings: vendor-prefixes: add freebox
>       https://git.kernel.org/amlogic/c/fedeacff9611917231d710382e7ccb518cd440a6
> [2/4] dt-bindings: arm: amlogic: add fbx8am binding
>       https://git.kernel.org/amlogic/c/beee431b3257334e450999ebe77636bb18ca87e7
> [3/4] arm64: dts: amlogic: add fbx8am board
>       https://git.kernel.org/amlogic/c/acbe5b6b0fb74197ebff06a62abcfec9858c23ae
> [4/4] arm64: dts: amlogic: add fbx8am DT overlays
>       https://git.kernel.org/amlogic/c/13636d5502204e671398470962babbfb46bc2721

Confusing... this was not applied actually, because it was not correct,
and instead you applied v3. It took me some time to spot this...

Best regards,
Krzysztof


