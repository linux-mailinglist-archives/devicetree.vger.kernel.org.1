Return-Path: <devicetree+bounces-254843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D643CD1D1A3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 748503009D73
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 107A237F105;
	Wed, 14 Jan 2026 08:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UdOb5SP5"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C4937F0EC;
	Wed, 14 Jan 2026 08:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379262; cv=none; b=OT7ur+PUtmA5eioq1WHbitfswfrXMp+nFjwsZMZjTvNBDshwQETuKcMo9m8xBzgZSzWWbPMT6l/7iTxZyJlZYLDPO7sTnoOA3FDJTDNVh6Jw/xWxyvo6Z4ALclrmv3ZGuCoJd2tUzqH+n1ysoMoPvj5Um0JyxcW35mOJm0bcJF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379262; c=relaxed/simple;
	bh=8MK2K1fASDPVnowqxQJ1JsgFLtEXmJrr6pW4o1QRCyc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qeG9sSCk2HdmhZajOWlQJNVGeXYLNgop6UzN2KYFDxvbaC9kFJOaUlGZLLgYnLiUcybwKwzFqwV3V/Tngk7YmuHuaYJDnxRFBc/STMEisMiaAMtDQ0B+lHprQW0X8lmtwms0r5bK9x+G8yYoJPdHmNEkZ1y5J8pMIuT4DtTP2tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UdOb5SP5; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768379254;
	bh=8MK2K1fASDPVnowqxQJ1JsgFLtEXmJrr6pW4o1QRCyc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UdOb5SP5TUuhuFc/WhQJMKtJekNVy54o3R38/WoQOOwEqbI7Va76TVfEYmO9/o7G0
	 osO2Dkd+3GI4pdGm9DxibTNa3cFFqVe8WfdT+MsFCvNhTXYBstc3/Cqb95tBD0rmIZ
	 CJ6f+G2Di4ibr0mPV+RLLFpmBuhlT0vNaDbYp21iDG1XCJzos/SAbwVajHb7AAOaKD
	 WBia4g9eXgNJ4B5l0m6bUV+DiclrhgU/GxxWQTWZRQcoLuhex+WX+X3acRLMP8N2cM
	 1TqAIYUYg0uEW9ekIygOQAyOdpljqwakRH+bvff9FedRviDiosITXaBb58PXcW+RS0
	 ZJVO7cSIognsw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 73DE517E0139;
	Wed, 14 Jan 2026 09:27:34 +0100 (CET)
Message-ID: <b38823d4-1bce-496b-a063-75f2139aa3bd@collabora.com>
Date: Wed, 14 Jan 2026 09:27:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: mmsys: Allow single
 vdo/mmsys endpoint
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
 <20260113225346.GA367211-robh@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260113225346.GA367211-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 13/01/26 23:53, Rob Herring ha scritto:
> On Thu, Jan 08, 2026 at 03:39:32PM +0100, AngeloGioacchino Del Regno wrote:
>> The hardware supports using just a single output while leaving all
>> of the others unconfigured (disabled), but the binding did not
>> really allow specifying a single endpoint@0, because in this case
>> one must either:
>>   - Call the subnode `endpoint` and not declare any address and/or
>>     size cells; or
>>   - Call the subnode `endpoint@0` and have at least one more other
>>     endpoint(@1 or @2), and declare address/size cells.
>>
>> Allow specifying a single `endpoint` subnode, without the `@0`
>> implicit suffix to suppress warnings happening on this kind of
>> valid usecase.
> 
> This series isn't needed. We've dropped this check from dtc. I'll do a
> sync with upstream.
> 
> In any case, it's also a W=1 warning which wouldn't be my top priority.
> 
> Rob

Oh, okay! Thanks for the feedback :D

Cheers,
Angelo

