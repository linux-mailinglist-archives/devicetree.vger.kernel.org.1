Return-Path: <devicetree+bounces-316727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VdnhIbgeQmpA0gkAu9opvQ
	(envelope-from <devicetree+bounces-316727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:28:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E396D700F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:28:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bwnQe0Gx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316727-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316727-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE002302DB00
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7058A3BA239;
	Mon, 29 Jun 2026 07:07:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667902DF6EA;
	Mon, 29 Jun 2026 07:07:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716850; cv=none; b=PShbyJD+raVj3BRwN97idC64PZ3+mqetU4Nysep42jM2/xu90ZOuQiRfhdah9PKG8cB59nc8le32e1hwbhd3m7eYGs4sBCUHt66ooFZY8iQ+RMJCqNzWibq5OIA3XULZ+sY3HmHkh2JUTWWV7Rx1snx0svMEcrvJyvxoyjrTxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716850; c=relaxed/simple;
	bh=RabWbNxVVw5+wsSfwokvLyo8cCIxRtNUHYXURlhxNGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ev9KSnBNbJTdVVVnGYkTGO3VftsaakrgGEWrAI15womiV43FEQfKzUDMI69EjAYkb+Tq4Cao+CLF3mNyJYCDhZSvvVDMNs1GudNOsCWGxI9uHJL/Om1zPqobshpYv3zjCpPppOTOUFaMTEpG4bvwtdcghnvNn4aCsUsavsgcKDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwnQe0Gx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D827D1F000E9;
	Mon, 29 Jun 2026 07:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782716849;
	bh=RIf7bEwC3Pbgc+fNYSyHu70M4rQWzPypAFIrNhVkzfA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bwnQe0GxhfRfkTQd3zcmCi2lBB3MWpbiLY8ZwtYB9kghATt3tRrZFIdZISXP85n0a
	 OfkKMaTMYR9GeXs5BKO9tuymVW0DMvUNH1TlmFLWH+iRoFrRyR8+QroaHKw3/oVWPx
	 7P8elPGD8Fc/yQkgtaHPNJRotHAYEQgb9d0xQiXylWsmq8macGpklirfateWX2SoZP
	 rxtOMTca14R10r8b0aYzst92ljVy/1SLLbkshMzoqF8eU6Gf8sKOtGiQwTgGXN0El3
	 k5i0aUSwD7fCZZrVtflxGhxz/HfJR6UVyZxL8fWir/ITJ3Tprii7153lwuvtpYT84C
	 Zy+tZnvbJ8J4g==
Date: Mon, 29 Jun 2026 09:07:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
Cc: linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, 
	Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/9] arm64: dts: agilex5: add SOCDK eMMC daughter
 board support
Message-ID: <20260629-wild-dramatic-clam-80eb5c@quoll>
References: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
 <20260627201457.12318-6-tanmay.kathpalia@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260627201457.12318-6-tanmay.kathpalia@altera.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316727-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tanmay.kathpalia@altera.com,m:linux-mmc@vger.kernel.org,m:ulf.hansson@linaro.org,m:dinguyen@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,quoll:mid,vger.kernel.org:from_smtp,altera.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1E396D700F

On Sat, Jun 27, 2026 at 01:14:50PM -0700, Tanmay Kathpalia wrote:
> Add socfpga_agilex5_socdk_emmc.dts for the Agilex5 SoCDK eMMC daughter
> board variant. Define board-specific regulators at the DTS root: a
> fixed 3.3V supply for card power and a fixed 1.8V supply for eMMC I/O
> voltage.
> 
> Enable the shared SD/eMMC controller for eMMC-only operation with an
> 8-bit bus, HS200 and HS400 modes at 1.8V signaling, and a 200 MHz
> maximum clock frequency.
> 
> Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
> ---
>  arch/arm64/boot/dts/intel/Makefile            |   1 +
>  .../dts/intel/socfpga_agilex5_socdk_emmc.dts  | 120 ++++++++++++++++++
>  2 files changed, 121 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_emmc.dts
> 
> diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
> index 33fcc55d0cb9..5bbbcfda1f48 100644
> --- a/arch/arm64/boot/dts/intel/Makefile
> +++ b/arch/arm64/boot/dts/intel/Makefile
> @@ -8,5 +8,6 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
>  				socfpga_agilex5_socdk_013b.dtb \
>  				socfpga_agilex5_socdk_modular.dtb \
>  				socfpga_agilex5_socdk_nand.dtb \
> +				socfpga_agilex5_socdk_emmc.dtb \

Same mistakes... Do not introduce random order.

Best regards,
Krzysztof


