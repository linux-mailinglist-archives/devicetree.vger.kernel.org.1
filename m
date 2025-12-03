Return-Path: <devicetree+bounces-243874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEEBC9DFC9
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 07:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE5F93A8DBA
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 06:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD14229B793;
	Wed,  3 Dec 2025 06:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NaO9rnjT"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F128C299948;
	Wed,  3 Dec 2025 06:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764744957; cv=none; b=KeCZIrgs8JPlUsJ6oCeQTOrlWC+QDrIwzVsNUzYo6Y1j1giKWpdPKjWNOGxzlrKGa6nqa/t0z8ZPoTAP2LADbwxfYc61ovHmb5LzzwihgZK0qu+DZ2yi5+LlqkOxhd/fInnSJZ4R7Ol0gcBEFigy0Y/GrHL/s8NTozwGoaWTB+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764744957; c=relaxed/simple;
	bh=Jr3cLN07BBBACpo2PlbpyKSvyKJvAvyoTJy/BiaPrWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jpo/Q1Jkd3me9qK5/3p8caKzFqGgGhLfUA3899FxQCuuvNIB+yMISKFCNZ9I29/fYhYpV9K6KxdgrR4iSuTtDct0QRi0V9QZxVnWsDL9NCVtB067pzdUfqlqRnJZ0QGVtg2riMI74HL+Ri9aBnE6jzyLj4Sosf0HBjXOGiJhF3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NaO9rnjT; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764744954;
	bh=Jr3cLN07BBBACpo2PlbpyKSvyKJvAvyoTJy/BiaPrWw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NaO9rnjTYoJeEBZ+ro4jHNYOVm1U6K1E5lujJy7HHDQJk+hmfxL/wbu2J4sXNzI5M
	 umTA8mPn91ULLAi5MhVgUY46aq8OaHMIz+51r6ImtHDAb0N54q4i03Rjc6CLrfAUy7
	 UahC+DjeKR6ZehQlf5Ssz4IIGbsG9sKyfdJTjISqDUQ/rP+joyT7OBKaFkahr5GLwZ
	 RxKKtQ2n8gJtYHPm/jtywhrYhqa+MJ4D9EGU16B0887Y7BaygUAQbcpNOwk9MVKiYQ
	 /18I8NSPM6CeZ+nK5saSYYYEtpi/ROHtso+2Rhen4D5QP0KIrx0QTEpKS8WAkl3NMP
	 keG00c9V3X7qA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C1B3717E0610;
	Wed,  3 Dec 2025 07:55:53 +0100 (CET)
Message-ID: <81ea7372-9172-4ee5-9a90-66cf06c40062@collabora.com>
Date: Wed, 3 Dec 2025 07:55:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Add Ezurio LLC
To: Gary Bisson <bisson.gary@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
 <20251202-review-v4-1-93f5cd2a0d4a@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251202-review-v4-1-93f5cd2a0d4a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 02/12/25 23:08, Gary Bisson ha scritto:
> Ezurio is the new name of Laird Connectivity after it acquired Boundary
> Devices.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



