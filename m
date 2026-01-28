Return-Path: <devicetree+bounces-260314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD15OnnneWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD19F992
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C452E3008A75
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58363276028;
	Wed, 28 Jan 2026 10:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="sSRjEGbt"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68A623ABA9
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.97.179.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769596791; cv=none; b=fxYHjgM7FhCbPEhwGvPqfMa6UTAInlrLXiuwCZ+Pd5eUHxpbavc72O+ead1z6Z5sAgsoQiJbTOBAqWqiv6d5dbgyNyWyljh1giVWOI3DLad/sEB/1HosB1BuBAkCT/O7020IoxfcJeERarsFoTQz/wTVFoOHDs+TcwTUeG09/5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769596791; c=relaxed/simple;
	bh=/JN7YF6IQ1rafEUPaBezfZQoLjcVqHNFfenwA+o9xCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ABIt+Q22FkIhKe5q5+HrKXU6whWqCjGYL8Z5xJiZd/MnInFfxdviF8RckR6CSx/An6KwpsJnc0+2/JD8iptHh7yYm+gqwxpAsC7cpSSU7dK0hBH1u3QuYiyfPWhvRNeL7ZBIDFBxfrjubpw0qF5Edimb0CrIt6unDHCF6jkuuHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=sSRjEGbt; arc=none smtp.client-ip=213.97.179.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6QAm6MI5fA78tiaivTj0SYN9DSoGLWLa4UU9wdUW4qU=; b=sSRjEGbtOkoBGsVLkZiC7oaRCi
	bDf+ZwdPCR8aAbuJm6b4Bzx0wNQ+JZtmA5KLnyTiks6mIDGjd2bvT+3yY/Ls0cD4HDTmpaO454qdH
	+In8ccdHGl/HGO18tbDPV5owsRMySuHvARUWtKX+X4nBF3wR2duCCWC7E00TY4d1uuIgwFQk/n2SW
	KxyZmofRfEMGKud4ddMMPwRF9paJrvrBofmqa2UcDu/+k5hRugJ0It0nrZ6tPXrTHvZHT4tKrrMgV
	/j2WB6iM0C3CZTSHEY7HrqYapZLMGUxMS1GXCJO52Cp3FGt6TgnwmhXwJkY1qa9GUAzpnQx2+slMa
	mNz8i6+Q==;
Received: from [187.36.210.68] (helo=[192.168.1.103])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1vl2xV-00Aq1Y-06; Wed, 28 Jan 2026 11:39:37 +0100
Message-ID: <224913c8-52a6-4b3f-a375-e1b4fcc0c142@igalia.com>
Date: Wed, 28 Jan 2026 07:39:30 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com
References: <20260114120610.82531-1-mcanal@igalia.com>
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Content-Language: en-US
Autocrypt: addr=mcanal@igalia.com; keydata=
 xsBNBGcCwywBCADgTji02Sv9zjHo26LXKdCaumcSWglfnJ93rwOCNkHfPIBll85LL9G0J7H8
 /PmEL9y0LPo9/B3fhIpbD8VhSy9Sqz8qVl1oeqSe/rh3M+GceZbFUPpMSk5pNY9wr5raZ63d
 gJc1cs8XBhuj1EzeE8qbP6JAmsL+NMEmtkkNPfjhX14yqzHDVSqmAFEsh4Vmw6oaTMXvwQ40
 SkFjtl3sr20y07cJMDe++tFet2fsfKqQNxwiGBZJsjEMO2T+mW7DuV2pKHr9aifWjABY5EPw
 G7qbrh+hXgfT+njAVg5+BcLz7w9Ju/7iwDMiIY1hx64Ogrpwykj9bXav35GKobicCAwHABEB
 AAHNIE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+wsCRBBMBCAA7FiEE+ORdfQEW
 dwcppnfRP/MOinaI+qoFAmcCwywCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQ
 P/MOinaI+qoUBQgAqz2gzUP7K3EBI24+a5FwFlruQGtim85GAJZXToBtzsfGLLVUSCL3aF/5
 O335Bh6ViSBgxmowIwVJlS/e+L95CkTGzIIMHgyUZfNefR2L3aZA6cgc9z8cfow62Wu8eXnq
 GM/+WWvrFQb/dBKKuohfBlpThqDWXxhozazCcJYYHradIuOM8zyMtCLDYwPW7Vqmewa+w994
 7Lo4CgOhUXVI2jJSBq3sgHEPxiUBOGxvOt1YBg7H9C37BeZYZxFmU8vh7fbOsvhx7Aqu5xV7
 FG+1ZMfDkv+PixCuGtR5yPPaqU2XdjDC/9mlRWWQTPzg74RLEw5sz/tIHQPPm6ROCACFls7A
 TQRnAsMsAQgAxTU8dnqzK6vgODTCW2A6SAzcvKztxae4YjRwN1SuGhJR2isJgQHoOH6oCItW
 Xc1CGAWnci6doh1DJvbbB7uvkQlbeNxeIz0OzHSiB+pb1ssuT31Hz6QZFbX4q+crregPIhr+
 0xeDi6Mtu+paYprI7USGFFjDUvJUf36kK0yuF2XUOBlF0beCQ7Jhc+UoI9Akmvl4sHUrZJzX
 LMeajARnSBXTcig6h6/NFVkr1mi1uuZfIRNCkxCE8QRYebZLSWxBVr3h7dtOUkq2CzL2kRCK
 T2rKkmYrvBJTqSvfK3Ba7QrDg3szEe+fENpL3gHtH6h/XQF92EOulm5S5o0I+ceREwARAQAB
 wsB2BBgBCAAgFiEE+ORdfQEWdwcppnfRP/MOinaI+qoFAmcCwywCGwwACgkQP/MOinaI+qpI
 zQf+NAcNDBXWHGA3lgvYvOU31+ik9bb30xZ7IqK9MIi6TpZqL7cxNwZ+FAK2GbUWhy+/gPkX
 it2gCAJsjo/QEKJi7Zh8IgHN+jfim942QZOkU+p/YEcvqBvXa0zqW0sYfyAxkrf/OZfTnNNE
 Tr+uBKNaQGO2vkn5AX5l8zMl9LCH3/Ieaboni35qEhoD/aM0Kpf93PhCvJGbD4n1DnRhrxm1
 uEdQ6HUjWghEjC+Jh9xUvJco2tUTepw4OwuPxOvtuPTUa1kgixYyG1Jck/67reJzMigeuYFt
 raV3P8t/6cmtawVjurhnCDuURyhUrjpRhgFp+lW8OGr6pepHol/WFIOQEg==
