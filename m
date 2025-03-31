Return-Path: <devicetree+bounces-161962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9FBA76299
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 10:40:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B93B1889BD9
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 08:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D317E1684B0;
	Mon, 31 Mar 2025 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="g2ZSF3sz"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE8E524B0;
	Mon, 31 Mar 2025 08:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743410418; cv=none; b=B06sfAHEiPVSm5jQoHSdxJ1ga/l5G7GmlD/kT8fit3fVxYSE92XqhyqF9O7aPNcyPnLYsAzeD20hLuW831O6GnZUWj5z5CZDJF7yOhacxyHjqOpqMj0Odtxw2eIuX18xkSubyPrjM+VZJ53LB/TzG0idAS7iofZZBLE3pW/9wtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743410418; c=relaxed/simple;
	bh=ypcrZAQMEpvhOWeBUP5X3m7CMpEjeUmAFI7M8hG6qVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gjxCPrsHeKxkcFO5C09unRVI3jV/LH58sER7YPPWUQ/gmjIsANh0tTc7VP6+gWBND982vtOfSWHCn/6wsuFJVsRVwYKncqiPqyZ83YAk/kr6tviwcCilvAZG7LNjvEUz+X7KjxNsc4F3Yz7bK1mzoYnaw+irh7yhTV9h2w6kDPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=g2ZSF3sz; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1743410414;
	bh=ypcrZAQMEpvhOWeBUP5X3m7CMpEjeUmAFI7M8hG6qVo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=g2ZSF3szLbk4CKxgx5lsyICscYAmAzRVfUHo6ib/UJMZ56Eq6wfxwG7AcfTdQtssx
	 thF9QOf3CU/ngGOAA3mri8RbjKhItKS7SHYmVPU6xLMwHmqs1P12EFQK+7sVWieGQ3
	 e0OD2Bj9bpVZIPBj1Dde06Pk7GTMlSTCbF0pjbb5ixRz9F0cErBOba0pix8JMxjlzD
	 LG4bPSi1+QnzhwQSB/ye0aEMJilKVO4k8fSfKomy0kS4paebpCGuX6QIewdhZCRyZp
	 ejs4IE6VOUSHF54K6Iq3g1MRoi0hmXULMTu6YCZ6L43RVLn2c48BpcpVamvv8ZQ2/n
	 c+NKvyoR4Rc0w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EF98717E0860;
	Mon, 31 Mar 2025 10:40:13 +0200 (CEST)
Message-ID: <86725036-4204-49a8-a841-4f9eff69aa6f@collabora.com>
Date: Mon, 31 Mar 2025 10:40:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta
 Chromebook
To: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>,
 sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch,
 dianders@google.com, hsinyi@google.com, matthias.bgg@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knoxchiou@google.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20250328094034.3400233-1-cengjianeng@huaqin.corp-partner.google.com>
 <20250328094034.3400233-2-cengjianeng@huaqin.corp-partner.google.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250328094034.3400233-2-cengjianeng@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 28/03/25 10:40, Jianeng Ceng ha scritto:
> Ponyta is a custom label Chromebook based on MT8186. It is a
> self-developed project of Huaqin and has no fixed OEM.
> 
> Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
> ---
> Chage in V9:
> - No change.
> 
> Changes in v8:
> - PATCH 1/2: Remove custom label.
> - Link to v7:https://lore.kernel.org/all/01020191ea98a643-2d0be5d1-e00b-48e0-b823-bfe2c65b0d00-000000@eu-west-1.amazonses.com/
> 
> Chage since V6:
> - No change.
> 
> Changes in v5:
> - PATCH 1/2: Remove sku2147483647.
> - Link to v4:https://lore.kernel.org/all/20240906085739.1322676-2-cengjianeng@huaqin.corp-partner.google.com/
> 
> Changes in v4:
> - PATCH 1/2: Add more info for Ponyta custom label in commit.
> - Link to v3:https://lore.kernel.org/all/20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com/
> 
> Changes in v3:
> - PATCH 1/2: Modify lable to label.
> - Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/
> 
> Chage since V2:
> - No change.
> 
> ---
>   Documentation/devicetree/bindings/arm/mediatek.yaml | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 108ae5e0185d..fdc57c140af7 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -285,6 +285,16 @@ properties:
>             - const: google,steelix-sku393218
>             - const: google,steelix
>             - const: mediatek,mt8186
> +      - description: Google Ponyta
> +        items:

            items:
              - enum:
                  - google,ponyta-sku0
                  - google,ponyta-sku1

> +          - const: google,ponyta-sku0
> +          - const: google,ponyta
> +          - const: mediatek,mt8186

Regards,
Angelo

> +      - description: Google Ponyta
> +        items:
> +          - const: google,ponyta-sku1
> +          - const: google,ponyta
> +          - const: mediatek,mt8186
>         - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
>           items:
>             - const: google,steelix-sku196609




