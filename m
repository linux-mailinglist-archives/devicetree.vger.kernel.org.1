Return-Path: <devicetree+bounces-123831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CA19D62CE
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 18:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96A421606DC
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 17:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE941DF732;
	Fri, 22 Nov 2024 17:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nk8/ZEKW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FEB18AEA
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 17:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732295628; cv=none; b=hS5qdi8zqMIazPmUhiKLvXBceeu3VgapD3/Yz9fpMoHCmYaPNo68cJ4uQL9jWxPTaimDx1OaXd9NLj3V6Qq7aLr1k8wxnrG5LMODyX9c7jARhCHbYJv+PClmXLGYqaJS+sNk6/Q1KLoHm4vLuzGOG82197P8ie/e+hxSkDwtpPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732295628; c=relaxed/simple;
	bh=9Utb13MynaifzSiCb+13ADGTdToHf99pkQJS+1gzmyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L7/tS0wwXv9aqU6qpmqUP9tfdics8puQPJycj4HHN7pnZ5VXKjoPs2vMzuHtzerEmqb5lI/pZ9MeCeNRZCICr6VCUILzCriJxWKK8icehdtAF+G9ydTHMhcDktY3oGRZzrx2BU1wuLlcLDIBsGizHG0H0dbATU2Z9FAcswgarSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nk8/ZEKW; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-72410cc7be9so2213249b3a.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732295626; x=1732900426; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J3Ifp0rGPbm/e/7rhcYVsj05S6iHCWRwu0XzDIJa52Y=;
        b=nk8/ZEKW2PV3KjMJXctgOrzTlgaBZUgzJz3Bex6+Zg4TREgegX7hDHKGr90Y1mSOTq
         eySz0LamewHMbLT9WEoerK6BnyfPr7BbVv+wUIW8kv4WxprTnyf9XPfC98RkQwQJxu5n
         SW08zcnHCoKpUNLqU54xXPAEbi2UyodstPc12E5k6m3wNIbG37ve+Psgk5X2LJS0oLgS
         02YPD8Rswdf8+Q+ncJampQ3ceL0PHCwK7V3FhczW38z9sEP5JGPxjU/mB/p8wIWbvXG6
         yBZVtvd17n0MkUhFghg/MRvrO2A/MtkdyReAym5XpINNNpeVoF+SWq3CQ51BAxQxHQUL
         NarQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732295626; x=1732900426;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J3Ifp0rGPbm/e/7rhcYVsj05S6iHCWRwu0XzDIJa52Y=;
        b=DHIITGiPYl/vT60LCy66uUIZ/GMr1anXw9wQguvC/eMQihoIqNAhYDPVZroO2wapCu
         PA65wVJd0LZNBmlOHNMLl5UX4CZFuFRLkPtC62/VxpV7mgUH/uV7ppP5/0yDx4z5IVxb
         YXEYJz9EkPMpLm3aB1MQcai/O6AngBZ2mrtaEgplK6mXnKAqe9lRvuoRlL8eU0dm+oeg
         3Q250/ATv3dbJBm0RGlkIcMyEdOs85yt3iGiRgeGKsHQtMOZHQuaIyFCkum0PbPuRrOO
         aX3tnN0GnDkzxdCGzTLxgJ23ATiUDzUb4mRCO6OsGQ0qpdy5wu/NkKcLUhYZFfyvDi5k
         9qcg==
X-Forwarded-Encrypted: i=1; AJvYcCUSg3sW+rjiaxVmUEuyIYxGZus1hzKc1h9jbZR8PKcRbrL7YV9gZ1NDiBk5HScwGtDInVdM6D+bHTRa@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8at45+z+kwVKh17vlWGudf0ou3EGukKOR9tju9K8BrG31g6XX
	BdWhEIU7EiLwJzWMhEpiANQ32c7WvkGkLFN/D30kcI7rTRVR0XyyJcieYBEn0A==
X-Gm-Gg: ASbGncujfvB+iWkfAnbmcd3iRfS/ItzHYHO5vtStAiUxitA+H1PTj4fYmguZRGkXC51
	1eoeTOl6e43PktCwPcWdXkFZVe9zn2Dsryxoe0MicZJCIjMJB+d1uvmjQyeNUbuYapFPzBRsj1V
	yPwafunJ4FlHfLPFt+cx3E+ZRwnbUFha3bqDwmv1t1mbrQs6WYLKiukfVub6I/vlT2RDt6siSM5
	9qW6HzVXSY7k8xR3mWyXLEBhvhTeYS0vpFLG6/ImJ1umCqPWKYH7ArkBj6s
X-Google-Smtp-Source: AGHT+IFSLoW5PIBSR6LBkAITjbzrM29xeBOvFQPIeej5XJi4ofiDVZntpwn9iotOelT7YjAqhB/X7A==
X-Received: by 2002:a05:6a00:a8f:b0:724:62b3:58da with SMTP id d2e1a72fcca58-724df5de418mr4726297b3a.6.1732295626152;
        Fri, 22 Nov 2024 09:13:46 -0800 (PST)
Received: from thinkpad ([49.207.202.49])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724e0fca304sm1684411b3a.175.2024.11.22.09.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 09:13:45 -0800 (PST)
Date: Fri, 22 Nov 2024 22:43:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, l.stach@pengutronix.de,
	bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
	imx@lists.linux.dev, kernel@pengutronix.de,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 10/10] arm64: dts: imx95: Add ref clock for i.MX95 PCIe
Message-ID: <20241122171340.4uwlddrwadg3vyz4@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-11-hongxing.zhu@nxp.com>
 <20241115071605.qwy4hfqmrnaknokl@thinkpad>
 <ZzeE0lR8DGG214qq@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZzeE0lR8DGG214qq@lizhi-Precision-Tower-5810>

On Fri, Nov 15, 2024 at 12:28:50PM -0500, Frank Li wrote:
> On Fri, Nov 15, 2024 at 12:46:05PM +0530, Manivannan Sadhasivam wrote:
> > On Fri, Nov 01, 2024 at 03:06:10PM +0800, Richard Zhu wrote:
> > > Add ref clock for i.MX95 PCIe here, when the internal PLL is used as
> > > PCIe reference clock.
> > >
> > > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx95.dtsi | 18 ++++++++++++++----
> > >  1 file changed, 14 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > index 03661e76550f..5cb504b5f851 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > @@ -1473,6 +1473,14 @@ smmu: iommu@490d0000 {
> > >  			};
> > >  		};
> > >
> > > +		hsio_blk_ctl: syscon@4c0100c0 {
> > > +			compatible = "nxp,imx95-hsio-blk-ctl", "syscon";
> > > +			reg = <0x0 0x4c0100c0 0x0 0x4>;
> > > +			#clock-cells = <1>;
> > > +			clocks = <&dummy>;
> >
> > What does this 'dummy' clock do? Looks like it doesn't have a frequency at all.
> > Is bootloader updating it? But the name looks wierd.
> 
> dummy clock is not used for this instance, which needn't at all. Leave here
> just keep compatible with the other instance.
> 
> Some instance of "nxp,imx95-hsio-blk-ctl" required input clocks. but this
> one is not, so put dummy here.
> 

DT should describe the hardware and hardware cannot have dummy clock. If the IP
requires a clock, then pass relevant clock (even if it is a fixed-clock).

- Mani

-- 
மணிவண்ணன் சதாசிவம்

