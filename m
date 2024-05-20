Return-Path: <devicetree+bounces-67771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 592188C9AB8
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 11:49:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F00EA1F20F9E
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 09:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0BBB47A52;
	Mon, 20 May 2024 09:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hQbbfEhG"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363B147779
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 09:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716198586; cv=none; b=u7L/RCWYaK4e+R0tJD/JWQw1Pa0jhYCVoBafxTdKxpMKf6Gq5IKcAp+Cz4LAp7ekUGPfz+9U9CgfNEAcSYqC8B6b6W2m/k9HR8ur8I5A5UIEVfDmjFdQTsAw9mYFJuik1bgNSWcCeYwwQyIKnn9OWjVnuyCINOu6miaPh+xqdHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716198586; c=relaxed/simple;
	bh=5kaaqc4sOBPWJZsZR1aq/xSydsIORP5Mc5R3f/xOljU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CkihVIShTY+aISS849XcUsbrt1vwZsrC24TElHaz7bpD6ax0eheVkey/DY+/4wFoFFIL7pYuhZIXGLU6hbtHelnh8iX6eH9loCcQ15c773jUeEGIgz5TfMCJ/lSzfPc3oRBVLL1HzGg2syKlfQwvfarnGszE3CyKifjNNPYV3sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hQbbfEhG; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716198583;
	bh=5kaaqc4sOBPWJZsZR1aq/xSydsIORP5Mc5R3f/xOljU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hQbbfEhGMCZHb6IxHVh8piSzmEoPlfnh5c6t8hqHdLVrheIh4P7rM4craL8Xe0reF
	 WDAtgnvjJ9J5ZsYye+LNQ40O8wzW3vydTXXqOoatuLtLVucI2wCz8glvDnGR+MFHo7
	 HK/BdawW25UnOPyLhKoqAqHp4dFvwtrj1SkF9yuPWyvZjSWHEaZiLWqzhPFbz5cyri
	 cMS1KsHoO8AtPBnZlILknGa4dRpxI880rk0Fj/V3dn88MLc3YwHwUZumWpkTtx4qkD
	 cLchGJQRf1Q4IBfCzkWDxNJ3Zjl7Nov8Jv491Pkbf7k2Hkj9qQbvwDJ4cAolaYvnCR
	 /YOG4qW0oWlLg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B3BC237820CD;
	Mon, 20 May 2024 09:49:42 +0000 (UTC)
Message-ID: <e346b1f0-a2db-4bfd-a29a-ef455d839a04@collabora.com>
Date: Mon, 20 May 2024 11:49:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: defconfig: Enable Airoha pcie phy driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 amitsinght@marvell.com
References: <cover.1716031610.git.lorenzo@kernel.org>
 <10f28b494988882187ec4c870c70ed09edc9c064.1716031610.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <10f28b494988882187ec4c870c70ed09edc9c064.1716031610.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 18/05/24 13:31, Lorenzo Bianconi ha scritto:
> Enables the PHY_AIROHA_PCIE config by default.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



