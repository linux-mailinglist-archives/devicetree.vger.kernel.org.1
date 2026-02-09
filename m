Return-Path: <devicetree+bounces-264014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMIlHnXoiWmdDwAAu9opvQ
	(envelope-from <devicetree+bounces-264014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:00:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 166CE10FF9C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4DC4303674B
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34D537A487;
	Mon,  9 Feb 2026 13:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GYZeRuy3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2BA37998B
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770645470; cv=none; b=P4mKwSw/N2vthilZ+AjCGKccSo6YlqCuBcUi37JNz8rVaSRuP8qlrXFoPnMfvC19sR0Q58Gc5N00kBMwUfrplEaQlmft5y1E+2x5uViJhM13/QiEu2Xfk4hwLmp3ITzKyO2KpTAXL52to0JJ+baXLfi8RBQ6qtuGtakLqtDhTCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770645470; c=relaxed/simple;
	bh=/9aq1p8UbEf2VUn1zwT4iVhjwpc7m1ndmxfHYDI2bFo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Mmy3aXDrB9vq4ls7/J7wgORi/JZGHfxLAtxw7rVMLGKUc4j7cBwIA8BzoVW/an1rUhQoFVshDiFCXKJAKZxhBDAZvMg6N1FnuIdvUUbEg27RbaqAswDQX4P1qzzlAmHYi2t99OfbOmpZv1/47q9Iq3GC9/J9ImsUI16ZleED688=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GYZeRuy3; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4376c0bffc1so944709f8f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770645469; x=1771250269; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aD232HJcM07JIzXMrc+K1B/ldfdtVNWLSvSBE7P0itI=;
        b=GYZeRuy3bs3956BZYcWWInLwX37zsf0NTTT9fCnk4qS1sra7/MLdKaLsj4QrhKU7d5
         D/BRTAaN3lJFkJmk2kg54OZnDrknvounQsMpBaGusJNtcX22yvTxrX1QjFrUbV67WqdH
         uVBOiQJ7sDxXq3NKD+VH1UvY6XrxsaWHfa2aLRd6EQIzAI10Yf2M6sAI2LwyMabxS0Pc
         KHNh6/84Hln5LHgVCj5NrjKVcedQpa6tLL28kEfngjNaH2lW2gyqUA12gcLnPf+DIiyM
         2fIoEg+b1W0zZrkYGPfOGi1RUmKP0sEnNglNsolHmvEfCfULz/tMw8ClC7pyHIgsBtFd
         RQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770645469; x=1771250269;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aD232HJcM07JIzXMrc+K1B/ldfdtVNWLSvSBE7P0itI=;
        b=V3bdEKRlubKv3ROlESB9J4ZGsKKhpKULumGhPECs4VDjmeuZz5ewjrLKH+jj6EdZT7
         97b1KwY07KJobDeeNZVKkN52f16ic9lrXOdwclIJWs/TeNaA/S+M0aCXN40fyXCwFuPF
         oQMTbvJ5tyHFN9Bnw2T+lfCAqpTzt37nHHrmtGN88FJxjCvXobFc8/CSjcLRS4mu2Y4x
         oqGBql7ZuVxLPZHmWuxxlm+zaq/Um2Dc1rzO4Q64cwN1m2vhTs5suh6S317eJTvw1uBo
         9UZj50fZaGZpn3+DjVGt7OyJ7x+9EdFR5DFSptemmnxmJLKlQkWVbiDnElov27V93Dnf
         WvYA==
X-Forwarded-Encrypted: i=1; AJvYcCWkHIQc8Da7WEcILQ2vgjsunTL3v9Qg1LP59tYEqCPGOqkTLXkjB8QP9b7LeWN1q59KEFmQlqmSM/Yj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvmj7skhtytyXu2G6mUirUmJ1DBQGp2YvxNfglQ0dwOA/rr6Fq
	12mCqLvNNxAnQKmreN2Ykj74STaVtei1454SEqE1jZy5VkhLIG796g9QRw0szIN84ks=
X-Gm-Gg: AZuq6aJc+I4xmh5HNZepebHPb0VaEo8VdBkOTStIN+Rqa315VvcPg6D3Lw1LxD+RI5W
	6D4albn8dPmAFEO4spnXE09OCXRP7vTV8H1wKdrMvFES8GKMdTEzXzrYuoP9AbzpzWzT8XvAygx
	vBFkdgVUyc8GmWS1Jq3Qar3teoMG0qgPVYx/TEFq7J4xEhxyQO5/T9jXUlMFgLSVlEXhH8Js0cw
	mU8udM4EceHZHjAOAL9hbmEqFFQkX/NVg6BzYan6QlK9dARkT0zfKt4Nx5mTQbu1Bwv2VEYMGIB
	pIkKZ6/fQ8XIOlrE5Zumy3Lk5PqRqaguc9xYE2nLCcUXeSRLsu3ZYfy6MgFzgGroyJ2NSWItpHB
	cYuRcfMHyxDSbESN77XCuDZLSXdEno0Dcjghj3/kK3rH9WVfFC6Ud7nij/BrVjKygqHjiyV5cJ/
	Be7NlcqDtwE8eWj5xRRU8UaJIqvB5QCkrEFAX4pnYUMG/KjWI8R0sXYZXtkniUGBc=
X-Received: by 2002:a05:6000:1ac7:b0:437:70d3:44ec with SMTP id ffacd0b85a97d-43770d346bfmr3864732f8f.43.1770645468533;
        Mon, 09 Feb 2026 05:57:48 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:44e3:9198:bd5d:a3f? ([2a01:e0a:106d:1080:44e3:9198:bd5d:a3f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4376d3a32basm10077384f8f.14.2026.02.09.05.57.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 05:57:48 -0800 (PST)
Message-ID: <fd446018-3006-4c59-bc92-ae3929b8d402@linaro.org>
Date: Mon, 9 Feb 2026 14:57:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/9] pci: pwrctrl: rename pci-pwrctrl-slot as generic
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
References: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
 <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-3-5b79c5d61a03@linaro.org>
 <ygvljxho4dh4zlkxcropjdczbyh45sexntosz2rvxdsxigmgmi@aeqhi4qit5ct>
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
In-Reply-To: <ygvljxho4dh4zlkxcropjdczbyh45sexntosz2rvxdsxigmgmi@aeqhi4qit5ct>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264014-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:replyto,linaro.org:dkim,linaro.org:email];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 166CE10FF9C
X-Rspamd-Action: no action

On 2/9/26 12:33, Manivannan Sadhasivam wrote:
> On Fri, Feb 06, 2026 at 03:50:31PM +0100, Neil Armstrong wrote:
>> The driver is pretty generic and would fit for either
>> PCI Slots or PCI devices connected to PCI ports, so rename
>> the driver and module as pci-pwrctrl-generic.
>>
>> Suggested-by: Manivannan Sadhasivam <mani@kernel.org>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/pci/pwrctrl/Kconfig               | 8 ++++----
>>   drivers/pci/pwrctrl/Makefile              | 4 ++--
>>   drivers/pci/pwrctrl/{slot.c => generic.c} | 0
> 
> I was expecting the rename inside the driver too :)

