Return-Path: <devicetree+bounces-205819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A8B2A5A5
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3DCFD4E36A3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 13:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF4C3322542;
	Mon, 18 Aug 2025 13:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t0ybjQFT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C044321F59
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755523915; cv=none; b=bu8wKVJ986LKdfYC89tLUArkn1lQ2bo0LjHiTAjSucHWl874h8q9h43jydpASfc8UuuQLgfWlJgALDs4ylySBS0kokgehfp+P5Sb4w11EyE9r2om+v1yDuHLuqb62w+4V6NaCKURlc1K/6ip+VL4lx3AmhN/bZbHSoS1XJjV10g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755523915; c=relaxed/simple;
	bh=psGGo+q29tQwkhb2p9+G6aCr6y6wqU+zBZ3myvRYS2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pFJYrir3xjj1m3ps511VsSjpjhuFlyLY0RT+kPU4IpRIgCvg9oV7CAj5bTAdD2Vmb8P5/fxy0A4u99mcN3gyf3C7Ny5fSz/4ESt1tO5hqsXYiI9YVf12odFl6PM/UWHh1J9cHPtjgid8uzlgBpaUNCpdGVcoleNSYw4f8eWJlJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t0ybjQFT; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3b9d41cd38dso3326818f8f.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755523912; x=1756128712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kxqOAdTahBCTy7k9I2OysnH6iHbDX78DGOE9Ul6vuMg=;
        b=t0ybjQFTBLH5xKuROBZPWOEP2X/uUDHLGWcC19rf28A8LYFuVYHp+t3CUhdvLRFk1a
         7D8dVoUf7rZDBOeLy4iJxGd27JmtDmeGPIFTCaElS7aL5FjfuNUp6FFP11pbwbfg0kKt
         RktKRoPoG5Y0ELetAXrc0zOXc8oHW46fTqZx1hz/BkHBB4uuvW0AkLIh8vWyWEyVPKyP
         OAEMEaQ2xC4/FjGwaikDkCqxIBxLa4N/s9//qY1uGOWPkKlQAQltvR4C4zxGQ8bLVjZp
         WWp5Jfn+xZkQc8JQOZWlmSNnkOd9QDhjNGCPcyUezgANf/G5l5xO2EA9ukR6Uz86vX6V
         DlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755523912; x=1756128712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kxqOAdTahBCTy7k9I2OysnH6iHbDX78DGOE9Ul6vuMg=;
        b=EZfwsb973F98RDHrcTldtqS6SQICsXtEoDQf8VIrn3Dm8yUiBezQ8oxknJbW8GdS47
         phl/yD9/CTtNWZuVWTkH69OYGP+XDc3Xlp/coP/qz1WQG2f2sa6yTgh5P7IFPM877+6r
         xL7Uzj3GzSizqrpwZIOpnt7Rx25pN4yiouTqeD+m0JQ64dE9sjzUiZOceDwMHa1rsvGr
         LkbZ3VJ/bzxfYkiCAR6jk27SDgo0RTQ8YWKqWYg5KqIF2TJ41cSpLq+Y6tZkvovTtQwJ
         itoMqNfBIczeys/V3ANLX81zGp9u6jVfrccnxppZLXw8qxRQ57YyON2THj1U04Y1pRjF
         g/BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXare0N7JuUo3X7x/Gw4JES3oMdqjZbeHSqxp0hOK1IXV+/ijGp+8/HutXaZ4HVZyvviEPDi3wD/yZK@vger.kernel.org
X-Gm-Message-State: AOJu0YwAjGWn4x0KZZNzYedK2Yoi8+pBP6MslkGtmfG26EPzz7CIol/A
	a6fGEYzMLxZrOrswGWVkzKMCliLDRz2EgqvwiS+INXImceSPZOqhziI/1HtmX9TRAds=
