Return-Path: <devicetree+bounces-66873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DA08C55E3
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 14:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85B4C1F22D44
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 12:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCF940862;
	Tue, 14 May 2024 12:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="0/31zi3X"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED073BBF2
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 12:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715688957; cv=none; b=dJJaHZhANYitOFUhCJuS2n0e1MRKqBg3uBPFSIgF/XfGur1FcZ90r2sv8rE5NARQXkhqCASXG9kHGW4qbiV/S8xVDLWt2dDcUTwoA6YNKhIkdar7wq9TRpLF+NAUy34EV6B4Uj+hybMiuv9IFIiEd0Y1JplDtg/fljdTj5IYEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715688957; c=relaxed/simple;
	bh=9HvbDQHywa5Kw3jlsyHGiWQ5xSpP/TRf4SHKl9EEa98=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ElVJlOvfVb48tLIYws5Uo2N6Ew7MVFyCyYknW8RMWVQ+s6xG+VN3vUDT+extQLqnxyBh+LsXtPr8ePGuL6MFCsjQDOVM0yyB/82wvgm9zQdEbgLnrJz/I6cWirXKgQxM871xJzWgazl5BrfcYSRcErKRRefsWZHbzWBN7TWsDgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=0/31zi3X; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715688954;
	bh=9HvbDQHywa5Kw3jlsyHGiWQ5xSpP/TRf4SHKl9EEa98=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=0/31zi3Xpqa2nLwdmrnOJaVdqJ4YXelmArA8+9YNI8z8mZu/XLiX7QTLji5PjIDAH
	 09EjPcrAcl8me6OmvCp7rd8MZeCYlYKp37Hoe07OSzz6AuOZPVpAD9JJOjuXgjnvcm
	 wjOxpmjbvOIO7oTwybvS1pKlCOPD3DA15hqEvdvHP1pYpsbmoIVywCpaKWRYbEk3at
	 22NJyAxtKsrZuatISIKL5FkNIIKSl+0AIPAv4pbbImeZASEnQ3gG4HLCBZxLc0KzRV
	 4rSXUHYRJS2rFW18ZAOyw4Ke91c6yursCrK9+u+TkCPMK74iEmKNjHwWH1aHUyVVoK
	 Ai30jfj++Z/eA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B567C37810C3;
	Tue, 14 May 2024 12:15:53 +0000 (UTC)
Message-ID: <4f5d2ad2-1986-4ba8-afdb-a213135fe027@collabora.com>
Date: Tue, 14 May 2024 14:15:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/2] arm64: dts: mediatek: mt7981: add efuse block
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
 <20240514015154.11206-2-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240514015154.11206-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 14/05/24 03:51, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> MT7981 (Filogic 820) uses efuse for storing calibration data.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



