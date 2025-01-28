Return-Path: <devicetree+bounces-141487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5847A20E99
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9259F7A27ED
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7AA1DE2CE;
	Tue, 28 Jan 2025 16:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTC7xxXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794BD1DE2C7
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 16:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081933; cv=none; b=pGNVbcGbKZaCS3e3POwk8BWAtNNkndaS9nN74yOAD7PFiwccqMcn3e5726FLpNCG+kGVLh0f4s7L25tNsVmBFfawlJI61p3uH3WjUKIi6PCQx35DICJJO9sJawf40Tk+m3p+e82jM6qTcoHNv8gvLtjzjXa6XFI6Skp1gRQBa0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081933; c=relaxed/simple;
	bh=tGfbFlulSmHTsN/dkbow8sLAQR+GjpbFEN/0lyvT56E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ofPknvX2cTAapYVGZspI3c7wlz0UxCcxrY1SQsqvyL3Hn5DKoa9XjGD4pvblbmPQkIORvQVk5ebiYyizDPdOwOQjxKr4KADzUEJLn5tnW1daPzOXKH996iLStRvrQDLJ18nv3XB8m4Q2QY3SSa8fWrI6RULfliFDden+PBFngwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mTC7xxXI; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa6965ad2a5so87087666b.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 08:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738081930; x=1738686730; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EyT+59Wd44peYCgCwZioCC0WCLgJLeN6f4Nm57o4aI0=;
        b=mTC7xxXI4ibi/bwtfbMKR4AMCMyMWQR2K+ZnxiFuPCAfKFk1gCpC+WJV19z39pCBis
         e3Fa4q14Y+GJ2DnHnWH2KGjcQA0vuK8crT/5YiOs6MJgnRCoKt2usvde6Wk9BuA4aoyV
         sRG5LOy0N0KFBfsWVIHVF6AtcqnvJg8sqdhBRJ4XGxV63KsWgTyiV2AKtDzC1VnT4TYe
         dKwJDk7CmJTL+qKBEc7PnBFfR6W4LFiBkvnu77nMsJiowlyQh3nbAWDz76/cxCL77QLa
         SzpPp7vZwYw3sddamioGvsHadaMcROYutZEl+W+JRWH6Tz0DZ2fk5+xHpiMK1/jbyOuo
         vMDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738081930; x=1738686730;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyT+59Wd44peYCgCwZioCC0WCLgJLeN6f4Nm57o4aI0=;
        b=nQoSvcuJvpOC2KG+ZxaWY77XCc7tetvyYijavBizETD1zeotn1C4kTNnQRg7yH4ANI
         f8BfEUUbC4i8M8gVSjFY+7ndxtDDDIsJqgS++aJIsF7OHQM+9WA0vKaRhjoU2Gy1Pzhc
         +E3z/G4LAr2E5YeMmxI5UeWZHKD9TViKuZB4u5/VzsKwOb0oQhdv+h80KtMMgtODwauJ
         QkXooe0si9eDFMtXY/X/40D7VRkH3Ul0zdY+Rt3WM0OvlZmWZ7AW5rcYzBtdj/i18fx9
         Ov/GvGAU6qiMyPr4FogH5JRGa1tuuCRoSQBWU8fKKEzzxvtW5pXoT/ZoVRseopaEDC2T
         Su7w==
X-Forwarded-Encrypted: i=1; AJvYcCUXwmgCmTbZO+ua7i9Nkpzi1s6rY2lBP2E1dnHGW2k694IkKQ1vDGvRL8zmBhGeZ9LqqPtgep2NyX7Q@vger.kernel.org
X-Gm-Message-State: AOJu0YytFLcmcPMPV19Efpdf1vVYiJcBGbu3nmF4oAdQzZqcqZRkx1Tp
	6PAMJOYnC/vc0hVkqX08+vbbFP0f/qwzSftnaz/T4Gbk2yMc1kPQXuqlQpZSSJPaz9Yr51etVjB
	g
X-Gm-Gg: ASbGncs5xMduWb63cSsk7JMcfYMkcg9Ocj9oMh/tREVdYlsZ8RvuBO04XUEtCCevKuy
	pxwb6eOZXKil36tnSQevpLVy4zr4sqZiiZvznlG7WbfXt0JaR8xXzn8QkbUgQnRQWxGMzbkBv8L
	0PKYsvLZX4vmNO2bFhc4vSTRp176HYkD4rEzs+7xOQRu+IZoocpQ/EcYjDeEMAlgUOqK7UAj02s
	M51LEwqFas76xibvpxyfREQiTF64oz083tcR4aR0VuIqfNZ3kVCgmBgS/43tWXlSinZWirWgEUz
	h5l/c1iYiBBTv4bDOT0TSUn+ZiIcXwbZgw==
X-Google-Smtp-Source: AGHT+IG9MviFs6jDWDaIXQJWyoQVFg8ZV2WUhHrXAwgiTLSc/cg3zXn26vssNaKOHshQI3aCcqwv3Q==
X-Received: by 2002:a17:906:f253:b0:ab6:9d37:4dcd with SMTP id a640c23a62f3a-ab69d3753c4mr373726166b.4.1738081929724;
        Tue, 28 Jan 2025 08:32:09 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbb94sm815684866b.139.2025.01.28.08.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 08:32:09 -0800 (PST)
Message-ID: <3893a6b9-45b9-4f0f-990a-1f4bbff98c8b@linaro.org>
Date: Tue, 28 Jan 2025 17:32:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] media: dt-bindings: renesas,fcp: add top-level
 constraints
To: Rob Herring <robh@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20250128095355.65766-1-krzysztof.kozlowski@linaro.org>
 <20250128161049.GA3543944-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250128161049.GA3543944-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/01/2025 17:10, Rob Herring wrote:
> On Tue, Jan 28, 2025 at 10:53:54AM +0100, Krzysztof Kozlowski wrote:
>> Properties with variable number of items per each device are expected to
>> have widest constraints in top-level "properties:" block and further
>> customized (narrowed) in "if:then:".  Add missing top-level constraints
>> for clocks and clock-names.
>>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> How did you find these? The below dtschema patch will find them. 

Don't remember, v1 was in August, but I think purely manual - by
reviewing other people's code and then looking at the existing binding file.

> Unfortunately, there's a lot of false positives. We could eliminate some 
> of them, but not sure we could get to 0. The main problem is if the 
> constraints are somewhere else (e.g. reset-gpios) or via a $ref.
> 
> 8<-------------------------------------------------------
> 
> diff --git a/dtschema/meta-schemas/cell.yaml b/dtschema/meta-schemas/cell.yaml
> index 3f61ed93593b..b4f0d9ea0559 100644
> --- a/dtschema/meta-schemas/cell.yaml
> +++ b/dtschema/meta-schemas/cell.yaml
> @@ -7,6 +7,7 @@ $id: http://devicetree.org/meta-schemas/cell.yaml#
>  $schema: https://json-schema.org/draft/2019-09/schema


I'll give it a try, maybe will point few more cases.


Best regards,
Krzysztof

