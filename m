Return-Path: <devicetree+bounces-41190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14822852B62
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9163828246B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04ED61B273;
	Tue, 13 Feb 2024 08:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="saAgPEWS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E0021A0A
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813714; cv=none; b=c3SOb1hiIuwKx1LSvZIDdbg6ua1uRUAf2ULPPaO5NcME9QounjJsaEZO+EOSEczpiOPNTGvThf1ndD3NWdIyepw1zBHfVI+GwSPNTYqedwCGBomnVsWYoVN1ez7lXeSrQCe+ZrgrZQdnE0Sh3e/6EDK/zPMSnnRcEklTh0w25bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813714; c=relaxed/simple;
	bh=b4VhaHz4QdrkP3Pf9nBTyLbWObH1+z2ae68ZjnSZqMg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uoXwnIuBkUja250TG0CbCThYzhDjWiXdain94BtA6DoDKK7WyHLkyJOD422VedL10uVhOSq1mxMJdSDS9J23Qq09QtwsYxh6QaaOn3uJ3IM1m5z/CeYra9f62a8funy8ujJOKmTEeF1TcOStoVCvzow9iq5yggQtkWavBQw/Wew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=saAgPEWS; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-411c3b299caso1596135e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813711; x=1708418511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xZmUQqll2tXhPmB8H+W9+kloRRPdFB/2Bnv8H0knDfU=;
        b=saAgPEWSToTP8mBHtHfCdyCPIQlpQxTilZ3iH9+yT3j7cmGJUoW/9NCdFkV1bPfCZP
         wo162dLbdcy0zpL32ySZktjjHPNTeYNGphFgMSKypZL4t4tGRylpeWoMbKFCZokLZRFF
         aMx6vkQ6Q5ei9seyKXsIIsf4AXD0sectmXVwzXOihF6FgvPMN8ynPuPtqbTccvHVQIaW
         YJR0IpucXso/2q16ZcfIc2BkKNVbY8bNC3DbzKNHdBzgn+DjtT9uLhNGkY0Yf7I7bgKt
         ielLdbBLF/4OWmizuVhC4a/+VszMbeQEPltyylMlS7gh8wmESjMf2gWeRdFFP+ct2NQk
         q8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813711; x=1708418511;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xZmUQqll2tXhPmB8H+W9+kloRRPdFB/2Bnv8H0knDfU=;
        b=uFYPKbRlKfHQ6Zi/tTWa+woHfMNT6eaDWaNyi5o3TU778PbvxW15+jRteDmxNVvZc2
         r8iQE1YDGN9tTYO8KR/cJ26EtW/81w80bwzTIpeiYa45W/et/jISPbmINhqiPpADUn/o
         Smvvd2ev6ijqeXiFedc4G/zEG3EProjY32Nq6tB8Iqz8NVU/qaxcrdRLV+wUJE76sjua
         BoxE0xZIgGz4ta7bIRSld79nCCID6ewL749f1OWK1kSys20l9MdnXUsELlgUai4C2tZZ
         VOclzkoar8qxe4rTTm+KmzXsUyZJgmLQfaiFpbEAR0WaLsy+Az6bSistn50FUIITWLkv
         mxbg==
X-Gm-Message-State: AOJu0YxXey4pFSm+/bHQkOM1wHrzZQYSjhVTREY3IS1BG3bR/crIMO3p
	WDJCZCmc6yqZbMTU4HtG1NAgIvf1X/uwJ6/MuJtk68k4CArzYW+WVgJJiDWMlR8=
X-Google-Smtp-Source: AGHT+IHSoODsCH5V4NKtKkQG9E8qUk13GUZHEa0U2QWAmoWSCAixVxqEWXwRrdL5nLBUxc4LBOw7lQ==
X-Received: by 2002:a05:600c:4507:b0:40f:b45c:85a5 with SMTP id t7-20020a05600c450700b0040fb45c85a5mr7939890wmo.22.1707813711411;
        Tue, 13 Feb 2024 00:41:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUyF8VHMCmSVZ7rw7QNivdvxGS3Rb+VPxkFpB4fhYiKkKI3AvHpmqGV0OdTPzS00bNwjyTKYjceYuPBbqQnYLO4vaYhB8MNqCwU+UPj5JioCIP7HJwkw9vSs9Ff8wtxc9kwB0mIvZ5YxjcJbD20PmeQ4z0p9IzFWXmWbX+el8+dTQl1CAsVlHtd71zMa6sii4SiP2eHZagBYj2TrRVe9+uvzrc8s3l++ncneMNrhMS03gjQbd0z9pefUbrMXKB4d24tblTxuMcMGgY/jH1n/k+pW/IzPjTCYTfoummjSwmA7SpSoA9tjToiPs4EJB1nJnVGcdnWE+XzV+Iz6fw3Dpv+iO8n8sS5Z+ta3XXzUUlbYeKX48al5+8moQjmoavr
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id jg8-20020a05600ca00800b00410820995dcsm10446311wmb.23.2024.02.13.00.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 00:41:51 -0800 (PST)
Message-ID: <6274df9e-bda6-44b8-aa7e-e4bba5c7c96a@linaro.org>
Date: Tue, 13 Feb 2024 09:41:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Content-Language: en-US
To: neil.armstrong@linaro.org, Marc Gonzalez <mgonzalez@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <64f65168-c7b0-4365-8d0a-e57b47797d95@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <64f65168-c7b0-4365-8d0a-e57b47797d95@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 13/02/2024 09:38, Neil Armstrong wrote:
> Hi Marc,
> 
> On 12/02/2024 18:47, Marc Gonzalez wrote:
>> Add support for Freebox fbx8am boards
>>
>> Marc Gonzalez (4):
>>    dt-bindings: vendor-prefixes: add freebox
>>    dt-bindings: arm: amlogic: add fbx8am binding
>>    arm64: dts: amlogic: add fbx8am board
>>    arm64: dts: amlogic: add fbx8am DT overlays
>>
>>   Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
>>   Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +
> 
> This change doesn't apply on top of either v6.8-rc1 or linux-next, could you rebase on v6.8-rc1 ?

Please don't apply, I have doubts bindings were ever tested.

Best regards,
Krzysztof


