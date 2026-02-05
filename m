Return-Path: <devicetree+bounces-263018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I6oMEiahGmh3gMAu9opvQ
	(envelope-from <devicetree+bounces-263018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:25:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 238EDF3360
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E48213040760
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 807923D6495;
	Thu,  5 Feb 2026 13:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGoGIKHs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3733D34BC;
	Thu,  5 Feb 2026 13:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297821; cv=none; b=G/HZXqvnM3XRrpVd0KTDPrFQIybyS6C57FHBQv6CXh8Qc0y8+yw16Yt7F+GALMVMebpnDp0WERcXEHHNiy8284W50fGsSJQ8ToT/tkwPMLfJf/Eh3zM8cvfDcgcRO/TGiuZM1c4qrSFxE1duzlNoBN9YpkXwiEa4LARMbAn7mJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297821; c=relaxed/simple;
	bh=TH2SzadiN4HBN+40P0xnfax3PZRUqXvZ1UIA3ramg84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VWDPLVAH9XJzvortNtdmPn8YQuL1xnqxJLg0dkeDo2gFwKxv5oGX4AtMyW5Ud/fNf0QT62IWXKpXLtL7I3rSRXzHmuobFV515nRS7S9x7iGsoEkFBFRQUqxo7ctTZLHc7SBfznZR/DjWk9uIrnmR9GrAo1XaRaR8C/S39RbqZaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGoGIKHs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81D8EC19423;
	Thu,  5 Feb 2026 13:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297820;
	bh=TH2SzadiN4HBN+40P0xnfax3PZRUqXvZ1UIA3ramg84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cGoGIKHsnk/D0CGgFAjZ/QcgfCNSPhv89UWcQmkPt8BJw+uM4cBLluhtuAQ+P35+L
	 CSNDtwyJoS4ddMBv0vmjO1Q5XZ4gZcmHd7z4TH0Oq48IKPN8lUxSXD+Gu2ZelAYuvl
	 pVAAiCssvsSIhkPGc6R8OPLjNgETk0rvJl4RWOQo8YSyRwSki/+ee9uGh/mzb8hvlX
	 I0r0XZ7sbgyZLqs5mlF8Frb2zL31sme0ZtN4WAW7IAxRVoRfUlhRoGMX+/f8A3IVv9
	 0tIojIr+uWACLmETEagWqvUhfghUaZqvmSHWr5lwBHozLSBXhVuKjTSDWuQSpqJTpe
	 ILzM0kBznjoKw==
Date: Thu, 5 Feb 2026 14:23:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joey Lu <a0987203069@gmail.com>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: nuvoton: ma35d1: add display
 controller support
Message-ID: <20260205-tactful-warm-chicken-50bdc8@quoll>
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-3-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260129040532.382693-3-a0987203069@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263018-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 238EDF3360
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:05:31PM +0800, Joey Lu wrote:
>  &uart0 {
> @@ -129,3 +165,23 @@ &uart16 {
>  	pinctrl-0 = <&pinctrl_uart16>;
>  	status = "okay";
>  };
> +
> +&panel {
> +	port {
> +		panel_in: endpoint@0 {
> +			remote-endpoint = <&dpi_out>;
> +		};
> +	};
> +};
> +
> +&display {

What sort of ordering rule is followed in Nuvoton? Why is it different
than DTS coding style? Why do you choose other style?

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_display>;
> +	status = "okay";
> +
> +	port {
> +		dpi_out: endpoint@0 {
> +			remote-endpoint = <&panel_in>;
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
> index e51b98f5bdce..7d9d077f12b2 100644
> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
> @@ -379,5 +379,19 @@ uart16: serial@40880000 {
>  			clocks = <&clk UART16_GATE>;
>  			status = "disabled";
>  		};
> +
> +		panel: panel {

No, there is no way your SoC has a panel.

Don't add fake stuff to your DTS.

Best regards,
Krzysztof


