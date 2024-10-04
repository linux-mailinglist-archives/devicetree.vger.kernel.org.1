Return-Path: <devicetree+bounces-107965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C76E4990A00
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 19:11:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 896D42839B2
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 17:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 627DF1D9A54;
	Fri,  4 Oct 2024 17:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="HrT7CNNe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1D53E49D
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 17:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728061904; cv=none; b=OgnxvUOj+birtXGMc6GgyXMFbTFYouX0ngVO5qIhuFvX/Wm91d0iDlsahay39OrPibd9x8btmAOHwsYeKoU/lDbmYmv0XQSlR9boBk9yrEJhiGe4pqKHfMWzOP5gBOjITXnve8V3xtmHo+yExzWcEWHWweZi+Bpm6NjGjGpw3lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728061904; c=relaxed/simple;
	bh=Wc12BS3NasrIry+uAPk9MjgqH3msxi+QthvkQTUoSdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qGjJLWGQbLPGX0v4rL0HhzIkMAYmlLKIqgrW9O5kG1XHLRxeD+WDAuEoUi2ux0ohDiZVxJqLHki1vBpLs23dg0Z25+Gkr37B926lyc3M8ebe1RrOGualvuAjAfav0xG9V4q342YLfKiX2FKhixwUYjpzynZu6/9yYPoqjHeN5Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=HrT7CNNe; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-71def8abc2fso314752b3a.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 10:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728061901; x=1728666701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=J4RqBBR2gTR1jLy3l2HoZvtWsqW9LXx1qQ79MVcSG/0=;
        b=HrT7CNNeEE3rUTJ0S2NCG5y5JH14cspVx50osGdvRaBRHkc3bz08rijHvdLvoAka6z
         b2qvN1UP7a70ynTdsV/5AJ/ZevtZWa3i/oMv0HDKF/1CC/9zkO9eT05vot9yu1D1ujFO
         LO5HFcjZyeyVaE1DqLAxt8TTN4Kp8ifrQB45E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728061901; x=1728666701;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J4RqBBR2gTR1jLy3l2HoZvtWsqW9LXx1qQ79MVcSG/0=;
        b=u94tJ+xOy5Xjp9C9Ra1w7lNK5XJFs8GwfJZG4qyyaeymkp/u+1ICEktmwlcqqSyyQC
         s3zWoXirvSm2y8hwKf4v2cfqLryEB4gRrBv4jqJsIiIcObrVWs+J8oznBwys58/l0Zh9
         pIwzQcvXQVs4bMzj5DVxAap9J1Q2X0H3aBZ8Gqut33eFz8C/yIqnKIoyrxGd2RrZGwaC
         Fv8uInoQn5FFxJgN4OD+mzqyhBDVysIvTTDdC7eunhqQmv+2f0VL2+wb8ODr3/JsM6zd
         IvZ04xwLRnlT58gaBEu5EOFa1pIfbMeOAOS1Qo7PeqcrOdM4pL+cPRDxoHBo2ZQH4YE4
         ruqg==
X-Forwarded-Encrypted: i=1; AJvYcCWARQ4BMHU+9merVkz1COb7+h0w4bRBn17+YiJn2Gr4sUUtyzxF2JA4OWvdwulfkjB/3/Q4sAa/8/6I@vger.kernel.org
X-Gm-Message-State: AOJu0YwR+dy3kgXQMMZmB0LSSxtoOlaYZwyfJITFTMpAW34iNZOf9XQI
	Ui3qNqbtRR5DI3d+AyFS4mFRvi5InuRmbGnBiOrI3cslOqn1y3/HMNzW4d3OVg==
X-Google-Smtp-Source: AGHT+IH4nWlAOkfOUKHYzla1Do/N/yEfEqh0e/w6l4PQAG784OWTsu0uqkDnXcb7xezeWYoz0PAcqA==
X-Received: by 2002:a05:6a00:2343:b0:70d:3777:da8b with SMTP id d2e1a72fcca58-71de2460338mr4505964b3a.25.1728061901134;
        Fri, 04 Oct 2024 10:11:41 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0d7e5bdsm84386b3a.218.2024.10.04.10.11.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 10:11:39 -0700 (PDT)
Message-ID: <333903e5-c899-4502-abce-07d5893f3427@broadcom.com>
Date: Fri, 4 Oct 2024 10:11:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mips: bmips: bcm6358/6368: define required
 brcm,bmips-cbr-reg
To: Christian Marangi <ansuelsmth@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>
References: <20241001152404.15830-1-ansuelsmth@gmail.com>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <20241001152404.15830-1-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/1/24 08:23, Christian Marangi wrote:
> For the bcm6358/6368 SoC the brcm,bmips-cbr-reg due to bootloader
> misconfiguration or HW bug from running the system from TP1.
> 
> A workaround is now present to handle broken system that suffer from
> this bug hence add the now required property.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202409251520.pE12GzHd-lkp@intel.com/
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
--
Florian

