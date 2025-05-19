Return-Path: <devicetree+bounces-178601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7268DABC526
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 19:04:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B254817F0A2
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F647288520;
	Mon, 19 May 2025 17:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="P1y2lULf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D4C2874F8
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 17:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747674238; cv=none; b=nFviympArWpmoePOFOUp5bWpz2hLXqCHzP1oZEbMixsUgwHozqsAcNoJ61Y5bfnH4sZa4brngorkq1ucem8FMr2r2GNqRNkRUWQo3lLBLC+AN6DEveAkVg0IVdfWWlJbwHcEWznv1SyKTFL/vMFJGJ2Gdqk6OzeZsaesKz/dTkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747674238; c=relaxed/simple;
	bh=2SS1JDECgAZ7wyOLDUyXlv5e8y/+ai9XPAapwG9ryMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lGo9jUxVvN5r6n7WPEIy7NNViXC4M/FspEPfXkUZuwRRm2XD3LqrUe0ycDX4Y+WMlZXtR8lACMmnydR1E4K1K/m5+WDecQS7o1oWCBbth2Rn4LDBEXOGxXynZ77gE65uw/duGvgflzhStGv1c1BItX2DJBQOlFL5V2ZMulbE22c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=P1y2lULf; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1747674236;
 bh=clyOHWY2IVfI9AZJ05BeTXpQUTL0uNha47hEQW+o2gA=;
 b=P1y2lULf3ayqzJy2zA2pQN1gBzUy4QJiYE31wMIpLhW5KRk4Oq6YVXM0tqilMKrbvSrJwCfKt
 eMzK6fusaUmq/9Qp5RAUjfph9ME87E47RVZBEftH53PAhjJdcaLQbEIrlqwWaBCc0Ami8b3RMLf
 L4MXiCpQ6GT6lrJm/dkEH7+rPSRfa8wfM24KLcxfKmjK49qD8xzlwZbj50QGhY+P4HydygL+f/b
 kjPqY+YK5e0hifwf20wWxEK10XfKOjGtyIZ3H26xH07xL4CPk1K1OFo90gc+RqCTqOhwETOOXTx
 sRvROl/4n9Auo8q4ZeL5n8eK3OVmnUV2+lpFEzQJqY4Q==
X-Forward-Email-ID: 682b646ef094abf9f55cc97f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <2d0524a9-50ff-4b49-bee9-8158c4c5b88b@kwiboo.se>
Date: Mon, 19 May 2025 19:03:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a
 power-domain
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
 Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-6-jonas@kwiboo.se>
 <20250519-caress-traps-f61f0c6067b4@spud>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250519-caress-traps-f61f0c6067b4@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Conor,

On 2025-05-19 18:12, Conor Dooley wrote:
> On Sun, May 18, 2025 at 10:06:52PM +0000, Jonas Karlman wrote:
>> The commit 7e856617a1f3 ("dt-bindings: mmc: Add support for rk3576
>> eMMC") limited use of power-domains to Rockchip RK3576.
>>
>> Remove the power-domains: false to allow use of power-domains with more
>> controllers, e.g. with SDHCI on Rockchip RK3528.
> 
> Meanwhile, you're allowing it for all devices, even ones where it is not
> valid. I'm not keen on that.

All Rockchip variants technically belong to a power-domain, not just the
RK3576. E.g. for RK3588 a PD_NVM0 domain (not described in DT), for
RK3568 a VD_LOGIC ALIVE / BIU_SECURE_FLASH idle-only domain, and as
shown in this series for the RK3528 the PD_VPU idle-only domain.

Any suggestion on how to best allow describing these links?

Regards,
Jonas

> 
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> index 5fb347167004..f882219a0a26 100644
>> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> @@ -120,10 +120,6 @@ allOf:
>>        required:
>>          - power-domains
>>  
>> -    else:
>> -      properties:
>> -        power-domains: false
>> -
>>  unevaluatedProperties: false
>>  
>>  examples:
>> -- 
>> 2.49.0
>>


