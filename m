Return-Path: <devicetree+bounces-185155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F0DAD69AD
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:57:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CF321BC00C0
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF1A21D3CD;
	Thu, 12 Jun 2025 07:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eBktUalm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A7D1E51EB
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749715044; cv=none; b=RERxuuSvQp/J0vx5LxGPPqkK+7b/BTUeCF1n7lfa4NTSBn9P9b1+Xo6GNpN0fp46jXglN8lCH+quC1QmdZWeJVZnIRI7OGv8nPtdsm76Xo0YClCgx6UJkGNH/b5F2NfeSPOf50MHuH105J7jZFcX3gcrDJF80wZpOiYuV1inQqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749715044; c=relaxed/simple;
	bh=B3iRgb3/okZTBArjeqbZVw5ekxMbcSQohTZ/71If6do=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BI/ffZLjKULcpAV7cZw7lsKbyR67pWZAtlueeF75qDECWFxIw8/G3zHWyy9nuFy3dKZpmc6r32ZlJTBDQ52fISEuwkLRpnUi8onWL6+IFQGrKWae2b6wKPIqViVgd9vC1Y0uAepN7lefQQpdPmy4XGygk1VhpGrPmuoWnX0eIOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eBktUalm; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55325956c93so44135e87.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749715040; x=1750319840; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Njxe4VDeQqskl8RbbDG5OxTyzSOM+gRWrkOl+amVxQ=;
        b=eBktUalmwexAvppsCdFpQRWjEMfwgwjuLNzVqW2lH2eZFA9z1Rw993iHcpcfRGxXdO
         2kdX6UjeqpiHYoET9Ka2oCJ5NvGV1pXa0DPvpr9sM209jmpZZDryK5IDotQ5D8YL128n
         ZmTlfn1z57kEBlw8mooGX3ONedqYipN+UMEDzxaIicQ4QA5hJEVHdiRgfmNjteY2mo+A
         9PH1JHBKylcrlGzkSiNXL75D/V+78YGU8aDf7FH4z00McVUO+OoLu7LTcn+JroOHKuQX
         TT3OOqD9Iylylq2OmKGH9eg+je0h9Ubhx8umzlPGcNRJ1s5tFCZQtmYnMt2/1rY0Qd8B
         ih9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749715040; x=1750319840;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Njxe4VDeQqskl8RbbDG5OxTyzSOM+gRWrkOl+amVxQ=;
        b=YRy25L89MyaUcM0zcw4ItWiqlQh47NkJBKp9VFC10A2hp/C1pQwhlZPxCUvnH5yVfw
         TUqbY1KLtzxqgnRY74XCE5voJThXO9bWmPVm2omytdopBT7qeXK1+Agozh1XGHiVoIWB
         vOqqCe2Dx3dwR1fxzNG0IMZo0jj1q0kWhoZ6HRPTkSxoZfHoBsX/DCVZv6uPzd6Nt80c
         5u9/UKzSTal2mSxP+AOyaO9fzqX+pZ+wiIYAjskpk7n0n4+0xG7DqVBFmyOsgV5iF/BI
         qmgVjyzV5afNLrk2t7rdVpBuCE2syS5JdonzOC2/GqknextgTsVdpw+NoWLLgB5LZXH3
         2+JQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHwWzjzskJpiZrRECTAlWrK2GCs7uHJlYdwRn7ThlMGZRNgHiTsKSXCHmuATHeUm0gMEDrqhs9Ce3w@vger.kernel.org
X-Gm-Message-State: AOJu0YwFz4ZRAUNOYky2ac1KYKuOT1Bwn6OROsaSzO3BdmalHpsvEkYb
	5wVg5YOLDcwOvlhDwh3IjdwB+y9IsOCzo9fejHwKvpnRlh1FvoLaXMj/DS2ZJXxlsak=
X-Gm-Gg: ASbGncvgrOwbG/0+YFt7pJyVsWhf/2gIOWfUau6HOznukfVfVYbxurJg3nXU0VSjClj
	tAjR3JS4Qx25R+EHcNbvVzTUJhwABTAltGnZ89rZuwe+L5oh6NC2ITpdNRUHBRjJSznIk90pjJz
	mstFj+a28Nmmf8XevOr0m5T8QxX28A85RXOZwxfs46kH4KjVA1DAXTcBJnugwt0Hv7JuCjlQhIu
	EmMZXVYkls3SpRpRRFkS05Z5AQpgp14NwE0vSg8DJiXzJ+1ynZjWEXFcTcnnKckEmWj8lyE7nSn
	X2g9+GLnhF1AQnPXMIwfyqRYQu87UoX0nWKXYSQBCbGErN+FvdlXnN3w9gJrtb+8xoRqohdDwwR
	xFp0OaCEYxtQaHd9tMVLG2lznkJYmEbbxqpNwHbxL
X-Google-Smtp-Source: AGHT+IFHU/lXepzUTc3oxGGH3lT2WQ6xjtIivg7J8n5iJaf2/KrDDzxT+FW1Te4zVmqO5ogpYbzlzg==
X-Received: by 2002:a2e:b8c9:0:b0:32a:bdc6:a741 with SMTP id 38308e7fff4ca-32b21cbc160mr7056691fa.3.1749715040347;
        Thu, 12 Jun 2025 00:57:20 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3304f2e9sm1360191fa.11.2025.06.12.00.57.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 00:57:19 -0700 (PDT)
Message-ID: <9e38a09b-1521-4196-b179-d29c62e143bc@linaro.org>
Date: Thu, 12 Jun 2025 10:57:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-9-vladimir.zapolskiy@linaro.org>
 <6e411e89-ce1e-4d6a-8d48-b800554f830e@kernel.org>
 <e02cead0-665d-443a-a884-c3a307409c66@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <e02cead0-665d-443a-a884-c3a307409c66@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/12/25 10:39, Krzysztof Kozlowski wrote:
> On 12/06/2025 09:38, Krzysztof Kozlowski wrote:
>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>
>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>> ---
>>> RFC verion of the change:
>>> * https://lore.kernel.org/all/20250513143918.2572689-1-vladimir.zapolskiy@linaro.org/
>>>
>>> Changes from RFC to v1:
>>> * moved from phy/qcom,csiphy.yaml to media/qcom,csiphy.yaml,
>>> * added 'clock-names' property,
>>> * removed SM8250 CSIPHY specifics, a generic binding is good enough for now,
> 
> 
> Now I noticed this... weird change and clearly a no-go.
> 
> Device binding cannot be generic, so it is not good enough for now.
> Please write specific bindings for specific hardware.
> 

Can I add platform specific changes on top of the displayed generic one
like in Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
etc?

The generic compatible is sufficienlty good for adding the enhanced
CSIPHY support to any currently present in the upstream platform CAMSS.

Obviously I can rename it to something SoC-specific, but then a question
arises, if a selected platform has to be a totally new one in the upstream,
or it could be among any of platforms with a ready CAMSS, and a backward
compatibility is preserved by these series and the new CSIPHY dt bindings.

--
Best wishes,
Vladimir

