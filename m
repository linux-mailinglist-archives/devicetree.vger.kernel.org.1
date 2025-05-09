Return-Path: <devicetree+bounces-175497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 376AFAB10BE
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 12:30:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 604021888AC3
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 10:30:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF7F28F514;
	Fri,  9 May 2025 10:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ik+AR7KN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F83728ECF3
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 10:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746786597; cv=none; b=q4l1NcRGSaop2WpStJYCwYLSNsvOkt7j8YZ6VXGZYg1iHCJmSsiqC/xM9js4fnJ4hQhqnCQyJvX+/VWqFAB7Kogp/nEMMbMo6/+B3Uci/aa3OxyBPT16n9D4/NzZNwNcf2gbFyG93d2QddHeB9GIE1OSEn6T2uW74wOl5RbfRzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746786597; c=relaxed/simple;
	bh=Bgh8+VpXWqodyRXBeHA1Dsg9667GzQ82hiWcMQGPrYY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=e+OFRaaFrg/p8XseoILQz8dsuhUGL8D3Bz5yBK8G4lbDzG0c6UIATC9+gHHIzWAJCq/Qm3BK7IuqQIoVERqCVJ1Anjgut5oJeG7Z3uH4f3kfId6qP0+oBj/rpPqnvtSlnyrBjMxTuEqWdsFpdyb7oq6onvp3suq45FD0GIsFfN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ik+AR7KN; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac3b12e8518so395290366b.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 03:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746786593; x=1747391393; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OxDhZkSCewSzQX7ua1xIREYWkVFp8sJWfjRRBdflZuc=;
        b=ik+AR7KNGnBn9y1sm8nJT0BUk2ad8+MTQG+Zj/kPTqDMzwb9/7c3HJN3BbrqmV88ji
         fhLaTqr9mLgHqJHFyxjePOFEjm5m6wAGRxbiCO3gzi2OTIXhNQxYvTCo+w1rdOyJI7Yc
         Rv81GmdVqvORuYBzlItvlNvHnpJhfl+5JvxwuTqrzNJk40zaASfr29rg0oN29QeYmi+W
         UdWhQetoOAfTpPoJ/CGyJs6x6Whl2ftDFLAGC9QS4gChCkPt7IaSbA80VzpiP++R2HQP
         p2WUH0SRAkV/o7Lp59OzQFfRd9xVVpRmepECPdzH+cTH6bE36NFbI7QgtoeqygTYBQil
         BHyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746786593; x=1747391393;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OxDhZkSCewSzQX7ua1xIREYWkVFp8sJWfjRRBdflZuc=;
        b=piaPC8rK+MUCTMGqM8arKYRUPV4JlmT36l3xJj1bEO/veJPW7OYoAMayETd1V33Hxq
         iWi49A7HJ1ruWAjL0DAR/cyQlVCH9vZJjVaafaVuAZKyIvC6yAORKDOafx71C9li3Zpr
         wqgHmvV4rEq5AtzjdCEnkU0n86eC3C3jfb3lyFedbtJd2X5vT3uqAXruTXGi+zZZQSkl
         dXi33jZ003n9PtCsBkHAnW1lqjR/OSxlKVKaXs4+FiPvivODn6G7j+WpA1K2CLD4zOYc
         6/OcY7AuhY4dj474PZJcQQcGJSCOpwUr7+iYzDEuPkazePvIldR4g8utVmji5D7jnysI
         bISA==
X-Forwarded-Encrypted: i=1; AJvYcCU1r8w/vQ6cu3wqzqPZYwEimVu86EztOas500XTnJSvPyOEaWIqNz9narxC7Wp0cz2HsDEd35nlrhCt@vger.kernel.org
X-Gm-Message-State: AOJu0YzxYGRJI34q68kggg9yIMT8gp9rrEIk2BN7AyVwGGiHRYVFRVwG
	qpbaBgFCSH5pzP41R+53lnNRIroNUCJgILGqJpN2KapSJUlTJ0HM1VHOu+MYTAf4Jg9Cazv1roj
	k
