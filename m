Return-Path: <devicetree+bounces-137030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F01A07499
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:26:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 960D9188A511
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360C8216E2F;
	Thu,  9 Jan 2025 11:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bHPzlYqH"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72157216E01;
	Thu,  9 Jan 2025 11:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421950; cv=none; b=hki/eBE4BGRIUBZBjOuFD6mrDl7R+enh0IvZYzoNZwhAexvxqjTcqG1P3VfShek/EiLElIm3N2YLrEtvdc/GZ0q1GX9yU+vZ4EUJ4cTigobUpXQNDC5Fd4ctM870K35ShLgvU9lsJZZcOlSd7+yJE4Gq059bOooP3mMn8RNb4C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421950; c=relaxed/simple;
	bh=BFjD65WBExBPfvbw7B+Wz6EkV2SIH6yF0Zu5lxmDsmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=UKRTpe7xN5RSlfdbXZkXO8PaXpmcKeV6CB0eqXQhwEpSqqHqQKGl7/jvAo/e5zc1uctMKtI+CgM+vhmjqRANVRoaaeqEHH9xtEG3FpI9hxbJw5Haj+9kZIw8hqxsR1eQ+UaGfmQiNzj9/w2iQGF0sjRRBgFLG44hiSSGWnuWgeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=bHPzlYqH; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736421946;
	bh=BFjD65WBExBPfvbw7B+Wz6EkV2SIH6yF0Zu5lxmDsmw=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=bHPzlYqHxmIzKHxsDwer7XVhuQR2BP+c+iSDTBKf4gfSOWqOonyuONPtCOagSAKdl
	 7oTtWzfCp1fc9h27cJ1Gfstb7CEsz4NtOMmTYosaoVynbXiCW0tilPAA24MeuP5iIt
	 ZLZlMce+/ilo+t0BzAGzDgj/d4r4vSta2/jGJ/7QrtwyaP25dlRw3dSMrbimlNw65+
	 SaajaAnS0aZlN4/uGIRlF1R8geKyZDMA7l73cbvI1YIwtph7KgEtYY4ZrjJPoJg6dU
	 SAk+21yHo7Cfyx8cuTRigeRluwv1enUkCzU/bljpz1sRxPnvn9ZFBtb6JxyyfJRmof
	 5e+SkgXSUcg8A==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D6AA217E156E;
	Thu,  9 Jan 2025 12:25:45 +0100 (CET)
Message-ID: <578fd025-aa40-4b3d-bb4b-dbb9957db1c5@collabora.com>
Date: Thu, 9 Jan 2025 12:25:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: airoha: en7581: Add Clock Controller node
To: Christian Marangi <ansuelsmth@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Daniel Danzberger <dd@embedd.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@airoha.com
References: <20250105150328.15172-1-ansuelsmth@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250105150328.15172-1-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 05/01/25 16:03, Christian Marangi ha scritto:
> Add Clock Controller node for EN7581 SoC to correctly expose supported
> clock for any user in the SoC.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