In-Reply-To: <20260114120610.82531-1-mcanal@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260314-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,broadcom.com,gmx.net];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[59.185.78.128:email];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,59.156.201.184:email,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: 0DCD19F992
X-Rspamd-Action: no action

Hi Florian,

Just a quick ping on this patch. Did you get a chance to review it?

Best regards,
- Maíra

On 14/01/26 09:04, Maíra Canal wrote:
> Commits 0ad5bc1ce463 ("drm/v3d: fix up register addresses for V3D 7.x")
> and 6fd9487147c4 ("drm/v3d: add brcm,2712-v3d as a compatible V3D device")
> added driver support for V3D on BCM2712, but the corresponding device
> tree node is still missing.
> 
> Add the V3D device tree node to the BCM2712 DTS.
> 
> Signed-off-by: Maíra Canal <mcanal@igalia.com>
> 
> ---
> v1 -> v2:
> 
> - Rebased on top of linux-next (Stefan Wahren)
> - Fixed node's address (2000000 -> 1002000000) (Stefan Wahren)
> - Link to v1: https://lore.kernel.org/linux-devicetree/20260113192902.48046-2-mcanal@igalia.com/
> ---
>   .../boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi    |  4 ++++
>   arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 14 ++++++++++++++
>   2 files changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> index 7d4742ebe247..97522c6803c5 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> @@ -247,3 +247,7 @@ &pcie1 {
>   &pcie2 {
>   	status = "okay";
>   };
> +
> +&v3d {
> +	clocks = <&firmware_clocks 5>;
> +};
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> index 330a121ebfcb..661668ef7419 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> @@ -1,5 +1,6 @@
>   // SPDX-License-Identifier: (GPL-2.0 OR MIT)
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/soc/bcm2835-pm.h>
>   
>   / {
>   	compatible = "brcm,bcm2712";
> @@ -642,6 +643,19 @@ mip1: msi-controller@1000131000 {
>   			msi-ranges = <&gicv2 GIC_SPI 247 IRQ_TYPE_EDGE_RISING 8>;
>   			brcm,msi-offset = <8>;
>   		};
> +
> +		v3d: gpu@1002000000 {
> +			compatible = "brcm,2712-v3d";
> +			reg = <0x10 0x02000000 0x00 0x4000>,
> +			      <0x10 0x02008000 0x00 0x6000>,
> +			      <0x10 0x02030800 0x00 0x0700>;
> +			reg-names = "hub", "core0", "sms";
> +
> +			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
> +			resets = <&pm BCM2835_RESET_V3D>;
> +			interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
> +		};
>   	};
>   
>   	vc4: gpu {


