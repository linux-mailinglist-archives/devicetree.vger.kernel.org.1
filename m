Return-Path: <devicetree+bounces-213004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4B0B44638
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 023877A9E73
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CF426E17F;
	Thu,  4 Sep 2025 19:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MSBL8iES"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f98.google.com (mail-vs1-f98.google.com [209.85.217.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CEB33997
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757013316; cv=none; b=peX/xczPkt8YX11FKMo4YQ8htb8LcJSkxxUoK7zQP82RJ+9/HJI0z26rUtQZR4TPf/u8WLCnvstEuyC4rt9xMh/6wlWjiLo1beFdIJaMgLnRmTcdEI2HUYdhcEKfTdxMfgmyFi2+vhG3LYtanD77AtLwa/Z0TZtCUa+iwd8u1sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757013316; c=relaxed/simple;
	bh=6V792/1g2eWbu3RbgHBg2ukBn3hGT4RGTI4ETdhPQAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c9vztuaM1FNhD4xPyj1xrEN+uFEgg2G9dG1Dc4KbsxRr7jidzn523697xH21rO1AZUQs6GyKw0X01ZIILqWOqhdtMKAZHk0aOf7TDHsEQlGHnThuX8LBVdbQp2XOZ7Lo6G3xtSkN31+Lik2QOwQzzCopnn4zFgI8qhdkzQKArL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MSBL8iES; arc=none smtp.client-ip=209.85.217.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-vs1-f98.google.com with SMTP id ada2fe7eead31-52b7402151eso806268137.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757013313; x=1757618113;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZiieBGzgeTWDXPUpLFCSn69qavVvYJKylSI1VGv3c8=;
        b=pCf/rFYz6koJMgZF96ZMKFgIyU0djP8WmKKfmegx+Jek71Vhb2lxkoD8OGhhObFkPT
         sb2RhQpVzsZvb4l9ORyfvNwRW8Xwc0D9zh5Yx8f6CLfDz3Z697HvCwG0V/i5wZ64FEHY
         hyv36bHfZi4EXULxDjlNEqTFGb0K8gVn+UPJU8aZloNK42JXAel56krMOjJOq8IipJmB
         er/kJS35UoD5Zws/LwAIHjbvSeEPqm7Q0SrKi/UlaOP5g2qidEl2S0HSXUG3szijSGy5
         kMCrmKX+OV8QK7MYvWjHvXw6lg4qm+0RpJ9Rb43IrY/zv3dDs15w7VCRpxXtpYE9gcOl
         u7Jw==
X-Forwarded-Encrypted: i=1; AJvYcCWbyNr1UTaOayDsFOBMiKGDN5++V2arNRdlEe+Ye2JAUIhw1PMdjp2uLh84swqUuCahsfTD9eeDz5HF@vger.kernel.org
X-Gm-Message-State: AOJu0YzaGGL1ixygSGYZYG+uN5qA82jAzMIBoMJAC9l+Ttdot+Cy+KQW
	ElvlVaGRDUUxmpY2+i/I+dS6U1onrBnAXpOig3YNpESkwm/HkEGZc3SIoA2By8rPQogRiE07NOp
	YDgYpjuDGQVSWHtwfh4WOEXxybL8CA5agmSyJVh/+QF5lMpE0kycmJupT0o+oJCTsSDSKHFYE0p
	OtQSzt144gGiefVrpvHU/VpLfEGycZvyyLuUJuT3Dke9fcIhdHUlc+Xr1Cqv0qZZsOUptmE09WK
	6RXGDJMFMgJo+kS9tidsw==
X-Gm-Gg: ASbGnctjcaMkdpfAK5OdOLi6WqzGJvJF9u0xR21+OlmT/+RRyCC18WEngsoEO5Q+vUo
	lJqqFP4T28W0XgNUEyh45XrvddKLoq5a62xsDrErg/4v9B3erC0PVVjN9iSJJfWOBZMdSvpC/HD
	0Iatqgv92FFMU1nsnLm3H3TfHk7kW1/lfUD0gL/ACP6bRVb971X1wgN2zIqglT65aKPvyBWi4wU
	7m4Zx3kauknVStbUryawjEylnJcwFeEDFCU6W3BNwonNuW+FHCg4zyCZAIRqZEwDx0AwIfiTXgb
	BNffxJ91jy2TVn6gZiBEWG5agJBxPwkVt32JbZRsL3sMZdUUqIXFy2S/5ABAjd7+2SvjpzioHnS
	U0Er31ipJxdGcj1StHGjtErd/10pw
