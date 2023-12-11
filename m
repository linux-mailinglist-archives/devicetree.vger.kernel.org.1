Return-Path: <devicetree+bounces-23898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6725C80CA25
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7848B280F3F
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2CF3BB5B;
	Mon, 11 Dec 2023 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdcVWn5+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A273BB42
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:47:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4DCAC433C9;
	Mon, 11 Dec 2023 12:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702298853;
	bh=h93HF6RRAegCLvVse8r0eU7pTOKa/Pg1hLeWvROiAYc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mdcVWn5+HL6So0byxHJ3o2z96cnxvv0vvapgsXh1/CScYp9DsNQQTlHzphF0K/So0
	 NG2hXpNjBssHSXtJ/OuC34LBQBB9+cP5WJ7IXYaWhnYPK6rc3xSpokQoOvrG3xkmwc
	 QmJBdpzEuFKXUr0kyoFwz+lue86zfD8PsUsbMeR8HJ2x6IXO3Iis+NgWa9iXj1sHYg
	 9SlBHnd6BetpWFrM7YIDGrSEmC1YY6HlrvRAMG5WCz2y5iVqw8MYFjxsjcUcSgHmR1
	 /bK3vKzKq7drl4Qd/eqqww6ACG2DZgFVT2yT0FBIXMFcm0c22Kd9IqbNAtFfaA8OA1
	 Op+f1epjAKB4w==
Message-ID: <1274b111-09f7-4d90-ae4d-cf7865fa8550@kernel.org>
Date: Mon, 11 Dec 2023 14:47:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, s-vadapalli@ti.com
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-5-sjakhade@cadence.com>
 <20230724-shampoo-junior-f9e0bb095668@spud>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230724-shampoo-junior-f9e0bb095668@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 24/07/2023 20:56, Conor Dooley wrote:
> On Mon, Jul 24, 2023 at 05:00:01PM +0200, Swapnil Jakhade wrote:
>> TI J7200 uses Torrent SD0805 version which is a special version
>> derived from SD0801 that has an additional input reference clock.
>> Add a separate compatible for TI J7200 platforms.
>>
>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
>> ---
>>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> index ddb86ee0cebf..e3a1efd61033 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> @@ -20,6 +20,7 @@ properties:
>>    compatible:
>>      enum:
>>        - cdns,torrent-phy
>> +      - ti,j7200-serdes-10g
>>        - ti,j721e-serdes-10g
> 
> Should the number of clocks not be restricted dynamically based on the
> compatible, since only the 7200 requires the extra refclk?
> 

Yes, this is a good idea.

-- 
cheers,
-roger

