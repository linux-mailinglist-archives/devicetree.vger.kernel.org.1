Return-Path: <devicetree+bounces-188872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B742DAE5DBA
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:30:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 061D14A4290
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1441D5173;
	Tue, 24 Jun 2025 07:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rRMecQPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D5F2522A7
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750750156; cv=none; b=pTAPNg1zhwEyS1P2+wIzmpv9wB07rhfJ8ZTyea8HJBD7C6vR9tkby76p98p9YWs0lZlAve3Sb8SFLtAKkFwqcHpqSV+Kxb/LMBzph3SL9SS/GHWFZUO+j2aqXhKg6dZqMn+nNsPcswa66lsvSCkCfA1AtpjA7fS/idXkAkbuXIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750750156; c=relaxed/simple;
	bh=TZQo+F/jBHrm9unWexUMY/+GozTBkwRpcJ6ui9uqLyc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=S7TnLoQk55xE4PaQlPVT+wD3twEx2OIo+jZQnW7UHsszgGe5t4i+G8FyEnUxMlU/HDJOiRvpEZC/UcPh7eFs33Yk+JuY6MWlKmsTVt/JvIFJFNJ2suQoka5rjqLLN2ORoVmr8+mUDWGRbcnvCdpzN/tl4J3cbCdEACvFjvohq9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rRMecQPP; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a548a73ff2so90666f8f.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750750153; x=1751354953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXQvyWKGqoA++0+nLyhrIs47IOqxWVGOvjV4paCklaM=;
        b=rRMecQPPM6eo99rS11ZTMA8WUk+SviQGWWXblh5cE/9MyBo2KBM5zR/sTVx467MmKE
         6hq5ACWk/569Pj1lBD9s6Tnl16qitdTRxzqjvgzmFKqFwtRx/59DmWrcFh4Z2BqYPFUo
         rLyWVhkTgyKUtR0ZaV3PTBbW4qUkKwC9VK6SdIFLvfWeajT1H5IUz27bVA865GIF9eDW
         jCthr0bi3+1PcUVYUguVZukPX++pgAg7G0OalrJTtqbuIyHOBw+ex+yAiqPsWJHh2YKD
         LmfParo1pl+8/r109AAvziYktRKTOvJdZsj/DF6PH7kNh74STdJUWf6QfGDVWlsc9nGY
         PzyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750750153; x=1751354953;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vXQvyWKGqoA++0+nLyhrIs47IOqxWVGOvjV4paCklaM=;
        b=X25ENG1ZIOop0F14UybAlKD3bxMMpUo0j0cSonwN3F4QX6O4mGlsKDh87UMWULPj4y
         ZJF4QT4RUzTNcD8CacvS8Cc2cZwU1edsECeCJQbRgLuC4xu1NYB7Z8wkPLhrxsP82dPH
         1uRDm3WNFdE4KyyU4QkuSV0/ltnjOguNntoKlUz2EVuf8WyompdfDbaVrwCnza3H67fQ
         1fNvW4ZxrktK23DmL7GmkxCNlHJWRpU1Q+NVJaVbWidmfbrsybn9f3v6IDMLX7tJInGL
         5oqeW7TAzE94Uk2BYn3F5ykIlK1DkLpZyzLNDCUS+wrSV5It4teKJ0FD1c7BvnFUue8g
         eUTA==
X-Forwarded-Encrypted: i=1; AJvYcCVYWXR1NymQpsHq0qCE1MObbna5pNGPErCegnvVwIKO9XEEhbP68e6AX1WYzJO6xXjFC0cCN4jyIXys@vger.kernel.org
X-Gm-Message-State: AOJu0YwD51X/rjmYlvjYKdsoMnFuGny4kRuvCJci0bQXPDaIyujpQp24
	Hik07oUkgE38dJPGExUtg/yUxs78XaiIjb0ktVfX10ivKNXG7hiLvGtKzs4TRl1RcPc=