X-Gm-Gg: ASbGncsQxcA/q34gj8VeSiPak2KFf/ZW5apEnjiL6sORyt3EMzBKMmWPyuGJ2VrKpzT
	5Cdz66bWtdUwsSaMv3A4zwWCTYXMFLrTrV2057Xcn/rOt5ZENM/GZjC2mZJv3zgg6MU9CeF8SWV
	oNSmWWO3U0Vm40V+CkB4mFbLjmIeu/2n0PMGx7WizuiHiOSkuiWeipH4Mb0UOklbCEwj3Owogc3
	OdBqTAtMMgLmfikemX1ObLy5/xP8szl+xUorLnZ9Gu3gKqgbbOUundTnvqTMI18L0/yDwySeWiR
	OBRWHGcrSl+NewffhYMRaX/hWUnqNKmoN+dIxYk1NjKw5P3PTOUPbV7YkJ/xSQlOjB1d8udnSmN
	Tu0zj2GydAJCQdciC1NE1xncJqbE=
X-Google-Smtp-Source: AGHT+IEHaxfhHyN2OlOCJM1LCuzQK+0ngY10UoeZqNZoqkFY+N+fhTjcOBUMDDIKBauOY81Na0BJmA==
X-Received: by 2002:a05:6000:18aa:b0:3b7:9af4:9c75 with SMTP id ffacd0b85a97d-3bb68545c71mr8765815f8f.30.1755523912274;
        Mon, 18 Aug 2025 06:31:52 -0700 (PDT)
Received: from [192.168.1.3] ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3bb676c96dasm12687711f8f.43.2025.08.18.06.31.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 06:31:51 -0700 (PDT)
Message-ID: <3f401e84-7236-457f-a2ce-ee45898f1ab9@linaro.org>
Date: Mon, 18 Aug 2025 14:31:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/13] dt-bindings: lpspi: Update maximum num-cs value
To: Frank Li <Frank.li@nxp.com>
Cc: Mark Brown <broonie@kernel.org>, Clark Wang <xiaoning.wang@nxp.com>,
 Fugang Duan <B38611@freescale.com>, Gao Pan <pandy.gao@nxp.com>,
 Fugang Duan <fugang.duan@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Larisa Grigore <larisa.grigore@oss.nxp.com>,
 Larisa Grigore <larisa.grigore@nxp.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com,
 linux-spi@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
 <20250814-james-nxp-lpspi-v1-11-9586d7815d14@linaro.org>
 <aJ4qw5eF10oJMIIA@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aJ4qw5eF10oJMIIA@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14/08/2025 7:28 pm, Frank Li wrote:
> On Thu, Aug 14, 2025 at 05:06:51PM +0100, James Clark wrote:
>> As mentioned in commit f46b06e62c86 ("spi: spi-fsl-lpspi: Read
>> chip-select amount from hardware for i.MX93"), some devices support up
>> to 3 chip selects so update the max value.
>>
>> This isn't a fix or functional change because the devices with 3 chip
>> selects support reading the number of chip selects from hardware, so the
>> value wouldn't have needed to be set here. However the commit states
>> that the DT could be used to overwrite any HW value, so the full range
>> should be supported. This also avoids confusion for any readers about
>> how many chip selects there are.
>>
>> Signed-off-by: James Clark <james.clark@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>> index a65a42ccaafe..ce7bd44ee17e 100644
>> --- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>> +++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>> @@ -64,7 +64,7 @@ properties:
>>       description:
>>         number of chip selects.
>>       minimum: 1
>> -    maximum: 2
>> +    maximum: 3
> 
> You need keep the same restriction for other compatible string, or need

Not sure I follow here. Don't the binding docs only cover the maximum 
range of valid inputs for all covered platforms? They don't go into 
details about which ranges are valid for every individual sub-platform.

For example if a platform didn't support DMA we wouldn't say it's not 
valid to label DMA channels in the binding doc. If someone puts 3 
instead of 2 then that's just a mistake, but documenting valid ranges 
can't really fix a mistake like that. And changing 2 to 3 doesn't break 
existing DTs, only making it smaller would.

> reason for other platform which also support up to 3.

The reason is that some platforms support 3, so I thought it made most 
sense to set the max to 3. I replied more on the thread with Rob, but we 
can just drop this one.

> 
> Frank
> 
>>       default: 1
>>
>>     power-domains:
>>
>> --
>> 2.34.1
>>


