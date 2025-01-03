Return-Path: <devicetree+bounces-135396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C92A2A00D33
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2DFE3A173E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F261FCCEB;
	Fri,  3 Jan 2025 17:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NVpfXiXP"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FB31FCF5F;
	Fri,  3 Jan 2025 17:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926467; cv=none; b=NNH6jBciKOq4gacww/cZ4XPOUhrkUyueN3p8soAdDjFbG/HdSjlbwLV2MAokr/PCChoFWnr3tFTLON4LkhdDp/aTKgY0OS6LCtfC+kTzGtnGW6a7FYlKBNf+SmXso3bcpKVMVJHR0JBxJexGPwLEQ9RDFjHEBmdzvvolqczx0e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926467; c=relaxed/simple;
	bh=MQdsJql5d3yPyKJxKaCsyHaq8tv8DNVR3SsyvA+Z0sY=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WBYq7WTHPNkB995ajYYpNw7P+fzLRSkzNY4VRFvxq2BCNkP/vkWnWTEbTWht8z7vR9ik3AtbyKYm8L19H5JpXpsCuadbvWv8y4Yhg6fLc8MTl0jJ+oOhApSORIQI8kSghileAN4LebQMD3YEwu8FDiSmJu3WUrY2m83pNNeZ8c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=NVpfXiXP; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 503HlZaH2351085
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 3 Jan 2025 11:47:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926456;
	bh=a3kcGnss3UfKNl3x3hay2WIApw1rHDVHML9Whzm2eBU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=NVpfXiXP9j04xwmsYtDAbq8TMtKbLbEAVXMj3XmVcbLebXJP2Npw3hkcIJymBRY7W
	 9uT2+Xq3dGFv2+UNdEy68+WmwRkTDw0mCNBBGUDXDR6QkVQ+eBQJv+T+s0jhjNMlzC
	 ULjl6GsTChJjJRisRLvDjhor9t1VBgehAI7vSbnk=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503HlZnm015428
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:47:35 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:47:35 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:47:35 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HlYx1068610;
	Fri, 3 Jan 2025 11:47:35 -0600
Date: Fri, 3 Jan 2025 23:17:34 +0530
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
Subject: Re: [PATCH 3/3] dt-bindings: mfd: syscon: Fix
 al,alpine-sysfabric-service compatible
Message-ID: <vmik3gi4wp6gks66d2op4nrerk6mae34lp2uhqfmwoc56mwwh7@6dwabqyey6zc>
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-4-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250103174524.28768-4-afd@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Fri, Jan 03, 2025 at 11:45:24AM -0600, Andrew Davis wrote:
> This compatible seems to be missing the last 'e', looks to be a typo
> when creating this file. Noticed this when diff'ing the two compatible
> lists (which should stay in sync).
> 
> Fixes: f97b0435c857 ("dt-bindings: mfd: syscon: Split and enforce documenting MFD children")
> Signed-off-by: Andrew Davis <afd@ti.com>

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Regards,
Siddharth.

> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 1f3e67f432e7b..5eb0cfe1f0b89 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -27,7 +27,7 @@ select:
>      compatible:
>        contains:
>          enum:
> -          - al,alpine-sysfabric-servic
> +          - al,alpine-sysfabric-service
>            - allwinner,sun8i-a83t-system-controller
>            - allwinner,sun8i-h3-system-controller
>            - allwinner,sun8i-v3s-system-controller
> -- 
> 2.39.2
> 

