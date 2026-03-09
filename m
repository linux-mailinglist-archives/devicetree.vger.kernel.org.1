Return-Path: <devicetree+bounces-272983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANUHLVffrmm/JQIAu9opvQ
	(envelope-from <devicetree+bounces-272983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D339723B012
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C20753015B70
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 14:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3845B3D6483;
	Mon,  9 Mar 2026 14:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pk0RlBnn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078733D5679
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 14:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068115; cv=none; b=rK9aNjDJGmlziZWEjHuP+WEoTO+ZB/BqoWg8tEEvrtOEMLjQUTHDdpK+4118wtDNcHM2dANKfHOdNJ8NUx+lLDVadx69QfnCOTpfPqNrfQxCgYlQvVhnFMRM15ILWUtcUOsw6faW/Kp3Cr4j5wUdPh/VHnt2BBulU0wfGv7uJDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068115; c=relaxed/simple;
	bh=x4QP15R/9B+N5FOjDqYYIRxEF2hUc6vGxoVhCVIDDdQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TewXzCZSdYX9dEuwT4jnb2tvqJCc0Tsld1lobaYbLdiCHVf5JRnMIp56ZWWFY8PbzrLy6qMPKvAsTCJi1Wig5u+Gtb1hwIOj74puWIibv/OdhwR2RoZBw9h16Ovst3uAM2tt3IP68xFGsbAGGarEZ/FxWkydI6od7N0NGpvBk9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pk0RlBnn; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a9296b3926so89896835ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 07:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773068113; x=1773672913; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N1i5e7Q8gFbJD5fnK2/pRPBASYfAfCYgjknfSgkScnQ=;
        b=Pk0RlBnnPF98zh7/LFFhSz4hbxnXrJtj4cnO6/csqEK9o8OVfxPoaDww6Z+cl7rM8/
         GtPGhjMw3fBYynpFpPfJO0VoEg8tOuBxTpoujIbIxxJEqiJ/Oc344zO8EcwDf/8G1go/
         PbV0Tn1uc8/KDw12BqLxWkHJqqZ7lJwQQQ22lATOGPYOcALvk2VlzIccWcG/oV/xCMEv
         YCipeo0pB6K2tbNvz1xxOvdaSMyxrt/rUtDClunqxDeo2LPgxFXDJKl+Djvlw0WJkjiG
         L/aBOOrjHi9r87LaTSOYWJSzAoflr/+JAppvtKdIGCZFeQdxkQBOym2ZS4Nc7EiMsC4p
         OIDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068113; x=1773672913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1i5e7Q8gFbJD5fnK2/pRPBASYfAfCYgjknfSgkScnQ=;
        b=Y6bBdCVcaoy0SP6S+Ii3vlvMMNvbmXwmK1CcaB6zRQCHru15RL34sMk6oBPheYtQsR
         am10yTriimY21AIDLA1wBVUaH0fCj5Yv1zxTirjmVDxGvSWeTaYZD3gKdeJlmCQ0fOzd
         4ZyiZNy4rngg10MM4ivO6/bVzb/5mTcabyLPOwiThVmJUrnZhzNAEDPp2lMl5yD4QWwF
         0U99s33QUPVGJRpMrB6ZdJsoGPXliR1lUdOmeD2jPVOxaUIX0/zirPCDBXYlUSTKCCR8
         cZAn8h0P/i574JdpDSeutJnXexvUhDksmF3td7GSYDMK8QdpmXY/teuRaUxzYrbU8VAM
         7uog==
X-Forwarded-Encrypted: i=1; AJvYcCU0xYppQnC2PeFQkjqGFXs55YRiBZiiXppdTVdTLH7ZdeKPcyvKO8HvslaPiqVgSNhJ9EtIPFNVKfJB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyea4yT9ZLMEQM6pvOKDO+64LLnbGy/BI2eOJ6Nnw+JjzR98Vdg
	JAqYL14GvD4OS6tEI7DJFYKY0P3dCojMlT9f5pUwWm7E0ZeqJ71vHUJ+
X-Gm-Gg: ATEYQzxcvolLEX/cgubDhpqksflUAHlkmdZ6DYZQZ8H67dLVkCEGHLivbztIMOidfy5
	+K7hj8cR2zXatqVnaRWRV9PI1Cq2FoN5wKZz2sWiEyUc/8syEEnRx2a6pX1hCqLJwB9M2OZY0BA
	YJcs8soHvsIN8QF+w1BChx6oE6DAzOUa240YnkENDpouuy1NB+hQ/4NPAJvayHLDRIwJ6JMRdYG
	rKHOVBhLtuSaP+AH/jOeIYk2AvCXsnrkv04OutM6MYNvBLhj2l5CgY63HUGNVGGt7nPmK2QR4zD
	RqmTVwEBnUOiOXQZCZ617iJS1WMcCx0KRexEpT0BbHiPgqeqtGGLtEhjHxdDZXEUaOTv6qfz7D6
	N/4YiFs2eZ7LEVJxEW4RamWc/JPEj6aP2ecwldHLwKvhbCko1fxF3Iz7DGJwjP5Bu32QJ6N+8o+
	08M99J202DF8vlUJQEr/4F5Mk7fAM/9BGiTPRDWb+RYIlFS9In9XTkE6k=
X-Received: by 2002:a17:902:ce83:b0:2ae:45bd:9b39 with SMTP id d9443c01a7336-2ae82416b18mr115119055ad.12.1773068113255;
        Mon, 09 Mar 2026 07:55:13 -0700 (PDT)
Received: from [192.168.1.6] ([27.7.215.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e584aesm115567155ad.3.2026.03.09.07.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 07:55:12 -0700 (PDT)
Message-ID: <afd2974b-fd6a-4d2c-831f-ec2e6e656a98@gmail.com>
Date: Mon, 9 Mar 2026 20:25:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm: dts: ti: omap: align node patterns with
 established convention
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D339723B012
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272983-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.930];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.1.44:email,0.0.15.160:email,33c:email,0.0.17.48:email]
X-Rspamd-Action: no action

Hi, 
This patch from this series is still not yet picked to apply.
The dtb_check will throw errors to the YAMLs in this series if this clean up patch is not applied.

On 23-01-2026 21:09, Charan Pedumuru wrote:
> Update OMAP DTS node patterns to match established conventions.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  arch/arm/boot/dts/ti/omap/dra7-l4.dtsi  | 4 ++--
>  arch/arm/boot/dts/ti/omap/omap4-l4.dtsi | 4 ++--
>  arch/arm/boot/dts/ti/omap/omap5-l4.dtsi | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> index c9282f57ffa5..ed206eb84d02 100644
> --- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> @@ -328,7 +328,7 @@ ocp2scp@0 {
>  				ranges = <0 0 0x8000>;
>  				reg = <0x0 0x20>;
>  
> -				pcie1_phy: pciephy@4000 {
> +				pcie1_phy: pcie-phy@4000 {
>  					compatible = "ti,phy-pipe3-pcie";
>  					reg = <0x4000 0x80>, /* phy_rx */
>  					      <0x4400 0x64>; /* phy_tx */
> @@ -348,7 +348,7 @@ pcie1_phy: pciephy@4000 {
>  					#phy-cells = <0>;
>  				};
>  
> -				pcie2_phy: pciephy@5000 {
> +				pcie2_phy: pcie-phy@5000 {
>  					compatible = "ti,phy-pipe3-pcie";
>  					reg = <0x5000 0x80>, /* phy_rx */
>  					      <0x5400 0x64>; /* phy_tx */
> diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> index 4ee53dfb71b4..d8b16cbe6c35 100644
> --- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> @@ -72,13 +72,13 @@ scm_conf: scm_conf@0 {
>  					#size-cells = <1>;
>  				};
>  
> -				omap_control_usb2phy: control-phy@300 {
> +				omap_control_usb2phy: phy@300 {
>  					compatible = "ti,control-phy-usb2";
>  					reg = <0x300 0x4>;
>  					reg-names = "power";
>  				};
>  
> -				omap_control_usbotg: control-phy@33c {
> +				omap_control_usbotg: phy@33c {
>  					compatible = "ti,control-phy-otghs";
>  					reg = <0x33c 0x4>;
>  					reg-names = "otghs_control";
> diff --git a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> index 9f6100c7c34d..5c94db589dd1 100644
> --- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> @@ -472,7 +472,7 @@ usb2_phy: usb2phy@4000 {
>  				#phy-cells = <0>;
>  			};
>  
> -			usb3_phy: usb3phy@4400 {
> +			usb3_phy: usb3-phy@4400 {
>  				compatible = "ti,omap-usb3";
>  				reg = <0x4400 0x80>,
>  				<0x4800 0x64>,
> 

-- 
Best Regards,
Charan.


