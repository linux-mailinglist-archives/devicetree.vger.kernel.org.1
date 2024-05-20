Return-Path: <devicetree+bounces-67796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 287DC8C9B55
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 12:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83E42B20E46
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 10:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E059143AB9;
	Mon, 20 May 2024 10:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HfDQeyxs"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7835EA2D;
	Mon, 20 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716201144; cv=none; b=VDnaRDdVEEQi9MppeCN2zdVTUFxpUWzPPCQUDiXf1h6E+TEJ1reGCwK6taHwp8SEzpCB4M76sXmDNmVRlm9b3mwlJ9hMKLldkvbYQINI3RAIRB8IudFDaQdE633fhTtW5924/6HK75HOu4vb3JdBp1dWkYyH/B4V/ni7/GpZDPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716201144; c=relaxed/simple;
	bh=oWTKYWoZye9FO3nP25t0ROK8hspoP6WjWeN8srkRIeg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kqr72er2Ls8ZkC8qsE6zZW29pRFl/6dRRY0oHeMX9KJ+RfsLfnFa1CSFYa1xWvec5EPABypbmvbXG+YhHX2XRAtIciM7TDaUaxuzpbF3jAnabmhebAhlbXn8d0MEVe1f4bkL+6lI6P9E1UiT7uCZfumuuBR7K7OJdjCeUYYQJDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HfDQeyxs; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716201141;
	bh=oWTKYWoZye9FO3nP25t0ROK8hspoP6WjWeN8srkRIeg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HfDQeyxs2tJjTFW7mdRovBqi9G/lD27u6gEuk6HPtgJZOmh0trhBEW8dvzFngP3NX
	 qMUoWR1aHS22H07jbK7503bJVIrtU9OEKWKSUY200lNeKbcLL5vHdGouv0AjS7pude
	 cABN1/XPExuy0jLag2xH1o6nudcPfL99iNJqyDl2ceAhZ9xTYPLCrqBvAkZOIRqnFs
	 eLuRvYUgrCN1dnQ3URBixLdMPYwoDDtlceSkLqsISmPo2alBWr7gNQAkOTWGBf9TwV
	 wZFffZi7OwoFaoeVnshVHKCeghpVyzZYQ+k3ARm3uQ8XEh4ZNRvZQ8Dt5ZQ+iyMqUt
	 mUwr7lEOd04Ow==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 04C133782199;
	Mon, 20 May 2024 10:32:19 +0000 (UTC)
Message-ID: <c63a237e-7c8e-4f3e-b69f-f89bd0733a69@collabora.com>
Date: Mon, 20 May 2024 12:32:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/16] ASoC: mediatek: mt8365: Add platform driver
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
 <20240226-audio-i350-v4-11-082b22186d4c@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240226-audio-i350-v4-11-082b22186d4c@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/04/24 19:22, Alexandre Mergnat ha scritto:
> Add mt8365 platform driver.

Since you have to anyway send a v5:

Add a driver for the Analog Front End (AFE) PCM blahblah MT8365 blahblah :-)

after which

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



