Return-Path: <devicetree+bounces-321148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c2V9Mau1S2r3YwEAu9opvQ
	(envelope-from <devicetree+bounces-321148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:03:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD31711AE7
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:03:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JWzDCUBB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321148-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321148-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3D63303FDF7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F7542A167;
	Mon,  6 Jul 2026 12:26:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE6242643A;
	Mon,  6 Jul 2026 12:26:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783340816; cv=none; b=k+Q9ISfL1rq2EUSABCD9H7N6XvfCV1jGmMdeg/2RLiUEL+iLWTNbvT3teh15EDc+eB2XmI+930DUBvX479EqVDcXPIDlU/wUX2D9ThDoJDc28Idix3xE12HxZ2r5VFirWl7zPbaySSVuVdFHi+qE/jZPDhYa3DDs0flCl5QG2EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783340816; c=relaxed/simple;
	bh=R5iW2J4Wt0b/7Civ7nHldFkoAQLPimKYVhJmdKvmcAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cB8Ywm0DGdhJekLuBB9fxRI2mDdiEiVdafwGmgJWEXVYRwsLypnzjOgfOkIaYUYYMeUbBJE2iV1NaxeI2x8PNgNOC9an3bvM+b6tjq2R/+M9a9N9bIh92p7iqpviwt4n1TrvnkZjSXHSJ2wk4m+nCAlI+OtlzWTci91DylDSu9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWzDCUBB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAEA01F000E9;
	Mon,  6 Jul 2026 12:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783340810;
	bh=ubzG+N5dF7Qux5Abapxe09RhaKIm4ikD7IMFkXKdFms=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=JWzDCUBBafu61PBzD6eebOiSNJfoKLUuHka/9VffasSZ8L8q0xr+w3U7TMp1JtlEP
	 gFv8blBOh6J3Bu8nJEi8VcH5w9X/u50AwP4mTr4vNHm+vssahZ/WFM5C05CapZLGEq
	 zVp1l8Rgma9AYRCl6AXOHq1NBGbbnEPakkoSMCvbkY2e5D5Nme9xu3919+VMPbTBL6
	 KbUlvSZpDCD9YtjfwQVD3xvb+zIy08Pemv5sO/yuvJ9BmeIK4XWI7f6idX7XP9LPhJ
	 VxX++lPcgqjjKnpg2US7KUnGaHhEHg+pv7d/wqlaHoAUyw5cfaHogXbjKFCiHT+isq
	 TzZOa1D8coDig==
Message-ID: <0b4d9e54-d443-4690-850b-1cc9ac59869f@kernel.org>
Date: Mon, 6 Jul 2026 07:26:48 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] arm64: dts: socfpga: agilex72: Add initial device
 tree
Content-Language: en-US
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260625065329.20274-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260625065329.20274-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321148-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AD31711AE7



On 6/25/26 01:53, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> 
> This series introduces basic device tree support for the Intel/Altera
> Agilex72 SoCFPGA platform, which is a new SoC featuring a heterogeneous
> CPU cluster (Cortex-A520 and Cortex-A720 cores).
> 
> Patch 1 adds the new compatible strings for Agilex72 to the arm/altera
> DT bindings documentation.
> 
> Patch 2 introduces the initial DTSI and board-level DTS for the Agilex72
> SoCDK. The DTSI covers the core SoC nodes: CPUs, GIC-v3 interrupt
> controller with ITS, ARM architectural timer, PSCI, SMMU-v3, OCRAM, and
> two UART serial controllers backed by a fixed-clock placeholder. The clock
> manager driver for this platform is not yet upstream, so a fixed-clock
> at 125 MHz is used as an interim solution for the UART clock, matching
> the hardware-confirmed LSP_SP_CLK frequency.
> 
> Changes in v3:
> - Add UART serial console (uart0, uart1) with fixed-clock placeholder at 125 MHz
> - Add aliases and chosen nodes in board DTS for serial console
> 
> Changes in v2:
> - Applied relevant feedback from Shahsiko's review
> - Re-add arm,armv8-timer node which is mandatory for kernel boot
> - Rename platform from agilex7-gen2 to agilex72
> 
> Nazim Amirul (2):
>    dt-bindings: arm: altera: Add Agilex72 SoCFPGA compatible strings
>    arm64: dts: socfpga: agilex72: Add initial device tree
> 
>   .../devicetree/bindings/arm/altera.yaml       |   6 +
>   arch/arm64/boot/dts/intel/Makefile            |   1 +
>   .../boot/dts/intel/socfpga_agilex72.dtsi      | 156 ++++++++++++++++++
>   .../boot/dts/intel/socfpga_agilex72_socdk.dts |  27 +++
>   4 files changed, 190 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex72.dtsi
>   create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex72_socdk.dts
> 

Applied!

Thanks,
Dinh


