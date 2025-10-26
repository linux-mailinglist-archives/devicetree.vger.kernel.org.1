Return-Path: <devicetree+bounces-231177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CCBC0B2E7
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 21:32:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 024453BF060
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 20:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98CF12FFDFC;
	Sun, 26 Oct 2025 20:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="X6QiNGDV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f99.google.com (mail-yx1-f99.google.com [74.125.224.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9462FF15B
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 20:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761510189; cv=none; b=QX4sJndfGMEXXP0fSUjdXWEACl+vAlgvHY31Xc642TSKtZNSa5RuSP8PILy2VuMvLSvGPWVUBNLIIbWeSLQ3rUIoeDbuJ/LFuzslSj7jXGa/li9XXWWQ3/KOMai8564YFzBdVUXNeUQnxV2ORwK01SuPmhmOWy6YhZp80Oyyae8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761510189; c=relaxed/simple;
	bh=rRQ1+ntCz6compsldbj49MSoD9DCOxn7CudapH/7LFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YZOpnGdbEo0efP7hvxkCOFrQYulIK9bphJOAmziskmRZycKzZKMost8VwDa6CGsJMIhPJxBqSYxPD+thlPtiXDrwrEsyVSXl3AsPUQirkHspspoWT4LbcAkvwlSayvVz5/2+k/w8EmqxNaPy1mWEcIdNC+W0zz7ipceUQohKb10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=X6QiNGDV; arc=none smtp.client-ip=74.125.224.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yx1-f99.google.com with SMTP id 956f58d0204a3-63e3568f90dso4059233d50.0
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 13:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761510187; x=1762114987;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tv4EJsASL1wPUSDcCCUa8FCSZ/HO6INTApnbMDnxMQ=;
        b=BTQSqSm4ojjlrZQ/jEq8yJGlNG2FzI17+X7cIipTe1RDAkHjaE8fl9iL3pZwxXC/Hi
         9I+/G+2h1Tpk1Yzixh1EF6Ap033ZNY0izj51P3XqiRKPRdCxLSu9TKdfL9r+n7PpHP+n
         2/WWihXCAO5759ERvmv2nD3EDlsqEm5gdIAG5Ed6MVs8FkFSoT9sYN2Yx8JzMxg4jxXc
         It4sUaFfS6o6z3x49ZYUUMzMZT82uNpDqNjMrF3pmAklswQIJgeySjWaxyw+gBbs13wE
         tlqWetFseGWiEpUm1bu1BnHMzr6aidwU779A6ttflPy6OmRek53PKhwqEnOYNoh+hQzC
         k+vA==
X-Forwarded-Encrypted: i=1; AJvYcCUITgD61BhlCJMtsyTm48FAAJA3ztaR7tYyBPUn2s9Gr0wTi0wMxPqkORPHxUrzXmKpG7IYEj0lTFm9@vger.kernel.org
X-Gm-Message-State: AOJu0YyhuOEmrkeT0IsKT5HvJGHypDwMNZHddiF+LK7twF+C4JqHCjgI
	PQE1HpPIZV93/lcZKrfWQq1enOTsNKm+oxAgeVbvNdwsibBJOHlRXbLr5UlvxTS+8dXGi8j5F7H
	0O8CHlTsd/YT+70iiptEbm8HyAe16jWuju0QVFBUlpDTes7/glzh71n929unLPdwj0eAMt5vML3
	MFxMVi9TKPeaib7YBODNB8RlW8h9KOWEpvStYQBkhYm6xgnDL2ZH0Mfiw5p21MY6WuYBr4OP+Zx
	T+6xQt8NUYu3BaWVPMjgQ==
X-Gm-Gg: ASbGncuBK5aXf8qwcwb84qeNcDaIu0MZ7oPnU+5VFbu71p5mtdn/npS7BsEHNmCBTpU
	cxgRI7tMv3N4D9fc9UmQ+JYH4u24tV5zTdMuicopOCVlIbICelWgMBjp7Ybl2pEyJupnXgEpG61
	RSZMVFf7Yx3sdNleKC76Fi9BT3Bcs5qDwjMTuUexdmaA9Ha+Rjej1YUf8lyP8/8jqhdTitxX+Gr
	GXXuHzy1z8UXupf4UXthFHloEUEFFibJBE2pHgbl/jAHZ4aY9GDt5ka2/JzK2i432MiCWZKyw2k
	2x8wG/NMCccBCYTD2OThVm2eu4pM/C/CQYKkniqfAdOxdC1XZkZDDJ1tHaJf1NNlz+uoQ424Iql
	st1+ceH02UMMZANbR2Aq0Wbe0kHeSES4/yd0BCupD9pbPPIOcrir8zZFVCoqjj2OQnmAUKMzBZp
	elrdNgn8xa44a81FKNX68tpEmUA3eosr8kRMh5zaWO8A==
