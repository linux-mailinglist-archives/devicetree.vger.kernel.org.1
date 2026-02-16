Return-Path: <devicetree+bounces-265927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OnDGpB7k2ko5wEAu9opvQ
	(envelope-from <devicetree+bounces-265927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 21:18:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CDA14767F
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 21:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 84C2B301C6D8
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 20:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EDA72E54DE;
	Mon, 16 Feb 2026 20:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XFB/GxkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CF8285CB6
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 20:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771273100; cv=none; b=A5/fLED64/ooJgfHR7GtKz+bNZOYDt7TjKC17ZMqdG3VUp/iPiu9LQj0X0m3hEfLUAPNBnP4eBKT2fV4U+8pUjs+SsA045SQAhCGm9M3AxSJ0aWREXKzb5cCSFFdhHgt3ba4U9fkgz0nlfqUEsGA+5Qz5ES9O905KOdITLq75eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771273100; c=relaxed/simple;
	bh=yYVeCCr96bBtlxwG7VSMF03VxAhdWV3PgzYenu7A0ng=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=b1vzJT31W/X2qxoVGd+e9Qjz971sqPUCO7YxK4baFeIHdconemshhfBt9sRO2klSNL4DyP8eQkij4UkV8FFKUFzsoLjt4IeQa55cz3cxyAMg/SHrRh9elvPVp9fJnPaxc45VsKMiWY7WS1AR7SyuEFQ4WH2wo5FIp1Ikr9mLuYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XFB/GxkJ; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-48068127f00so37775785e9.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771273097; x=1771877897; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PB3ZjHo1xt3MMj/ZU/68wizCKs7RW2YjdlONtSTthE4=;
        b=XFB/GxkJelsR1FV4xTjOT5ttR9Zv9ywvGS1bSPQwJcVW5De6cPtWOlNpdV+jcGNHCi
         Zy9HVLuQjLul0Wd6asJoAPqalXmUgZ9atJJm5Cw8dV7BImgzPqP/M/TsIZRy2GK90owJ
         1OVMbQfHNjzLf8ijfgbSL8DVe5h+SeNwo72gkoATT5j9UzRtjvYzHwgyAca9syM3mjwI
         dSunLhYSHWZJ+XYFlARH9P12zVAitc9UxFLEC5AYs+fQ5UgRbxMjFP4oRLgNTz+TKT+j
         XuLmGeo2iXtKjO5nx9TwT5LWnvoC6GrdSdZOr3Ffpcw+qn6Bc/I56dj/l777qRFrn3RL
         FhSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771273097; x=1771877897;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PB3ZjHo1xt3MMj/ZU/68wizCKs7RW2YjdlONtSTthE4=;
        b=F8ifS7RumrgGVkoctMoOQcb4EgPfjWQl6An+gJ6v3KcTbvYmiNIsliXEejtaHiF18Q
         TGV+xhys6mcChSSaiV3koCDMJezowfXjOzbH69ZXu/vIJewlJ/ZZxaRvZwhSLtlISTd1
         y4syTHoV7seGY174CBw2B4YPXn68CBtP7KFIpIZTk3j2+Vn18s4fM1EPqye8hBFx8Kq5
         sOqOKevVO/V0OkyBZ2FuxAKr60m6kWXoXcxuhc4FsoNOuHXV6km2HpOneNcuT/CH7AGi
         EsyfE6E+LRcKXOejpZCdR4/z69uF47CG/YZCB9Uiyhm7nSZo697Agrz+lm1O8LKfFW4j
         ZL4g==
X-Forwarded-Encrypted: i=1; AJvYcCUwwfhYBmMJFCEINMczge+54sHU0jDKeBLQaXrXdFRAuhu6HTscagVU80wrOdDuU5foC1WejXZ9dUh4@vger.kernel.org
X-Gm-Message-State: AOJu0YybbmKNovbv9GHKdNzwreijwioMbhWhGkNjk1SNraPaJPD+Cgrf
	PUIzgKnhODi/VcFDvx7Aaiov4U1FNe+B9EPy05ypEgId4XlFAAlU+hrm0btPyQpoizs=
X-Gm-Gg: AZuq6aIxVkLpVWdpXvAbK1mvctxOb5/uGGAnS7AJsw5njEmw/sIjBHoA0rSESI/s0Z8
	gUsMxyd1CUCGO9+Z0rSImq1TTZv3q+o4KYLw8XoG1hHXk4bD3IJM+5lKUBC6KQNxZFf0vwkfE9c
	u85ewX5f0hWcCLNpTKxdvr64VJbh2AziIA/qIsnxPLo3Q1bkJAGV55wHIgbUjCn+3hHI+SzVY0t
	0WECkeiOIQloXkaPd2QMws1hcUTSYp3vreYXZkkAUebGpmrkOPv8bKqgz+HZFemH+0Tx0YofFvY
	vDmNdHreyi2ucC/g1i2iLmAc/iEr3B4jFM92rj6k3lYd6rujhtkW2UpnOK+gvUoKbMeth9KYCC1
	zI96tJAcXTCskH2B1MMg+3ZtngwzmCwGowcg7PAFubzy/ShS9UdanPNHdHuEZCd3sybWormti4A
	EtLWFjgSCDavdAEgiVZgbKo8KyMFLsN+zEk0tNkwWKkVtC3ASiKMTUkeIpXE5+v5rrMA4/yn7Gc
	i0iGoTZyuY4AeP2
X-Received: by 2002:a05:600c:a08c:b0:480:6910:abd1 with SMTP id 5b1f17b1804b1-48373a5ba84mr208662795e9.18.1771273096827;
        Mon, 16 Feb 2026 12:18:16 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:80b4:8b51:72a6:9e2a? ([2a01:e0a:106d:1080:80b4:8b51:72a6:9e2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48370a78c89sm285579085e9.5.2026.02.16.12.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 12:18:16 -0800 (PST)
Message-ID: <c2eb1c2d-6e3c-4e61-a193-840ad42cf860@linaro.org>
Date: Mon, 16 Feb 2026 21:18:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 3/9] pci: pwrctrl: rename pci-pwrctrl-slot as generic
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20260216-topic-sm8650-ayaneo-pocket-s2-base-v4-0-802c82795431@linaro.org>
 <20260216-topic-sm8650-ayaneo-pocket-s2-base-v4-3-802c82795431@linaro.org>
 <xiizfsm7tbcqqb2w2bittscipyxac5xdx7fhmplc6e7ogl74o5@p2gsjolien6c>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <xiizfsm7tbcqqb2w2bittscipyxac5xdx7fhmplc6e7ogl74o5@p2gsjolien6c>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265927-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: C9CDA14767F
X-Rspamd-Action: no action

On 2/16/26 17:33, Manivannan Sadhasivam wrote:
> On Mon, Feb 16, 2026 at 03:21:47PM +0100, Neil Armstrong wrote:
>> The driver is pretty generic and would fit for either
>> PCI Slots or endpoints connected to PCI ports, so rename
>> the driver and module as pci-pwrctrl-generic.
>>
>> Suggested-by: Manivannan Sadhasivam <mani@kernel.org>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/pci/pwrctrl/Kconfig   | 13 ++++---
>>   drivers/pci/pwrctrl/Makefile  |  4 +-
>>   drivers/pci/pwrctrl/generic.c | 91 +++++++++++++++++++++++++++++++++++++++++++
>>   drivers/pci/pwrctrl/slot.c    | 91 -------------------------------------------
>>   4 files changed, 100 insertions(+), 99 deletions(-)
>>
>> diff --git a/drivers/pci/pwrctrl/Kconfig b/drivers/pci/pwrctrl/Kconfig
>> index e0f999f299bb..0ba095729694 100644
>> --- a/drivers/pci/pwrctrl/Kconfig
>> +++ b/drivers/pci/pwrctrl/Kconfig
>> @@ -11,16 +11,17 @@ config PCI_PWRCTRL_PWRSEQ
>>   	select POWER_SEQUENCING
>>   	select PCI_PWRCTRL
>>   
>> -config PCI_PWRCTRL_SLOT
>> -	tristate "PCI Power Control driver for PCI slots"
> 
> This symbol is selected by a few controller drivers also in:
> drivers/pci/controller/dwc/Kconfig
> 
>> +config PCI_PWRCTRL_GENERIC
>> +	tristate "Generic PCI Power Control driver for PCI slots and endpoints"
>>   	select PCI_PWRCTRL
>>   	help
>> -	  Say Y here to enable the PCI Power Control driver to control the power
>> -	  state of PCI slots.
>> +	  Say Y here to enable the generic PCI Power Control driver to control
>> +	  the power state of PCI slots and endpoints.
>>   
>>   	  This is a generic driver that controls the power state of different
>> -	  PCI slots. The voltage regulators powering the rails of the PCI slots
>> -	  are expected to be defined in the devicetree node of the PCI bridge.
>> +	  PCI slots and endpoints. The voltage regulators powering the rails
>> +	  of the PCI slots or endpoints are expected to be defined in the
>> +	  devicetree node of the PCI bridge.
>>   
>>   config PCI_PWRCTRL_TC9563
>>   	tristate "PCI Power Control driver for TC9563 PCIe switch"
>> diff --git a/drivers/pci/pwrctrl/Makefile b/drivers/pci/pwrctrl/Makefile
>> index 13b02282106c..f6bb4fb9a410 100644
>> --- a/drivers/pci/pwrctrl/Makefile
>> +++ b/drivers/pci/pwrctrl/Makefile
>> @@ -5,7 +5,7 @@ pci-pwrctrl-core-y			:= core.o
>>   
>>   obj-$(CONFIG_PCI_PWRCTRL_PWRSEQ)	+= pci-pwrctrl-pwrseq.o
>>   
>> -obj-$(CONFIG_PCI_PWRCTRL_SLOT)		+= pci-pwrctrl-slot.o
>> -pci-pwrctrl-slot-y			:= slot.o
>> +obj-$(CONFIG_PCI_PWRCTRL_GENERIC)	+= pci-pwrctrl-generic.o
>> +pci-pwrctrl-generic-y			:= generic.o
>>   
>>   obj-$(CONFIG_PCI_PWRCTRL_TC9563)	+= pci-pwrctrl-tc9563.o
>> diff --git a/drivers/pci/pwrctrl/generic.c b/drivers/pci/pwrctrl/generic.c
>> new file mode 100644
>> index 000000000000..a5b7b7965f46
>> --- /dev/null
>> +++ b/drivers/pci/pwrctrl/generic.c
>> @@ -0,0 +1,91 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (C) 2024 Linaro Ltd.
>> + * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/device.h>
>> +#include <linux/mod_devicetable.h>
>> +#include <linux/module.h>
>> +#include <linux/pci-pwrctrl.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/regulator/consumer.h>
>> +#include <linux/slab.h>
>> +
>> +struct pci_pwrctrl_generic_data {
> 
> Ah, just realised that Bjorn renamed these structures and helpers in
> https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/drivers/pci/pwrctrl/slot.c?h=next&id=e40d16e6c23994b28894179b87f9747edd63062a
> 
> So this needs some adapting...

Arghh, ok will update

Thanks,
Neil

> 
> - Mani
> 
>> +	struct pci_pwrctrl ctx;
>> +	struct regulator_bulk_data *supplies;
>> +	int num_supplies;
>> +};
>> +
>> +static void devm_pci_pwrctrl_generic_power_off(void *data)
>> +{
>> +	struct pci_pwrctrl_generic_data *generic = data;
>> +
>> +	regulator_bulk_disable(generic->num_supplies, generic->supplies);
>> +	regulator_bulk_free(generic->num_supplies, generic->supplies);
>> +}
>> +
>> +static int pci_pwrctrl_generic_probe(struct platform_device *pdev)
>> +{
>> +	struct pci_pwrctrl_generic_data *generic;
>> +	struct device *dev = &pdev->dev;
>> +	struct clk *clk;
>> +	int ret;
>> +
>> +	generic = devm_kzalloc(dev, sizeof(*generic), GFP_KERNEL);
>> +	if (!generic)
>> +		return -ENOMEM;
>> +
>> +	ret = of_regulator_bulk_get_all(dev, dev_of_node(dev),
>> +					&generic->supplies);
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "Failed to get regulators\n");
>> +
>> +	generic->num_supplies = ret;
>> +	ret = regulator_bulk_enable(generic->num_supplies, generic->supplies);
>> +	if (ret < 0) {
>> +		regulator_bulk_free(generic->num_supplies, generic->supplies);
>> +		return dev_err_probe(dev, ret, "Failed to enable regulators\n");
>> +	}
>> +
>> +	ret = devm_add_action_or_reset(dev, devm_pci_pwrctrl_generic_power_off,
>> +				       generic);
>> +	if (ret)
>> +		return ret;
>> +
>> +	clk = devm_clk_get_optional_enabled(dev, NULL);
>> +	if (IS_ERR(clk))
>> +		return dev_err_probe(dev, PTR_ERR(clk),
>> +				     "Failed to enable clock\n");
>> +
>> +	pci_pwrctrl_init(&generic->ctx, dev);
>> +
>> +	ret = devm_pci_pwrctrl_device_set_ready(dev, &generic->ctx);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret, "Failed to register generic pwrctrl driver\n");
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id pci_pwrctrl_generic_of_match[] = {
>> +	{
>> +		.compatible = "pciclass,0604",
>> +	},
>> +	{ }
>> +};
>> +MODULE_DEVICE_TABLE(of, pci_pwrctrl_generic_of_match);
>> +
>> +static struct platform_driver pci_pwrctrl_generic_driver = {
>> +	.driver = {
>> +		.name = "pci-pwrctrl-generic",
>> +		.of_match_table = pci_pwrctrl_generic_of_match,
>> +	},
>> +	.probe = pci_pwrctrl_generic_probe,
>> +};
>> +module_platform_driver(pci_pwrctrl_generic_driver);
>> +
>> +MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
>> +MODULE_DESCRIPTION("Generic PCI Power Control driver for PCI Slots");
>> +MODULE_LICENSE("GPL");
>> diff --git a/drivers/pci/pwrctrl/slot.c b/drivers/pci/pwrctrl/slot.c
>> deleted file mode 100644
>> index 08e53243cdbd..000000000000
>> --- a/drivers/pci/pwrctrl/slot.c
>> +++ /dev/null
>> @@ -1,91 +0,0 @@
>> -// SPDX-License-Identifier: GPL-2.0-only
>> -/*
>> - * Copyright (C) 2024 Linaro Ltd.
>> - * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> - */
>> -
>> -#include <linux/clk.h>
>> -#include <linux/device.h>
>> -#include <linux/mod_devicetable.h>
>> -#include <linux/module.h>
>> -#include <linux/pci-pwrctrl.h>
>> -#include <linux/platform_device.h>
>> -#include <linux/regulator/consumer.h>
>> -#include <linux/slab.h>
>> -
>> -struct pci_pwrctrl_slot_data {
>> -	struct pci_pwrctrl ctx;
>> -	struct regulator_bulk_data *supplies;
>> -	int num_supplies;
>> -};
>> -
>> -static void devm_pci_pwrctrl_slot_power_off(void *data)
>> -{
>> -	struct pci_pwrctrl_slot_data *slot = data;
>> -
>> -	regulator_bulk_disable(slot->num_supplies, slot->supplies);
>> -	regulator_bulk_free(slot->num_supplies, slot->supplies);
>> -}
>> -
>> -static int pci_pwrctrl_slot_probe(struct platform_device *pdev)
>> -{
>> -	struct pci_pwrctrl_slot_data *slot;
>> -	struct device *dev = &pdev->dev;
>> -	struct clk *clk;
>> -	int ret;
>> -
>> -	slot = devm_kzalloc(dev, sizeof(*slot), GFP_KERNEL);
>> -	if (!slot)
>> -		return -ENOMEM;
>> -
>> -	ret = of_regulator_bulk_get_all(dev, dev_of_node(dev),
>> -					&slot->supplies);
>> -	if (ret < 0)
>> -		return dev_err_probe(dev, ret, "Failed to get slot regulators\n");
>> -
>> -	slot->num_supplies = ret;
>> -	ret = regulator_bulk_enable(slot->num_supplies, slot->supplies);
>> -	if (ret < 0) {
>> -		regulator_bulk_free(slot->num_supplies, slot->supplies);
>> -		return dev_err_probe(dev, ret, "Failed to enable slot regulators\n");
>> -	}
>> -
>> -	ret = devm_add_action_or_reset(dev, devm_pci_pwrctrl_slot_power_off,
>> -				       slot);
>> -	if (ret)
>> -		return ret;
>> -
>> -	clk = devm_clk_get_optional_enabled(dev, NULL);
>> -	if (IS_ERR(clk))
>> -		return dev_err_probe(dev, PTR_ERR(clk),
>> -				     "Failed to enable slot clock\n");
>> -
>> -	pci_pwrctrl_init(&slot->ctx, dev);
>> -
>> -	ret = devm_pci_pwrctrl_device_set_ready(dev, &slot->ctx);
>> -	if (ret)
>> -		return dev_err_probe(dev, ret, "Failed to register pwrctrl driver\n");
>> -
>> -	return 0;
>> -}
>> -
>> -static const struct of_device_id pci_pwrctrl_slot_of_match[] = {
>> -	{
>> -		.compatible = "pciclass,0604",
>> -	},
>> -	{ }
>> -};
>> -MODULE_DEVICE_TABLE(of, pci_pwrctrl_slot_of_match);
>> -
>> -static struct platform_driver pci_pwrctrl_slot_driver = {
>> -	.driver = {
>> -		.name = "pci-pwrctrl-slot",
>> -		.of_match_table = pci_pwrctrl_slot_of_match,
>> -	},
>> -	.probe = pci_pwrctrl_slot_probe,
>> -};
>> -module_platform_driver(pci_pwrctrl_slot_driver);
>> -
>> -MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
>> -MODULE_DESCRIPTION("Generic PCI Power Control driver for PCI Slots");
>> -MODULE_LICENSE("GPL");
>>
>> -- 
>> 2.34.1
>>
> 


