Return-Path: <devicetree+bounces-262257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDwDJYTzgWkMNAMAu9opvQ
	(envelope-from <devicetree+bounces-262257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:09:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 362E4D9B06
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8367630199DF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F8634B683;
	Tue,  3 Feb 2026 13:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpl4q72C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DC3212554;
	Tue,  3 Feb 2026 13:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770124156; cv=none; b=SfIONM0gawxSH6xwQg4UZsU9F/rIw+nY2L8fcmjalnJkPYXBwHwz8CkctsnEGTTFobIvghM01uhNk8FHhECCvJ7+T4nqLprbO26agd/HyeqB0mP7CjbmA2UXrJ5yDdKOzL5DhryvQHDdDUkwdJjkOIRrGHbHakSDBkNKnHlLejU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770124156; c=relaxed/simple;
	bh=MSFiS/LmupV3YopiS8HKbsx3Kh/IjnAnq0VI5uK+094=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HbttwuPXNeNwKIe9FUDH598U/D0aT1a2oX9eefzZfUo9J5LXlpQIRLnlsEGqjlsvu4sacWn6WCrJm/br0U8ZKtJCGthGS0JWYlXEUpo9nv9BgZoJYDJ06RSUwbvJa9LBF3FDwXzT6hM2jwdeUxcQ1+ssDs+VXTxao99BXmjPH44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpl4q72C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC1A9C116D0;
	Tue,  3 Feb 2026 13:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770124156;
	bh=MSFiS/LmupV3YopiS8HKbsx3Kh/IjnAnq0VI5uK+094=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hpl4q72CKM72QleOVs/y4d6Jr3g8fwYGdg8pMbFc5YKO0fDoWLxXx6xvuUpGWALjk
	 L6rYCMUN5y8sSyPqmfCBk3A5KhvI2afw1pNQYi9jBPeQ76WEQroLPdn3nQRdHqgcEP
	 Dbj5cdomtSt8ORq1W75qZaGhpYjiMBurxv/+I927aFbT08VSgL5aTVMmKpzaONSgE+
	 nFGdckTuwKGKIWLkxYdd70reXJ9izP7Z0O4iySe7c2kBQylg/b8LRh/CcW3RtPzNgM
	 n4oaxsZ0zTtRHXHzfmUYSrzUklSaARJK+fahiTYUurqjLK8OQXnMcHxPEOIgjGFrfL
	 MF0pYABAi2j3A==
Date: Tue, 3 Feb 2026 18:39:06 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: hongxing.zhu@nxp.com, l.stach@pengutronix.de, Frank.Li@nxp.com, 
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
	imx@lists.linux.dev, kernel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 03/10] arm: dts: imx6qdl: Add Root Port node and PERST
 property
Message-ID: <mp25jwvoimpesfwtpmyeltdpbu7aznahxvkcn6jxg5jqzxck4i@pium66rnpdd3>
References: <20260203015614.2957479-1-sherry.sun@nxp.com>
 <20260203015614.2957479-4-sherry.sun@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260203015614.2957479-4-sherry.sun@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262257-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.30.132.128:email]
X-Rspamd-Queue-Id: 362E4D9B06
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 09:56:07AM +0800, Sherry Sun wrote:
> Since describing the PCIe PERST# property under Host Bridge node is now
> deprecated, it is recommended to add it to the Root Port node, so
> creating the Root Port node and add the reset-gpios property in Root
> Port.
> 
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
>  arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi |  5 +++++
>  arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi         | 11 +++++++++++
>  arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts |  5 +++++
>  3 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
> index ba29720e3f72..fe9046c03ddd 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
> @@ -754,11 +754,16 @@ lvds0_out: endpoint {
>  &pcie {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_pcie>;
> +	/* This property is deprecated, use reset-gpios from the Root Port node. */
>  	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;

You should just remove this property.

- Mani

>  	vpcie-supply = <&reg_pcie>;
>  	status = "okay";
>  };
>  
> +&pcie_port0 {
> +	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
> +};
> +
>  &pwm1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_pwm1>;
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
> index 76e6043e1f91..eeb376193398 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
> @@ -289,6 +289,17 @@ pcie: pcie@1ffc000 {
>  				 <&clks IMX6QDL_CLK_PCIE_REF_125M>;
>  			clock-names = "pcie", "pcie_bus", "pcie_phy";
>  			status = "disabled";
> +
> +			pcie_port0: pcie@0 {
> +				compatible = "pciclass,0604";
> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +			};
>  		};
>  
>  		aips1: bus@2000000 { /* AIPS1 */
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts b/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
> index c5b220aeaefd..6b12cab7175f 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
> @@ -45,10 +45,15 @@ MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
>  };
>  
>  &pcie {
> +	/* This property is deprecated, use reset-gpios from the Root Port node. */
>  	reset-gpio = <&max7310_c 5 GPIO_ACTIVE_LOW>;
>  	status = "okay";
>  };
>  
> +&pcie_port0 {
> +	reset-gpios = <&max7310_c 5 GPIO_ACTIVE_LOW>;
> +};
> +
>  &sata {
>  	status = "okay";
>  };
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

