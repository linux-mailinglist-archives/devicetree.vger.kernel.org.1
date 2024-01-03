Return-Path: <devicetree+bounces-29451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10895822F01
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 220741C236EC
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0F519BCD;
	Wed,  3 Jan 2024 13:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZzXXQBJd"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B9119BC0
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704290227;
	bh=FohiWpenjn0vNGDbcZBW38SoHVuZ1OGSbUJggTsLqgs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZzXXQBJdzykjsCrcUgA/LCSJlank+anufH/9fkiT4ma+PPsQm2Z8GYP49qHimnrbt
	 2KaILFMhLcnuq9/wUGWRr4M38omHKX9i6StJSfxdH89NVlV9iBFW57BuKEjvzVXrHF
	 8eA58Q7gM0tpRJTCn5rMpyVm4aukN033cLiY+RmI88xwWXIrJdDpIEdC5qOraIPNIP
	 1OMDasSgG+1IWkdWxribDlqtnRgVyjF9413jJciIMhuGZX3SUPpv4rYA5WSLzy6z3y
	 GWOfxiuWYJOQApqAJLIYmtda3vUX7HLIhIcqw0RQjeQoOMrw0KKn3+66zncd3ko3JB
	 kpp2SXI9dbQkQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CA58E37813CB;
	Wed,  3 Jan 2024 13:57:06 +0000 (UTC)
Message-ID: <4a1121da-6b6a-4970-9da2-ebc4f2cb9629@collabora.com>
Date: Wed, 3 Jan 2024 14:57:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: drop crypto's
 unneeded/invalid clock name
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Sam Shih <sam.shih@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116132411.7665-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231116132411.7665-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 16/11/23 14:24, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> According to the "inside-secure,safexcel-eip97" binding "clock-names" is
> required only if there are two clocks specified. If present the first
> name must by "core".
> 
> Name "infra_eip97_ck" is invalid and was probably just a typo. Drop it.
> 
> Fixes: ecc5287cfe53 ("arm64: dts: mt7986: add crypto related device nodes")
> Cc: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



