Return-Path: <devicetree+bounces-109310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6231A996056
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:10:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 176CB1F23F6E
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B0D17BB0F;
	Wed,  9 Oct 2024 07:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Ihliz2Uj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com [185.125.188.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8365116BE3A
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728457794; cv=none; b=qPNpGdLMP7dtZPcYVmQ52SMIntclcUxdC19L4P3PZYNVlhllDvyiOd6TiAzYk8fNQH0v+nHWt0flls3Fanz7MVc3HDc1ZDTtXCjzY48k8SIhZio9j0qH6inbV9DwICZNVCSoh5KiSFTyYLb2A0x5zf3GanqI+M1qAx2SXCjMDCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728457794; c=relaxed/simple;
	bh=Ib5b1MiStns3yzNJED9bzyOJAXe/UuBkI6SN8IPQgIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aYwUISgiUhthrs7w3abFKhFwTlfChVQ5vdxCCckdnT3udFV+mV6vyACBE0mdhp1gOaBIpC0lPTXHzDmokTZppdxRODrPtrAVwa6rw9ETNLgbtMKfh0RMs7vkwrFG/6iRTGX72qnQsvfcs7E2WY16zfentj3f1Wt+1MREK7Xw1nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Ihliz2Uj; arc=none smtp.client-ip=185.125.188.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from [10.172.195.16] (1.general.hwang4.uk.vpn [10.172.195.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 08BD83FD63;
	Wed,  9 Oct 2024 07:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728457788;
	bh=kfvh0RWYeVPE2H4tgwlnR58a3BGZHArJhf6MbGbnJyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=Ihliz2Ujdpjn11OUQnJeEGbTXmAqVg4QXaPs7S2n7On8LQb5IjzkuZni3GQuSzaRM
	 kFz9vBhwbIo5u70TIuIxHNZKjveBkfojTN101Q/+bL+jD1nmRQ77N5wDw3iYiwxNCt
	 zDY8Zhar9/sZy8rcaFH2fqMqLCtQKVSCa7wXqU5y3uzvHYvbXl/GxqccEb2snbhrRs
	 6uyMS3mkzEthZ9pLV2fN2wFbI+Kh2jQLEqqB/Lh+tqC7W/N52kqzuFiJnH+QFm8zBL
	 A75N3iZyFgqPuWM51r7v63IH5W55eGbDhYIGJlGdnDSdELJbwztqqvZyeLy1uq0Ifc
	 55y19cUNsxawQ==
Message-ID: <0da92d89-d741-4012-a725-62e8bb6fec95@canonical.com>
Date: Wed, 9 Oct 2024 15:09:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: soc: ti: pruss: Drop the desc for
 assigned-clock-parents
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, nm@ti.com, ssantosh@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, s-anna@ti.com,
 grzegorz.jaszczyk@linaro.org
References: <20241009040446.9446-1-hui.wang@canonical.com>
 <4vooh45i4vephkmswsmkfgoas5wmr43trzufweoydys4bvdubo@a2nom63mrkcy>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <4vooh45i4vephkmswsmkfgoas5wmr43trzufweoydys4bvdubo@a2nom63mrkcy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 10/9/24 14:46, Krzysztof Kozlowski wrote:
> On Wed, Oct 09, 2024 at 12:04:46PM +0800, Hui Wang wrote:
>> The description for assigned-clock-parents looks redundant, It doesn't
>> contain anything new apart from rephrasing the straightforward meaning
>> of assigned-clock-parents, and furthermore there is a typo in the
>> description, hence let me drop the description here.
>>
>> Fixes: 25bafac9408f ("dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes")
> Nothing to fix here, no need to backport. We really do not need to
> backport corrections of minor typos in comments. They do not bring any
> value, just work. I am surprised that you proposed to backport it as
> Canonical employee... ask anyone in Canonical kernel team if they want
> to deal with backporting this.
>
Yes, you are right, it is not worth backporting such a fix. I will send 
v3 and drop the tag of Fixes.

Thanks,

Hui.

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof
>

