Return-Path: <devicetree+bounces-206093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B67B2B876
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 06:55:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C28E19627F2
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 04:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEADD2BD030;
	Tue, 19 Aug 2025 04:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NI3MFEjN"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DF724DD1F
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755579327; cv=none; b=GI5j8zujdQtVJCmbyaWxxVxtkTOj03xl4gL23k4KT4d9UIdl2ZerYnhj1sBZHM20yF2TIu+yKBk40WYXA2rjAstv5NKMupq5HOAlh1PybP0SEwnhqPWPJKcWBlKQU97zv6KmjCsw+dMRrpJlNATQNOSSA81T8m/SzkmeIoF2x8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755579327; c=relaxed/simple;
	bh=nprV8fdhjDFokZkkJBwrVNrGcVdm5eZ5FF4cyTL7DgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=UCUBLLSLWSZqLClCxFVW9uAR5Vb11AgOsDtcBRjmx/mQSG3srV0yo+xZrW/5J+sRu7tG0l3C0GXQn8bmeE/p3btGYPJkGGqs07qVkYyzCbfe9n/qagFSqXCgWPxx3wf/AcFgBp/Pru9aqOvxd0x7I+B92k/MJcQ5Ii9oOpKisJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=NI3MFEjN; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57J4snJb3233182;
	Mon, 18 Aug 2025 23:54:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755579289;
	bh=OA7Xl2y9m1pGQhcLJLJihjo9327iQyBxjRtMkAYl/Ds=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=NI3MFEjNMvGKVWrZLebUVp6djYQaBJ15aVESCGAARYSOtT4UF9jSmHoT2EuZ2RDCm
	 Pnm0lk2Rii7Mqt2CbfVTleHQ6uE3WV5oTaa2zUGmXoNuqPth+7mYGV/zVOjuljt3ML
	 SWEOh0eI8+fEpfp6qZMnc0TuabubpyMEibQmcJII=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57J4smI4332746
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 18 Aug 2025 23:54:48 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 18
 Aug 2025 23:54:48 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Mon, 18 Aug 2025 23:54:48 -0500
Received: from [172.24.20.139] (lt5cd2489kgj.dhcp.ti.com [172.24.20.139])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57J4sfiG2430521;
	Mon, 18 Aug 2025 23:54:42 -0500
Message-ID: <06a9fa20-e45a-458c-971a-a6f0f1d08004@ti.com>
Date: Tue, 19 Aug 2025 10:24:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
To: Harikrishna Shenoy <h-shenoy@ti.com>, <neil.armstrong@linaro.org>,
        <jessica.zhang@oss.qualcomm.com>, <airlied@gmail.com>,
        <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nm@ti.com>,
        <vigneshr@ti.com>, <kristo@kernel.org>, <thierry.reding@gmail.com>,
        <sam@ravnborg.org>, <dri-devel@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20250818154746.1373656-2-h-shenoy@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea


On 8/18/2025 9:17 PM, Harikrishna Shenoy wrote:
> Add RPi DSI panel[0] as a valid compatible for simple-panel.
>
> [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
>
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
>   .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 1ac1f0219079..65f486f2bc9d 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -268,6 +268,8 @@ properties:
>         - rocktech,rk070er9427
>           # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
>         - rocktech,rk043fn48h
> +        # Raspberry, 7" dsi panel
> +      - rpi,7inch-dsi

Hello Hari,

Driver changes should come first to match new compatible before device 
tree changes.


>           # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
>         - samsung,ltl101al01
>           # Samsung Electronics 10.1" WSVGA TFT LCD panel

