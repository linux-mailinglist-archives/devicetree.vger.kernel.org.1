Return-Path: <devicetree+bounces-16266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDDA7EE26E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:15:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5159A1C2083A
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE3D31728;
	Thu, 16 Nov 2023 14:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kPMkCqRY"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A078711F;
	Thu, 16 Nov 2023 06:15:36 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 82342660734A;
	Thu, 16 Nov 2023 14:15:34 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700144135;
	bh=EIPsM67ANJzpy88Piqk/eKq1WBdo5WSII3uZmoT8sOk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kPMkCqRYwKWnoOxHiRwASL+IIWJYbjM4FcTkMQHZt3rYct2xV3lG6J9SIMtEAVs86
	 Du5Kj9l38OjG4SOd43rnBBRz0fuWpXLo1B2XvV+kGzv9FRWVARc+eo5CFq/5IWkqV4
	 syjVJhywj3pJZQY3CcEb1kbZoId+l0j1N8pa3oRumqTQQBV51hVnozMRuy1IvGDl0B
	 yOsNVhj/rAxPXJ3iPv4jClAky0ERJ5x/SnMbw2EJuWNaQXf+z/aFEibpOzDlXtDmfz
	 7ck3+XwaJKxY7gSJwg/vT2Gtv8pGup9/4It/dE3pD4KTl80hxmyfJ9qhnuOKlWLG6P
	 yZdE+Ua8lXrLw==
Message-ID: <a5a3e14f-9e10-46cb-a0a3-f76248738a87@collabora.com>
Date: Thu, 16 Nov 2023 15:15:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] dt-bindings: soc: mediatek: add mt8186 and mt8195
 svs dt-bindings
Content-Language: en-US
To: Mark Tseng <chun-jen.tseng@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Roger Lu <roger.lu@mediatek.com>,
 Kevin Hilman <khilman@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20231116110447.3598-1-chun-jen.tseng@mediatek.com>
 <20231116110447.3598-4-chun-jen.tseng@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231116110447.3598-4-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 16/11/23 12:04, Mark Tseng ha scritto:
> Support more SoC svs compatible in dt-bindings.
> 1. MT8186
> 2. MT8195
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