X-Google-Smtp-Source: AGHT+IF1FnhEZqZ2wgOQtaEOobxXq3DxhGBLPAmf5qUYz0n+IaKjFqYWv+xmP7xSnBVTNG6PrVWWeTmI8iFF
X-Received: by 2002:a05:6102:3751:b0:51a:4916:c5ec with SMTP id ada2fe7eead31-52b1c34fdf9mr7132284137.28.1757013313089;
        Thu, 04 Sep 2025 12:15:13 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id ada2fe7eead31-52af1212c63sm1715283137.3.2025.09.04.12.15.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Sep 2025 12:15:13 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-80593bfe0a2so272603085a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757013312; x=1757618112; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eZiieBGzgeTWDXPUpLFCSn69qavVvYJKylSI1VGv3c8=;
        b=MSBL8iESk0rbhzgSQtZKBVRzA76Zr54y54aM8NIojVdcOudM0e1CmsGdXqyaVKb6ap
         RHM8Hiia6NL8YXAPHq6y6eZt4VRs6E5VD+574JYK4Oit1bSWJdACpFFVgToO57lnO5um
         hTaFXg/QjEx/+xrZQQrPU69Jn4DUpoxZBHJsw=
X-Forwarded-Encrypted: i=1; AJvYcCXk/hi4ppI+69QOFqFJ8TNwKMUk3OhS7+ZKXrHeD6ekYlwGRhLgphf9A+HT/Q81Chr1davPKp+VPZfz@vger.kernel.org
X-Received: by 2002:a05:620a:45a3:b0:7e9:e67e:d068 with SMTP id af79cd13be357-7ff27b1f7e5mr2273630485a.25.1757013312175;
        Thu, 04 Sep 2025 12:15:12 -0700 (PDT)
X-Received: by 2002:a05:620a:45a3:b0:7e9:e67e:d068 with SMTP id af79cd13be357-7ff27b1f7e5mr2273620085a.25.1757013311273;
        Thu, 04 Sep 2025 12:15:11 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-80b105e1ce6sm307324985a.67.2025.09.04.12.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 12:15:10 -0700 (PDT)
Message-ID: <c973d935-579b-42cd-bf92-618d9f9d4eaf@broadcom.com>
Date: Thu, 4 Sep 2025 12:15:06 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v4 2/3] pinctrl: bcm: Add STB family pin controller driver
To: Linus Walleij <linus.walleij@linaro.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 wahrenst@gmx.net, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
 Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
 <CACRpkdY82ohgX_7YP16DJrzDvxMHcSu3rW+UtEmrP0AQiD_Exg@mail.gmail.com>
Content-Language: en-US, fr-FR
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
In-Reply-To: <CACRpkdY82ohgX_7YP16DJrzDvxMHcSu3rW+UtEmrP0AQiD_Exg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 9/4/25 12:06, Linus Walleij wrote:
> On Thu, Aug 28, 2025 at 2:45 PM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
>> From: "Ivan T. Ivanov" <iivanov@suse.de>
>>
>> This driver provide pin muxing and configuration functionality
>> for BCM2712 SoC used by RPi5. According to [1] this chip is an
>> instance of the one used in Broadcom STB  product line.
>>
>> [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com/
>>
>> Cc: Jonathan Bell <jonathan@raspberrypi.com>
>> Cc: Phil Elwell <phil@raspberrypi.com>
>> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
>> Reviewed-by: Phil Elwell <phil@raspberrypi.com>
>> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> 
> Patch applied!
> 
>> +config PINCTRL_BRCMSTB
>> +        tristate "Broadcom STB product line pin controller driver"
>> +        depends on OF && (ARCH_BRCMSTB || COMPILE_TEST)
> 
> I changed this to (ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST)
> because Peter Robinson told me the Pi5 needs this driver too.
> See commit 1d99f92f71b6b4b2eee776562c991428490f71ef for details.

Good call, thanks!
-- 
Florian

