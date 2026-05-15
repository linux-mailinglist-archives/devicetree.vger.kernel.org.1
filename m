Return-Path: <devicetree+bounces-298561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QK6vDCeWB2pU9AIAu9opvQ
	(envelope-from <devicetree+bounces-298561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:54:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2265587AA
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3A5A300D6AE
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EB137CD5F;
	Fri, 15 May 2026 21:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAMTApsY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5545C381C4;
	Fri, 15 May 2026 21:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778882083; cv=none; b=bQB559DyqfLmVvMNcTkcbaxRboobP94/WB0xpc01pGaMdK27Y75feSMZqs0+kO6oTOxDIZ8Xb9FwhFFJ7PxF53xPfEFiBnY/gmJVORbrJ5qAQ49NjM4qD+G5x+KPmrHeE+WVldBI+fiGm8oHTjG8eruXI5UdZPEGckwBEh1wJVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778882083; c=relaxed/simple;
	bh=z8IkZDkb9rYC7txK+tLrs+vGOwLssrMK0Sf54P06p8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S9bNz5zBvmzSyfsOWlj457gdOeD6/i/pA/SHSmPm6TElBtSAmdm4G+KIHh7BA3TZYTY53R4pgRY8JLVdYJ+WINArTnCi+gjACXfsgOJrgbfzw48QfRF7G/AFOl0rGA+1iMcZUlkpX+Ho2CUh/UVjXzN1JhsKyO9FjdnPtlr2Bb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAMTApsY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F238C2BCB0;
	Fri, 15 May 2026 21:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778882083;
	bh=z8IkZDkb9rYC7txK+tLrs+vGOwLssrMK0Sf54P06p8U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jAMTApsYrZp+mXnWD8PSIcMznkdECU4xg7uTVi3WUZyq1YoSmk7BHL6AtjsIeD/Wv
	 gKClyrunnWTJwDhyowWPq7PdfyIAkz1RUduzf/oXq7pYWqhw0rdYwoG1qZn4SUTPOc
	 MjfxmXhwJL9burW4aXYg/rl5COEL3nx88Faf3egE8FQ7ox4F30SJ/930+Be2ypuOuW
	 o4ljdOQHZvA2kToKrY5IFCko0D3XDhL1Sk4DxcI87yAGqQQ34Ze9YEmBBOSpXwUsIp
	 Ieye6x2rxfV8UuT6uJitJcbi5/8RF8DECXNn3ACfz//aGNHvI0re8IejF06Rl2ZOZp
	 bOcw7iwqpa3gw==
Message-ID: <13bf6323-b5af-494d-ad1f-1bb7eac2d8ab@kernel.org>
Date: Fri, 15 May 2026 16:54:41 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: socfpga: arria10: Increase JFFS2 rootfs
 partition size
To: muhammad.nazim.amirul.nazle.asmade@altera.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260511081520.20247-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260511081520.20247-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7D2265587AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298561-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_PROHIBIT(0.00)[0.38.37.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action



On 5/11/26 03:15, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> From: Niravkumar L Rabara <niravkumar.l.rabara@altera.com>
> 
> Increase the JFFS2 partition size to support larger root filesystem.
> Also fix the partition label to match the actual start address.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@altera.com>
> Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> ---
>   .../arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_nand.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_nand.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_nand.dts
> index a662df319a84..5f9b98b0b393 100644
> --- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_nand.dts
> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_nand.dts
> @@ -18,9 +18,9 @@ partition@0 {
>   			label = "Boot and fpga data";
>   			reg = <0x0 0x02500000>;
>   		};
> -		partition@1c00000 {
> +		partition@2500000 {
>   			label = "Root Filesystem - JFFS2";
> -			reg = <0x02500000 0x05500000>;
> +			reg = <0x02500000 0x3db00000>;
>   		};
>   	};
>   };

Applied!

Thanks,
Dinh


