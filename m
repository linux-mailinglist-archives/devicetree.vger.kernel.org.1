Return-Path: <devicetree+bounces-33875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B576836EB3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 19:00:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADA721C28FF3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 18:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6056953808;
	Mon, 22 Jan 2024 17:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="uBtCLccz"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C931C3EA64
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 17:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705944241; cv=none; b=ruuM9i5wtcgkh/nX6Ou5+9jYQLnlh1+oklcVCPHUSTzF/IBPFVPaMFEuOs1w8yzbCFAFTXQe2dQUMLhg89mu8egKmlhjAph22+TYkMMGwXflKCNS+HlQDm9WGv0Tfp2wm5NX6MgismdMzqwn6++jp5MCaQrdFrSRXP6/78Jc3UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705944241; c=relaxed/simple;
	bh=q/Db6h3lSGlyLo8SBnIe8RHfu81djoDKGGU7SHOYQ2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uPf9ofKGcFkCUIVN5h3CIEnj/H8zmgpbZ60UaIK1KLjOL5zsVCRiv/2hu9J3F1qwc9p9quDD3Xgp9n8fjdCYoofnonN1Bk8hPakyUBQqeb79enTfYH3q6H1CvoXKX5WQXthVHSTpqg5rK6fJ9Uhs5pS6wbJ97i5665fp8+DYId4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=uBtCLccz; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705944237;
	bh=q/Db6h3lSGlyLo8SBnIe8RHfu81djoDKGGU7SHOYQ2k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uBtCLcczeAtmD4FGIX8AHJyXbfc7pM4+ZDyKIlPkc8NiniQCpgajGOvz02NniCFe5
	 j9tYgO3EnjPsT7rinfmlHsF2ZPcnxV+gpcCA87+oPmj8TwrWvERXvjRpue13yfs7Km
	 MhLEHi6s0rEx8EUWgDfxgNPJKg42t+OqCZNKAof1vKPF1lPyIF3g7SO+CBI31BfCrl
	 Php9LcG5W0xM0kCeoTiociYFp26QrnMWqT/p9jKGSlGk/4TrNHfCSM+4xqbA67KipX
	 stkf5E+aoYW5DKCh2s2IA92iHElYZ8WE5NLQi56GBxIQCXUnl3d0lQ8JM1F1JbDq4X
	 rAghQ5nIlOdEg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5BE1E3780016;
	Mon, 22 Jan 2024 17:23:57 +0000 (UTC)
Message-ID: <fb04b007-f0d0-4aca-9cb2-6e6d42778560@collabora.com>
Date: Mon, 22 Jan 2024 18:23:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7622: add missing "device_type"
 to memory nodes
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240122132357.31264-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240122132357.31264-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 22/01/24 14:23, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes:
> arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: /: memory@40000000: 'device_type' is a required property
>          from schema $id: http://devicetree.org/schemas/memory.yaml#
> arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: /: memory@40000000: 'device_type' is a required property
>          from schema $id: http://devicetree.org/schemas/memory.yaml#
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


