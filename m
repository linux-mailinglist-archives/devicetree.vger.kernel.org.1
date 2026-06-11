Return-Path: <devicetree+bounces-310653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XM72IUQ4K2rn4QMAu9opvQ
	(envelope-from <devicetree+bounces-310653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 00:35:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D1D675A64
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 00:35:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NvQDqZ1F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310653-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310653-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 603FE32E2357
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEBBC4A33F1;
	Thu, 11 Jun 2026 22:35:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB99634E75C;
	Thu, 11 Jun 2026 22:35:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781217345; cv=none; b=iIBgTbDtiBAY4WLF60kjaTeJtfF/re2q0EErTCXxnT7GXNonRwhhfxfxZ8plC5IKeeIUtjnrxbS0GvLAOyQMKDaPKQne7XOOf8qR1ZJpIF4mAQNe5SnHpRPVZYZlk8adwJaclXOZY8/WoNN6ncUj8lzqNhGsjVmSkBqw2a6kpAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781217345; c=relaxed/simple;
	bh=iUr5jF1GQ+XgN5CxErLjc9WsdmqY4HFq77l2lqgF+ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FCVvOVY6A8vllXznTHBVcL1KVzm96SnL9wJF6wN0IqwCszkQLvB++GkQFWgKe7XrBr08bKqtTorrZoXpzJi1YqD/AgWkQGb9e0cF3x+38FfipbQMLlTi04uKIPPXGg5yXxoSFTHpRUgT1LYJDcw//56zqcsmC3/+3GNrRhjIfFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvQDqZ1F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEECD1F000E9;
	Thu, 11 Jun 2026 22:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781217344;
	bh=xqF83Og21iR9m7my8ZXgKTzUfPPnpcs2xB0j3qYEYhc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=NvQDqZ1FNVAaC96kOnuNPLnC/+24VRU4yhmed3QVWCXlZrBFSMWkJEgj6w0us6aDY
	 SAUkXzbLCEVsnX/22vSiU/fD//ziR+ZpZlFq9NzzW466dKyC0YINbO0KMrKi8AluKf
	 48ysmdcLSb2GA8n/DXKCnsOYAGEGPtH8nVp0Rw6ThZkZRzpQzyEaaEiGeEBjfItyVT
	 qNnryZM8+SPEQ6KmQdUQywLViiGWLhIEfUUcLWvTkmR0rXhQPdKcb8jl15is2LKZGX
	 gopqWu6iIHCvvkqd6P8/tf/Mcxu4uY1T1n83eTwYRd/JpQ5v+pH6HUzW3i4Rg8+mgg
	 r1C0MO5I58bwQ==
Message-ID: <f0dee976-f48f-4170-af90-1fd3045b9543@kernel.org>
Date: Thu, 11 Jun 2026 17:35:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: Add per-channel interrupts
 to gmac0
Content-Language: en-US
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260609131641.28476-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260609131641.28476-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310653-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6D1D675A64



On 6/9/26 22:16, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> 
> Extend the gmac0 interrupt list to support 8 TX and 8 RX per-channel
> interrupts in addition to the combined macirq, enabling per-channel
> interrupt handling for improved DMA performance.
> 
> Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> ---
>   .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 36 +++++++++++++++++--
>   1 file changed, 34 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> index b06c6d5d60ee..c936f8db1bd0 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -557,8 +557,40 @@ gmac0: ethernet@10810000 {
>   			compatible = "altr,socfpga-stmmac-agilex5",
>   				     "snps,dwxgmac-2.10";
>   			reg = <0x10810000 0x3500>;
> -			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "macirq";
> +			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 201 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "macirq",
> +					  "tx-queue-0",
> +					  "tx-queue-1",
> +					  "tx-queue-2",
> +					  "tx-queue-3",
> +					  "tx-queue-4",
> +					  "tx-queue-5",
> +					  "tx-queue-6",
> +					  "tx-queue-7",
> +					  "rx-queue-0",
> +					  "rx-queue-1",
> +					  "rx-queue-2",
> +					  "rx-queue-3",
> +					  "rx-queue-4",
> +					  "rx-queue-5",
> +					  "rx-queue-6",
> +					  "rx-queue-7";
>   			resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
>   			reset-names = "stmmaceth", "ahb";
>   			clocks = <&clkmgr AGILEX5_EMAC0_CLK>,

Applied!

Thanks,
Dinh


