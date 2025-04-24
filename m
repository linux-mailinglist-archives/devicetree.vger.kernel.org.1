Return-Path: <devicetree+bounces-170149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B63E4A9A03A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:47:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6A191945592
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 04:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4251624DE;
	Thu, 24 Apr 2025 04:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="L7dhHa4N"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6894A23
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 04:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745470051; cv=none; b=gAfbqvdO3/zUJ2GEoY9nj693yz5i11pNZG7YUE+YebR8ZVCXYVn1jzYXir6OwY0Xhql8KPLm2h8ym/gan9jKtkm1zW1+H8fj2hUxuDr7SH+Rl6K6kYhtcpsYFCyH8DuCDzWAW4d3f9dZtGbNPl00H/rspcb+Pxkmu4X5sX1CUF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745470051; c=relaxed/simple;
	bh=3VCVrEdSQ/JApthPhrmGRs4x27AyRrHEnbUvzUEQ7VQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Ko7WGTLPCJLmHFd/kZ6at7lTSyFOpL6I2mEIL+bDSPcpSHn/rJyx0SjYRg3DnZGDV2KR5BW81HlFTiVJuqgmmU5F5nGQbnfGUO6qH0lqvAJlvSwZr7ka/5cdNwtQgqA13hyLwHlFPs8JJEnZ80jy7RqcYZf4wz62qECKPrNenjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=L7dhHa4N; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53O4lGOP2392035
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Apr 2025 23:47:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745470037;
	bh=DrDJJJ8htZeJE59VEer7OcT8rYZqd9oQ8hHDpoiwQaA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=L7dhHa4NU6Ygz2ievXXnriN0s0NFREqiVIIFI5ZKr5Osn2y0B7ZcaSgLMK8Eohzfo
	 uGOFCVDFU0nQK9en93w2sXRGb+GEnJ2O1cXgE+fBGhdLI8novRgMd23buBKOHdjWtV
	 cKjBR5J3HNE3y3GSGAzgy8B95bn88vTbNg+GhuFc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53O4lG52120139
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 23 Apr 2025 23:47:16 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 23
 Apr 2025 23:47:16 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 23 Apr 2025 23:47:16 -0500
Received: from [172.24.22.140] (lt5cd2489kgj.dhcp.ti.com [172.24.22.140])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53O4lBk7042147;
	Wed, 23 Apr 2025 23:47:13 -0500
Message-ID: <03bc9327-cf4e-4bd1-aa39-3f943a2d02f6@ti.com>
Date: Thu, 24 Apr 2025 10:17:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: defconfig: Enable TMP102 as module
To: Dominik Haller <d.haller@phytec.de>, <robh@kernel.org>,
        <kristo@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vigneshr@ti.com>, <nm@ti.com>, <m-chawdhry@ti.com>,
        <w.egorov@phytec.de>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <upstream@lists.phytec.de>, <u-kumar1@ti.com>
References: <20250423133635.29897-1-d.haller@phytec.de>
 <20250423133635.29897-3-d.haller@phytec.de>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20250423133635.29897-3-d.haller@phytec.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea


On 4/23/2025 7:06 PM, Dominik Haller wrote:
> Enable the driver for the TI TMP102 temperature sensors used on the Phytec
> phyCORE-AM68x/TDA4x and the phyGATE-Tauri-L-iMX8MM.
>
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> ---
>
> Notes:
>      Changes in v4:
>      - no changes
>      
>      Changes in v3:
>      - no changes
>      
>      Changes in v2:
>      - new patch in series
>
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 5bb8f09422a2..54e6705f9752 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -702,6 +702,7 @@ CONFIG_SENSORS_RASPBERRYPI_HWMON=m
>   CONFIG_SENSORS_SL28CPLD=m
>   CONFIG_SENSORS_INA2XX=m
>   CONFIG_SENSORS_INA3221=m
> +CONFIG_SENSORS_TMP102=m

Reviewed-by: Udit Kumar <u-kumar1@ti.com>


>   CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
>   CONFIG_CPU_THERMAL=y
>   CONFIG_DEVFREQ_THERMAL=y

