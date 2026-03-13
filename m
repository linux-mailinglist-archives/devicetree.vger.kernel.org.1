Return-Path: <devicetree+bounces-274809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFnNOZ1Xs2kRVQAAu9opvQ
	(envelope-from <devicetree+bounces-274809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:17:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C14027B846
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE03A302C716
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 00:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1313924676D;
	Fri, 13 Mar 2026 00:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Qax2nKfM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633AD24CEEA
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773361047; cv=none; b=RKNX1KwQGVger1oA2fSdQ8E8NysDRSB/0hlSZQ+ItldFANctxVxVhWHe8OUsQR9AzY9YW7d5N3NJZyxQD/QZa/dZfHsfPfY5kE1sa7X+gh0xRmBBUIeBqF0TP7KtjALOYUHIciP00a1WMy2OxIkNirRvEU1RLAaEdq79uzLh+94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773361047; c=relaxed/simple;
	bh=sBDJiycTYdIuQYP8aXJgcHXx7wyBEVeAIRSLsbiJbcY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=WeB9kdfA5c1XIJfGS3ZSqeTcih2d5JlQHOjvlh5B6H+/gg+opIFo1rlfDkzeyfqblhQFcvcbQ/8mJci9KtZwYJotrfGWe1kM+nML5rtzR1r6ltTZkzCcR/VebQBkZSU+ESJp/nxpELFyblhRhmph9Rx7n6pGDfms6R8ZDppvkHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Qax2nKfM; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-359ff894f0dso613208a91.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 17:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773361042; x=1773965842; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=cyKlpEvu/Gz33z23N2eapbn1Hxc35CxSf0FmojMpCCA=;
        b=Qax2nKfM72joEFK54+3nPClkCjw15Y7WXk2erpPlVNX88M4fxnweRjzES3T4QxpvBs
         krUX3CHV2+7tnRdHn4FfZeNB1GZoxo46340rFI1Qtje8iGc9kn02H5Z5I4l1nVdU3p0x
         cLQ2EYEjuSx+qGN/5OoYknNBbjpKfLRneiQ6cbQ5V7ILRkpX2VsYuF54+M0wMF/Sd6do
         /E4WBD7pkiaaa7QCAMR5B5JwU8aPqNOBfoqlEHpIlrB1FBRTPUqpeIOD78cEa4aMX1BV
         GJ51TE/pnw4as7/r0ZxsupgD5L4+PwQ0Ijf6pIdBVhFtXQxHOrhDSuSqcFg3tYCH5Zs6
         vxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773361042; x=1773965842;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cyKlpEvu/Gz33z23N2eapbn1Hxc35CxSf0FmojMpCCA=;
        b=S8WQ73vKuZSfVU7IgRCJvT6R+2tuxMlWyRXANXWPXlG4orTUYZ7/ua8zPt+O+TvjNS
         yq9MB1DG0ZFeWd8zkrC0QW79FCuoa2kg4R0IFhaUbwb5GcspLv/IgVgXuyYVV1JDxin3
         odA0ipHzstiVwKa0iNS5RM/I2NpAaAr4lSRSE/+2LsK1uJHuEykbyDDyqwa2emEBGPrV
         Qawy1ZZQyfMYEjZPOZtEJmb4PBhpKa7TdsxP5FQej1wL+Tjfb1JQOPuTSZtyfg5CzlJp
         v1hXY9rqDUYEdX5OSFZkPPM5YPMOvkcv2JMLbO5jUbKjkZrseBAt0RbCcnoY1XERXeKB
         2rqA==
X-Forwarded-Encrypted: i=1; AJvYcCWvMkcixJ40p6y91nNPElJESyeq5KKYjCrnmwZgAwf/rDNIOJF6zV03K5lNRuQZaiuA8gyfSKZDSd6R@vger.kernel.org
X-Gm-Message-State: AOJu0YywRGZ41oO6UqZKL4O0ax95tgy2O/8g4+j7d2afYTHJuv/CpikI
	aGE9eevGQdmDIrTGbEkrVetGQkAWcEUQhKm4ih+PRHXjrIoTVnCVEdAcrG50uksbBvE=
X-Gm-Gg: ATEYQzxUflwW88tv+6RJGa4UBnLqUellL70lXyf28it6tXDZdE12d1VE4q6/MRznpUa
	9GEW89i3dnXVXT6CtToFHSNbBebdw1Rxkv0wtoIGrJTfkYpEky+/zjqkL81kgFOWgp+Lt+BoBj3
	zb1Qn8aR6EsA7/FxoTgcGkhEbwGXNnVYdhSZK1SkRDxPlT9/i3NCeXdUgwQOYvA2mrkPcjfRMQ/
	H9M91BWQJSRDMFWW7adMNGMQwBgiI8DG6fxZad0Icv0BzLh5Xwxm7araNuowvfX/TnSre50Ql4G
	6gqL83k1fWh8B7wZtJ7tbYQ/TbcUERCFcYj4GoerYsWFSko6AC7LieJVzmftjYwEPAxH3cLNRn+
	cqflGaPRzCUNnaufRQWyN3jBmkRAuOOtdwR6UwYOU56draImMz8Dh9GDVlry3YJy8ZijjG9hP4+
	s/2zMJuw/vydlQ37OSCMA5i67e+1TDUw==
X-Received: by 2002:a17:90b:3b87:b0:32e:a8b7:e9c with SMTP id 98e67ed59e1d1-35a22082de9mr1145911a91.29.1773361042647;
        Thu, 12 Mar 2026 17:17:22 -0700 (PDT)
Received: from localhost ([97.126.187.42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a22cb532fsm312631a91.1.2026.03.12.17.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 17:17:22 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Andrew Goodbody <andrew.goodbody@linaro.org>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Roger
 Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christopher Obbard
 <christopher.obbard@linaro.org>, Andrew Goodbody
 <andrew.goodbody@linaro.org>
Subject: Re: [PATCH] ARM: dts: omap: dm816x: Correct pinctrl register
In-Reply-To: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
References: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
Date: Thu, 12 Mar 2026 17:17:21 -0700
Message-ID: <7htsuk1t2m.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-274809-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.3.32:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 8C14027B846
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Andrew Goodbody <andrew.goodbody@linaro.org> writes:

> The delcaration in the pinmux device for the pinctrl registers is not

minor nit: s/delcaration/declaration/, but no need to respin.  I'll fix
up when applying.

> correct. These registers are actually 32 bits wide, not 16. Also the
> mask for functional bits is also wrong. Functional bits are 0-4, not
> 0-3. So the mask needs to changed to 0x1f.
>
> This information is taken from the TMS320DM816x DaVinci
> Digital Media Processors Technical Reference Manual.
> SPRUGX8C March 2015
>
> Signed-off-by: Andrew Goodbody <andrew.goodbody@linaro.org>

good catch!  Thank you for the fix.

Kevin

> ---
>  arch/arm/boot/dts/ti/omap/dm816x.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/ti/omap/dm816x.dtsi b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
> index 407d7bc5b13a364548087dd5fb2659286bbd8537..a1e0e904e0f05cd725e71da70bffbde2dd2b2e38 100644
> --- a/arch/arm/boot/dts/ti/omap/dm816x.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
> @@ -94,8 +94,8 @@ dm816x_pinmux: pinmux@800 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				#pinctrl-cells = <1>;
> -				pinctrl-single,register-width = <16>;
> -				pinctrl-single,function-mask = <0xf>;
> +				pinctrl-single,register-width = <32>;
> +				pinctrl-single,function-mask = <0x1f>;
>  			};
>  
>  			/* Device Configuration Registers */
>
> ---
> base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
> change-id: 20260312-dm816x_dt-abe888f372e3
>
> Best regards,
> -- 
> Andrew Goodbody <andrew.goodbody@linaro.org>

