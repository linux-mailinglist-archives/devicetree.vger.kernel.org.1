Return-Path: <devicetree+bounces-128631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DDE9E92A3
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABD041883E99
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABD7421D010;
	Mon,  9 Dec 2024 11:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="V3DMr3sm"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58DA21764E;
	Mon,  9 Dec 2024 11:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733744561; cv=none; b=scID5qIWLP0uNyahTuGET2HrcA8JLgl1VioMGy6rEJzdeH+n74LPQAXaS8xZN1iqEp6mziqF8HL4psW2M5PZRJN14oPFciByJt3uzx79oM7OkVIEa5CTSWH8LdeQrSp35TMBDBiNapGL/DAGX2EQg0DW0HEKiJfETAU4yNGPgQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733744561; c=relaxed/simple;
	bh=9b45M2aLM/tuKaAynX20c6dQe6KEzHWb4VICIeqr8Bw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=k8HIP+s7sGPbytQsnndJzEw1fIZWbfx7Gz2E1qAjIdh+Ftgeyj+T6hg0BCWzIMCL8g2EDhY6Rud72mFRWeaLFIEdSaicmnxX9ovB1H9NbzvJzqSQ22wrPKiXdYxq84Rnmvu+nC+tyMYqh13kV6ZtpIFJlyMIuHULp5YYCCNu0IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=V3DMr3sm; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733744557;
	bh=9b45M2aLM/tuKaAynX20c6dQe6KEzHWb4VICIeqr8Bw=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=V3DMr3smHOeMunv2y7xC+3oTzjuI+VIzjqhvPPOA6Zz78bLi2mdaWKU2hCjAZVj2S
	 IuCAZq3uaIpN5yTsjLxrERj5xdCEKkrKZ5ZznMZ5tPpR1Dr6UZalDnnw2LgZTn7yTS
	 1f42MvE5kucasAv3FnDsllunBjPC9E/LMazbsKFseY8VEVOb8bWYfvbN18+4TmRsKG
	 PHMNyo/AZOFY++835mwVSb59VceodefJ0LcqU8HQEpSrDILAZt1o0q5QiOwLhS0me/
	 XWmypPVFPK8AxPRNs4NfyIOLeWDK2CzM5cMt3uaaeqfmUmCaNCabpWKHpz6lv/HWSF
	 cDSWAh6/x9Dag==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1D04317E0E88;
	Mon,  9 Dec 2024 12:42:37 +0100 (CET)
Message-ID: <92328329-e1f4-40e5-b0e6-946a7500a313@collabora.com>
Date: Mon, 9 Dec 2024 12:42:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: mediatek: mt8186: Add Starmie device
To: Wojciech Macek <wmacek@chromium.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Rafal Milecki <rafal@milecki.pl>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20241129055720.3328681-1-wmacek@chromium.org>
 <20241129055720.3328681-3-wmacek@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241129055720.3328681-3-wmacek@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 29/11/24 06:57, Wojciech Macek ha scritto:
> Add support for Starmie Chromebooks.
> 
> Signed-off-by: Wojciech Macek <wmacek@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



