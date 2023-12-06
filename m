Return-Path: <devicetree+bounces-22411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FA48074BF
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:19:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1290281D25
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C374653B;
	Wed,  6 Dec 2023 16:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bInn8XiC"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 593DA137;
	Wed,  6 Dec 2023 08:18:56 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B6GIJLx088042;
	Wed, 6 Dec 2023 10:18:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701879499;
	bh=o8k7eGFtoMezBwtUBHQy6rA3Wv33CQWFzU0yo+yPsxA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bInn8XiCOl6vXU6gl5/6mdK5fdPl3opo+vo08f+YhoVB+pK0JtgE2s4mRoCzBrPCa
	 sOunxrdtEsSYxiSjb6mWJv8oXJGjnV4fivycMZWuV1yaTUQalMMfbD+pOXRO8tqrdd
	 dy5JpUbmkLzAi/17SpxyHVjjBEakk5MMBVUyFeN4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B6GIJk6023441
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 6 Dec 2023 10:18:19 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 6
 Dec 2023 10:18:19 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 6 Dec 2023 10:18:19 -0600
Received: from [10.250.36.90] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B6GIIQx029108;
	Wed, 6 Dec 2023 10:18:18 -0600
Message-ID: <b3064dfc-5420-4868-89f6-bb962cf9e7c9@ti.com>
Date: Wed, 6 Dec 2023 10:18:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable PowerVR driver for TI AM62x
Content-Language: en-US
To: Donald Robson <donald.robson@imgtec.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: <frank.binns@imgtec.com>, <matt.coster@imgtec.com>, <nm@ti.com>,
        <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>,
        <quic_bjorande@quicinc.com>, <geert+renesas@glider.be>,
        <konrad.dybcio@linaro.org>, <arnd@arndb.de>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@linaro.org>,
        <nfraprado@collabora.com>, <m.szyprowski@samsung.com>,
        <u-kumar1@ti.com>, <peng.fan@nxp.com>
References: <cover.1701773390.git.donald.robson@imgtec.com>
From: "Etheridge, Darren" <detheridge@ti.com>
In-Reply-To: <cover.1701773390.git.donald.robson@imgtec.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 12/5/2023 5:39 AM, Donald Robson wrote:
> These patches enable the new open source PowerVR driver for TI AM62x SoCs,
> currently the only one supported.
> 
> Changes since v1:
> - Added patch 1 for arm64 defconfig (requested by Nishanth Menon)
> 
> Donald Robson (1):
>    arm64: defconfig: enable DRM_POWERVR
> 
> Sarah Walker (1):
>    arm64: dts: ti: k3-am62-main: Add GPU device node
> 
For the series:

Acked-by: Darren Etheridge <detheridge@ti.com>


Thanks,
Darren

