Return-Path: <devicetree+bounces-23897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A04380CA1D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:46:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 199E3B20E5A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16EE3BB2B;
	Mon, 11 Dec 2023 12:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT1k33/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862AD3B79A
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:45:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AF77C433C7;
	Mon, 11 Dec 2023 12:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702298754;
	bh=ivCyWneT5D6OkwTiQlgPLeM2KahqPmV3Dd/YkZIWR90=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jT1k33/QV5lRpAC26Wj4WrI9G81GxHpd6PL453FHed6DtJ1fTqcGg5T+MqIajLKAU
	 2mEI9Bm58kocUf8KdQxEiUW4rRyg6OqCwrssHqhEB0zi3ZDOLiTTO7c4fHZvEbHQ8k
	 aljSSRFTvKzezgYXMg7RZyo7XZx5lX0IxuP+fJZnaVlU7MKW+kgkHjtalO8DcS5pWS
	 YBHHjGpjgHsnwsmRroAz/6wJix07j813rOyBk3MgYqHNvDlF/yGKAS9SF/PizVq3ER
	 pIRbVwKn5p7SKa3vjb0acrREigobmnz00UmTeX3NzYS0x2urW3go62JaQCxyNdyBvC
	 H2CYpMJ+y9S8w==
Message-ID: <13c7fa70-ec60-44a7-aba7-5c4b0e21a755@kernel.org>
Date: Mon, 11 Dec 2023 14:45:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-torrent: Add second
 optional input reference clock
To: Conor Dooley <conor@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, s-vadapalli@ti.com
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-2-sjakhade@cadence.com>
 <20230724-unhappily-promptly-b25c7e42504d@spud>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230724-unhappily-promptly-b25c7e42504d@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Conor,

On 24/07/2023 20:53, Conor Dooley wrote:
> On Mon, Jul 24, 2023 at 04:59:58PM +0200, Swapnil Jakhade wrote:
>> Torrent(SD0801) PHY supports two input reference clocks. Update bindings
>> to support dual reference clock multilink configurations.
>>
>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
>> ---
>>  .../bindings/phy/phy-cadence-torrent.yaml     | 23 +++++++++++++------
>>  1 file changed, 16 insertions(+), 7 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> index dfb31314face..ddb86ee0cebf 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> @@ -33,16 +33,25 @@ properties:
>>  
>>    clocks:
>>      minItems: 1
>> -    maxItems: 2
>> +    maxItems: 3
>>      description:
>> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
>> -      Optional Parent to enable output reference clock.
>> +      PHY input reference clocks (refclk & refclk1).
> 
> "refclk" and "refclk1" don't seem like great names. What is each one
> used for & should refclk1 be renamed to match its use case?

All PHYs need one refclk input. "refclk"
Some PHY variants can take a second refclk input. Both are refclks so it was
chosen to add an "1" to the name to the 2nd refclk.
Please suggest if you have a better idea. Thanks!

> 
>> +      Optional Parent to enable output reference clock (phy_en_refclk).
>>  
>>    clock-names:
>> -    minItems: 1
>> -    items:
>> -      - const: refclk
>> -      - const: phy_en_refclk
>> +    oneOf:
>> +      - items:
>> +          - const: refclk
>> +      - items:
>> +          - const: refclk
>> +          - const: phy_en_refclk
>> +      - items:
>> +          - const: refclk
>> +          - const: refclk1
>> +      - items:
>> +          - const: refclk
>> +          - const: refclk1
>> +          - const: phy_en_refclk
>>  
>>    reg:
>>      minItems: 1
>> -- 
>> 2.34.1
>>

-- 
cheers,
-roger

