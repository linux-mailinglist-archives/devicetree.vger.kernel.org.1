Return-Path: <devicetree+bounces-72221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D958FB279
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDFC4B24360
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E8C145B1C;
	Tue,  4 Jun 2024 12:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="p9E31tmx"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF142144D1E
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505005; cv=none; b=uuyhftIH2MeHPvx05AQi16Y7yMoabWuKT+Zvcj3OP2fV9EpNUlBI2ZRgdUYBAfAmcMupqA7sc66Ou8P3Ru5sg4qXsRm0JG6nF69JN6+dIg0OHXBJcOd11z4s971koUcDL/6antE3bpsrbagUDTV4bh1LLsWnKbKUgk0Wuf0LnyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505005; c=relaxed/simple;
	bh=BE1DDuhg+2o6/4PanLrNPOI0jufqYBZIohTubClefAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SvurTpNpKZhIbo5i0rtV4+woXK3fw1l/vAR9ipxoUyALiDM9UVETlbf5qjYSKMEh4AHRFCEVtVX8rwRWsjOOUlj4bw4UwWWtVyLxGCC2ezWevqJpMPRZ5zvnhI5n3Z3Nck9HOJp8wOrZF3TfZWrEBPvtKPbIGJdJ1zu9fqQDQ5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=p9E31tmx; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717505002;
	bh=BE1DDuhg+2o6/4PanLrNPOI0jufqYBZIohTubClefAQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=p9E31tmxEVis/t2K+lrzbXPyelH68TS1JWNYN1hnidwt0CFCLUEe08kJC09xt0pzg
	 O0g4VtVdpo1OqsEsJ49tJvDFbYjlUUjmiLbD2PVRp/1F6FJcwGB9kCcdz7XeUbKsIU
	 fN3jRsIhQXD0dM/W4QjH3S0/h5znfP/jwphYnv6D15tvysMCDLcznYXX1XC3CevbWH
	 6+XIYPcLCcnrLIGL5Fg8T2h5cZ3tbJgSRPAf35pEET7DjE79IDk0mNcr9cD3G2oOHR
	 JQ0CFfkuRS5IwyDFjeLYkvNo20PB73Hs2WAdNPFP9ZmDeSRm5900ztBhFnYmQfsuyR
	 95Imb8CoJAEYQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A494937821A8;
	Tue,  4 Jun 2024 12:43:21 +0000 (UTC)
Message-ID: <29cc03d8-fad4-4bfb-8947-f25b1366b801@collabora.com>
Date: Tue, 4 Jun 2024 14:43:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: mediatek: mt7622: fix "emmc" pinctrl
 mux
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240604074916.7929-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240604074916.7929-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 04/06/24 09:49, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Value "emmc_rst" is a group name and should be part of the "groups"
> property.
> 
> This fixes:
> arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
>          from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
> arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
>          from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
> 
> Fixes: 3725ba3f5574 ("arm64: dts: mt7622: add pinctrl related device nodes")
> Fixes: 0b6286dd96c0 ("arm64: dts: mt7622: add bananapi BPI-R64 board")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