X-Gm-Gg: ASbGnctfP1UQJu32vlRz3sjx+9r5CDgmx0MJDSsCL1L7mgrDP3tpRR+TtRcHyTnxFPo
	WQ2AvrAWAkqp295PidOKRUX46uNt13lufZAP6hGqGUt+ypaqQwdtjjlFqG7E+UG4sLBPPwtwuBC
	/NkX8Ed/z1HYY4MVmZZGruGvLRw4nC+M0s5S26Gt3jjoRM2KBX4GROgpANpJUrwFLEeZY4/sLZh
	L9TVL6enU4S9rAiK+wp/AWNE7DWmvAgwj0NknoRuR8nHH9eJpHZBGLfJ6dmKAjuBSdtyoIgqMgC
	9ye4GTeBxkH0QUWW27bPqxQQWCAeI0FyKaauSaONJhKwX2U6
X-Google-Smtp-Source: AGHT+IEJa8UJZWqTw9Q0EAr9PxAZseg++6SUc4a2N49f6rYLuvjP7U+hvo7avLnkTy2C6pjkRuSQbA==
X-Received: by 2002:a17:906:c102:b0:acb:711d:36c8 with SMTP id a640c23a62f3a-ad219170decmr305473466b.38.1746786583223;
        Fri, 09 May 2025 03:29:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2197bd3easm129122566b.147.2025.05.09.03.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 03:29:42 -0700 (PDT)
Message-ID: <869269a7-8267-45f3-9e4d-678de18c0888@tuxon.dev>
Date: Fri, 9 May 2025 13:29:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] PCI: rzg3s-host: Add Initial PCIe Host Driver for
 Renesas RZ/G3S SoC
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, saravanak@google.com,
 p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250501201211.GA768334@bhelgaas>
 <26bdfbd6-7bf5-4688-b793-5d0f613d340b@tuxon.dev>
Content-Language: en-US
In-Reply-To: <26bdfbd6-7bf5-4688-b793-5d0f613d340b@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Bjorn,

On 05.05.2025 14:26, Claudiu Beznea wrote:
> Hi, Bjorn,
> 
> On 01.05.2025 23:12, Bjorn Helgaas wrote:
>> On Wed, Apr 30, 2025 at 01:32:33PM +0300, Claudiu wrote:
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
>>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
>>> only as a root complex, with a single-lane (x1) configuration. The
>>> controller includes Type 1 configuration registers, as well as IP
>>> specific registers (called AXI registers) required for various adjustments.
>>>
>>> Other Renesas RZ SoCs (e.g., RZ/G3E, RZ/V2H) share the same AXI registers
>>> but have both Root Complex and Endpoint capabilities. As a result, the PCIe
>>> host driver can be reused for these variants with minimal adjustments.
>>
>> I guess this current driver only supports RZ/GS3 in Root Complex mode?
> 
> That's right.
> 
>> If so, I don't think this paragraph is necessary or really relevant.
> 
> OK, I'll drop it.
> 
>>
>>> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
>>> @@ -0,0 +1,1561 @@
>>
>> I can't figure out the line width you're using.  Generally code in
>> drivers/pci/ is formatted to fit in 80 columns.  Much of this file is
>> formatted for that, but there are many cases that seem to use 90 or
>> 100 columns.
> 
> I formated it at 100 columns where the lines were longer. I wasn't aware
> the PCI rule is to have line formated at 80 columns. I'll switch to it in
> the next version.
> 
>>
>> For single-line comments that are not a sentence or are a single
>> sentence, it's typical to omit the period at end.
> 
> I'll follow this rule, too.
> 
>>
>>> +static void rzg3s_pcie_update_bits(void __iomem *base, u32 offset, u32 mask, u32 val)
>>> +{
>>> +	u32 tmp;
>>> +
>>> +	tmp = readl(base + offset);
>>> +	tmp &= ~mask;
>>> +	tmp |= val & mask;
>>> +	writel(tmp, base + offset);
>>> +}
>>
>> Nothing rzg3s-specific here.
>>
>> I think u32p_replace_bits() (include/linux/bitfield.h) is basically this.
> 
> I wasn't aware of it. I'll use it in the next version. Thank for pointing it.

I look into changing to u32p_replace_bits() but this one needs a mask that
can be verified at build time. It cannot be used directly in this function.
Would you prefer me to replace all the calls to rzg3s_pcie_update_bits() with:

tmp = readl();
u32p_replace_bits(&tmp, ...)
writel(tmp);

or is it OK for you to keep it as is?

Thank you,
Claudiu

