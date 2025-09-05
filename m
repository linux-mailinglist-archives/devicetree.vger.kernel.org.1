Return-Path: <devicetree+bounces-213329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AD0B451E8
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 940B95A1034
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69244280328;
	Fri,  5 Sep 2025 08:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ALk4RXbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776C427FB3E
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757061855; cv=none; b=RuS8THkYUQY57iuUSqgA8cM8MiT+5vdOcMF/b/VsXGhvyPlnBx1FyAmOi1zggOyB+5xpynGFWHDom52VuP/JwAZn9Uja1n7BicpWRYYCadYiFpZnw5xXobEXaZ/O0QIOuls2pHbarDpGuJjVIwQbwgDQGDsvnNDpUsi36jQbbqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757061855; c=relaxed/simple;
	bh=Qdx8UmZRXzK8qYDVu0N8OvZfN2UCea6wjbMidO7B3Xw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fiAEgOU0DJgj6xjnttYTFUTC2UsZjvNAcugReIH+gA6XkRweBVzfKa7C1BCiEPgg1SRgZVLbtdHGBdyWELAy3uuSrn58UlhOe2lvoZdG1IfaFVLTXBTWvCEemC4WPeiazQxagYe1o8ZoAMaoGvpTWBaj9IfqTzQSTaiv0VWGok0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ALk4RXbf; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-62221568039so134379a12.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1757061852; x=1757666652; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yR4MNdZIy35U00ccIKzjKaOutSLR2GPJ6bo+zIk+aFo=;
        b=ALk4RXbfEjbP3gxZtWV5wtVx/G5AVmoi7CujDXWKpHIZjcPtm/21P8Uqsx0XteQDK1
         1OzUC600rpu99ZT+4zYyIzs7hWzXf+QyFN/bfLFQy2ZtaZafK/zTYbj6HkHq7nAn+lYj
         yzLl0VKyCyjpLiKVt0suKfrJIIiqpV6okpFHYC24qk9mOM3g7wNI4fXwJIyrq+eau6wb
         ywYWg2FJKc0bg3vQbre38qR7Y6RyccaJoEvQd5r8H3o+zTl1WBUK5dJobVHnL74J4Sam
         FTq7AfPmh9W1Zc3orUuJA8k2Fwf3/8YL96Oz/ghwXk2h8MzhZfCO3BzIA1ezU5kanzRJ
         mQmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757061852; x=1757666652;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yR4MNdZIy35U00ccIKzjKaOutSLR2GPJ6bo+zIk+aFo=;
        b=Xt1Sr/Dz2y8uIQ7EN0AE11d8ljj7RgGMcTOLDVtAqhp7NvEW4m14csltwwJ6SsKn4O
         PckmpG+GPH2n86OH0t8FltkGqHGDdYqNdGRRIHP58F+S8X9anLAbSTWPKssvt9i93CsP
         t/bXW8qMFPkzZeSl8CgoSHjAWInwhlr6/v/0PZB3drYmocb3Q8a6wd69Ut5ANRsSLnmV
         evp4TqLZSH4aDiahAAUWBH4mbBsrvy1N4Jqscygi2h7eaDth9WMMfpoteceMB4UOZMqz
         49VX2U5C7+RNSdhYywPobF2pZTvV31V2ly1d5vneHfksP9wyhxWKC9xe+Dr8q4aKteYe
         /ksQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDyeLIAwUkhNxvqtouEwubjBCrx/qOHxjXwtG5/TtS55EDgUpxj5S16fRPT+RwFFN8kPtaQREzlvgr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzja/pkCUT7zNiWE2+KOMoNKjCig1/YlscXGjRG8r7JWNI6yRzF
	C0LG/Ilkoml8otnWt3aGFL2TH9RHR2uvt+K7cfGn88rtw+vYmlDp4cCqPb9IQicO+8k=
X-Gm-Gg: ASbGnct9X+Wkio6nppr2mTk2Dk1cMQqc7nh6RjW5wwWVfo0E7kxN67IaEzrEIQhoXxy
	XzbIcxuFKjsFpEY6iG0SeeFmCdj/gp00qRDuSnaFAvdHC2YS40+uMKv8BJHnZ+StmY4nPrrWXwe
	tRRc7a/o/D0gx8KRpohJBBYQjsRToyu+QLGOji06M+gp6j3Ukts0Ww/Lr9Hg94cU/T0qguR6pUy
	e+cRBwtn5WJ/dmYDU8YOuSUNqQ/Zjd+0puffq74V12aLs1mBeLnMYP6snh10eTsL/luYE0bdZIx
	eT9w+6LRFNvkG6PnfC81Tz6SrSXC9eovpSoYFDhRLeO9nGZ/ldPbb/V74GG8tlSSTZ3sYBin047
	PlpepTZGwT1lb+l3GOh4Ple9DSty0s+2kuykrqZhPDgWaQ101e9L9xQri8KeEydlS8z7YEAwS0W
	KciOB4tplru+7zCHCFZoJwAA==
X-Google-Smtp-Source: AGHT+IGDLfdyG4Skr26W8CIxq2lA8TSvgcUdWiR0PPFTvWtp/0QiihczvwRvoN05VyOwttajNkcHvw==
X-Received: by 2002:a05:6402:2807:b0:61e:a13a:27ce with SMTP id 4fb4d7f45d1cf-61ea13a2c3emr14799399a12.20.1757061851705;
        Fri, 05 Sep 2025 01:44:11 -0700 (PDT)
Received: from localhost (host-79-31-194-29.retail.telecomitalia.it. [79.31.194.29])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc4bbc51sm15734349a12.27.2025.09.05.01.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 01:44:11 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 5 Sep 2025 10:46:08 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/2] arm64: dts: broadcom: rp1: Add USB nodes
Message-ID: <aLqjUNAdremFoM-F@apocalypse>
References: <4e026a66001da7b4924d75bd7bee158cbb978eed.1756387905.git.andrea.porta@suse.com>
 <f7bb0739-3161-4d70-87e5-8c978a023361@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7bb0739-3161-4d70-87e5-8c978a023361@kernel.org>

Hi Krzysztof,

On 13:05 Thu 04 Sep     , Krzysztof Kozlowski wrote:
> On 28/08/2025 15:50, Andrea della Porta wrote:
> > The RaspberryPi 5 has RP1 chipset containing two USB host controller,
> > while presenting two USB 2.0 and two USB 3.0 ports to the outside.
> > 
> > Add the relevant USB nodes to the devicetree.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 28 ++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
> > index 5002a375eb0b..116617fcb1eb 100644
> > --- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
> > +++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
> > @@ -39,4 +39,32 @@ rp1_gpio: pinctrl@400d0000 {
> >  			     <1 IRQ_TYPE_LEVEL_HIGH>,
> >  			     <2 IRQ_TYPE_LEVEL_HIGH>;
> >  	};
> > +
> > +	rp1_usb0: usb@40200000 {
> > +		reg = <0x00 0x40200000  0x0 0x100000>;
> > +		compatible = "snps,dwc3";
> Please order properties and nodes according to DTS coding style.

I'll do. 

Many thanks,
Andrea

> 
> Best regards,
> Krzysztof

