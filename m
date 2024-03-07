Return-Path: <devicetree+bounces-49068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB0A874D66
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:29:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A41F71F21C77
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFBD486AC0;
	Thu,  7 Mar 2024 11:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DxzWPNSN"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1C4DDC9
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 11:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709810940; cv=none; b=s44eeloT9zrkoIUzDTzAyKiCYxp+1YG/y3NEII2gfbSjjhSJH6+2IrlGjQr60milsUducWwB346NK0TcNu5LPk+ZZPkMTFYmk1Mc4uSZwGR6XFwReUW6G2sDo86dCTHWuEYO+g6EUVMRBXZybz4tGJlf4d8e1F0qUt4XwzsI4RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709810940; c=relaxed/simple;
	bh=DsmdHU+9mmFRdTpAVubTlUvusLfY1V22kOpf9+64xIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=euMHGecDdDLu4zUwzQV5/qgxDfQxrzGCEhU20rp/INn4xVAvczmW88TL5ibh31BiI95lRfQAaJq3KjuG6+WwUWmWVrigHMjSgsFsuc47kmFtexcrKEAjGRBoSDX99LgqTwc7FZnizbLEXlHbSLhPyQa3rzEPGSsMsPiuoz+dH9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=DxzWPNSN; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709810938;
	bh=DsmdHU+9mmFRdTpAVubTlUvusLfY1V22kOpf9+64xIY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DxzWPNSNLy7Rn8Zp8XztZuTy9OzbQrNXuYET5D2OUTz6oA9Fpmc+CLQZBfHoCoD2n
	 itTX6rqllbDV5s7TIIJ7WcFELAc/r6/2d0dtBEBuRyOe7x022fJAhUh4bJOYYBrDRT
	 tnolDZg9OW1bJM+KAINg95FGgDj1bPeiUJ9ILgY8xaHLLAY05bOD0y/0/IcCOLc+OS
	 TdCZT1wPNyBNqrrp7CLuCXFQ0twCUXkm+MouyxL8fnoxoSE0C/fzRhAemVFSssYF2l
	 VA6KcNmRTZSax0d2kRTFHwOMvzche/X7/g7gY59ejd4RSVIKDYoazHwR52Z68seFr/
	 D9jSVXZps47Dw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 31C3337820EA;
	Thu,  7 Mar 2024 11:28:57 +0000 (UTC)
Message-ID: <429803ff-9a80-4679-ac58-9a945947bfb7@collabora.com>
Date: Thu, 7 Mar 2024 12:28:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: arm64: dts: airoha: Add en7581 entry
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, nbd@nbd.name, john@phrozen.org,
 devicetree@vger.kernel.org, dd@embedd.com, catalin.marinas@arm.com,
 will@kernel.org, upstream@airoha.com, lorenzo.bianconi83@gmail.com
References: <cover.1709768157.git.lorenzo@kernel.org>
 <b29cdd8aa093aa76c77b8f602fa9363a1676ca3c.1709768157.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <b29cdd8aa093aa76c77b8f602fa9363a1676ca3c.1709768157.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 07/03/24 01:11, Lorenzo Bianconi ha scritto:
> Introduce Airoha EN7581 entry in Airoha dts binding.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



