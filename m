Return-Path: <devicetree+bounces-135302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED575A00704
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:33:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CBE57A15A4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1895B1EC00B;
	Fri,  3 Jan 2025 09:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FF6W3Kpd"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2691E47C6;
	Fri,  3 Jan 2025 09:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735896778; cv=none; b=I9lSANUiVmZJy9FY40+f2Ic704/mMQ2oza654RPhkKJ8Bfe93rgP7PU5RaRHatgNl4GoaV8t5pe6pEbFVDQvVYDZ+ulDxBSCTq173Jt9ksfDmNesOsFSccxfzk7vNhcLfBe2FOdzbBdtYvBuaip6cMnjMlUww0HEwtFAs/lAR04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735896778; c=relaxed/simple;
	bh=FY5E9cL/SAYzqzsgtK3mk9C8t7xTelHCQ0xwdrVefoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GT9hf6X3yRLVBdSBIzoWhr7o81AK8KEw+ELIZEQgFzeC3yHbHqNRoI1yeg8Cono0UqYzhCAQzpKC8KI5y2arTcOO1iM7lTAkP0vs0wKdn73ChFE6NrIbDTDDd+mwSfqUU1WYe6KHBTWs2lmPz+Y5w+guR7BFHK0roTzkuo0DBvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FF6W3Kpd; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1735896774;
	bh=FY5E9cL/SAYzqzsgtK3mk9C8t7xTelHCQ0xwdrVefoM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FF6W3Kpd/m+c0lo7fg1PtLKOmpuzIDHPDkecVV3ai2ae1w8RwKwKWmKqIIPYlcQcu
	 hrcb+R/1JfdOeU3/G42lI86QdDjJG3mIY2VMEftHoDAoD3fh76W13H4p+1KMmJm1mU
	 8LeyzhYNy/rdLgCsvUfd9QSzpYfZuGrAuNBM9QUrJ7YtTJmKGJXO5XbwBTotVQB/8o
	 oWlyHTrDdnClumMr7LuWaAWMo+aFsuUq5uxVMHeWgj+z8tbTZDLaghGrf7NUqbDASs
	 CWDFWIxXZZYKmZcPZnabLBx7qEAe0vjbtEIdRZzbK22A3aQPveJlgBfTS/YA8Cy2h/
	 /BNr+9WCLgKng==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5953F17E153F;
	Fri,  3 Jan 2025 10:32:53 +0100 (CET)
Message-ID: <e7d162b8-23c4-4a75-9675-9ba82564a4ff@collabora.com>
Date: Fri, 3 Jan 2025 10:32:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: mediatek: Add MT8186 Skitty Chromebooks
To: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 herbert1_wu@pegatron.corp-partner.google.com
References: <20250103-b4-add_mt8186_skitty-v1-1-96ac770842d8@pegatron.corp-partner.google.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250103-b4-add_mt8186_skitty-v1-1-96ac770842d8@pegatron.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 03/01/25 10:23, Geoffrey Chien ha scritto:
> Add an entry for the MT8186 based Skitty Chromebooks, also known as the
> HP Chromebook G1m 11 inch. The device is a clamshell laptop with an
> optional touchscreen or keyboard.
> 

Since it makes no sense to have this device in the binding without actual
devicetrees, please send this one as the first patch in a series where you
introduce those devices.

Cheers,
Angelo

> Signed-off-by: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
> ---
>   Documentation/devicetree/bindings/arm/mediatek.yaml | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 1d4bb50fcd8d9aadb7b77e144a474b79da005056..b57e86946d7565720fdee31b2bbef288b0508769 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -263,6 +263,14 @@ properties:
>             - const: google,steelix-sku196608
>             - const: google,steelix
>             - const: mediatek,mt8186
> +      - description: Google Skitty (HP Chromebook G1m 11 inch)
> +        items:
> +          - const: google,skitty-sku1
> +          - const: google,skitty-sku2
> +          - const: google,skitty-sku3
> +          - const: google,skitty-sku4
> +          - const: google,skitty
> +          - const: mediatek,mt8186
>         - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
>           items:
>             - enum:
> 
> ---
> base-commit: 0bc21e701a6ffacfdde7f04f87d664d82e8a13bf
> change-id: 20250103-b4-add_mt8186_skitty-fe04d863592f
> 
> Best regards,



