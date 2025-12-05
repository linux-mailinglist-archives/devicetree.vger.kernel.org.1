Return-Path: <devicetree+bounces-244592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9124CCA6D2E
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 10:07:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 112623056969
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 09:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2363164CB;
	Fri,  5 Dec 2025 09:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="d03/E+VF"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16AB316902;
	Fri,  5 Dec 2025 09:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764925558; cv=none; b=sP/mLyi9dBuSWjYvzCww4VdfxOUVhF9ch3CRc8HuXU3eUBxQW33cIxDP79qPze9l+mX4ZRmvKJEHxrMArUULh0y2kGw7sCIoqZQGgp85ByN3Zt84ksEWTkw7nUs0Dk6CiaKA/hBktJUnzeRGBTokTWB1ioceTF6CgzJuaawoMmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764925558; c=relaxed/simple;
	bh=D7VL0jnqEcYIiXISGPI0STnm5YtEk74aTsL7Vqv/Nmk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k/aFThgWBFzzjcOF1I53QKOhFcnuD+zkYCrQ4+CD/WswCMDrVAil/hL65k+K//P5wYT6dUM/r5JabpGJiFLLLklYdZY1ZANBgIbWdORWgXPr2iaRu82dVbNLNd9ZYLnqjx4CX/U6uOudsmthPps4ipAcpOto4wx0PZ9dPMdnJbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=d03/E+VF; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764925546;
	bh=D7VL0jnqEcYIiXISGPI0STnm5YtEk74aTsL7Vqv/Nmk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d03/E+VF1roJ9MVL/7hBfzZmNp2mVXq3QgIPXrzSp/xth+B5Bb5tGZKxFjZg7lJry
	 /2tXVPJHNECfVD7rKRr5E2amhEqivihl52riQWK38AiYxDk86CGY5HBCyMdQBDKs7j
	 NUrVPg/7wUfbpXQghw3LjzvyaNpbcNIRXg1nSzpyRKdnxmQr7DybxpAdw+grln2ioy
	 cZLXivMa5wJLH12RtScFLWnsV2jHH8v0ybLvzvo5lAp8bo2C2wYujpMF+FGT7IIBPU
	 EZkR/4+uJ/kC7cpI8LPGE2Ks6lUCyipMSguIhY09rMkw9yUxMZo4AkBWGwcdghpCXQ
	 tD6KRQZMZIoiw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 207F217E0483;
	Fri,  5 Dec 2025 10:05:46 +0100 (CET)
Message-ID: <ddad2f21-4853-41c9-acfb-1613f5000f0c@collabora.com>
Date: Fri, 5 Dec 2025 10:05:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] arm64: dts: mediatek: mt7986: add dtbs with
 applied overlays for bpi-r3
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Frank Wunderlich <linux@fw-web.de>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
References: <20251119175124.48947-1-linux@fw-web.de>
 <20251119175124.48947-2-linux@fw-web.de>
 <fc5c9829-96fa-4028-a642-0792699e92a5@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <fc5c9829-96fa-4028-a642-0792699e92a5@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 05/12/25 09:10, Krzysztof Kozlowski ha scritto:
> On 19/11/2025 18:51, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>
>>
>> Build devicetree binaries for testing overlays and providing users
>> full dtb without using overlays.
>>
>> Suggested-by: Rob Herring <robh+dt@kernel.org>
>> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>> ---
>> resend of
>> https://patchwork.kernel.org/project/linux-mediatek/patch/20240608080530.9436-2-linux@fw-web.de/
>> due to discussions here:
>> https://patchwork.kernel.org/project/linux-mediatek/patch/20251117211306.725678-1-robh@kernel.org/
>>
>> changes:
>> - updated sd-nand with sata-overlay
>> ---
>>   arch/arm64/boot/dts/mediatek/Makefile | 21 +++++++++++++++++++++
>>   1 file changed, 21 insertions(+)
> 
> 
> This looks like still not being applied and now it is a warning in
> Linus' tree.
> 
> Can this be applied and sent as fixes?
> 
> Best regards,
> Krzysztof


Acked-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Matthias, can you please take care of sending this?

Cheers,
Angelo

