Return-Path: <devicetree+bounces-12475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAAF7D9A4C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:44:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BF44B2136F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D5120B09;
	Fri, 27 Oct 2023 13:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="vjD+cbFc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224B21EA8F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:44:04 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71C9CCA;
	Fri, 27 Oct 2023 06:44:02 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39RDhQVF028798;
	Fri, 27 Oct 2023 08:43:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698414206;
	bh=3rDRLhnrXxERWUz9JFDk4LH+AO1bqojQxFOibShO0ks=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=vjD+cbFcueLVtw0uf67Onh1BVyECSXGfwPh0vEItvMMFnPhGwzhAbuqd0fP1gfn9i
	 IWuuLsp+gJHorMGiKvq+Ia+0485u9o0Ed8Vj/04rle+bx383FU8ZZPuVGJDN3IBptM
	 /FCvFnrtzBSyS/xflPq3gLb+cUqCCcGAuwxAtss8=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39RDhQJS061568
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 27 Oct 2023 08:43:26 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 27
 Oct 2023 08:43:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 27 Oct 2023 08:43:26 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39RDhPp2109082;
	Fri, 27 Oct 2023 08:43:25 -0500
Date: Fri, 27 Oct 2023 08:43:25 -0500
From: Nishanth Menon <nm@ti.com>
To: Jan Kiszka <jan.kiszka@siemens.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Bao Cheng Su
	<baocheng.su@siemens.com>,
        Benedikt Niedermayr
	<benedikt.niedermayr@siemens.com>
Subject: Re: [PATCH 4/7] arm64: dts: ti: iot2050: Refactor the m.2 and
 minipcie power pin
Message-ID: <20231027134325.qvwe4ocpf36qvmry@prism>
References: <cover.1698413678.git.jan.kiszka@siemens.com>
 <ccac993e604b912bb8472f08f5fd43c528c7973b.1698413678.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ccac993e604b912bb8472f08f5fd43c528c7973b.1698413678.git.jan.kiszka@siemens.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 15:34-20231027, Jan Kiszka wrote:
> From: Su Bao Cheng <baocheng.su@siemens.com>
> 
> Make the m.2 power control pin also available on miniPCIE variants.
> 
> This can fix some miniPCIE card hang issue, by forcing a power on reset
> during boot.
> 
> Signed-off-by: Baocheng Su <baocheng.su@siemens.com>
> ---

Jan - please Sign-off for the carried chain..

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

