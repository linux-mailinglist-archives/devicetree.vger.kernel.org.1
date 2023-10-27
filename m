Return-Path: <devicetree+bounces-12518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9173A7D9C4D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D99BB207E8
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 499C837174;
	Fri, 27 Oct 2023 14:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WjuUPCwE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D2D18654;
	Fri, 27 Oct 2023 14:55:59 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A375012A;
	Fri, 27 Oct 2023 07:55:57 -0700 (PDT)
Received: from [192.168.1.90] (unknown [188.24.143.101])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2DF43660732A;
	Fri, 27 Oct 2023 15:55:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698418555;
	bh=pC/2ckA4eIWbV5Hbrpc+VBynF0iUF/+d8KlgFpe55xM=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=WjuUPCwE1Gcpq9PFx2gnR501PN6fY7fzv2/6mj25FJztfY1Z5J7kyJ4e/nNUqjIy1
	 uO/ysTkxYiMaLCVl1XL3eK5jy15uni5zBxT3UqwsgPYz2xxLRvJQ5QRScJEPIaA8Ll
	 44lkQ5GoWzJEYt6jyickaJfc8VqSgUJOXLGCoKnNy8nlY0V18RATa1ZfQN2ZOjBxdv
	 drnGacZUnH3+E+HN9iwkp72SN41/AnYxiNsnFaDFHN2lCA6xKajSDEuVUABwhkNIkl
	 jmkbd3StyhrBWPng+/Q0PdUm3rO/WC+PgtgjSrLfgbxeAFhkbLCpg8ybkW2rVd/yUo
	 NFU+44OB0VAIg==
Message-ID: <d8ebed94-fd1b-4ee5-ae04-f8b6f66cd5a6@collabora.com>
Date: Fri, 27 Oct 2023 17:55:51 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/12] dt-bindings: net: Add StarFive JH7100 SoC
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 Yanhong Wang <yanhong.wang@starfivetech.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com
References: <20230211031821.976408-1-cristian.ciocaltea@collabora.com>
 <20230211031821.976408-8-cristian.ciocaltea@collabora.com>
 <Y+e74UIV/Td91lKB@lunn.ch>
 <586971af-2d78-456d-a605-6c7b2aefda91@collabora.com>
 <Y+zXv90rGfQupjPP@lunn.ch>
 <cfa0f980-4bb6-4419-909c-3fce697cf8f9@collabora.com>
 <Y+5t4Jlb0ytw40pu@lunn.ch>
 <a824a7f6-0a62-7cab-180b-f20297311a2b@collabora.com>
 <Y++BZWhJm1LpdrA9@lunn.ch>
 <350b400f-210a-a2cf-0828-25beb1b93a43@collabora.com>
In-Reply-To: <350b400f-210a-a2cf-0828-25beb1b93a43@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/17/23 17:25, Cristian Ciocaltea wrote:
> On 2/17/23 15:30, Andrew Lunn wrote:
>>>> I would actually say it shows we don't understand what is going on
>>>> with delays. "rgmii" is not every often the correct value. The fact it
>>>> works suggests the MAC is adding delays.
>>>>
>>>> What value are you using for starfive,gtxclk-dlychain ?
>>>
>>> This is set to '4' in patch 12/12.
>>>
>>>> Try 0 and then "rgmii-id"
>>>
>>> I made some more tests and it seems the only stable configuration is
>>> "rgmii"
>>> with "starfive,gtxclk-dlychain" set to 4:
>>>
>>> phy-mode | dlychain | status
>>> ---------+----------+--------------------------------------------
>>> rgmii    |        4 | OK (no issues observed)
>>> rgmii-id |        4 | BROKEN (errors reported [1])
>>> rgmii    |        0 | UNRELIABLE (no errors, but frequent stalls)
>>> rgmii-id |        0 | BROKEN (errors reported)
>>>
>>> [1] Reported errors in case of BROKEN status:
>>> $ grep '' /sys/class/net/eth0/statistics/* | grep -v ':0$'
>>
>> Thanks for the testing.
>>
>> So it seems like something is adding delays when it probably should
>> not. Ideally we want to know what.
>>
>> There is a danger here, something which has happened in the past. A
>> PHY which ignored "rgmii" and actually did power on defaults which was
>> "rgmii-id". As a result, lots of boards put "rmgii" in there DT blob,
>> which 'worked'. Until a board came along which really did need
>> "rgmii". The developer bringing that board up debugged the PHY, found
>> the problem and made it respect "rgmii" so their board worked. And the
>> fix broke a number of 'working' boards which had the wrong "rgmii"
>> instead of "rgmii-id".
> 
> Thanks for the heads-up.
> 
>> So you have a choice. Go with 4 and "rgmii", but put in a big fat
>> warning, "Works somehow but is technically wrong and will probably
>> break sometime in the future". Or try to understand what is really
>> going on here, were are the delays coming from, and fix the issue.
>>
>>        Andrew
> 
> I will try to analyze this further.

As the non-coherent DMA work this series depended on has been completed,
I started to investigate further the "rgmii-id" issue.
I couldn't spot anything wrong in the Motorcomm PHY driver, but
eventually got this working by adjusting rx-internal-delay-ps.

Will do some more testing before submitting v2.

Thanks,
Cristian

