Return-Path: <devicetree+bounces-36352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB208409D4
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE93B1F225EC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A437E153BC3;
	Mon, 29 Jan 2024 15:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ysa22gre"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0412E153502
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 15:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706541964; cv=none; b=sZnQjxaZ5nxltzgQ4KR24dFtAnpUu0lqwzjU3mA49c6LlpXKM3p+soH8HyarNP2GNbb5yu28FGrA+9kkiHTAAu2Pxq4ApY1MzO3Nj6L2BCFsbPscOX6Ok7rT9qv9Dd2+jbWQYl3LhfKEDmgdb/kZg11lLI76+3pi2ZSdCA9z2WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706541964; c=relaxed/simple;
	bh=ZG1xdpwN0j3h4vKnLtfo8LYRJBlg+GcfkYEDQkyRxqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CfSaYih7gVdulz2To4dvBAyz3gK2FLuELTQ7/cg+FZdGANylpQcwz93yH/ogWLATKvHmom089raqErtuEvAMDvxVK/5JbEcBe8Yzmy8G93Z2XoEmkSw34qGMtWrFJ0e/pFc+jjHdBEtpwx6yj9F3pNVpM9UcFmM8A0Q4Vl3Cxxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ysa22gre; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706541961;
	bh=ZG1xdpwN0j3h4vKnLtfo8LYRJBlg+GcfkYEDQkyRxqE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ysa22greBZ0JHsAFsS3IXsM1qRb2yNIow/l+dcTBSV43VW7AshKqq/zKCadcc4Vua
	 X/BNt7KPtu+pwUzuOQOh2fubD7jNt2X49Di1kpPjDsbhSg5A3Y8n1zVremNHzi3fRb
	 iD6dG/qdduDfQH27mEkjAOCFFG5v946A9NM4xNUaB3JjLYFF+uUn1nG04l8Bo7FxgW
	 hgl1JnnymkqjRSOf8mPrsff8gAIxbvuuMVcKhdKI4e18/YFRBLaB7xufM+O7KEAUD8
	 bjxOVxu0pr8ALAWE2apahyzfj5heYJqlu1j69Ee/mK0pB3+hmjC+lD1JvYcoW5uQ9n
	 y8b8hjOQoiygQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5AD4F378047E;
	Mon, 29 Jan 2024 15:26:00 +0000 (UTC)
Message-ID: <f90a6034-b1ca-4245-a3cd-91d43152b780@collabora.com>
Date: Mon, 29 Jan 2024 16:25:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Support for airoha en7581 Soc
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 devicetree@vger.kernel.org, John Crispin <john@phrozen.org>, soc@kernel.org,
 dd@embedd.com
References: <ZbeJ5okKQ66FXGxP@lore-desk>
 <9e1ad877-f55c-4045-bb92-c30614d6c1ff@linaro.org>
 <ed322f44-6f7a-414d-a650-76c17c057b08@app.fastmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <ed322f44-6f7a-414d-a650-76c17c057b08@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 29/01/24 16:22, Arnd Bergmann ha scritto:
> On Mon, Jan 29, 2024, at 16:08, Krzysztof Kozlowski wrote:
>> On 29/01/2024 12:20, Lorenzo Bianconi wrote:
>>> Hi Matthias,
>>>
>>> I was wondering about the status of the following patches:
>>> https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-dd@embedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537
>>>
>>> Do we need to respin them? Thx in advance.
>>
>> I don't see anyone from SoC maintainers CCed on that patchset, so no one
>> will pick it up. Pinging makes sense if maintainers missed/ignored your
>> email. But if you do not send stuff to maintainers, you need to resend
>> to proper people, not ping.
>>
>> Additionally, this is a new arch, but it seems to miss any maintainers
>> update.
> 
> I expect this to be picked up by the mediatek maintainers,
> same as what we did for the arch/arm/ port that was merged
> first.

Yes, we're doing that.

> While airoha is a separate company these days,

Not really... it's still a MediaTek subsidiary...

https://corp.mediatek.com/about/subsidiary-information

https://www.airoha.com/about

> I assume this is still closely related to mt7623, mt7683,
> and mt7622, just like en7523 was.

I assume the same. I'll add the airoha directory to the MAINTAINERS file
under ARM/Mediatek.

Cheers
Angelo



