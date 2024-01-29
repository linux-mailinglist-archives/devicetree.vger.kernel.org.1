Return-Path: <devicetree+bounces-36231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 465518403F6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB7C4B23189
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF475B5B5;
	Mon, 29 Jan 2024 11:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Qg+07uLj"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FFF5BACE
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706528508; cv=none; b=CLuTlULWNgo26aZRu3r3X3P0QB4KV7llojl+UvqjTcKxtXm2oSrRHQk8xvihJhJopOYQKvVj/6/TL8ar7TIYFbQix6MVV9IGQ0r2FnmLq2QjJpG6R4HShngY3zLo4oB/htiK2eznlJpaK+meT/lngiSye6m+onUvJxkmw0pP7ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706528508; c=relaxed/simple;
	bh=EN7taMbsZ4JvwQRhusiP6ICCLdzXLJsw+sqYbACBuDI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jxkv79uVOU91VfHxztr3O7bS6Al+Pr0kosf10efJcjvqxZf7tN0Rb+FndXHBImOmL21ghH1/iIhJuPOgh9TBojU03uoEeRpLOiR8fDGnAzQ0SK0wFHfhqQwnWD3xdYICYwc4ZShM5f575f64xxhlgOI4+RMGcKr/tVHg4ENlfSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Qg+07uLj; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706528505;
	bh=EN7taMbsZ4JvwQRhusiP6ICCLdzXLJsw+sqYbACBuDI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Qg+07uLjBw2ybBNZrJWOLESfJSu/Z2qKHYYqb3Xu7iLw+R+//eSR8MoZf/F6WOLHP
	 BQJ87G9T3U1ZDy5TNNAUBI3bo6/QjIc4lqpyjKBGjXWfkiy6ih8DjydbNJOamY9dGI
	 4lITctITMYoVcNdoAVMfDC6X2C6DmOfuORJUZ9E3IxydCL0lYWrAA0K9gogkMab2e6
	 NcvCPUwrXHT0NdiQ4ds0UtOaF7qqYlryb/fd0G+sUgmS4uf9mpZYbgO3N4hdbeeyYt
	 Zp/fGJOiWMSqBfBefZK4/oRLKiE+hTtcNc8oQwaHywywK+uNJ1g7ic7FjC/B00UcIF
	 W9xnB1OgTqZ5g==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E4A5F3780029;
	Mon, 29 Jan 2024 11:41:44 +0000 (UTC)
Message-ID: <841e102c-c5ab-432c-bdba-efdd67a3c129@collabora.com>
Date: Mon, 29 Jan 2024 12:41:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Support for airoha en7581 Soc
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 devicetree@vger.kernel.org, John Crispin <john@phrozen.org>, soc@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, dd@embedd.com
References: <ZbeJ5okKQ66FXGxP@lore-desk>
 <f16842b0-0086-41b6-a366-e27ccb2905c1@collabora.com>
 <20240129-gawk-strongly-91344f34d004@spud>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240129-gawk-strongly-91344f34d004@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 29/01/24 12:39, Conor Dooley ha scritto:
> On Mon, Jan 29, 2024 at 12:34:37PM +0100, AngeloGioacchino Del Regno wrote:
>> Il 29/01/24 12:20, Lorenzo Bianconi ha scritto:
>>> Hi Matthias,
>>>
>>> I was wondering about the status of the following patches:
>>> https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-dd@embedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537
>>>
>>> Do we need to respin them? Thx in advance.
>>>
>>
>> Lorenzo, I don't think you have to.
> 
> The compatibles in en7581-evb.dts appear to be undocumented as of
> whatever linux-next I have checked out from late last week.
> 

Right, there's a 7523, but not a 7581.
Needs one more commit :-)

>>
>> Matthias, should we update the MAINTAINERS file to include the MediaTek
>> Airoha folder?
>>
>> Actually that question is for both ARM and ARM64.
>>
>> Cheers


