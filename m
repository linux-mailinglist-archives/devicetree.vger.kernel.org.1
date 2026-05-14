Return-Path: <devicetree+bounces-297850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id prM2KQ5cBmqdjAIAu9opvQ
	(envelope-from <devicetree+bounces-297850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 01:34:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D1E547C6F
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 01:34:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D04A302571B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 23:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D0D3939CE;
	Thu, 14 May 2026 23:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikshK9bX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A1C3F4112;
	Thu, 14 May 2026 23:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778801674; cv=none; b=FRSFkEqqp2P5FbUZIN88ShhfLssCbZwEzGYEWE3dXJlQ9b8YoncOfemsW/JDtQXUYfrqWRsZ1WeykmZhdJ3f65WgJsXNdNyOifPBkWAxPw8PLUG+fgMSuioTjwVFvHPLkof13/duvRFzO+KqFXxP43HEwjwFCGXpkZPgSgodHY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778801674; c=relaxed/simple;
	bh=KiJlDwhcumfay/PhRyGSfl/KhSwtAnyoJyyA7GpFkg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eUZ5mPvdFlayuatI1chmvxwg6n3GNrEfDEXChEDgmaUaUg/xyEiTVlaSzrrmlBxpNoNAb8cqSEeNuMjyz9+RqfsgyR1/XT2gQanmK1Hb6YRpogb0a/tNdxsqaE8TZTm/neZR4AvWo5M2EXgvIy5W7PNH6g6nXXoxcwsAfTUG6xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikshK9bX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A537C2BCB3;
	Thu, 14 May 2026 23:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778801674;
	bh=KiJlDwhcumfay/PhRyGSfl/KhSwtAnyoJyyA7GpFkg4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ikshK9bXrNlY/9sFOW78Kah6K2GQzIc9FaelVWFcy/A1eEJKB/5kXKaxJUU8XrCpV
	 m/1rT9eRDBKcvWr9Q6WIFb5Si/1AaKO205R9JTvnYPd2Vv6Tl7hIJO/Uz5lspkaQTL
	 cOTJ+V4FblY14NpwepLU3GUMIOBJXqGulLXRZ9ak1rCzdEcRWCj8WWdqHQyFrSh7Dw
	 A+iYloDpmycnUpAttXqB/8XQxp7vqDo5h+FxDk/yvHyMJGWq13uL2kqw2pEvKxfzpw
	 52W7D9+b0zy9WzagWnJ32jus+oqZx4k0PjpveY+hW9/rwztpSoiqZ3dyN0Pd0QmUQm
	 O9W9PIgv5mtUA==
Message-ID: <f8734a4e-2bfc-4ba1-8618-3bae66f1df96@kernel.org>
Date: Thu, 14 May 2026 18:34:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: socfpga: Enable the SMMU for SoCFPGA
 device trees
Content-Language: en-US
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260514114111.10574-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <20260514114111.10574-2-muhammad.nazim.amirul.nazle.asmade@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260514114111.10574-2-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 23D1E547C6F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297850-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action



On 5/14/26 06:41, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> 
> Enable the SMMU on the SoCFPGA board device trees where it was
> missing. The SoC uses a different memory-mapped base address for
> its peripherals, which requires the System Memory Management Unit
> (SMMU) to be active so that the Secure Device Manager (SDM) can
> correctly access those regions through address translation.
> 
> Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> ---
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts      | 4 ++++
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
> index dae0db9f8819..66fc3c546b66 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk.dts
> @@ -109,6 +109,10 @@ &usb0 {
>   	disable-over-current;
>   };
>   
> +&smmu {
> +	status = "okay";
> +};
> +

The SMMU is an SOC specific device, so it should be enabled in the base 
DTSI file.

Dinh

