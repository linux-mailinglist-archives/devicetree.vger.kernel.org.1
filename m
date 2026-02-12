Return-Path: <devicetree+bounces-265155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kM8dFCcGjmlf+gAAu9opvQ
	(envelope-from <devicetree+bounces-265155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:56:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B814412FB78
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:56:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5283301DEE9
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC622F0C6A;
	Thu, 12 Feb 2026 16:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fTZswQco"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8596835D611
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915356; cv=none; b=tFAwX6JZiqVZ0bQJ+LqNaFH80atWly8Y2Yfh6/Hcil3XMcJV5weaOo3D51IfK+J0T6YF9jmpJ/4vLGwyJGo4sobNh+pzUEbvnJ8hoQ1MhIRnKxSMbBDMNz5znrdf+eaVF0HNvS8Q6CPwTNhZyzhSUvXL2qLsMxG0Jv2KgMhGa/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915356; c=relaxed/simple;
	bh=tu6NH5KRiqpHmO7a2E4izBi9G/Voi5o3rIHojUhD3Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LWpS3HT8yiktOQEAsNpRX8ekXSqu2Ty6JPT1DgOgn+qt2q2PCgQHEuqrl23A5RIHpIb4GyhHxoUoW/Lm3sbVpt8pF74iOflAkWN1u+9yxl67yLaSBLJTm5JW1i8rbgi7rE/QSbXL877Cf49vg2jAwGsxG8Jdx4EZEeAJHs6rk0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fTZswQco; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4806fd9033bso49955e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770915354; x=1771520154; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EWH52hHDoZsOt/pe7QFROJLUmHx4Nch/byKXwRcnIQ8=;
        b=fTZswQcoPhPY2MwfeoyuqlxNoTYAl0qUKn99RZyjRr2g+ftzh2xQif1T772pDf+/l+
         rS3iB54Ion+rDYOB1szBqeS5EZUNBITcXM+WNKXgowlxXdtVOtObl+6xCgAKtkLb6yUe
         RgBXB7HWubZ2DefpQKJG/XrmXSU2Vj7Hv29iX270uIWPw2Bio4l3kHlxn5EQtBxcLcwM
         ZBB4izRx3DyNG5t4Ab+dPgGqn8NG1Pbb91++O4cyMBrc+gvDV3YtxxlmEgTe012KDGhN
         94b9/UjtBAC9FTpT4b64Z1f9UqCK5TJVAtu3SkIo8x06MEYBUbEKMAk28weaxKjxfSvD
         l3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770915354; x=1771520154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWH52hHDoZsOt/pe7QFROJLUmHx4Nch/byKXwRcnIQ8=;
        b=AxF7idltPAynI9DSKOH/THIHKPPrNhxb8hEku99VATCWWCw2F3DS8zGz3L/N68Tl4n
         BNLN7TUmUQGm+MvG2Irq5Qa5FyYFCxLBcKix5AqnqAffWcK9HTGuUqltoY5xptb3WNG3
         cO95TQNLrdvgMWYx37crryRs3YDJwtD3qwdtUT37UlAzzYI6WEVNZNwou2xnrYbZGppQ
         4F0jGfhXLxM6VuNFUXk47kbf8iMHB+2KcdBGqY5wqkSG6BUmcgZRTpzrk54wLjtBz5GJ
         EIw4s3HlvNH7+T6JrsyeON7MHzOQkDYUQOhWnGY5X6/jiFA748oD1Sdvwc5MphYeXx4U
         /yWA==
X-Forwarded-Encrypted: i=1; AJvYcCXgfC57O22R6dOIhsh8q1P6dGDZt8yu0DCw9lWMjuHZWam7TFb16j2exXUF8YE1Mpm+V9jndzMd35vP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6F8DMtflfDFK6cJdK0mWQOtDGFFC0yforYUmtIUP5BvJVNTN7
	w/PAN7bNaOqH1PUr7C6F+1joB9xeQObuFQN6OrMSNGriHlAYDm0tTZI5
X-Gm-Gg: AZuq6aKpxSC6lt//1IVtg+l6xZiAUegPRi7hOj0xTMnPM4i20woVQY8dldAnNT7YYVF
	TSw4y5ZbEhA6u+/MRM6vlRi10FUzOC0fnm1EDsev7EcmkDOu0hhekM6uoArWnR0PY8acJ96oOyV
	9KbVYmYacicaYVfFhEE30Cxi+iWvXsmcaroUD0qNzDugkIcXq6iaaL3eWiNrimCNSQo7OIZtEHC
	5Sx0VhNTaV7ToYg46lwNJxwgU+9PqKGA+2V8d5u+Ttne9CxSbMDyx9a6XqW7a2yrYMS9+LbIt9E
	dWpUxhCcLnRHtd5B7HAq5I/AC0MWxm/zFSjcJ0vyKcbGt8509LSwJxqrpcuNhJ/Y0UmxERyhwXK
	xznHWSWijwwzzeJDELjBLoTmF/j3Na/Yy97mAOHp5pAd7DbVimEuTR55nv9qSOfVvn8eyLP5jua
	fYnzpNfQIsKm1SD4Q=
X-Received: by 2002:a05:600c:a09:b0:477:9fa8:bc99 with SMTP id 5b1f17b1804b1-4836570e260mr29901335e9.4.1770915353815;
        Thu, 12 Feb 2026 08:55:53 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dd20519sm222156105e9.15.2026.02.12.08.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 08:55:53 -0800 (PST)
Date: Thu, 12 Feb 2026 18:55:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add USB2.0 PHY for RK3368
Message-ID: <20260212165550.mju3377fvphdsqoe@skbuf>
References: <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-3-cn.liweihao@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909132958.26423-3-cn.liweihao@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265155-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.2.188:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ff770000:email,ff760000:email]
X-Rspamd-Queue-Id: B814412FB78
X-Rspamd-Action: no action

On Tue, Sep 09, 2025 at 09:29:56PM +0800, WeiHao Li wrote:
> RK3368 has one USB2.0 PHY with two ports, This adds device tree node for
> it.
> 
> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi | 29 ++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 1b21787269..b09e431a64 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -766,11 +766,40 @@ cru: clock-controller@ff760000 {
>  	grf: syscon@ff770000 {
>  		compatible = "rockchip,rk3368-grf", "syscon", "simple-mfd";
>  		reg = <0x0 0xff770000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;

This introduces a device tree warning. You cannot mix nodes with no unit
address (io-domains) with nodes with a unit address (usb2-phy@700) on
the same hierarchical level. You have to pick a format and stick to it.

>  
>  		io_domains: io-domains {
>  			compatible = "rockchip,rk3368-io-voltage-domain";
>  			status = "disabled";
>  		};
> +
> +		u2phy: usb2-phy@700 {
> +			compatible = "rockchip,rk3368-usb2phy";
> +			reg = <0x700 0x2c>;
> +			clocks = <&cru SCLK_OTGPHY0>;
> +			clock-names = "phyclk";
> +			clock-output-names = "usb480m_phy";
> +			#clock-cells = <0>;
> +			status = "disabled";
> +
> +			u2phy_otg: otg-port {
> +				interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "otg-bvalid", "otg-id",
> +						  "linestate";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +
> +			u2phy_host: host-port {
> +				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "linestate";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +		};
>  	};
>  
>  	wdt: watchdog@ff800000 {
> -- 
> 2.47.2
> 
> 

