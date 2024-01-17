Return-Path: <devicetree+bounces-32614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C3582FED2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 03:30:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F15561F26943
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 02:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02C328F5F;
	Wed, 17 Jan 2024 02:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="U9JQ2Ni5"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB3D8BED
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 02:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705458597; cv=none; b=tYbjunHYLZGYrX83zdF3F6kmISKnfsgdht+uVMrwgM+KpNEadQImJ2fSlrc2vauGVvYC5MJfJM3UEpFrVMMcUTuTATMM4L2wlObNN8n1+kaV1ZlHtABcVAJvI2FqYGsP0TbUvVXiqNIChbXkTUloLKaBXdcHlXyTAgZZ5yU0j7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705458597; c=relaxed/simple;
	bh=oVWoNu+U00QfPxWzm1fF6izEty+yMHi2UPRSvsZXDfc=;
	h=DKIM-Signature:X-AuditID:Received:Received:Message-ID:Date:
	 MIME-Version:User-Agent:Subject:To:CC:References:Content-Language:
	 From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 X-Originating-IP:X-ClientProxiedBy:X-Brightmail-Tracker; b=bAbhw+eDt8ONGShYC9fPH9fWo0NHo6QS+1cmuAY+SEPUIaS61qc2cuJ5oc/ZBCe2UoYtsbnh1DtZCEFkSFpdnLV70sc8S/5aA5iaNMs8Kn/9RbNFqbP+hMoCftiaOtAl7jxvkMYlTZFy3XdGAhlOLdHpXEM3LhKISHb8MWRmob4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=U9JQ2Ni5; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1705458582; x=1708050582;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oVWoNu+U00QfPxWzm1fF6izEty+yMHi2UPRSvsZXDfc=;
	b=U9JQ2Ni5jE84AzFyJD927QQnLTw9wvIsU4AeE6VE3v0QTpeshF7+BcaOW6l+1GvG
	+aM5gLNglL1tCTotv/d6+SSBxLTdfCQGYxwm1tIOf2AZzP0fVbvteZSTttLLHaF6
	I4PZq366u5U/mBnpqd4Cl8Jmb5CvRY4DJ0VscI+NyBI=;
X-AuditID: ac14000a-fadff7000000290d-06-65a73b96a024
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 1E.FD.10509.69B37A56; Wed, 17 Jan 2024 03:29:42 +0100 (CET)
Received: from [10.10.3.173] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 17 Jan
 2024 03:29:39 +0100
Message-ID: <fb8232b1-9708-4b57-b67c-92ec6ccf9fd0@phytec.de>
Date: Wed, 17 Jan 2024 03:29:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] arm64: dts: ti: phycore*: Clarify GPL-2.0 as
 GPL-2.0-only
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Garrett Giordano
	<ggiordano@phytec.com>
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-16-nm@ti.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20240110140903.4090946-16-nm@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnkeLIzCtJLcpLzFFi42JZI8nAozvNenmqwZzFJhZr9p5jsph/5Byr
	xfotv9ksln+ezW7R9+Ihs8Wmx9dYLS7vmsNm8ebHWSaL1r1H2C3+n/3A7sDlsWlVJ5vHnWt7
	2Dw2L6n3+HPxHavH8RvbmTw+b5ILYIvisklJzcksSy3St0vgyjj/7xZLwXvRiiOtuxkbGO8I
	dTFyckgImEi8aTjG1sXIxSEksJhJYm3fI0YI5w6jxMSOBvYuRg4OXgEbidXf7UAaWARUJfr/
	TmIBsXkFBCVOznwCZosKyEvcvzWDHcQWFgiT+DVvDQvIHBGB14wSDfe6wDYwC0xllDh+/ypY
	h5BAhETn4SNsIDazgLjErSfzmUBsNgF1iTsbvrGC2JwCRhI3GjcyQdRYSCx+c5AdwpaX2P52
	DjPEHHmJF5eWs0C8Iy8x7dxrZgg7VGLrl+1MExiFZyE5dhaSdbOQjJ2FZOwCRpZVjEK5mcnZ
	qUWZ2XoFGZUlqcl6KambGEGRJsLAtYOxb47HIUYmDsZDjBIczEoivP4Gy1KFeFMSK6tSi/Lj
	i0pzUosPMUpzsCiJ867uCE4VEkhPLEnNTk0tSC2CyTJxcEo1MG5gerV5T/0P8/89X9TdN7mI
	LQqszS0QF2TeyGptM//Uhvhpgs6mRk0ehkov3aVq/FVLRPc1bPii8lPJRIxrhs621ZFzlvYo
	Mh10PjF9wpy/+z2epM9g11U+ZiT+4Zla3+2c4zUtHimb52VKMIYfcfxwppZJqu7w9H0Kgs0T
	/3+UV702/bNvmBJLcUaioRZzUXEiAJrChGyiAgAA

Hey Nishanth,

I am also okay to have our device trees using the additional MIT license.

Regards,
Wadim

Am 10.01.24 um 15:09 schrieb Nishanth Menon:
> SPDX identifier GPL-2.0 has been deprecated since license list version
> 3.0. Use GPL-2.0-only to be specific.
>
> Cc: Garrett Giordano <ggiordano@phytec.com>
> Cc: Wadim Egorov <w.egorov@phytec.de>
>
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi          | 2 +-
>   arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts    | 2 +-
>   arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi          | 2 +-
>   arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts | 2 +-
>   4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> index aa43e7407eee..0c8e79de1c71 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only
>   /*
>    * Copyright (C) 2022 - 2023 PHYTEC Messtechnik GmbH
>    * Author: Wadim Egorov <w.egorov@phytec.de>
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> index 4bc0134c987d..69b76c18207a 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only
>   /*
>    * Copyright (C) 2022 - 2023 PHYTEC Messtechnik GmbH
>    * Author: Wadim Egorov <w.egorov@phytec.de>
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> index 1678e74cb750..dc76ed1adec7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only
>   /*
>    * Copyright (C) 2021 PHYTEC America, LLC - https://www.phytec.com
>    * Author: Matt McKee <mmckee@phytec.com>
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
> index 53b64e55413f..5339aa107865 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +// SPDX-License-Identifier: GPL-2.0-only
>   /*
>    * Copyright (C) 2021 PHYTEC America, LLC - https://www.phytec.com
>    * Author: Matt McKee <mmckee@phytec.com>

