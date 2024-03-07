Return-Path: <devicetree+bounces-49067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D4F874D65
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 524511C20321
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9191812880A;
	Thu,  7 Mar 2024 11:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="a6CCKsLV"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D5112839C
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 11:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709810910; cv=none; b=YkNxtWF4FdtJEVV/FH9n9ntH2InU8UHNJZl622JBlvVPSXyHjbWYxuM0ZGAeXYQubmGfd0WOL9e1J56+j1CTGfMLMx9UaAZUs8+Cudg90aJrHuAvz3v4cFTtAwDzUVBpWQCiV4XR5UjjqN8AWdz/zqhlUidwwV0RWO6USeYLnTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709810910; c=relaxed/simple;
	bh=1rnD9An2/JO2jdhcQAqFfRvjMvft63oeNw1UYHLJIEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aY+V5sb7oY99KqSC+bBxcpIHjYPRtpXnnCbeyrVtqLs+naPxrzicmGcp1k6XeX6fdoLKKinMllGtU0/wiWhZR9cL1msmhYPAbjaHRsOpa82Srr/452K6Loc74OSjDJVK23Bwawkw6g8A7euDaLwZYx1z7ZavC2RA65rlDPmdpj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=a6CCKsLV; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709810907;
	bh=1rnD9An2/JO2jdhcQAqFfRvjMvft63oeNw1UYHLJIEA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=a6CCKsLVdRs+EoYwRCvA9oYBAPjzVpb6ym775AefdsPv83pCM+CeEL+7SLRn14gpR
	 OuNBMyk/CWr3WFrWN/reOzm1H5SToYlMsX9fup8yIojp8H4+I6csm1PqmOtQqWJGPz
	 bYpvf+ZbmlCxJEzwJAA0JIgnGcmx+6nV2ZwgBzcageTtVvwcn7R0sdaEA9HRJAh7Ot
	 En+rrAj0xIYtOAXJMNKtLYx9n90azJtlqEqQwq/4ApYK8I9A3vpYSbK0LZ1QbH0vAi
	 fY6FE/GvMF/7rlqzlhIA2SYHMpXQqJTnTpxaBUQjvJ3cuO0cIQcsB400h/BcaE4Ham
	 XD+jRkR5mH6UA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1E70537820EA;
	Thu,  7 Mar 2024 11:28:26 +0000 (UTC)
Message-ID: <a7fda0ba-3535-4e62-a669-86fb6fbe1888@collabora.com>
Date: Thu, 7 Mar 2024 12:28:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581
 Evaluation Board
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, nbd@nbd.name, john@phrozen.org,
 devicetree@vger.kernel.org, dd@embedd.com, catalin.marinas@arm.com,
 will@kernel.org, upstream@airoha.com, lorenzo.bianconi83@gmail.com
References: <cover.1709768157.git.lorenzo@kernel.org>
 <ca51cb007d06e8fc0dce613749dbe44b5116ac98.1709768157.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <ca51cb007d06e8fc0dce613749dbe44b5116ac98.1709768157.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 07/03/24 01:11, Lorenzo Bianconi ha scritto:
> From: Daniel Danzberger <dd@embedd.com>
> 
> Introduce the Airoha EN7581 SoC's dtsi and the Airoha EN7581 Evaluation
> Board's dts file, as well as the required Makefiles.
> 
> Signed-off-by: Daniel Danzberger <dd@embedd.com>
> Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   arch/arm64/boot/dts/Makefile              |   1 +
>   arch/arm64/boot/dts/airoha/Makefile       |   2 +
>   arch/arm64/boot/dts/airoha/en7581-evb.dts |  26 ++++
>   arch/arm64/boot/dts/airoha/en7581.dtsi    | 154 ++++++++++++++++++++++
>   4 files changed, 183 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/airoha/Makefile
>   create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
>   create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi
> 
> diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
> index 30dd6347a929..21cd3a87f385 100644
> --- a/arch/arm64/boot/dts/Makefile
> +++ b/arch/arm64/boot/dts/Makefile
> @@ -1,5 +1,6 @@
>   # SPDX-License-Identifier: GPL-2.0
>   subdir-y += actions
> +subdir-y += airoha
>   subdir-y += allwinner
>   subdir-y += altera
>   subdir-y += amazon
> diff --git a/arch/arm64/boot/dts/airoha/Makefile b/arch/arm64/boot/dts/airoha/Makefile
> new file mode 100644
> index 000000000000..ebea112ce1d7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +dtb-$(CONFIG_ARCH_AIROHA) += en7581-evb.dtb
> diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> new file mode 100644
> index 000000000000..cf58e43dd5b2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/dts-v1/;
> +
> +/* Bootloader installs ATF here */
> +/memreserve/ 0x80000000 0x200000;
> +
> +#include "en7581.dtsi"
> +
> +/ {
> +	model = "Airoha EN7581 Evaluation Board";
> +	compatible = "airoha,en7581-evb", "airoha,en7581";
> +
> +	aliases {
> +		serial0 = &uart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +		linux,usable-memory-range = <0x0 0x80200000 0x0 0x1fe00000>;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x80000000 0x2 0x00000000>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> new file mode 100644
> index 000000000000..732080cf6f2b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -0,0 +1,154 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		npu-binary@84000000 {
> +			no-map;
> +			reg = <0x0 0x84000000 0x0 0xA00000>;
> +		};
> +
> +		npu-flag@84B0000 {
> +			no-map;
> +			reg = <0x0 0x84B00000 0x0 0x100000>;
> +		};
> +
> +		npu-pkt@85000000 {
> +			no-map;
> +			reg = <0x0 0x85000000 0x0 0x1A00000>;
> +		};
> +
> +		npu-phyaddr@86B00000 {
> +			no-map;
> +			reg = <0x0 0x86B00000 0x0 0x100000>;
> +		};
> +
> +		npu-rxdesc@86D00000 {
> +			no-map;
> +			reg = <0x0 0x86D00000 0x0 0x100000>;

Lower case hex please. Here and everywhere else.

Otherwise,
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Cheers,
Angelo


