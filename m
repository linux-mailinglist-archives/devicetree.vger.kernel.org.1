Return-Path: <devicetree+bounces-109262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43955995D27
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 03:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA1891F26061
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 01:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C83219EB;
	Wed,  9 Oct 2024 01:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="vH9FSgLM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com [185.125.188.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FB51D69E
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 01:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728438109; cv=none; b=d6v1K2yG7knoyudwEbB7s/RGZVjzdLyNCcm2ne7B5HP9Ilou9HPYiH9LvkGxcAHb0RPBR2fTbOm+wSNcE0x9tTjEeRxKJ8ehz1I1VC4QZPWubIdP2H63JvxHr4pE20vXlXTuAEg7T47ugpOUmX1Ma7OnUN2LsDoMVZ/MaUnD2iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728438109; c=relaxed/simple;
	bh=kdjN5CiCD3C/Yxnm0Q8kNJEFovXeqELGWDr2k16jBBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aCPYWiO0F8noSXq/sYchtP7hoIPiR2s0STijoD2tIZwk6t/hg4g1W/BMywttPXFHivF2Fqsg74I4XAJPfSQP5jK1e1KdnZa/SMTpT9r+TLfJb3Ux8/jMxyV/mTlLvcKQ/mOMLogwGa8AkR06TiMnD1A5sntTdNcIBs7GB0i7zMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=vH9FSgLM; arc=none smtp.client-ip=185.125.188.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from [192.168.0.105] (unknown [123.112.64.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 079953F9C2;
	Wed,  9 Oct 2024 01:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728438099;
	bh=jLsUuUsyVSk/J7OR/Nv/A5h9fnMObGWMPGD1rDRUWv4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=vH9FSgLMei96W682vBApYcuj3lgM/cG/wJvFSPoUMzadvd+laltBb5iOA+pNxy0fo
	 23WpMPQi0/cqOWbMg6zps9bTS1kVy7HPbtesOFCvETMrCLy1JVuVNI2XWn9SAmQVtV
	 h90zq8w2CuTaJeNb+zWzp+F1uYQUAvrTAqqP6oMb8xCayT40N0fLJ/hWprqS72Pm0Y
	 ogNjtwsNnag3hasgQAwlyKlwcJhkyy83c2xAraLqh/Hojccqjd7QWq4wlM7OpDJog5
	 utqx/92cj3z9rNz5iM2XSBfYkjx3XUAIQCop+aKBlrPfi5AyuUx/r7JLajZFaXUkux
	 qEe6ywUj5M37A==
Message-ID: <6dad790a-479f-4591-bbaf-b8c234bd6438@canonical.com>
Date: Wed, 9 Oct 2024 09:41:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: soc: ti: pruss: Fix a typo on
 assigned-clock-parents
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, nm@ti.com, ssantosh@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, s-anna@ti.com,
 grzegorz.jaszczyk@linaro.org
References: <20241008045047.24069-1-hui.wang@canonical.com>
 <5qysjqz7sj6nucy3bvxiwdoa4osqd77luz7jihe6smkz4qecr6@6kksr2nzhtn3>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <5qysjqz7sj6nucy3bvxiwdoa4osqd77luz7jihe6smkz4qecr6@6kksr2nzhtn3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 10/8/24 16:02, Krzysztof Kozlowski wrote:
> On Tue, Oct 08, 2024 at 12:50:47PM +0800, Hui Wang wrote:
>> It appears the assigned-clocks-parents is a typo of
>> assigned-clock-parents even if it is in the description.
>>
>> Fixes: 25bafac9408f ("dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes")
>> Signed-off-by: Hui Wang <hui.wang@canonical.com>
>> ---
>>   Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>> index 3cb1471cc6b6..6d658b020be8 100644
>> --- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>> +++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>> @@ -185,7 +185,7 @@ patternProperties:
>>                 assigned-clock-parents:
>>                   maxItems: 1
>>                   description: |
>> -                  Standard assigned-clocks-parents definition used for selecting
>> +                  Standard assigned-clock-parents definition used for selecting
> No, just drop the description. It looks redundant - I do not see
> anything new said there. There is little point in correcting stuff which
> should not be there in the first place.
OK, got it. thanks.
> Best regards,
> Krzysztof
>

