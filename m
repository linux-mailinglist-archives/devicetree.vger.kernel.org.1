Return-Path: <devicetree+bounces-315100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2hvZE/WNO2rGZggAu9opvQ
	(envelope-from <devicetree+bounces-315100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:57:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E618D6BC5FC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:57:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U+gxUnvQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315100-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315100-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E8CB300AB34
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16CF38C2C6;
	Wed, 24 Jun 2026 07:57:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6B3233939;
	Wed, 24 Jun 2026 07:57:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782287858; cv=none; b=N/9i7zCwpYrOq+zAy+sh3b9KX+08qn2gZ1qTC74tQgT1e3SNHtHAU8EeaUb+Is9s+wNKYxk4Q1pqTUm7WmpKnTmLFLMkWA7Ai1jDDNnGkz6X/1emv6EVPirM5MW29sXPqwAQzUhgp0+CF/yMhH72q39vjN+m0qZ8QQ0YqyiomGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782287858; c=relaxed/simple;
	bh=Fav+tKtVtOZsyEq6T4lUAJeN3M/LmpCD+cO+Md8sPww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rc0eI9w9ePlCzx3qjkZ0TSWhgPWJFXIYAoin5vceG1JRnsPCXxgYzJvA3r5hkjIIyY8qd+t2ccwET3DWW6bzVx5t7eZdghNBEyIAcczBYwnu37VIkmNTVSykppnnPpu02vcc9ee/7IjJ6CJR2kqY5ReVpC1MWr7x/Mz2JkWKhvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+gxUnvQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A1CB1F000E9;
	Wed, 24 Jun 2026 07:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782287857;
	bh=m7OQFVKek0dux9R676cI+DrW+D+MDjMtQN7+tWOXfFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U+gxUnvQOOx4SHTf3LcZV6qRvq1/LipSmQ6dRjURD10v2bhDMdb9MR9Db6mjQUlN9
	 /Akjx5LlUDcfyQu1DB0wKRdIiGMIVeUz5nYGKaN58A1WxeGPyPqLKLKVNf3iqzj1Cb
	 tuPPjz+5TiG0fPikUFTt16uiDVHMnP5Lpq4azNvPk7AtytDtrbZieausohITzd+ls3
	 L/NP4FtpA+glNofL45wYJenQAON8pcoShMdPUjaXfoPrHEY0MgUF9mrrL09kfVfFUz
	 9FPXxb8v27sZy+6kRQvDKq8QRK+js1armhK3/NpKax2L0Ae7fUbpngDlnSMJ8OfDNX
	 fwrZ47D3Eia4g==
Date: Wed, 24 Jun 2026 09:57:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: dinguyen@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: socfpga: agilex7-gen2: Add initial
 device tree
Message-ID: <20260624-infallible-diligent-bulldog-bcbab2@quoll>
References: <20260623111716.16690-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <20260623111716.16690-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260623111716.16690-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315100-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:dinguyen@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,altera.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E618D6BC5FC

On Tue, Jun 23, 2026 at 04:17:16AM -0700, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> +
> +	psci {
> +		compatible = "arm,psci-0.2";
> +		method = "smc";
> +	};
> +
> +	intc: interrupt-controller@7000000 {

MMIO goes to MMIO, please read writing bindings and submitting patches docs in DT dir.

I think this also fails tests (W=1). If that is true, then review should
finish here, because instead of using machine to find issues you use
community.

> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0x7000000 0x0 0x10000>,
> +		      <0x0 0x7080000 0x0 0x100000>;
> +		ranges;
> +		#interrupt-cells = <3>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		interrupt-controller;
> +		#redistributor-regions = <1>;
> +		redistributor-stride = <0x0 0x40000>;
> +
> +		its: msi-controller@7040000 {
> +			compatible = "arm,gic-v3-its";
> +			reg = <0x0 0x7040000 0x0 0x20000>;
> +			msi-controller;
> +			#msi-cells = <1>;
> +		};
> +	};
> +
> +	soc: soc@0 {
> +		compatible = "simple-bus";
> +		ranges = <0 0 0 0xffffffff>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		device_type = "soc";
> +		interrupt-parent = <&intc>;
> +
> +		smmu: iommu@c100000 {
> +			compatible = "arm,smmu-v3";
> +			reg = <0x0c100000 0x30000>;
> +			interrupts = <GIC_SPI 134 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 129 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 132 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "eventq", "gerror", "priq";
> +			dma-coherent;
> +			#iommu-cells = <1>;
> +		};
> +
> +		ocram: sram@0 {
> +			compatible = "mmio-sram";
> +			reg = <0x00000000 0x80000>;
> +			ranges = <0 0 0x80000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;

SoC without any interface, serial or storage or network, is close to
useless one.

I don't see a point in having it in mainline. Serial is usually ABSOLUTE
minimum.

Best regards,
Krzysztof


