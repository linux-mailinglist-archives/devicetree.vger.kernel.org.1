Return-Path: <devicetree+bounces-66657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D52538C4198
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 15:15:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8ADE41F21910
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 13:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E416C1514CB;
	Mon, 13 May 2024 13:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eYl0WvTz"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E12459164
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715606125; cv=none; b=Y9/DwsEhsoH+FGer2PivgozlPN12AGrKPsbTTuieJn3F8zsnQ5vLFMaBOHO/BBBoygp5bkMpUvNVsmZYA4mgTmDUYvXA3vbrJCmAuKAk6E1HDt0/+iO4wqEzMZuNdMRvTmgwswscHRpCzSdBUVEozOXtq9ThGGgkaXEF0Pjer3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715606125; c=relaxed/simple;
	bh=daSAQj5IpyZ0HnjZJRbgB9oSLshpFm9szm4OU5AcIsI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tZCL+LP/L/CisK4gP2JsKFcFPBNCqWBWFdi48Zkc26AqNsXHIwadjdO2aPn9ogRmOgVA1n//dcZiOUHGkwsHNMg7/mWuH9oZx13XkiQo7Xc3gF0AW3W0gPDtj2LXtd1jeDKWPj0jppdayPnuu39NlJziWr9Ih1m2qshT/JJmAoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=eYl0WvTz; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715606122;
	bh=daSAQj5IpyZ0HnjZJRbgB9oSLshpFm9szm4OU5AcIsI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eYl0WvTz8Xh9XGQHodvFpVX63B1OvWEbgFYStNUPC82FERAAWK17g5SYUzmZpaTzK
	 mugDNXF6zgqNGNbKiGulxKZvN9w6qhhuU2MMOX/ySbv5morSyuJowmyUxqh2I7/Kd2
	 deAh7JwY5/EL7XLnY9ULgjg0PuNYEUFUWpVsXj3xtu7hr4Eul6+cwVVW0r5EUscCUy
	 WJYl70M2AL4OoSnuMNF+ZeAfygZAmX8e93RviSmj2JH6g/MnYaTkI5+oQKPIQ7yDo+
	 d3g8JNA0Xn2ykSGaeUzIU6I4fbAqgDSwcKg3si1Z8Bt9reqbOyIanQnQDfCCdUEwbd
	 V/u3o3VCFKmPw==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B3DF93782139;
	Mon, 13 May 2024 13:15:21 +0000 (UTC)
Message-ID: <bcdb240f-7e4d-4f8b-aa16-497b39b4c6be@collabora.com>
Date: Mon, 13 May 2024 15:15:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: airoha: Add EN7581 pcie-phy node
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <333ce5d4877facd7a7f262bdd8e53f2b772effff.1715527166.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <333ce5d4877facd7a7f262bdd8e53f2b772effff.1715527166.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> Introduce the Airoha EN7581 PCIe-phy node in Airoha EN7581 dtsi
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



