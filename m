Return-Path: <devicetree+bounces-138022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDEBA0B75B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:45:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5D9F3A8568
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 12:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531A52343AE;
	Mon, 13 Jan 2025 12:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FT+svy57"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F00232373;
	Mon, 13 Jan 2025 12:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736772218; cv=none; b=mkuz6G7SCz+M5EAxp6fyo8zfQSzu2hkVO56kyNNoPAqhvUGKLa3yEZf6fFDfh9Gqm8bf2kqH2WInkWCL2XEuGTxd3wlYrUBSI9sNx1JKtNY/KuNfrZiWcaFntvi2G0uq2kiVsKPnZvyR/qPUYKqyJ6TMVp03/UDj9Ak4U6sBqDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736772218; c=relaxed/simple;
	bh=gF0OUfbmCD2nysegX5m1tk0t3k6MTKfXlcfY4zn1JgY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bl2kOxyBkgLTV/LXctIc/VYA2Il5ndyPpFSG0ole2niYCX5Bwi25Y/vOSy1+CRf07UuBMA9biOllZJ9stUxGCVhQ5wzxDxxaJc8OutSOxkSAMYepbyfCmQ2MZd3Nx2l5fe7v6afVkIL53LEkkpH0iK+RAyz8qKc/ghr3+CLp+Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FT+svy57; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736772214;
	bh=gF0OUfbmCD2nysegX5m1tk0t3k6MTKfXlcfY4zn1JgY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FT+svy572GbPZx7XZ13tDlZOr2mejjSx9PRu1QUAWfS/B4bDk4f7EROG1R0aZrOEp
	 dFzVbTmin57tuFZbXrgBMR6rTN7kqbABwtd9ItjPoO/pJDxWlSBX0Hdd+VTjT9S/Qr
	 hEEfsZ+nFH7mjzCSVSDfmVBUV4mw3d+fyzowy6XMGoTY8Ez4XowRU5vYIqq9xvECIE
	 wp1kUa5Y1BHWOnzK2+ltcMSG0OhxFIzgtlmnOskWKPbSEZT10mX7APwvRosA30/qVj
	 obro6+abbJUaqXHWLrzGE2prgTxCKIlgL6/wvOoGsJMu0fgJnoI+G/Hq+iF6+sSh0L
	 ooXF13KyeqQQA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 101F517E0DD3;
	Mon, 13 Jan 2025 13:43:34 +0100 (CET)
Message-ID: <19970db5-47ba-4e13-8f55-e5329775da2f@collabora.com>
Date: Mon, 13 Jan 2025 13:43:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 2/2] phy: mediatek: xsphy: add support to set
 disconnect threshold
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
 <20250111141542.5007-2-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250111141542.5007-2-chunfeng.yun@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 11/01/25 15:15, Chunfeng Yun ha scritto:
> Add a property to tune usb2 phy's disconnect threshold.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