X-Google-Smtp-Source: AGHT+IHqxxvoi8xYtvsrxUGnp5hIt612cd2/3u+uufalUi97JsFrx2K2s5lc6Q4AM3KeW9AmzyofBAxF1Jc8
X-Received: by 2002:a53:bc8a:0:b0:63e:17d8:d977 with SMTP id 956f58d0204a3-63f378a4fdcmr8480661d50.41.1761510186734;
        Sun, 26 Oct 2025 13:23:06 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-122.dlp.protect.broadcom.com. [144.49.247.122])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-785ed146afcsm4376977b3.1.2025.10.26.13.23.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Oct 2025 13:23:06 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62ebb4e7c7so2920150a12.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 13:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1761510185; x=1762114985; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8tv4EJsASL1wPUSDcCCUa8FCSZ/HO6INTApnbMDnxMQ=;
        b=X6QiNGDVTXSUOgSPUyhv3vUrZ1N7+XRgy8mZ3cWxsnEL2M2STJXaZEBaJ70ktOnElw
         R5XQdzBuUndDXz186WtRBWykVcLiCP2qpjQGGct2ou0OcDiE3c6bBbOiHOlJZhM7hMDO
         5/Ec20eLbSpG3JBlUWEnFxxqJvswdE0uUppa8=
X-Forwarded-Encrypted: i=1; AJvYcCVrbnEb5/dNYkKyD9jQrefBA1zeV3GYTj2dLwzl+VXxNi4wWZx92Q5QyW02KjxwdYdGDVGBk3kD/I25@vger.kernel.org
X-Received: by 2002:a17:90b:38c6:b0:33b:c853:2d95 with SMTP id 98e67ed59e1d1-33fafc8a042mr16326548a91.33.1761510185394;
        Sun, 26 Oct 2025 13:23:05 -0700 (PDT)
X-Received: by 2002:a17:90b:38c6:b0:33b:c853:2d95 with SMTP id 98e67ed59e1d1-33fafc8a042mr16326533a91.33.1761510185004;
        Sun, 26 Oct 2025 13:23:05 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7f6040sm5951572a91.16.2025.10.26.13.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 13:23:03 -0700 (PDT)
Message-ID: <c379087c-1702-44b7-a890-beb5b77d794b@broadcom.com>
Date: Sun, 26 Oct 2025 13:22:57 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Add watchdog support for bcm2712
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Stanimir Varbanov <svarbanov@suse.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, linux-pm@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Lee Jones <lee@kernel.org>,
 Willow Cunningham <willow.e.cunningham@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Saenz Julienne <nsaenz@kernel.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250917063233.1270-1-svarbanov@suse.de>
 <CAPDyKFpus05RAkYAoG7zjyvgAJiuXwRt3=z-JB5Kb7mo0AK4vw@mail.gmail.com>
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
In-Reply-To: <CAPDyKFpus05RAkYAoG7zjyvgAJiuXwRt3=z-JB5Kb7mo0AK4vw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 10/13/2025 4:08 AM, Ulf Hansson wrote:
> On Wed, 17 Sept 2025 at 08:33, Stanimir Varbanov <svarbanov@suse.de> wrote:
>>
>> Hello,
>>
>> The following patch-set aims to:
>>
>>   * allow probe of bcm2835-wdt watchdog driver for bcm2712.
>>   * prepare bcm2835-power driver for enabling of v3d for bcm2712.
>>
>>   - patch 1/4 is preparing bcm2835-power driver to be able to
>> control GRAFX_V3D pm-domain. This is a prerequisite for the follow-up
>> patch-set which will add a v3d DT node for bcm2712 (RPi5).
>>
>>   - patches 2/4 and 3/4 are adding bcm2712-pm compatible in MFD driver
>> and update the dt-bindings accordingly.
>>
>>   - patch 4/4 is adding a watchdog DT node for bcm2712.
>>
>> Comments are welcome!
> 
> This looks good to me!

How do you want to proceed with merging those patches? I would assume 
you would take patches 1-3 and I would take patch 4.

Thanks!
-- 
Florian


