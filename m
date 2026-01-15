Return-Path: <devicetree+bounces-255625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B939D24DD5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3CF130C5CA8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23DAF3A1A2B;
	Thu, 15 Jan 2026 14:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBcN3NNR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0046539E199;
	Thu, 15 Jan 2026 14:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768485601; cv=none; b=lRO5Xm0xZkPz6aixXyFxcGv7BreGiC7Ankq27d9+HF/m7l+seMgBtJhHwK7iusmUhQBKdacK5kwbHYg/43twDN7uIdoVrttW9n7aK0H1PMAs73UbQzBDxGNk6qCvyHKkJNa5xgxKT9lhNXMPCjVUiyL2ZWMzA94DvajX7N+sLF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768485601; c=relaxed/simple;
	bh=OKBnnzXnv4roaOCQlDLWfODP62IZQc7buuvsINQqVPA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=lZJYGf3uv8F6dW2I8rSaCnYnC0AO4bV7IP6oKlhLyzxGpG/YxrfH/pI2JJMx+uRgpPI7wTHC0PZccOIdgaZqLhGB5RWCXTXhGFT54TzgiWvoU/FheUxSha3t9HyFVZkSxEW8o6cRT65KFBt9W1Wr1klR7LH3eaaT3ChYVwqd4/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBcN3NNR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24BDC16AAE;
	Thu, 15 Jan 2026 13:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768485600;
	bh=OKBnnzXnv4roaOCQlDLWfODP62IZQc7buuvsINQqVPA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=vBcN3NNR1lHLtbRSRDzfdWnk9KxjvbvUbAUGLCQnEUk/+5AQ/hr0Vlj1khcryohCJ
	 sbmsMwMF1Me5qzhV3ob5X+DAjCeVgK5smA1D9uqhqUmvtmEPeGh8pWBE3GE+0+QRhn
	 kPg6o2TrqCljqHbk0+nN6frQx/mz3xGMqoVM63TiQzGDcyJUPGYUcId0PMj6Y/SZLd
	 8utZqaMkWtIDv2176hg1uDV9HHVvtPZpgcyX4IHm/7gJfX/adpglSdnyZb9Qrc5BAQ
	 17bZcrl2/zIWoigVtmiknEPK6H2I8C+9hDp6EGCEPi4/W6/qAYr7E5lGpYUTryLN8N
	 TCcItHQYWo0Ww==
From: Pratyush Yadav <pratyush@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Pratyush Yadav <pratyush@kernel.org>,  robh@kernel.org,
  krzk+dt@kernel.org,  conor+dt@kernel.org,  tudor.ambarus@linaro.org,
  mwalle@kernel.org,  miquel.raynal@bootlin.com,  richard@nod.at,
  vigneshr@ti.com,  lgirdwood@gmail.com,  broonie@kernel.org,
  matthias.bgg@gmail.com,  julien.massot@collabora.com,
  eugen.hristev@linaro.org,  jiaxin.yu@mediatek.com,
  shane.chien@mediatek.com,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-mtd@lists.infradead.org,
  linux-sound@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-mediatek@lists.infradead.org,  kernel@collabora.com
Subject: Re: [PATCH 1/4] dt-bindings: mtd: jedec,spi-nor: Add Winbond
 W25Q(32/64/128/256)JWM
In-Reply-To: <60bb622a-f88a-46ce-b835-bbefe47509bc@collabora.com>
	(AngeloGioacchino Del Regno's message of "Thu, 15 Jan 2026 14:55:41
	+0100")
References: <20260115125624.73598-1-angelogioacchino.delregno@collabora.com>
	<20260115125624.73598-2-angelogioacchino.delregno@collabora.com>
	<2vxz5x93818a.fsf@kernel.org>
	<60bb622a-f88a-46ce-b835-bbefe47509bc@collabora.com>
Date: Thu, 15 Jan 2026 13:59:55 +0000
Message-ID: <2vxz1pjr7z8k.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, Jan 15 2026, AngeloGioacchino Del Regno wrote:

> Il 15/01/26 14:16, Pratyush Yadav ha scritto:
>> On Thu, Jan 15 2026, AngeloGioacchino Del Regno wrote:
>> 
>>> Add Winbond W25Q32JWM, W25Q64JWM, W25Q128JWM, W25Q256JWM to the
>>> allowed compatible strings pattern.
>>>
>>> This also resolves a dtbs_check warning happening on all of the
>>> MediaTek MT8192 Chromebooks devicetrees (for winbond,w25q64jwm).
>> We normally don't allow adding any more device-specific compatibles.
>> This list here is only for legacy DTS. You should be using
>> "jedec,spi-nor" in your device trees.
>> 
>
> Ah, okay, didn't know that.
>
> That's actually making things easier for me honestly as removing the
> model string is a 10 seconds change, so I'm totally happy with that.

Awesome! Thanks.

[...]

-- 
Regards,
Pratyush Yadav

