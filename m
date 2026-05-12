Return-Path: <devicetree+bounces-296183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP9KM1kQA2qX0AEAu9opvQ
	(envelope-from <devicetree+bounces-296183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:34:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF4C51F688
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:34:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5EF213019545
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 11:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D8F4CA29C;
	Tue, 12 May 2026 11:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huhAFQz0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8FD3C3C00;
	Tue, 12 May 2026 11:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778585685; cv=none; b=Z7is/p6xZuYbqKRN9Do089Hy6kwooo0JKyxLPKO6ihC+cLRosy1iu/Bs0rgveI1JTct6FXKcjeA0lIAAH/orY9JcwjUZUCIi+KKjoxUuv/IZ9FkQip2YhE8g0dL+ZD3giwzE0wcTHngqnxOGzwA8qObfxzr/JkQsRB67P6PAsTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778585685; c=relaxed/simple;
	bh=rEH0LubyCwBzQ9XB43fGcRH9yWcSU7fpspDXa3oAJV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N1gI283vVUyi/gb5HmaGyCsfmyGMCnpR63ATplb+E0++NxQuPcXKhTi6rDtK5KEo7JwuP6TZij0GcKSg0QwXTHmQDm7sHAA2e/50FTIQs6dy4UQp7g5VoLHbhIw7hzut4RzXG4joouqYnUr/jfb+u1PdSIQ9hFe41NL3c0BtrdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huhAFQz0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2701C2BCB0;
	Tue, 12 May 2026 11:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778585685;
	bh=rEH0LubyCwBzQ9XB43fGcRH9yWcSU7fpspDXa3oAJV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=huhAFQz0karYLPQmSKNvruvCoi9lXwDr+HDIeX1PLbcemcWgTcyi1FHXNgUOlw35X
	 QUp0wFLaXU6CWU4hhnxo9409qn8U5rpGBgONtlq9J65ZABGGU3wl/AMsIymEFbmRvp
	 GS7OWxtVkaE92OV0P+2OxFOExJfH54t39olwbk/p2mfNPWV+q1vK6oO5tOyKs0KS7S
	 84ualVrNHj0xC8bx1XYfwWKsRhI/Cq14GsYD8KuQyHfMXugh0Q31/V6vZJlK6VvpTZ
	 IW16r5BvcRS2OBKnMUff/wkL5Qe68X/hMaCAxqMlRmIiHBOx3z/p6/lU6ghGNdXG8s
	 JPAGhj16JAggQ==
Date: Tue, 12 May 2026 11:34:41 +0000
From: Yixun Lan <dlan@kernel.org>
To: Andre Heider <a.heider@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/6] riscv: dts: spacemit: k1-musepi-pro: enable PCIe
 ports
Message-ID: <20260512113441-GKF3624147@kernel.org>
References: <20260511111116.1109643-1-a.heider@gmail.com>
 <20260511111116.1109643-6-a.heider@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260511111116.1109643-6-a.heider@gmail.com>
X-Rspamd-Queue-Id: 6AF4C51F688
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296183-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Andre,

On 13:11 Mon 11 May     , Andre Heider wrote:
> Enable the two PCIe controller along with and their associated PHYs. They
> are routed to the M.2 M-key connector and to the PCIe slot.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>
> ---
>  .../riscv/boot/dts/spacemit/k1-musepi-pro.dts | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> index 9c90c2817ecb7..2d3e30f0bd806 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> @@ -36,6 +36,24 @@ led1 {
>  		};
>  	};
>  
> +	pcie_vcc_3v3: regulator-pcie-vcc3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "PCIE_VCC3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		vin-supply = <&reg_usb_vbus>;
> +	};
> +
> +	mpcie_vcc_3v3: regulator-mpcie-vcc3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "MPCIE_VCC3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		vin-supply = <&reg_usb_vbus>;
> +	};
> +
>  	reg_usb_vbus: regulator-usb-vbus {
>  		compatible = "regulator-fixed";
>  		regulator-name = "USBVBUS";
> @@ -275,6 +293,38 @@ dldo7 {
>  	};
>  };
>  
> +&pcie1_phy {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie1_3_cfg>;
> +	status = "okay";
> +};
> +
> +&pcie1_port {
> +	phys = <&pcie1_phy>;
> +	vpcie3v3-supply = <&pcie_vcc_3v3>;
> +};
> +
> +&pcie1 {
..
> +	vpcie3v3-supply = <&pcie_vcc_3v3>;
drop vpcie3v3-supply which not needed

> +	status = "okay";
> +};
> +
> +&pcie2_phy {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie2_4_cfg>;
> +	status = "okay";
> +};
> +
> +&pcie2_port {
> +	phys = <&pcie2_phy>;
> +	vpcie3v3-supply = <&mpcie_vcc_3v3>;
> +};
> +
> +&pcie2 {
> +	vpcie3v3-supply = <&mpcie_vcc_3v3>;
same here
> +	status = "okay";
> +};
> +
>  &qspi {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&qspi_cfg>;
> -- 
> 2.53.0
> 

-- 
Yixun Lan (dlan)

