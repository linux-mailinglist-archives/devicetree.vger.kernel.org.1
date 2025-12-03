Return-Path: <devicetree+bounces-243873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0D5C9DFBA
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 07:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19C583A7747
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 06:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F38E299A87;
	Wed,  3 Dec 2025 06:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="CW3CAbAs"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428BE28B4F0;
	Wed,  3 Dec 2025 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764744956; cv=none; b=d+OX6rw000Q/dErhmi0WeIIQIojSLnaLIGDUGOLt+kJmIRTx7az/89zf82esm1M5xjMJiDB7e7x3tj8DRLNbmTMfgHKMKfpOaen7Y85QfaT+ZffkEDjCPODOQR+DnrVX6qgPuO66XUdVBoRsnVZqDIdPHhNQYcP/16xmDFgf5LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764744956; c=relaxed/simple;
	bh=gsFLc2zmBo4F0KsnAgDtyrBQx7AbnJC6RqAr81QjdDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R2yuaarj4ik0H7MTm1kUywhhIECynA+Bdul6SiMN9lOUzY+iHN22ruu01rnpvuM2vYdEBzOr7gigehdQZ5RHSI4lhj73VhBx1cSMnYNAwGrRC3q5jAMKRKTzLJnp6NQqmcLa8OD1ErnlX3N0zwjR2FHjOCSA2hhUf70nZh1SJ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=CW3CAbAs; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764744952;
	bh=gsFLc2zmBo4F0KsnAgDtyrBQx7AbnJC6RqAr81QjdDw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CW3CAbAsmQxZbP/bT7Jc5sJlHtZtm1JVemPgee+ntOP9RUamxGioEn5u7EPa2V1YH
	 +KI9gQlHIf5/OJXFDM9CwMuRdk1Tl/B6cWWaV4JJWNqLNvs4BaOIC4ZDUN3jfECtc/
	 f/bw/7ufv+R70i2nPRrXKYPhQJVvncUpR5gYOOoChCfB8umRDluYPUI5hZls0iQBmI
	 av3PoOycawILqjd9OAlEAje/J00g0NkVPjp4QtW2eaNGBphd5Ty+H3R3vQj/Ky56rd
	 Ne9g/Bk9F2asktVaMieoEHGQpiu3I+6Soco22FYZKQrdGsQp8yzZYVlY4jXQrn89Fy
	 890gylMhtHUVQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3C0E117E0330;
	Wed,  3 Dec 2025 07:55:52 +0100 (CET)
Message-ID: <7b09d179-be5f-4daf-bb74-c1420a3b6fa8@collabora.com>
Date: Wed, 3 Dec 2025 07:55:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] dt-bindings: arm: mediatek: Add Ezurio Tungsten
 entries
To: Gary Bisson <bisson.gary@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
 <20251202-review-v4-2-93f5cd2a0d4a@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251202-review-v4-2-93f5cd2a0d4a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 02/12/25 23:08, Gary Bisson ha scritto:
> Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
> SMARC [1] / Ezurio Tungsten 700 (MT8390) SMARC [2] + Universal SMARC
> carrier board [3].
> 
> [1] https://www.ezurio.com/product/tungsten510-smarc
> [2] https://www.ezurio.com/product/tungsten700-smarc
> [3] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
> 
> Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
> 

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



