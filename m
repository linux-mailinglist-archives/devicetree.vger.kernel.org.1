Return-Path: <devicetree+bounces-135394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6D3A00D2D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ACE67A01E1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB91F1FC11D;
	Fri,  3 Jan 2025 17:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="p6S9hAZG"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DC41FE45D;
	Fri,  3 Jan 2025 17:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926419; cv=none; b=d5Itg4tCcrOCI7VRRKijkqLo9PXZqzLzuNBwlLwi2mKrzM666T65SQt1VQxnGEVqW8ma0m+E3O0ve2Rnd9yrfDSS/JOuOt+4gsonYKLjYVzA1wrCW2Y8nHwJzQeNW7mjQFwhcbYxsDG/4svz/PgEuMgPvEGmLyDNTJQG4KdL3ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926419; c=relaxed/simple;
	bh=i4IIygawpgl7eYofao7hlz0ovhch8iF892+i7ZObT0Y=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QbHrt8rN0HKPzrXcWBKaaazGQiDb+uaae1lOkzVJeks3VbSmGl65VQTTtI/qBGOw92JTATIcLnWog0qAD0AUHCAlmfZb06XURc4wIMIu1JWqolZQvrzFTN1L1CPoxc+DGN63enKVwHEKKoiAB0TLN60H/uUXtwt1UeHY+sOHGLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=p6S9hAZG; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 503Hkhhx004576;
	Fri, 3 Jan 2025 11:46:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926403;
	bh=iAUZg8CHElYoRGPQDYrjli+VtVe4mYYiZKd5cXjCd6Q=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=p6S9hAZGoveNiHyL0BZp71gI6/nrS5nEMUat450abzB1leq9PLCQO5tJRAAXys4w2
	 JVyOxQPB2rSsk23OllDE5tBnsPyGVfJWznZ/Y4kaXEGfgiVOrVL6z2gSWW+6xhMHUZ
	 XdUn8mFUyujgOU6QyW6KoXmWXzA+qJ7RymuLZ5R4=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503Hkhim015022
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:46:43 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:46:42 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:46:42 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HkfSC054322;
	Fri, 3 Jan 2025 11:46:42 -0600
Date: Fri, 3 Jan 2025 23:16:41 +0530
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
Subject: Re: [PATCH 1/3] dt-bindings: mfd: syscon: Fix
 ti,j784s4-acspcie-proxy-ctrl compatible
Message-ID: <yrtnazudhuacos3xv5aekd3flmyq3qckhce3pqrttbp2vz35c5@wftetgssqrx4>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-2-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250103174524.28768-2-afd@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Fri, Jan 03, 2025 at 11:45:22AM -0600, Andrew Davis wrote:
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old
> tools work.
> 
> Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
> Signed-off-by: Andrew Davis <afd@ti.com>

Thank you for the fix.

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Regards,
Siddharth.

> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 032cdd30d95f1..717b616349e3d 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -214,6 +214,7 @@ properties:
>            - ti,am625-dss-oldi-io-ctrl
>            - ti,am62p-cpsw-mac-efuse
>            - ti,am654-dss-oldi-io-ctrl
> +          - ti,j784s4-acspcie-proxy-ctrl
>            - ti,j784s4-pcie-ctrl
>            - ti,keystone-pllctrl
>        - const: syscon
> -- 
> 2.39.2
> 

