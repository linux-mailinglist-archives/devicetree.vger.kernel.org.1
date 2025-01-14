Return-Path: <devicetree+bounces-138407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9DA10439
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C003C1679FB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B5BA22963C;
	Tue, 14 Jan 2025 10:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="PdcrG14S"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD2F22963E;
	Tue, 14 Jan 2025 10:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736850772; cv=none; b=B73N1m2tcVqw2e9q0Wa0XZd9H+20ZPZxQmqz5fJgQiLp3LogugNRSBJ6dK3oWTt3K3MB+65X82lfTSHYg4MJ0DOsz3fX2D6SJqkkIbc5apuAb4ryP6QaXi+jX5oOTaCR2KHqoq9pEdfAifjqDdmVP/Bb1IMxM3F1rrclW+D54ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736850772; c=relaxed/simple;
	bh=CTC+YbdW4Ewiuk5FcL00CLGEcAVWv1OsHzDignm0Dfk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z4Bv2TBiw9mEt8Rz6R/Fbu+b4X6axefkVI/3ORWOLCDpU/lwFTKCgQVekAImEQlk6kt9nWeN94+V0pRlzzlScBvU2lD1F7l10vUmjFSWf3H257zoGQQ1i31NiwkVzksUXSTsqLQiBderclrPcdf1ZPRjIh8H0QE3mVnDMUhAgmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=PdcrG14S; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736850768;
	bh=CTC+YbdW4Ewiuk5FcL00CLGEcAVWv1OsHzDignm0Dfk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PdcrG14S6Z8tQwvZqSpbmC9+EgKft7369xnEBRao/VV9sZ0L0oxqOpjnTp+j9eIoB
	 DfjnsVz/GLC0uiebelotYE0uwMBWKmxn4af9JwniStDAs6TtDGwrJ1y0oGmxcXfh99
	 fTnjmYoOLDgMUL4cL/UCk8YyGeY6f7Yw3g2XqoNArZ37WgP+cWpO8uaanwi1RFWV83
	 WjG/3L6M22xgFH0aQ3LWPzkaJk1DyspeZDm/HJCZMK0O5Zsm/BRW5yI6iTodGnhCCb
	 PExLXwiZTqZfwTj3iwghKJNrsfX+WPS+H8ZrJv1cwWAHwS19u1t+8Z+Uu6nlGylEKd
	 ZM77aX0xh2uxg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1A4D517E0DB7;
	Tue, 14 Jan 2025 11:32:48 +0100 (CET)
Message-ID: <ef8bbe7a-64fa-4e51-86f3-4f7fc0bb3760@collabora.com>
Date: Tue, 14 Jan 2025 11:32:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: add mt8370-evk board
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
 <20250114-dts_mt8370-genio-510-v1-1-8517ee0fdbe8@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250114-dts_mt8370-genio-510-v1-1-8517ee0fdbe8@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 14/01/25 08:38, Louis-Alexis Eyraud ha scritto:
> Add bindings for the MediaTek mt8370-evk board, also known
> as the "Genio 510-EVK".
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



