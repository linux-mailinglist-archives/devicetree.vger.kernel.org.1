Return-Path: <devicetree+bounces-320642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hGinJxxeSmqhBwEAu9opvQ
	(envelope-from <devicetree+bounces-320642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:37:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF5A70A208
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:37:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cyberchaos.dev header.s=mail header.b=nWptLh0a;
	dmarc=pass (policy=reject) header.from=cyberchaos.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320642-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320642-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE75030015B5
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 13:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA4737883E;
	Sun,  5 Jul 2026 13:37:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cyberchaos.dev (mail.cyberchaos.dev [195.39.247.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C805C357D18;
	Sun,  5 Jul 2026 13:37:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783258647; cv=none; b=k5VZ9yTRViDeYGDZU2VjeQF9GZutHaFBcZ8gDdyc08vxsviAYFS643BoPzegpkmwaeTXQFpCaDG8h6ifzTEjAXqRyHmHQCypwT3Swog0fDS4JigM3Zn02GHgYwHhNsG1G/Sz4Vd3POxWmjVGeLrj7g9suQSmGwuU5V27Tb3AJBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783258647; c=relaxed/simple;
	bh=zqN2OMm0K35sMFmZfZpV+QFwwecgcLUaEOtKw2kW+bI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gEdPeMSk9EqQZO0sMCUh4Fj0hknUO1PTkfrY4Lo9qCQvYbmkvouxn7uZES+fDhXIdeAQgYn5u1bfUvZ/KmxioV5f/0izTjeW2IEobXKoCtKr6eq7e2ffx/yJYV3XJ+es8tq8qhcVfa+m+iAq8kw38v6o6wmolhgEC1I7SEmjJYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyberchaos.dev; spf=pass smtp.mailfrom=cyberchaos.dev; dkim=pass (1024-bit key) header.d=cyberchaos.dev header.i=@cyberchaos.dev header.b=nWptLh0a; arc=none smtp.client-ip=195.39.247.168
Message-ID: <0ee8e9e0-caac-4c66-867e-d4631364c00e@cyberchaos.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberchaos.dev;
	s=mail; t=1783258644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CGz+eK3e+AZefL+2NF3Mp77pcoAh0Uj9lh2ohwJgCho=;
	b=nWptLh0auQrsITOTZjkj3ZTZZm17wTBROCcPJAkrOQ+CGpWheUb5EzZ5UXIV3LhqrHC5vT
	vRLkKPM5QrmW/z6L7Za31Fxyuoga3HqKvcUn5ZsALG0WYEtvDCRtYgx61m1fW7hEM4FKpa
	NVUz/KCbqLP64oNbRJnGzcUiUkQcjg8=
Date: Sun, 5 Jul 2026 15:37:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 09/10] dt-bindings: arm: apple: Add M4 based devices
To: sashiko-reviews@lists.linux.dev, Yureka Lilian <yureka@cyberchaos.dev>
Cc: conor+dt@kernel.org, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org
References: <20260705-apple-m4-initial-devicetrees-v1-0-e5655ee56523@cyberchaos.dev>
 <20260705-apple-m4-initial-devicetrees-v1-9-e5655ee56523@cyberchaos.dev>
 <20260705132819.9CA9C1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Yureka Lilian <yureka@cyberchaos.dev>
In-Reply-To: <20260705132819.9CA9C1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyberchaos.dev,reject];
	R_DKIM_ALLOW(-0.20)[cyberchaos.dev:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320642-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:yureka@cyberchaos.dev,m:conor+dt@kernel.org,m:linux-watchdog@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cyberchaos.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,cyberchaos.dev:from_mime,cyberchaos.dev:email,cyberchaos.dev:mid,cyberchaos.dev:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9EF5A70A208


On 7/5/26 15:28, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Low] The top-level text description block in the binding was not updated to list the new M4 devices.
> - [Low] The inline comments for the newly added M4 MacBook Air models incorrectly label them as 'M3'.
> --
>
> commit 2d1ae3586bee901cafa8ffc62c9df52d3acdcf89
> Author: Yureka Lilian <yureka@cyberchaos.dev>
>
> dt-bindings: arm: apple: Add M4 based devices
>
> This commit adds compatible strings for Apple M4-based devices. It introduces
> the apple,t8132 SoC and associated platforms like the new MacBook Pro, iMac,
> MacBook Air, and Mac mini.
>
> Looking at the top-level description block in this file:
>
> Documentation/devicetree/bindings/arm/apple.yaml:
>    Devices based on the "M3" SoC:
>
>    - MacBook Air (13-inch, M3, 2024)
>    - MacBook Air (15-inch, M3, 2024)
>    - MacBook Pro (14-inch, M3, 2023)
>    - iMac (24-inch, M3, 2023)
>
>    Devices based on the "M1 Pro", "M1 Max" and "M1 Ultra" SoCs:
>
> [Severity: Low]
> Should the new M4 devices be added to this top-level description block to
> keep the documentation in sync with the schema definition below?
>
>
>> diff --git a/Documentation/devicetree/bindings/arm/apple.yaml b/Documentation/devicetree/bindings/arm/apple.yaml
>> index e49403c73f9d2..3262292252d25 100644
>> --- a/Documentation/devicetree/bindings/arm/apple.yaml
>> +++ b/Documentation/devicetree/bindings/arm/apple.yaml
>> @@ -315,6 +315,18 @@ properties:
>>             - const: apple,t8122
>>             - const: apple,arm-platform
>>   
>> +      - description: Apple M4 SoC based platforms
>> +        items:
>> +          - enum:
>> +              - apple,j604  # MacBook Pro (14-inch, M4, 2024)
>> +              - apple,j623  # iMac (24-inch, 2x USB-C, M4, 2024)
>> +              - apple,j624  # iMac (24-inch, 4x USB-C, M4, 2024)
>> +              - apple,j713  # MacBook Air (13-inch, M3, 2025)
>> +              - apple,j715  # MacBook Air (15-inch, M3, 2025)
> [Severity: Low]
> Are these inline comments correct, or should they say M4 instead of M3 for
> the new 2025 MacBook Air models?
This is indeed a typo and I have applied the fix locally for v2.
>
>> +              - apple,j773g # Mac mini (M4, 2024)
>> +          - const: apple,t8132
>> +          - const: apple,arm-platform

