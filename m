Return-Path: <devicetree+bounces-66872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D69A8C55E2
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 14:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E3551C2191E
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 12:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76FAD40849;
	Tue, 14 May 2024 12:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="05/nQMvm"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B203D971
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 12:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715688949; cv=none; b=R2GW16EUBizwOchZ3daow/kLaFJf4/BM4i2QBOCqH1lzHWxQdgKRuhHwnTiknDHtkSaqlXXkLzSKghpBLdSxHEemrd3ftqfKta7yi2L4MIXry6gjdSpn15547NcYUlNwAVljb7Wg//2e0DlJgVM1td1JuEcMTQ7RYhsUhrwpd0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715688949; c=relaxed/simple;
	bh=V1ALFL3Ofg23rEQA7JjAvEWOEBiuGxWlwTVlh0vhA+A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HCyXy6+MTyon9otizNUrglrIM0p+JZDgkdTN40szr9YO4Jqrg/lrwVqbu6b+7xJDO/z5cri2QkVnDuFyOL87a48uziAY6BMiKp6pCNeJ6CI8sKpuAEl8SUDIWNVti5Fj2w1O/ZULX+fAbmUKaMzeT8PSSmEZpkxEZzNprtzSEcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=05/nQMvm; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715688946;
	bh=V1ALFL3Ofg23rEQA7JjAvEWOEBiuGxWlwTVlh0vhA+A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=05/nQMvmvmRvuQ9JBknzao7jOQfBabCx1tQ5FPP/ng6xNI99r3o1SUTigySTvPzqt
	 xQYKpfwLrT7SGzI3JoV52NSJnzOfrAPX846NpGkGL8f7xwPXVCjEaZAZGcXA9BV5t8
	 Z8X4Ta02XfajyanWjwj4ddYN1PM04zRBQ4RZnRty9F77z8iT1FbeX1QaYqehwEyVEy
	 OfDtinfMCT0BT3EAw/qAhp9Uzj0kgZBY4cC5jX1g9TMzsmAlqrTigEHRKyXIAc70nk
	 7oBwZEgXZA44BUGofdIw0LRfItZDKN7zUbVHUqes6RyV0//7o3jqrLJX6gjEm9lvGT
	 mNGTTwI13ka2A==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4372137810C3;
	Tue, 14 May 2024 12:15:45 +0000 (UTC)
Message-ID: <68d24f47-1b4d-4278-b7db-bc0eacbbfcb4@collabora.com>
Date: Tue, 14 May 2024 14:15:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/2] dt-bindings: nvmem: mediatek: efuse: add support
 for MT7981
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Lala Lin <lala.lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240514015154.11206-1-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240514015154.11206-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 14/05/24 03:51, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Add compatible for MT7981 SoC.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



