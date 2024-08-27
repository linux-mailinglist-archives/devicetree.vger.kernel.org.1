Return-Path: <devicetree+bounces-97060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 977C59608B2
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 13:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4149C1F2384B
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 11:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB0E1A0718;
	Tue, 27 Aug 2024 11:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="HZhfn8Zh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [164.92.70.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8541A01AE
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 11:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=164.92.70.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724758187; cv=none; b=JLM/9LDwrDkNEifxyNas3QC6jzQBa6oWjtSc/HnaZJHSS74b/6g54/XjaANXsBX3sKgkmyKSm2NtaaoTpFF2Gkmi3ioYbQI+GSpsdxPlrUFfZLjFfpl9titSl5L48KFhIZmF0rq/qzcawe5mfrI5jtM97ZQStG9O2Xcn9P8zi08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724758187; c=relaxed/simple;
	bh=jVubUo4oWTPVIjpMQG9xOItjx9kQJh+7YT/BPKlBiY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SqTp+1wY8vK0CURapCToFBcVxGPhtbOwsi3K9bXvPTvlQl5BXtv690V6BuBsoBtLRV6nULchFTVSYAsImS/q2sRth1B0bfwPbpPq9O6n0z4HTJT6tOYOrmp4njj6/nI4/AYsLkCkCPys2Gvy8x2sy2lD1ko9iO6QTGVyTus7MoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=HZhfn8Zh; arc=none smtp.client-ip=164.92.70.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724758181;
 bh=oz/rd4e08jz+p+5PwAy+8XVahhTtzgw1n8icFlOoc84=;
 b=HZhfn8Zh+Fcol542UqY23Mzj3a2wieHtcSJ1wL/6gk5ooOjSpfeWU9UER8wDObRjJJfHGMiii
 YLAO7WEylhlEYKaCZB3a2hnWZupXBq6HY3/nkFgEbTGWXLpzPhJGLWvxtgrodEGyrL3nk95W9oS
 kvbQkeEwCcoBpjrRqFfloU9iQJmxK7UkoIeJsU4ZossLdheANSH7TrbQGWNG0kr/Ro4rD3qIi2s
 gPYB1Kzf43AZccR3zzXKqIpcQzPeDHFp9fRfwyC99pLhG8N5egD03GLj1HH7V41zscLzbjbRRHm
 x9voG4/xfjEo+GcqJ/wLD0EJkyyc6PNP15ZP/Fg+Sg4g==
Message-ID: 1ec02fa5-4b11-424b-a595-c715b62d105e@kwiboo.se
Date: Tue, 27 Aug 2024 13:29:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
To: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240826205538.1066103-1-jonas@kwiboo.se>
 <66ccebeb.d40a0220.356790.58caSMTPIN_ADDED_BROKEN@mx.google.com>
 <b69e5a0a-acf9-412c-90b4-ebe00c7e07d4@kernel.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <b69e5a0a-acf9-412c-90b4-ebe00c7e07d4@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66cdb8a4c498660ae9674ece

Hi Krzysztof,

On 2024-08-27 08:52, Krzysztof Kozlowski wrote:
> On 26/08/2024 22:55, Jonas Karlman wrote:
>> The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
>> RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
>> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.
>>
>> Add devicetree binding documentation for the Hardkernel ODROID-M1S board.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index f08e9f2f5dfc..9e29a5ecc94d 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -598,6 +598,11 @@ properties:
>>            - const: hardkernel,rk3568-odroid-m1
>>            - const: rockchip,rk3568
>>  
>> +      - description: Hardkernel Odroid M1S
>> +        items:
>> +          - const: hardkernel,rk3566-odroid-m1s
> 
> hardkernel,odroid-m1s
> 
> Why adding SoC name to the board? Can it be Odroid M1S with RK3568?

No, the M1S (rk3566) is a variant of the M1 (rk3568) with less features
and the smaller SoC package, fully agree that hardkernel,odroid-m1s is
better, will use it in a v2.

I mainly wanted to keep it consistent to other Hardkernel Odroid boards.
- hardkernel,rk3326-odroid-go2
- hardkernel,rk3326-odroid-go2-v11
- hardkernel,rk3326-odroid-go3
- rockchip,rk3568-odroid-m1 (hardkernel,rk3568-odroid-m1)

If you agree to a vendor prefix change of rockchip,rk3568-odroid-m1,
maybe we can also drop the soc name from that compatible at the same
time? E.g. change it to hardkernel,odroid-m1.

Regards,
Jonas

> 
> 
> Best regards,
> Krzysztof
> 


