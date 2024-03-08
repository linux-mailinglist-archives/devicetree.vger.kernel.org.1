Return-Path: <devicetree+bounces-49325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 265B1875FDD
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 09:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A81501F217A2
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 08:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3059931759;
	Fri,  8 Mar 2024 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PkBicxYG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5707D200DB
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 08:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709887234; cv=none; b=hnjCjP63XyR+u+vvJtTx74KobtLOWlaRLDsVWvyXLkPfCruvLSdtbZgI5K1NjjS5Aqx6DiG1ILSxsY7mo8OyU2PQtPgWnh+VPCICQMDoG5Ya946b203CDTwhNBHDTKTukUkhz7Gnc212Ogp2S0EaS7+VeZs2dNTYftXcu7FfFr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709887234; c=relaxed/simple;
	bh=jhR+iJEyLfwXJt+pv2aQP77bdMTnIIcuEvrJoiRZqyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iB39OJ8AGUgQe0dH/LrFkRgUESdc9pyH2K5AHn2qETKowS1Om89jrny6KrlnBJj/FRBxc+VpSyA7SdcIaWvm1/6i6ZcVRzjH30MHAnCyyPj4ewQGN67AhuZwfSr8NDs64ubfk5weVzwd8g1TIBqGninParjOeGNYmyiGdi/tmHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PkBicxYG; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a456ab934eeso272073166b.0
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 00:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709887229; x=1710492029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hzxF1h1dl7Hl8wIe8pHpp/AKqcp2HMl3cbqc/j6le+I=;
        b=PkBicxYGEndGGapWBiQA79ZqpUCxfHydGc5wnH529QVSELjIPgn8nXcqSfjG0i+2dq
         OyTwRztUQTcUEDkg0UZpLOeCF4YY3YMlSY/pSfrSj9lNdA8GeOIPphk1KHAKTAAwfKDx
         pUWINV+WKwEHsUasd4d4OfisQyqgnZ8gw585TPbFhYkG0AydlaQSA31v4loRr+Uwoqs5
         vhgaETpEV2znr47wWHiJP/CKTARsud5ObaHeeOGTcawriAozSdiu4K67MUI5PGP3Y0sH
         STozlyCJsSNCTIzXjNVjS9fyoS/E0WmTiFlA2XPRV4sPm3oq201v6y9dQDYDhOZWMG15
         tI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709887229; x=1710492029;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hzxF1h1dl7Hl8wIe8pHpp/AKqcp2HMl3cbqc/j6le+I=;
        b=dmagOTe4uk7Grn0L1i3/B361qP2peRkYf//hF+2sf5H8787KvEfxmkn3aBHe8GRhps
         LNJQEiZWx9o/aNbzLDrCFcpvwIFTV/QWgHX2zhNcPomYSlWyBpsLLvSmkB9rsHzU07oH
         AtE6IHW/hLwuc0r06H18TRPAOtSH/LnyvXLOCZRCScmH5xhgpMRpTmaO+jdIRgzergcB
         6YvHErdEtrhuirwVGutRuhoEn+vzfvYk+j8YDWg1JFc4HV/jyK7ly7+s5r+4NvsxognT
         Zb+QZxfDzNl8vEugh3+buyFZWKQxfMmPtJD6SHVl/W070vpKZy5KSblFLoDBM8chvONI
         FAtw==
X-Forwarded-Encrypted: i=1; AJvYcCWUvyv61xF6rRie6jkGjDpFhM7Jgiao0L6/b+THqWq3AYf62vmhtHkRj5FuPNsRGZqoiXZynPb/6L7BpyT+cLVbx3ELrOFd4h16rg==
X-Gm-Message-State: AOJu0YwXohxts2TCk3g3q6I7kZ4TQDFlSdAXWD1rXJrOtNcX39r7Ja66
	nnNykiWYnqJEs2VBIR5NDnEUPhSWyc7tacQjwsk7uItKSrcqaZZ0glCDVJYilLA=
X-Google-Smtp-Source: AGHT+IEGJ+X/LQs3coFx22VHbN3VTCOv6zSRCWaTiSe606aBql+8bDPuE0C4EoroN7BbFhogonXlvw==
X-Received: by 2002:a17:906:ad9:b0:a45:ad2c:6f57 with SMTP id z25-20020a1709060ad900b00a45ad2c6f57mr6804094ejf.56.1709887228921;
        Fri, 08 Mar 2024 00:40:28 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id z18-20020a170906241200b00a457e8d1083sm4670485eja.96.2024.03.08.00.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 00:40:28 -0800 (PST)
Message-ID: <247d20b7-51ea-43af-ba00-faa2f1395a2d@linaro.org>
Date: Fri, 8 Mar 2024 09:40:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v9 6/9] dt-bindings: net: hisi-femac: add binding
 for Hi3798MV200 FEMAC core
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240307-net-v9-0-6e0cf3e6584d@outlook.com>
 <20240307-net-v9-6-6e0cf3e6584d@outlook.com>
 <272fcc64-a22c-4f19-8172-d1959276547e@linaro.org>
 <SEZPR06MB695939C120C504830B04430A96272@SEZPR06MB6959.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SEZPR06MB695939C120C504830B04430A96272@SEZPR06MB6959.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/03/2024 09:02, Yang Xiwen wrote:
> On 3/8/2024 4:01 PM, Krzysztof Kozlowski wrote:
>> On 07/03/2024 12:34, Yang Xiwen via B4 Relay wrote:
>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>
>>> HiSilicon FEMAC core is also found on Hi3798MV200 SoC. Document it in
>>> binding.
>>>
>>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>>>
>>> # Conflicts:
>>> #	Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
>> Drop
>>
>>> ---
>>>   Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml b/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
>>> index 5cd2331668bc..4f8a07864eb4 100644
>>> --- a/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
>>> +++ b/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
>>> @@ -16,6 +16,7 @@ properties:
>>>     compatible:
>>>       enum:
>>>         - hisilicon,hi3516cv300-femac
>>> +      - hisilicon,hi3798mv200-femac
>> As I asked two or three or four times: please express compatibility
>> (oneOf, items). Your driver suggests that they are compatible. If they
>> are not compatible, mention it in commit msg, but so far it suggests
>> they are compatible.
> 
> 
> They are compatible as far as i see.

Sorry, that's not a Schroedinger's cat. Either it seems compatible or it
is not. You cannot say here "compatible as far as I see" and in second
thread say "If we are not going to keep backward compatibility".

Hardware is fixed, released, done.

Best regards,
Krzysztof