X-Gm-Gg: ASbGncuxbn9aBDXP8p4eU8p2cBkn5KysHP1C+Cl5JxwfuakJAIAEv91M92ahk2czQqG
	lwiZuX49/qjDyp2PU5VsLIR6/wTvnOe4kNOvf6p2GGCeP7k1VAhuzr5qmL+ecdQANBThsYiP/k+
	4aSu9QDA4BfV8qHfLhxbpt/P65pYfzWDyx1Bik3PlTdm4CD18LbNH8uBi/QxtCiucCtvb1Xo25q
	PI9/wZtT07lPHX7tt90bcXMkH3rnDEz5hbPof6MJ1Mc9ze5U65hMZGmxc0cjXLMZrXd2RCi2Cd0
	uX+llq9423KLfzEDRejQcuqjzH5daomSFKQ29uJ+lWoso87Vc2JYmFeORTEX3FgJ4erSbrezHRj
	04CQXlpEZ3+jNWJP9isbbIp5krOm1msd/uI3AuBU=
X-Google-Smtp-Source: AGHT+IFNAvVc0Ym/Nl4SzjssDYkzNoxmE/MYxf9idIfGl+W01JZ50berxeUOTRJ/Uec/VhLDWdvcjg==
X-Received: by 2002:a5d:64e6:0:b0:3a5:8d0b:600c with SMTP id ffacd0b85a97d-3a6d12bb37emr13160349f8f.3.1750750152898;
        Tue, 24 Jun 2025 00:29:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:6fea:600c:ca20:f54a? ([2a01:e0a:3d9:2080:6fea:600c:ca20:f54a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e80f27besm1190928f8f.57.2025.06.24.00.29.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:29:12 -0700 (PDT)
Message-ID: <754d260c-1a31-494e-af06-49f6aae1813f@linaro.org>
Date: Tue, 24 Jun 2025 09:29:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: =?UTF-8?B?UmU6IOWbnuimhjogW1BBVENIIDAvN10gQWRkIEFTUEVFRCBQQ0llIFJv?=
 =?UTF-8?Q?ot_Complex_support?=
To: Jacky Chou <jacky_chou@aspeedtech.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
 "kwilczynski@kernel.org" <kwilczynski@kernel.org>,
 "mani@kernel.org" <mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "joel@jms.id.au"
 <joel@jms.id.au>, "andrew@codeconstruct.com.au"
 <andrew@codeconstruct.com.au>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Cc: "elbadrym@google.com" <elbadrym@google.com>,
 "romlem@google.com" <romlem@google.com>,
 "anhphan@google.com" <anhphan@google.com>, "wak@google.com"
 <wak@google.com>, "yuxiaozhang@google.com" <yuxiaozhang@google.com>,
 BMC-SW <BMC-SW@aspeedtech.com>
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
 <7178e816-4cb4-49b3-9a1e-1ecd4caa43ed@linaro.org>
 <SEYPR06MB513414A5AE38EE6749A2902C9D7CA@SEYPR06MB5134.apcprd06.prod.outlook.com>
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
In-Reply-To: <SEYPR06MB513414A5AE38EE6749A2902C9D7CA@SEYPR06MB5134.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/06/2025 10:20, Jacky Chou wrote:
>>> This series has been tested on AST2600/AST2700 platforms and enables
>>> PCIe device enumeration and operation.
>>>
>>> Feedback and review are welcome.
>>
>> So it seems all PCIe RC code is bundled in a single driver and there's no PCIe
>> PHY driver code, is there a reason for that ? If yes I think it should be described
>> in the cover letter.
>>
> 
> Yes, because our design includes the PCIe RC and the PCIe EPs.
> The two functions use the same PCIe PHY and are mutually exclusive.
> And there are different configurations on RC and EP.
> Therefore, we do not use a phy driver to configure our PCIe but use
> the phandle of phy syscon to set the RC and EP drivers separately.

I don't get why a PHY drive could not exist, it could be used by either
the RC or EP PCIe driver in an exclusive way.

Neil

> 
> I will add more description in next version.
> 
> Thanks,
> Jacky
> 


