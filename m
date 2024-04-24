Return-Path: <devicetree+bounces-62154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 351CF8B025A
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:43:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7ED11F22706
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2D5157498;
	Wed, 24 Apr 2024 06:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Az40Eq6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68213D52B
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713940999; cv=none; b=MLvKXjLn7XVd9J8qK/23GXsu9Jxn3xS+byTSGgizKNyTQiauO5mQN3qjHeOedKvtPxEgh2n1LEgSZjvABZF8azVjNqL2ZKPEjziK8qpWIVqvl7lyM5ZBGIfliBg2huVuRYAKSp9+LczRGheBx+vTRZS+LklCXRNSKlBPAQTHjEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713940999; c=relaxed/simple;
	bh=Ag4bJ40fGH0DqEkvKyz729+wZ83aknf5a57khTuF6rA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CaFCp53ChK4CEMIed8Ns1XN2m3jg0xtjlGSXPJdDqHwVLmFBw3IO4yysageQ4S8iNN1RkAa/T4JLE+5Uu2b1aHyUAwDz/S2sbxUOK8Ep/3P7xB4kVfE/xPNJWJEb+waLx6RRFz4OccDyGVjbid2n358nce8EMWRaBt4n7QBlrFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Az40Eq6q; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a52223e004dso624482766b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713940996; x=1714545796; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=udhzCBGRZVmdDAb3cM+8w1Jfy9RYbeYiUMsy39zLo8E=;
        b=Az40Eq6qoj9j+He8EfA5QjUVQLevAeXiZ1Pttt1ear1+f3FWHXuvARBAkb0uvPPhdK
         sbpKhLQOmd2gdC5tVJkoczPVv6aRlcjJNGs431vCM2hVg3h7AiPPVQ4pVL+Z56CKsFNZ
         Ii6B/1QzFWexKAcrRYJdyNf3sppqRsVVpoEZND+JyltzFmSlLqiAmUVkKHKKBlSFkjrh
         C3MsFbFKC1rg/pMlAMRolQifdj8C9EAwe/khUkYEIQULYxQAIpn3RNRH9Y56LTOQWmiw
         xpWizITN+rBCiPXY0dxXJh86vfunFIqg9BwLaF7QyNkXgqEur6N9LqsnGssj/sk3NWZv
         HXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713940996; x=1714545796;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=udhzCBGRZVmdDAb3cM+8w1Jfy9RYbeYiUMsy39zLo8E=;
        b=aMu15aYwpoo2NwKccxOuSrwvvS9YsUsx4eOt5VxpDfum3ciKSufsUo7S9pQLGlJM0A
         LAyag9ixMRAsfqZ8AlP05QjGzVhCQaEOBKXPgxku+U4QPn8oM8T8kHP93yT94AUb7A4v
         uc7Hsx5qm65hFwBFecONr0SFzq0FR0PouEWHOE+JYEUxWdD3eXjVzKlJpKGGW0MCHZjS
         QNzRv+XlMHCmVP0wOWgLhpxBGeIm/o0yrAF9cXljR4pxo5GcVKoRmZWHZso8XfYj3Koh
         FRb46OGvZxpXc3QBCPXKcCTQMgil0wzma9H0ET0ozgcphudrd3mfrrVT3PeAlvhY+xpa
         3XeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfJPag0VGZbP4AlJIZWungz0AGCJ1AH0PDyHaOCBl/e7tl0EAG3ya0yrMnLp7P/DJmPgSTiM5l6G+45sqY1TU4aIAhagf3zXE3tA==
X-Gm-Message-State: AOJu0YxYAvuB2q4ukLpGKWdETFkVVxE403BbqhhtGUsEa0RCA0rkK74K
	iyJywJGlyoHJWihwv1oHFwZR9RyUGsv9ih28l0IYGeilWK7vuhz3
X-Google-Smtp-Source: AGHT+IF6XHwdbHD02w8q56FUrprZ/d+hkZHF4u+Te525iP4iOm6Mxrkj+E82z+FmpDaIUSDMHkrh9g==
X-Received: by 2002:a17:906:a84b:b0:a52:3648:67c1 with SMTP id dx11-20020a170906a84b00b00a52364867c1mr1434439ejb.13.1713940996340;
        Tue, 23 Apr 2024 23:43:16 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id jr13-20020a170906a98d00b00a4e03823107sm7875432ejb.210.2024.04.23.23.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 23:43:15 -0700 (PDT)
Message-ID: <77471436-9969-4125-ba6b-0d7aeedb2949@gmail.com>
Date: Wed, 24 Apr 2024 08:43:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Describe PCIe controllers fully
Content-Language: en-US
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 Hauke Mehrtens <hauke@hauke-m.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
References: <20240423110238.32148-1-zajec5@gmail.com>
 <20240423110238.32148-2-zajec5@gmail.com>
 <c619a7a6-c635-4fba-b9ad-d0c5664b541b@broadcom.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <c619a7a6-c635-4fba-b9ad-d0c5664b541b@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23.04.2024 21:03, Florian Fainelli wrote:
> On 4/23/24 04:02, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> This fixes:
>> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18012000: 'device_type' is a required property
>>          from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18012000: 'ranges' is a required property
>>          from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18013000: 'device_type' is a required property
>>          from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18013000: 'ranges' is a required property
>>          from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18014000: 'device_type' is a required property
>>          from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>> arch/arm/boot/dts/broadcom/bcm4708-asus-rt-ac56u.dtb: pcie@18014000: 'ranges' is a required property
>>          from schema $id: http://devicetree.org/schemas/pci/pci-bus.yaml#
>>
>> Cc: Arınç ÜNAL <arinc.unal@arinc9.com>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> 
> OK, so this is the rationale for patch #1, because you are adding a 'ranges' property to each PCIe root complex node, and you need the values in the 'ranges' property to be expressed relative to the global address space, and not the axi@18000000 address space, you needed to flatten the axi@18000000 range.
> 
> Why not just bring those 3 nodes out of the axi@18000000 node into the global address space then? That would greatly limit the amount of changes in patch #1, some of which are just unfortunate noise.
> 
>  From the chip diagram, each PCIe controller has its own separate AXI interface to the NIC 301 AXI fabric, so having 3 independent nodes which are not tied to the axi@18000000 would not be wrong IMHO.

I got impression that memory mapped blocks should preferably go into a
"soc" node. It's what I seen in some other platforms and what is also
present (thought not directly documented) in the dts-coding-style.rst .

We don't have "soc" node but "axi@18000000" seems like our substitute.

So I thought we should keep PCIe controllers nodes in axi@ (soc@).

