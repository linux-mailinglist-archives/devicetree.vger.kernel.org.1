Return-Path: <devicetree+bounces-12688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DBB7DAE83
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 22:24:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D67FB20CB4
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 21:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B347D11C97;
	Sun, 29 Oct 2023 21:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="abdE6pR/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5552B33C7;
	Sun, 29 Oct 2023 21:23:55 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84575D9;
	Sun, 29 Oct 2023 14:23:53 -0700 (PDT)
Received: from [192.168.1.90] (unknown [188.24.143.101])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 679A566072BB;
	Sun, 29 Oct 2023 21:23:50 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698614631;
	bh=SGq6QPRGIBNn7gbJ2EgKHoDNWHX9rvAA0k7+HWJtVnc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=abdE6pR/zA982y8K9cNxgC1xlpp75ZzB8caxA2ixKDYqj+NQC6wKEfhwy4PQfUYyY
	 j7WDCREK3Wzhi4Ti+raoR5XlLz7rgd52QgBzcnc0FcTl4IXNxPMCtbx+FoFLPGFche
	 bHGVyDAabwMjuh+DsixN6oiDYSjCYYzF46mgU7MGiViIPrNQ9QzlwdPvR2AAZXOuxj
	 BJsXPR/uB7cYb23tyMWk9rCrtc2ulZZUWUTaa7ZBHQDpjpXap2Q7DPhDaSYOZlZTLt
	 eo+eLURddzhlIk5zq1l7hsnLgH1veVvb72E9mbnnvTfqFS41c1xEExhuYJwsOSWKIW
	 LVkKtidAvTyrg==
Message-ID: <0ff7a905-d8f2-401b-a0ff-47947d12ce05@collabora.com>
Date: Sun, 29 Oct 2023 23:23:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/12] dt-bindings: net: starfive,jh7110-dwmac: Drop
 redundant reset description
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Samin Guo <samin.guo@starfivetech.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
 <20231029042712.520010-4-cristian.ciocaltea@collabora.com>
 <ad023e4d-51d2-4fba-bf85-0c8ba358ab39@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ad023e4d-51d2-4fba-bf85-0c8ba358ab39@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/29/23 13:19, Krzysztof Kozlowski wrote:
> On 29/10/2023 05:27, Cristian Ciocaltea wrote:
>> The reset description items are already provided by the referenced
>> snps,dwmac.yaml schema, hence replace them with the necessary
>> {min,max}Items.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../devicetree/bindings/net/starfive,jh7110-dwmac.yaml       | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
>> index cc3e1c6fc135..44e58755a5a2 100644
>> --- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
>> +++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
>> @@ -46,9 +46,8 @@ properties:
>>      maxItems: 3
>>  
>>    resets:
>> -    items:
>> -      - description: MAC Reset signal.
>> -      - description: AHB Reset signal.
>> +    minItems: 2
>> +    maxItems: 2
> 
> You must also update reset-names. They must have same constraints.

reset-names explicitly lists the items and we need to keep them as such
because the order is not fixed, i.e. PATCH 1 allows using 'ahb' instead
of 'stmmaceth' as the first (and only) item.

        reset-names:
          items:
            - const: stmmaceth
            - const: ahb

Thanks,
Cristian

