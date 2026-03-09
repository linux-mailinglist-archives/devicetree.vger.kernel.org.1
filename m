Return-Path: <devicetree+bounces-272780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N92EFiQrmnVGAIAu9opvQ
	(envelope-from <devicetree+bounces-272780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:18:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1B3236019
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD6D63044A43
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0482F3783C9;
	Mon,  9 Mar 2026 09:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iuUL2+r/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AE0256C84
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 09:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773047787; cv=none; b=Wl2YE2dQPAsbRASJvwt0//6hSrvXDQhnGjEhP2vMq4AjvO1iZKXuRewlBJvcy++elPO9xbk6q1ZzrI4D6ys/JcplMBZVO9/lJfHDPBP6Vl310fbSJLavzghXZuT0jSjwSjb2g1mM/TJs+6chdp3XSqubB2z3d9lf24hjiRU48/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773047787; c=relaxed/simple;
	bh=1jGBBfInWcPlyDj77P4+i/0PqZBVJ9PiGxU0GLuAUrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tNS34oGc49Le2BWpze+1aYaI0xtgw9CYy+pVwqVzJ1pxffuQrflDRGys20spE++8B25eTKS8zSLjQSyIySMkKrah2f+OD2SAEPGKe4QVAw41WlC36eOzvXkSB8rcpUYh+GYuW/MUU9xMUXNlWvRmWuEpseKUuTKopXJw3H+Owj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iuUL2+r/; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48529c325f0so17028165e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 02:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773047784; x=1773652584; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xEMYbYJ9NsIB337c5/AE4fq1IEFDMbJNEIOTDlDSI/U=;
        b=iuUL2+r/GRmzHLfudJSe4dxHLMlKmWWcbPVN0mtSinWyx7VBp58eBXB0mPv7GQn6Ja
         ifVHK+mc/sJRqChxEjoa3O5BD+YUtoa6gMp0DDXVusRKCE5q4gAZrrsXNDCfPZpkdN17
         XEl3MWVpktGC6Zrg0XyeIEOve2S+qs/a+EsUvH2G7UwVfJMp3ZIV1+7ASyDLFalkOxLv
         uPCdQCR5+Um6RxPgl+X77rBNu1O7mOttxbmu+8MBIMA36utedhe91zoATDMaAY2BwUGP
         vvY+wt4Jq1j4PCyF6AE1eeiTYzpsGmhTQpD0ULWtzxDq1sDzn21SQiJzhqMElodteUsS
         nYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773047784; x=1773652584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xEMYbYJ9NsIB337c5/AE4fq1IEFDMbJNEIOTDlDSI/U=;
        b=mGv9JDsSNf7WZCdTbW16Hh7hlGxX7wWN2PFZTr+QHATOHRVX3lF6mn505EGt6XHtYg
         RGOYjSnKgZPg4rU+MybCOy5jkg4Bo32BYRIiV4IhHjqoYJbPXaGDwkOulfyrIM+h2au8
         t2sT70fPuaGe1Pf6datE75FV3o60rRyEGbOTje85X4O3BB0xF1wjxkl9hdevNUmRTl+x
         HgiDnNLhkA3VIKSzcl36+m1zEFYWdayH7m59JVzsTqxr78+qhyUpYqG2ndo7bs+YTDZq
         APhXJzlow8I1WWD1Q5Vy4UjTV2RXe/uCr5UeAlF5dorzG07vwPRbSTtr6s03bdh4d94U
         cd7g==
X-Forwarded-Encrypted: i=1; AJvYcCUn2RnV3QfwSJcT4YPsFIwRgECIhWhpDyNoc2xtdZNzmDEFaA5yRWnh/bT+oJApas8cwMV4Vj/63l9p@vger.kernel.org
X-Gm-Message-State: AOJu0YzkN/IE61BSQoPuA261Nj8AFjpDhPQ89cQxxaEXM6af9JBnYCDY
	9AuIr5Tj8ehdeu43ivAHJlqk6z/ddgE0jWvKnj07mXP6g1es0rdH2bddROoW0cDNlfg=
X-Gm-Gg: ATEYQzzRVXQvjXuHTrU95mAqrxG16wQMLg2C+/a1otHuW3vHiMTMqvu+PtvpMA0KcHd
	dfUKx/kJrlSldScW2LKAdilY0HbVLfxwAiirwpAMvyRxMlzvb3YkprqQ2sdcjIGI0Kn4xTAQln9
	xbUC0/JlDjamKesQtv78aBaGy1urVd4/EwTpVK4arVesfyYjnShg0Ex2Pqqmuzh/OtjpUm2um0d
	RWa8AuGhnDKQcUWKgphwreHzmrQjuIFTpsuHTaY7VJCiIRHl85oVCaHN+eU1iYM64TjfqNDpKmK
	sbnkvRRa59b9PIgH+LRNUbnXH1tP0PnL55AX8WYI5ILJ0RoZx7f8hLCJ+CExTRkHc2IksAv7soU
	VFMHeSV+VcI4YLd4ObLxu/3UDTkEhzXWq1DtIrQ3AwPfbuK8oGHeaVeepQh2rOqKBUjEl7HA/d6
	oDkejd6KBuYecncWJbwV0w+5CE39j3
X-Received: by 2002:a05:600c:888c:b0:485:3812:36da with SMTP id 5b1f17b1804b1-48538123853mr47305545e9.9.1773047784401;
        Mon, 09 Mar 2026 02:16:24 -0700 (PDT)
Received: from linaro.org ([77.64.146.222])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853616a085sm50557965e9.3.2026.03.09.02.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 02:16:23 -0700 (PDT)
Date: Mon, 9 Mar 2026 10:16:18 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: adamp@posteo.de
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
Message-ID: <aa6P4rE7d2ftaeAw@linaro.org>
References: <20260307-wiko-chuppito-v4-0-325ac66ae338@posteo.de>
 <20260307-wiko-chuppito-v4-3-325ac66ae338@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307-wiko-chuppito-v4-3-325ac66ae338@posteo.de>
X-Rspamd-Queue-Id: CD1B3236019
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272780-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.975];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,posteo.de:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 06:23:12PM +0100, Paul Adam via B4 Relay wrote:
> From: Paul Adam <adamp@posteo.de>
> 
> Add an initial device tree for Wiko PULP 4G.
> Includes support for:
> - UART
> - USB (no OTG)
> - Internal storage
> - MicroSD
> - Volume keys + Power button
> - Touchscreen
> - Backlight
> - Accelerometer: Invensense MPU6880
> - Magnetometer: Asahi Kasei AK09911
> - Hall sensor: Rohm BU52021HFV
> - Proximity sensor
> - Vibrator
> - Earpiece
> - Microphone 1
> - Headphones
> - Wifi
> - Bluetooth
> - GPU
> 
> Signed-off-by: Paul Adam <adamp@posteo.de>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts | 315 +++++++++++++++++++++
>  2 files changed, 316 insertions(+)
> 
> [...]
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
> new file mode 100644
> index 000000000000..d927bae2b208
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/msm8916-wiko-chuppito.dts
> @@ -0,0 +1,315 @@
> [...]
> +&sound {
> +	audio-routing = "AMIC1", "MIC BIAS Internal1",
> +		"AMIC2", "MIC BIAS Internal2",
> +		"AMIC3", "MIC BIAS Internal1";

Sorry, just noticed this now:

This seems a bit suspicious (I would expect "MIC BIAS Internal3"), have
you tested if the secondary microphone works?

Thanks,
Stephan

