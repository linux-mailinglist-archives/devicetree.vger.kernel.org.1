Return-Path: <devicetree+bounces-135395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E01C2A00D31
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF0DE3A1790
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4081FC7F4;
	Fri,  3 Jan 2025 17:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="QLMVGzdf"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E8E1FBEA5;
	Fri,  3 Jan 2025 17:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926441; cv=none; b=OAiQQTq5bSXFDszpeyMVrNev2X9BFqdmECA28fZLFOy1TkbXAKpt1aAt7l1IzcnvXePp3PJDlOJ7gI+sdtlFbo/NGWUog9/4FTGkYpGdRPp97yfvJGIHj/cy4T8WU85lTpQALDdo14oGEsaCCOAxr4kTb1blXDm6FkZVVdPVnW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926441; c=relaxed/simple;
	bh=k1CpeLJcwG7qFDrGCaeo9kYe83bijf9zk3An/yonhcs=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oimYg3sX7EumFt7CJrLdA43XPjLuI8DOg+3FyN6p5QT8knorFeazzM1l+ohqZJx17Cb4B+izFX07KTq2sE9YVN96XX8LZ+zSfSV+7itYekRDTZ7Ny8TLkT0iJwj5xg/CNT85s060g3t/HOWArzdtdN1DEgot+LQCbq2NJ9js+n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=QLMVGzdf; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 503Hl8oH017412;
	Fri, 3 Jan 2025 11:47:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926428;
	bh=wZSBp++jQY+lix3jh2rDYbunAFBZ7/rXu1COKIGmHc0=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=QLMVGzdfi56qTiGzBMW0hnZ2TxapS4ALbNLpH+8s5flBVIVG2oipEIPo+DTktkP5m
	 OCicsmRw1ne841mtNbQ/aJekHiD3Olzs0emnFwgozDsN9r8KrSfpAPRx0+BSEZZdJu
	 NhmdYmZhIjIQrLnn9AJ19bIeHzjulxbqovdaNQsE=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503Hl84a015263
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:47:08 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:47:08 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:47:08 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503Hl6MW054799;
	Fri, 3 Jan 2025 11:47:07 -0600
Date: Fri, 3 Jan 2025 23:17:06 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Andrew Davis <afd@ti.com>
CC: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Siddharth
 Vadapalli <s-vadapalli@ti.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Romain
 Naour <romain.naour@skf.com>,
        AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: syscon: Fix
 ti,j721e-acspcie-proxy-ctrl compatible
Message-ID: <5qiondxrp4ct56opd4nm6wpjmsgdcdlpqcjkgxxg56no3ydo63@r6sllrxth4ym>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-3-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250103174524.28768-3-afd@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Fri, Jan 03, 2025 at 11:45:23AM -0600, Andrew Davis wrote:
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old
> tools work.
> 
> Fixes: 8dfc4a014086 ("dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible")
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

Thank you for the fix.

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Regards,
Siddharth.

>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 717b616349e3d..1f3e67f432e7b 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -214,6 +214,7 @@ properties:
>            - ti,am625-dss-oldi-io-ctrl
>            - ti,am62p-cpsw-mac-efuse
>            - ti,am654-dss-oldi-io-ctrl
> +          - ti,j721e-acspcie-proxy-ctrl
>            - ti,j784s4-acspcie-proxy-ctrl
>            - ti,j784s4-pcie-ctrl
>            - ti,keystone-pllctrl
> -- 
> 2.39.2
> 

