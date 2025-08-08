Return-Path: <devicetree+bounces-202718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D14B1E7E5
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 14:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C70BE5612E3
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 12:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D53F2264605;
	Fri,  8 Aug 2025 12:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="W99xGzeE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0CF2367B6
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 12:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754654628; cv=none; b=SykGLJZXu81La4sQNOUJ/N7TDAznLOC/sG4+ymcwiGqLSjWoorTOYNMrjK+6CHdtbT75i3EJCValLhPu7GxMy+xmqbSkPPzH3BAXJdkYR/CpoYNr9Kgl25TFJ0WNeY2BjnN4WCmxv5ezAsfpajttb3O0eDsBGep4noMvyYRUKhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754654628; c=relaxed/simple;
	bh=6ao3dnrnKc09/dBLYRX30+g8CZwbFMFnpT7W13BEuj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cshRn5iPV6syKwKXSGUqnWxAomhYtuNC4nuMKwQzbEdnPY87kVxcan49OwGKKVY59UQiM2k8CrTbaJi47+SI3onre4owpQCJnXKsitBWgPuh7uMRAymDLso/GXhEu5oVswTbnbvaU2vmN+xrEOVQDs7g8ZeDZu1O/Vlj4yqlvBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=W99xGzeE; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-459d44d286eso13981945e9.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754654625; x=1755259425; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aiPizj4xPQHgrz0IL3+WPEQFuPXWX/y9HlO9/wOe3L4=;
        b=W99xGzeE9a/3ucqsnGmCTj+1740jLYNK3+UeRMV9SHgAWMpU7mi29Zu66uI7NfqQQA
         kVK1y3mycWyyOJPMQ5hvrAefVEEZ4+efhHRR22dd7UbxQ07EABx+Q58tTP1puq/Ipavh
         BSg8McvnFxjW5Ps9eMZgO1FX2VBYfZvKIEMBUdZsVxqHOYkME07UVulUNt5V6wV08v6g
         +GY1FxmX+qJDR/gclkpJe4IdfdVv1AkqPcrljr6QCbEHLnIqlnCXDjqHgacjTvjTginP
         m+N75ki9ahZqUHY/SpJARI0COK7zRHE9oMTe/ddXrIIz7XaybsLsp+KJ6SohocxiEoK2
         +aFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754654625; x=1755259425;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aiPizj4xPQHgrz0IL3+WPEQFuPXWX/y9HlO9/wOe3L4=;
        b=bmh9VYqxlCVSSvE9mTQtCYTk0M9V20ZX2q1C9OdioOhn7rOisjnbMCIqfxFt5o/CPA
         YBpGsAaZPjs8dJ0j3vOtrCZrstcCrlqYuvQRdZAUsrFXqNKhQsgUCzNUQPTZ0VB/7SwD
         38GKBjl6kaIPgkwJ27GGn/LS4qEgth1s5R0AWngL80+XACfFzcmtE/K3DJ2BNWlx+8l8
         3nO+BHwHVFr7Ibp81Kfzem6HV7ORAKZzRA4Fcm2OpsztjaDTUipXkp37YkZBsNtzCX/9
         Y0g17ivFuBQKmpHC+x381013mMQzPl5r1H2nuWbV8bwJAYqPdVkCZtCzKo0Tt8wkewTF
         XaCg==
X-Forwarded-Encrypted: i=1; AJvYcCW36BzMbvkUma7HTRh9UfpriaRFRaC1tsDXjF2stgRZsst5PmkqR/nmAUe0tz0FofCaKPzm4rVsc2Fg@vger.kernel.org
X-Gm-Message-State: AOJu0YxhvWX00LVWRxmoi8yExmcs1BAEhZuZQrtffXGc+ywPMiBFiBdW
	bJAPBnNHQTkDTBzXJrUbiJkMTo0E1E2gkWLEjw00+i8Jo8bAM5dV1fEmaGuxnGcnNOg=
X-Gm-Gg: ASbGncvQxS1ugAK/5ufEz7o7qmYNU7+qK7pm5FikKfynG95pyMnZrRlv2RmRfaB+vyR
	3pwBgPJo//dt0GXFhnszPLE3Qg551DQkRpWyguefrTfNaink2JRFHbLxtLKRHIAhrszIFewGfjK
	eWkk/Sjb5AbyiXfRopqU/Ag3YKfLbAXbs1ymUd/jj+lsYjfPhEdEzAnziHh539vGMVQLdCNfvnR
	2fJ2y9+e5tM2YbteqpZbuJ2XzX0JWpWlmpcfbR2lW0SyBbfbLilgQLzRVhwdvfFtDnxootpQQsT
	HH/uL6b7gFB3Yu8Qdf1kgmCdRkd4IlQxZiX2O+gJr0mPM0RTaetAdM3SHnnrTowjwCaSE3XGO50
	LD2p5D2fk2qmdKsh+tOSHM86MkfowIxg=
