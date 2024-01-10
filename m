Return-Path: <devicetree+bounces-31052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D52829CA0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 15:32:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2EFF5B25076
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 14:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1341D482DA;
	Wed, 10 Jan 2024 14:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ska20mzo"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B005CECF;
	Wed, 10 Jan 2024 14:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704897123;
	bh=92+NEWE1LDViP0h1iQCswWVx0PEJNeyVVBJSKlW9510=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ska20mzoexdmYqZc0UW3LJoWQugjfNTpAWMAbFXbuBcmfsJOm6S2+29FUorGfgc9Y
	 SBlaqk0gbA5h1nBJd7qFWTWICnbbH12/OhsSJCMU8ibgwCY/aGFNeWU87SLvOFrPQU
	 NkAC1PmvT0kt+cBd8L3d9HgjjVL1ohVp9DKj6/1IRZj0gx/FN7KJ8e3pd+M2BX9fel
	 wU0eq4VrHDaHzpkTvA2DKs7gbLzvq6lZ6ewXzi8koDnPb/NWgKnnhNhkG7GQTE2nMK
	 HUaSDbl6OuEosM1dzN5GCBledWkk5iD+nrQ+EERoYoePiabqlbZi+8DlomoQu/0Cu/
	 5QRIgKZiVw4xQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 68742378045F;
	Wed, 10 Jan 2024 14:32:02 +0000 (UTC)
Message-ID: <e325a4d4-0df7-499c-9d55-7da093b744ea@collabora.com>
Date: Wed, 10 Jan 2024 15:32:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: mediatek: cherry: Describe CPU
 supplies
Content-Language: en-US
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: kernel@collabora.com, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20240110142305.755367-1-nfraprado@collabora.com>
 <20240110142305.755367-2-nfraprado@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240110142305.755367-2-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 10/01/24 15:23, Nícolas F. R. A. Prado ha scritto:
> Describe in each CPU node the regulator supplying it.
> 
> Fixes: 260c04d425eb ("arm64: dts: mediatek: cherry: Enable MT6315 regulators on SPMI bus")
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



