Return-Path: <devicetree+bounces-13191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 448A97DCD96
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:17:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C954DB20CF9
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 13:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A56125CD;
	Tue, 31 Oct 2023 13:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="heU/JmH5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FA728EB
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 13:17:03 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57FFDDE;
	Tue, 31 Oct 2023 06:17:02 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D7B1366073A3;
	Tue, 31 Oct 2023 13:16:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698758220;
	bh=UKig+LuihbJ88pZrqsdMkSm6GIDrEJck0xJqKEx+xT8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=heU/JmH5bzkBexwGGbhEbA2kshYTP/yFEexLfR0na3soREvJWMZbMgw79+2gwCwMt
	 F+tEJDK14a+T+Vq2da+/j19xmN7Hjr4QzsCduGwPan6KMhAl2odY0UqnkXZjs+3/Uy
	 iyZd8pINFEQ3IobDyIbhsRB3m66+AOxnXblcTQvgC4BVw5oU9cw5EYouoG/8rPFtUC
	 HH+QNAl7XMxJr5VoMj9rBdKE6v35OZagcosKuzqFRaeC5WjXvrcaJH+KldiY5HU61h
	 dBY/PKGKYmz0oyJUnvDs5fnbsHPKQDKEqqYfvjeXVTXmt5htOtYacdOgJWEWQfSBky
	 wvflJV5wkGfuw==
Message-ID: <e17f5c83-80b2-4cbd-8e56-c484b6848e22@collabora.com>
Date: Tue, 31 Oct 2023 14:16:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] MT8195 Cherry: Assign MFG vregs for power saving
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: matthias.bgg@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
 <CAGXv+5FWPZYjsXse58k5HyMijkrKBDYw0k4wpdfGv99ur8=5yg@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <CAGXv+5FWPZYjsXse58k5HyMijkrKBDYw0k4wpdfGv99ur8=5yg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 31/10/23 10:19, Chen-Yu Tsai ha scritto:
> On Mon, Oct 30, 2023 at 9:25 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>>
>> This series assigns the right regulators to MFG0 and MFG1, respectively
>> VGPU (GPU Core) and VSRAM_OTHERS (GPU SRAM), and removes the property
>> regulator-always-on from both.
>>
>> This allows to save power both during runtime suspend and during system
>> sleep; specifically because:
>>   1. The GPU SRAM regulator is switched off during runtime suspend
>>   2. The GPU Core regulator is switched off during system sleep
>>
>> Of course, in order for those power saving actions to actually take
>> place, it is required to also have the code in [1].
>> Anyway, even without series [1], this will not introduce any unstability
>> as the Vgpu regulator will simply not ever get turned off.
>>
>> [1]: https://lore.kernel.org/r/20231030132257.85379-1-angelogioacchino.delregno@collabora.com
>>
>> AngeloGioacchino Del Regno (2):
>>    arm64: dts: mediatek: mt8195-cherry: Add MFG0 domain supply
>>    arm64: dts: mediatek: mt8195-cherry: Assign sram supply to MFG1 pd
> 
> Tested-by: Chen-Yu Tsai <wenst@chromium.org>
> 
> on Tomato without the power saving patches. Regulators are correctly
> requested and I can see the SRAM regulator get turned on and off with
> GPU usage.

Yes, I confirm that the sram vreg going on/off is expected even without the power
saving patches (as the power domain refcount decreases during runtime suspend).

Thanks!

Angelo


