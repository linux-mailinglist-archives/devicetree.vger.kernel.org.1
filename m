Return-Path: <devicetree+bounces-296190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PwbMrMSA2r20AEAu9opvQ
	(envelope-from <devicetree+bounces-296190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:44:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C746351F890
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F4773004055
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 11:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74C5360ED7;
	Tue, 12 May 2026 11:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0kGPMUg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F19360ED3;
	Tue, 12 May 2026 11:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778586277; cv=none; b=ba8IAZispuD3/3t/BsHtDyfGfXCa0nZJLc1ETsnwAEeSoqBVItf+ZV3SDlsqxHLPo10txYXVW8YyKM1bY7yHWHg3TloCw77Wa7SOEkxjeFoDen7OXKYv8SoDlVHjBEGniYo77yUTYGxvVIoBDSCSRpsnH6tYUO6+iMzHPvRYaMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778586277; c=relaxed/simple;
	bh=jJ9Y3G6YF8uK918acH5+bW7b74nfHZoPK01spE4GgWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sNHpnDvZcWqDDTLT6UPxvXayf/ivMuGAbGtS6guPglcHZkJ9ca9JpGBp/vnzshvy5AzKIFBoIsC/gQYntsSgyu9cFUmf74nQaBFyoD3DidpVmMA9dwjORG5TsQNOUEJEszhaXbXLr/MLl7eyl5CksqgEP5XSOPY/n3eMeZHsxzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0kGPMUg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04DFDC2BCB0;
	Tue, 12 May 2026 11:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778586277;
	bh=jJ9Y3G6YF8uK918acH5+bW7b74nfHZoPK01spE4GgWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N0kGPMUgQx6aegtAMTz00t7GSD8CaGdz/CHReN52DEJB4JlzI7zEsHqi0S0qXWjHH
	 rMJpj1bZ6adAn7QsDevyLm5jFvwvs0c/ib0lZ/PQ3RD1tbDLQ537dD4Y82NvyWMcOJ
	 zRloE2hHHvlak1cR5JfixyowSjNKK+j87CD3470jJsvZxdgtzPVJWTBfps5wK4YlgF
	 +yp8YgtQJHuMFTE3Fk33mQLVaDAxioOC/eoEsmdB2/JL/yl46abFAb7YiVMFOybgRy
	 1EXsTtGaUHsM+ZQ3qb/FClXEVVHZTxi9rD93qXibql4fH4OfuOg9QWa5QeKC/vnexE
	 Kg0+kKP5MjoFg==
Date: Tue, 12 May 2026 11:44:34 +0000
From: Yixun Lan <dlan@kernel.org>
To: Andre Heider <a.heider@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/6] riscv: dts: spacemit: k1-musepi-pro: enable QSPI
 and add SPI NOR
Message-ID: <20260512114434-GKI3624147@kernel.org>
References: <20260511111116.1109643-1-a.heider@gmail.com>
 <20260511111116.1109643-4-a.heider@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260511111116.1109643-4-a.heider@gmail.com>
X-Rspamd-Queue-Id: C746351F890
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296190-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.234.96:email,0.0.39.16:email,0.0.78.32:email,0.1.17.112:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,a00000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Andre,

On 13:11 Mon 11 May     , Andre Heider wrote:
> Add the QSPI controller node and describe the attached SPI NOR flash
> (Winbond W25Q64FWSSAQ).
> 
> Add a corresponding vendor flash partition layout.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>
> ---
>  .../riscv/boot/dts/spacemit/k1-musepi-pro.dts | 43 ++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> index 79415d760f162..7ebace0e46edb 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> @@ -166,7 +166,7 @@ buck3_1v8: buck3 {
>  				regulator-always-on;
>  			};
>  
> -			buck4 {
> +			buck4_3v3: buck4 {
I'd prefer you make it right once in the first patch [1/6] which introduced this
regulator.. please fix all similar issues in this series..

>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <3300000>;
>  				regulator-ramp-delay = <5000>;
> @@ -249,6 +249,47 @@ dldo7 {
>  	};
>  };
>  
> +&qspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&qspi_cfg>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <26500000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		vcc-supply = <&buck4_3v3>; /* QSPI_VCC1833 */
> +		m25p,fast-read;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			bootinfo@0 {
> +				reg = <0x0 0x10000>;
> +			};
> +			private@10000 {
> +				reg = <0x10000 0x10000>;
> +			};
> +			fsbl@20000 {
> +				reg = <0x20000 0x40000>;
> +			};
> +			env@60000 {
> +				reg = <0x60000 0x10000>;
> +			};
> +			opensbi@70000 {
> +				reg = <0x70000 0x30000>;
> +			};
> +			uboot@a00000 {
> +				reg = <0xa0000 0x760000>;
> +			};
> +		};
> +	};
> +};
> +
>  &uart0 {
>  	pinctrl-0 = <&uart0_2_cfg>;
>  	pinctrl-names = "default";
> -- 
> 2.53.0
> 

-- 
Yixun Lan (dlan)

