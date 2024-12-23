Return-Path: <devicetree+bounces-133527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F849FADA2
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B83141884513
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3AB519597F;
	Mon, 23 Dec 2024 11:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OncdMRtO"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8959191F9E;
	Mon, 23 Dec 2024 11:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952965; cv=none; b=NQPbrT5eFAARbDOT7sTvaMQNtksQ85wgKCQUzAlekByEB1AXtBIMmk1DGdc/QICGrD2PFfyuXhyxAgGq5Dsh5GUjdT7XpH5RWXePBNznZofY2DdP/gNViAgn0YeNwqK3C4L0ZYOze1ed+PMUmBA/IRFdlFRiRADArE3gqss6Qzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952965; c=relaxed/simple;
	bh=iG8LVexyiQx0FY+OVsLXWZDFMOKx4KXIDEnoHn8PVCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K9crkQTsxtsNoiOcBppL2OmMVIgpcpuOBdQbSCc/HgeezqOlwGNJlsY1cP8BLkxJqxqN45Kt7Mizxv5ghy44DWqzL6c4rqrUuXiSYM6ZkkqrSrnOJc1c/n2aEL1w9IfHcBRs35/UXFU3YuykgMLHzJ6u39Qn3goZ3fPdHrk6rBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OncdMRtO; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734952961;
	bh=iG8LVexyiQx0FY+OVsLXWZDFMOKx4KXIDEnoHn8PVCc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OncdMRtOPQul8mFceA4kqNvG1Nosls31I4H5l2aqGVpNXuThnqD8QYT8WBnsBzpV1
	 jFsO6JdeEskOsoao8+wdbzYOQnA/R9nLn0GS640D206NSmCmU+d73PILoI9w5GviHv
	 1EpZYqSOHdAN9EUwB3qXCju5J+7dvF6QCTQb8TtvcRuGxeCPftp5hwKUS7ixadndDU
	 DIbHRaVCG0wTx/AmGjjy6wD10gPsw3qbWMv25FhZTiaeKERSZM0m5jcWEmaX3k0JPv
	 BSZ43MSv8nuao169UsDtJpuonRtY4zlvs7JPMhzFFlOv8f9PmR1fk/ldA3BG4nc+Tv
	 rcpZ+4p0lqjNA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A520417E366D;
	Mon, 23 Dec 2024 12:22:40 +0100 (CET)
Message-ID: <d7a8cb14-ce81-4f1d-9f64-a29348776170@collabora.com>
Date: Mon, 23 Dec 2024 12:22:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/33] dt-bindings: display: mediatek: Add binding for
 MT8195 HDMI-TX v2
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
 simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, ck.hu@mediatek.com,
 jitao.shi@mediatek.com, jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 dmitry.baryshkov@linaro.org
References: <20241217154345.276919-1-angelogioacchino.delregno@collabora.com>
 <20241217154345.276919-8-angelogioacchino.delregno@collabora.com>
 <rsnyljmkdf7i74bkrlf5nesp2sa3n6xcnzsqao4znmczjpfyq2@dsakz56s4ypt>
 <9a75e88c-d90d-4ea8-b5c3-6d056d4f0498@collabora.com>
 <425fd1b0-fcba-4547-81f6-84acee5ce7f4@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <425fd1b0-fcba-4547-81f6-84acee5ce7f4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 21/12/24 21:22, Krzysztof Kozlowski ha scritto:
> On 19/12/2024 11:54, AngeloGioacchino Del Regno wrote:
>>> hdmi@
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> Thanks for the great review krzk.
>>
>> I was wondering if it'd be more straightforward to just send the bindings in a
>> different series, instead of sending another batch of 33 (actually, 34, because
>> I forgot one commit adding the DDC binding, ugh!) patches...
>>
>> CK, any objections?
> Maybe just wait few more days for other people's review and then send v4
> of everything? You can split the bindings separately, although there is
> a risk we will get confused or we will forgot why they got separated.
> 
> Best regards,
> Krzysztof

Yeah okay, I didn't think I'd have to fix anything in the v3, but apparently I
was wrong and need to push a v4 anyway, so.. whatever.. :-)

Thanks btw

Cheers ... and happy holidays!
Angelo