X-Google-Smtp-Source: AGHT+IEhH09YKqZt2qdtQad23ji4V+O1nbR0nqNA6VFV5zpI+IyNp61P/t7lTEC8XtYM0WJsfb+osw==
X-Received: by 2002:a05:6000:4028:b0:3b7:8842:8a0c with SMTP id ffacd0b85a97d-3b8f97ec49emr6554498f8f.19.1754654625233;
        Fri, 08 Aug 2025 05:03:45 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e009e465sm21298841f8f.43.2025.08.08.05.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 05:03:44 -0700 (PDT)
Message-ID: <6638d8cb-5770-416f-84f7-670de71ec63d@tuxon.dev>
Date: Fri, 8 Aug 2025 15:03:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: rzg3s-smarc-som: Update
 dma-ranges for PCIe
To: Biju Das <biju.das.jz@bp.renesas.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
 "kwilczynski@kernel.org" <kwilczynski@kernel.org>,
 "mani@kernel.org" <mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm" <magnus.damm@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "lizhi.hou@amd.com" <lizhi.hou@amd.com>
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 wsa+renesas <wsa+renesas@sang-engineering.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
 <20250704161410.3931884-8-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB113464920ECAC2C3CB89DE2D5864FA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <7c8c7a25-c373-452a-9fe8-8b2d92ddd885@tuxon.dev>
 <TY3PR01MB113467C09DF7D3D0D7833A6598649A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fa0da331-273a-414b-b0d8-229c6772692d@tuxon.dev>
 <TY3PR01MB11346340ACB78394E131503B3862FA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <TY3PR01MB11346340ACB78394E131503B3862FA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 08.08.2025 14:44, Biju Das wrote:
> 
> 
>> -----Original Message-----
>> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
>> Sent: 08 August 2025 12:28
> .org; Claudiu Beznea
>> <claudiu.beznea.uj@bp.renesas.com>; wsa+renesas <wsa+renesas@sang-engineering.com>
>> Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe
>>
>> Hi, Biju,
>>
>> On 09.07.2025 08:05, Biju Das wrote:
>>> Hi Claudiu Beznea,
>>>
>>>> -----Original Message-----
>>>> From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
>>>> Sent: 08 July 2025 11:10
>>>> Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: rzg3s-smarc-som:
>>>> Update dma-ranges for PCIe
>>>>
>>>> Hi, Biju,
>>>>
>>>> On 07.07.2025 11:18, Biju Das wrote:
>>>>> Hi Claudiu,
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>>>> Sent: 04 July 2025 17:14
>>>>>> Subject: [PATCH v3 7/9] arm64: dts: renesas: rzg3s-smarc-som:
>>>>>> Update dma-ranges for PCIe
>>>>>>
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> The first 128MB of memory is reserved on this board for secure area.
>>>>>> Update the PCIe dma-ranges property to reflect this.
>>>>>
>>>>> I see R-Car PCIe dma-ranges[1] and [2] maps all possible DDR area supported by the SoC?
>>>>> Do we need to make board specific as well there?
>>>>
>>>> I'm not familiar with R-Car, but if there are ranges reserved for
>>>> other purposes, I think we should reflect it in board specific device trees.
>>>
>>>
>>> Already Linux has this DDR info[1]. Linux provides DMA memory only from this region.
>>
>> What we provide though dma-ranges DT property is setup in the PCI controller register corresponding to
>> the AXI windows. It is the same in case of R-Car (as of my investigation on driver).
>>
>>>
>>> In your testing, have you faced any issue like system allocated DMA
>>> region other than [1] and you don't want to use it, then the changes are ok??
>>
>> I haven't currently encounter any issues.
>>
>> As the values passed though the dma-ranges DT property are setup in the controller register for AXI
>> windows, and the DMA endpoints can act as bus masters, to avoid any issue where the DMA endpoints may
>> corrupt memory specific to the secure area, I chose to update the "dma-ranges" though board specific
>> bindings (to reflect the presence of the secure area and tell the PCIe controller to not use it).
>>
>>>
>>> Not sure, PCIe can work on internal memory such as SRAM?
>>
>> Inbound window is RAM, outbound window is a PCIe specific memory described though "ranges" DT property.
> 
> You mean SRAM cannot work on PCIe subsystem and work only for DRAM

This PCIe driver uses the PCIe specific memory (named "PCIe area" in Figure
5.2 Overall Address Space or RZ/G3S HW manual) and DRAM.

> that is the reason you are not defining SRAM region in "dma-ranges". Am I correct?

The DRAM region is described though dma-ranges, the PCIe memory is
described through ranges property. The above is from this series:

dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;
ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x8000000>;

Thank you,
Claudiu

> 
> Cheers,
> Biju


