Return-Path: <devicetree+bounces-234258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 474A5C2AAF9
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 10:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15E77189171D
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 09:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EFF42E889C;
	Mon,  3 Nov 2025 09:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="SKlMhCUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF5D2E6CAC
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 09:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762160866; cv=none; b=u1b4Z2oeTQo4dtyW4H7KjzGDAbqyhIY/DeZ42ZbOybm3Jq3pFS6D1IwemkUuYSgYQjx0TIfT1zp/roplU+18osyooHwyuVl6TSJrTN6fwwRv/qiNECZaplccveYror31NL/I9QxH957X5NKK9n/qDqELTa7t/dKd7q1Jaq0lT2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762160866; c=relaxed/simple;
	bh=X/VgVj1BtWaXuiIAPT0fISYmV/GBaY8GaR+l9NBXPLY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=paOhFTJmzX0Z3hqVYNS1loiO+Pp4/WlqO9EYyvAgQtwRd/viBWUsBMPWP7jEDMCNK+W1Q3uQBL+gCP3O8Vs00RwrBNzYlB2UbCndSP5j82b4O5b65QEZdSNnkYXZilGWq4msdT09x6ASjej28aLYk0cOoZAsFOf2WCpPEkX0W1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=SKlMhCUY; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640c6577120so969884a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 01:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1762160862; x=1762765662; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ASTU4QfoQvxGB28Ml8MetCWFpiVsnWABB1CbN/JVp7I=;
        b=SKlMhCUYjeuYWycMHdsHHTBY0PSGMYGR8I5ACCrr3m/Y2fxDC/RoppTa7thgt7nEq4
         xZwEA1xKGAB8Iccv7p1xi0tY/Tk8WjARvfTFhRpJt/Weilm1vPsmJcEWwHWhjwcJ6DPe
         B4JlBR8XNG+oBZRtu9bB8ih1AZtGK8R8GxCHx/ZihtI6WVDgtrJPZE1Fw4LRcla4cEle
         qUb8KYjfuRUfa2pusEK/OpqpJSsCpMdGEmq7vlSOCG3S/bpnpwDsqkKVHnXkGqx1GBph
         d9b4AvpjuZ/+MxhEbkM2mJy+6/bNoiqDrZH7XMRN4yAOribHjtad2H0HjAAJGmLWX02W
         2LMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762160862; x=1762765662;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASTU4QfoQvxGB28Ml8MetCWFpiVsnWABB1CbN/JVp7I=;
        b=bOcCXhS0yhQE5k8JhH9Tmbz+UWBUyajvkjF0FhCQInKu2d1UjPTnOVGC3+2iTAWghv
         /E4ZH4zRxWtdKQxX0Nh3SjXgjfknJojrxKfR/xSvBCSrCbBC6LeV25qVzRSPRZXIDwuN
         cxdJnkdVmrYfTsjGf8me1dn1NF7xREcfzyvTx73/W3c5iK81Emmkc6LOYSzIgTyoQu1L
         X3rZcrLorWE3hIry0Lx0jausKcXZBp3b0CdIVu4RxvRqr2cnAvFDH/l+ZnLV8BttY626
         alYPYzUzd0aT69woT98tT0+rBkjSLAC2gtWGSSj8XPtFBhZ7muGxsv6fGDZi10XZBrf5
         +cgg==
X-Forwarded-Encrypted: i=1; AJvYcCVi7VF8XlxO7P7N2HihMCCLN+oqp6+G8NmbdCjhfJpSqqOxJ2jjgzyrlqyclUh9xk8NDlxVW30i3gbN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7A2J38EFa+QUiD63LNKRYHy3J2B7ZcE1gYCVm1IuvfaLz1lso
	yax5J5TiJExrmx/nyNLV7uc9sf5QWzYRYgO2arvP2XMaBmT7gZE51w9F4PheclU4Qk0=