Oh yeah, will do in v4

Neil

> 
> - Mani
> 
>>   3 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/pci/pwrctrl/Kconfig b/drivers/pci/pwrctrl/Kconfig
>> index e0f999f299bb..0a93ac4cd11b 100644
>> --- a/drivers/pci/pwrctrl/Kconfig
>> +++ b/drivers/pci/pwrctrl/Kconfig
>> @@ -11,12 +11,12 @@ config PCI_PWRCTRL_PWRSEQ
>>   	select POWER_SEQUENCING
>>   	select PCI_PWRCTRL
>>   
>> -config PCI_PWRCTRL_SLOT
>> -	tristate "PCI Power Control driver for PCI slots"
>> +config PCI_PWRCTRL_GENERIC
>> +	tristate "Generic PCI Power Control driver for PCI slots"
>>   	select PCI_PWRCTRL
>>   	help
>> -	  Say Y here to enable the PCI Power Control driver to control the power
>> -	  state of PCI slots.
>> +	  Say Y here to enable the generic PCI Power Control driver to control
>> +	  the power state of PCI slots.
>>   
>>   	  This is a generic driver that controls the power state of different
>>   	  PCI slots. The voltage regulators powering the rails of the PCI slots
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
>> diff --git a/drivers/pci/pwrctrl/slot.c b/drivers/pci/pwrctrl/generic.c
>> similarity index 100%
>> rename from drivers/pci/pwrctrl/slot.c
>> rename to drivers/pci/pwrctrl/generic.c
>>
>> -- 
>> 2.34.1
>>
> 