X-Gm-Gg: ASbGncv4OaWv058DyPzPeWHiPsp/5Xx0htQHI36v4NaBHdiyOycbPV/lpddiQ5PPVOL
	TVdFcSCzn+2I4DS3sjIed9D+q6RTJJSZYtKTS3uxmV45HxSeFYETZrwwluquB5otkXA2/Py8tnb
	2NYXdK18wYCsYtTY8h6eiybufhwc86Ivz1Xhyev6qa+vvI3yvl6OBuAkW1/uD7/Yq2HbrGLL8/6
	C+8utu79KxL2ZFr4nQMP4mfkkNf0YXINFpaKOkHL1nvgHcSZRlKyv9/zrdRImsro4Kol38JfHrX
	XOJivHpBZmHUFVhD7EHow21b6Ts2aT0yT4r8y5qD9I8F2vK5w+mGotauzQ6o2BUlFY1i+JkkgOC
	Kpys7hmAC9SHK1Sn0Y9ddqzTIahBdlgKMiZjiMZZH/COaedOztSHOeEKN+r9qyEsKUNXWiq/jMC
	wKJsnhu9g7glPuHDBjysGPEHlHHs8XOreXthBycfPiqnU9AvU1KwdtK2PcArZwVHXz
X-Google-Smtp-Source: AGHT+IE9Pw6MqfnP3z6RwudjjxKNxv8CP3gwaysdiTVMErG9vq3LF7u1N+0kg8WywMAtd60R2jW+wg==
X-Received: by 2002:a05:6402:2102:b0:640:3210:6e48 with SMTP id 4fb4d7f45d1cf-64076f6be91mr9652654a12.4.1762160862451;
        Mon, 03 Nov 2025 01:07:42 -0800 (PST)
Received: from localhost (host-79-19-212-20.retail.telecomitalia.it. [79.19.212.20])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640ad7f1816sm4793314a12.14.2025.11.03.01.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 01:07:42 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 3 Nov 2025 10:09:59 +0100
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0 alias
Message-ID: <aQhxZye4uxyTRG4w@apocalypse>
References: <20251102002901.467-1-laurent.pinchart@ideasonboard.com>
 <39257a41-6719-4daa-a979-a9c2a629ec24@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <39257a41-6719-4daa-a979-a9c2a629ec24@suse.de>

Hi Stanimir,

On 12:58 Sun 02 Nov     , Stanimir Varbanov wrote:
> Hi Laurent,
> 
> Thank you for the patch!
> 
> On 11/2/25 2:29 AM, Laurent Pinchart wrote:
> > The RP1 ethernet controller DT node contains a local-mac-address
> > property to pass the MAC address from the boot loader to the kernel. The
> > boot loader does not fill the MAC address as the ethernet0 alias is
> > missing. Add it.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > index 04738bf281eb..fa438ac8c9ef 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > @@ -10,6 +10,7 @@ / {
> >  	model = "Raspberry Pi 5";
> >  
> >  	aliases {
> > +		ethernet0 = &rp1_eth;
> >  		serial10 = &uart10;
> >  	};
> >  
> 
> Unfortunately this does not compile:
> 
> make[1]: Entering directory '/rpi5/kobj'
>   GEN     Makefile
>   DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb
>   DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb
>   DTC     arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dtb
> /linux/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts:12.10-15.4:
> ERROR (path_references): /aliases: Reference to non-existent node or
> label "rp1_eth"
> 
> ERROR: Input tree has errors, aborting (use -f to force output)
> make[4]: *** [/linux/scripts/Makefile.dtbs:132:
> arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb] Error 2
> make[4]: *** Waiting for unfinished jobs....
> make[3]: *** [/linux/scripts/Makefile.build:556:
> arch/arm64/boot/dts/broadcom] Error 2
> 
> 
> I've made following fix on top of your patch, but I'm not sure that it
> is the correct one.
> 
> Andrea, could you comment please?

Correct, any reference to nodes declared in rp1-common.dtsi should go in
bcm2712-rpi-5-b.dts, everything else in bcm2712-rpi-5-b-ovl-rp1.dts.
Any aliases node under root node will be merged so just drop the label in
front.

Thanks,
Andrea

> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> index bbad90d497fa..734b06ac5ba2 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> @@ -9,8 +9,7 @@ / {
>  	compatible = "raspberrypi,5-model-b", "brcm,bcm2712";
>  	model = "Raspberry Pi 5";
> 
> -	aliases {
> -		ethernet0 = &rp1_eth;
> +	aliases: aliases {
>  		serial10 = &uart10;
>  	};
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> index 9f1976f0fd1a..26a99e72d441 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> @@ -22,6 +22,10 @@ &pcie2 {
>  	#include "rp1-nexus.dtsi"
>  };
> 
> +&aliases {
> +	ethernet0 = &rp1_eth;
> +};
> +
>  &rp1_adc {
>  	vref-supply = <&rp1_vdd_3v3>;
>  	status = "okay";
> 
> ~Stan
> 

