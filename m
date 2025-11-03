Return-Path: <devicetree+bounces-234259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6C7C2AB05
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 10:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CDEC3B3615
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 09:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335502E6CC0;
	Mon,  3 Nov 2025 09:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Y6nMbAQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F0F14F9D6
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 09:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762161030; cv=none; b=oJiOFBgGcGeWwH4pqtt45IJKAo/JkCanLr69JLbPNq9TlygfJgH8rpTKCQCDdNCo3WFov3hkbqPmCq8H/I1DDTrDunMQiHMItGZ/HrI9/BwRnLPDMezGRgdn8fWiGM6LuQG9oWZy2kOiQZtzT/iR/pvixAjmVYOgmaRGIFnSDoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762161030; c=relaxed/simple;
	bh=Hkuc9yr4gq44I6qw90gJx2w89hEs8nFLvoImd2Yeoo8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ReJqKbC9Vk8m/lZY2yMH+ywWth88loWqr9J6NbdLfC9rr5Ww/ylHtLsDgVhZUj0H4w4luKABNdJh/KQk9USUEGS06VlV5cqTsZ8nouv98oomFKdnZN5DW4b2gSncxP1LDsrCXePgyc3ByA20hxVtoQN2ojHQIyytCTqBfatbcvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Y6nMbAQR; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b70fb7b531cso84871966b.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 01:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1762161026; x=1762765826; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pfWtj59fsmx4DfjU3lwJThj2eCOZ0UYFvm1+EVXmYT4=;
        b=Y6nMbAQR+gahkbhFI5i61RaFmyXP1R38aVEubIulwVNbuN1hvrLpsNDjKa6s+/Ugz7
         HwsDluYm5soOt52RpX53Ar4rkhhOw92R6VOvpjbuZGA0FXsBjXQpEkrtePbTSSVABXDN
         qGiaeJnczNeytJ0L+Daq/DozWqlIV9XHUajYL1P55QKf+jvfCvtev3iT0efV/NA9JHCF
         iUUueh0kMBKhqX3+PNvglWdKXfFnEdt6vRsiTA+bTo+Hnc1hjvVltPx+WyDhM5icvv/H
         tfdZ2ka0d0hCoiyOTLIHkuOcyCnkqEGjxjtheWlhEN5rtcLQBEbqysD9devl8Sd/YXN+
         Eplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762161026; x=1762765826;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pfWtj59fsmx4DfjU3lwJThj2eCOZ0UYFvm1+EVXmYT4=;
        b=WJtPKOvc+FnMpn2xqBDtO8qFGbrbUGsyCtakJd9I8OGW6OF2PeSqk+5WCrIsRNdmOY
         7vz51ykU77TpkciQ1+LtvyIYp0+B01BULsuCBJcfEzytZqchBMweldWhj59Vx2w3xR75
         5AR1OY0cj5j4JPUJorD5GnKPusf3jpr26173CLwh0Gvnr1+hIz4qUNNQ2pJK60TBbRtQ
         9QO15XLru4l/5ydIOAPNkHSCq50wHpZL5aaCJUT9e8pWdGFlIMaFQ4quOjz1XkiD5e2i
         0B9wBQTmfZ+JMKTj2DqAYxJQjzMPcOzQ0PR+6YFNTxWDMbSFPIePKSBSgZYwI739q4g7
         bTtA==
X-Forwarded-Encrypted: i=1; AJvYcCXSVlQy4gq4RlB52676LzqNIqFwc6WdneMpJF0qwmOaOgCdg/qHzElJKW2wINzd0QLOESXaGFOQFwPk@vger.kernel.org
X-Gm-Message-State: AOJu0YxRcyqxqhBgqazkchQK8hmeZVo4sBq8HYmtCG1dYsVD8U8pvh5z
	nWpYll/70kik1GQHLHs8vSguU7jwL8kBIMaYd+AkB7VKZgAnkKwHlxgytsW3MuABLOY=
X-Gm-Gg: ASbGncvZPIPHFRvr+0wncdz8CqiW+fEGoziW59tfw1vfEGQbx0ojMmQLNPhpSxyiDEe
	xxqPlfwT/RxNgD/XqRW/Yo0DMf30VVZOlFb/YhXrigBQJp6jg/Nc3T7MT4aG9aY46ZrcoFe9Tcb
	dwYOdd+2bwCFXKHIqJ6Zf1EduVFTu5ilK70eecbMR+zio+KL3wShf93BoXMh/QHPoTJrMdp1/ls
	C6tzWrugldZ3hREJxhjFohGSLpvXgcU0NAB4l1QrUFdLdxvrGxWprJsmyG+zlGrNKssvw5rm9OG
	PsOpy5E5QJ9kArTzONqjBzW4nAbMProGFm8fn1EnMZ2ABjgNInCvPpSpPOQH9Rg1P0zBrxxjcEV
	Q8YtW/oF9JKRPpxvARjnW+aODYff1Ty0RfJamgp+3cA/fNCJFXMwDsHtM7RcGt0y7wBGSY3iFOv
	+tC6DEVEjAcw7tz0Cscpafqio1caK2/o2czR6ll8ZetoU=
X-Google-Smtp-Source: AGHT+IGnsENPgBpHIrOrP7lzzhKlmWSZH+KveVRwRSIOPyZ3ALlvWL3T816DU0ktI5WiCqEnwk2PDg==
X-Received: by 2002:a17:907:3d4c:b0:b3c:3c8e:189d with SMTP id a640c23a62f3a-b70704bc39cmr1464884366b.32.1762161026187;
        Mon, 03 Nov 2025 01:10:26 -0800 (PST)
Received: from localhost (host-79-19-212-20.retail.telecomitalia.it. [79.19.212.20])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70a9fb80e2sm504469566b.69.2025.11.03.01.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 01:10:25 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 3 Nov 2025 10:12:43 +0100
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Stanimir Varbanov <svarbanov@suse.de>,
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
Message-ID: <aQhyCzMWQif7-lY-@apocalypse>
References: <20251102002901.467-1-laurent.pinchart@ideasonboard.com>
 <39257a41-6719-4daa-a979-a9c2a629ec24@suse.de>
 <20251102110929.GL797@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251102110929.GL797@pendragon.ideasonboard.com>

Hi Laurent,

On 13:09 Sun 02 Nov     , Laurent Pinchart wrote:
> On Sun, Nov 02, 2025 at 12:58:46PM +0200, Stanimir Varbanov wrote:
> > On 11/2/25 2:29 AM, Laurent Pinchart wrote:
> > > The RP1 ethernet controller DT node contains a local-mac-address
> > > property to pass the MAC address from the boot loader to the kernel. The
> > > boot loader does not fill the MAC address as the ethernet0 alias is
> > > missing. Add it.
> > > 
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > ---
> > >  arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > > index 04738bf281eb..fa438ac8c9ef 100644
> > > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > > @@ -10,6 +10,7 @@ / {
> > >  	model = "Raspberry Pi 5";
> > >  
> > >  	aliases {
> > > +		ethernet0 = &rp1_eth;
> > >  		serial10 = &uart10;
> > >  	};
> > >  
> > 
> > Unfortunately this does not compile:
> > 
> > make[1]: Entering directory '/rpi5/kobj'
> >   GEN     Makefile
> >   DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb
> >   DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb
> >   DTC     arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dtb
> > /linux/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts:12.10-15.4:
> > ERROR (path_references): /aliases: Reference to non-existent node or
> > label "rp1_eth"
> > 
> > ERROR: Input tree has errors, aborting (use -f to force output)
> > make[4]: *** [/linux/scripts/Makefile.dtbs:132:
> > arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb] Error 2
> > make[4]: *** Waiting for unfinished jobs....
> > make[3]: *** [/linux/scripts/Makefile.build:556:
> > arch/arm64/boot/dts/broadcom] Error 2
> 
> Ah indeed, I've only compiled bcm2712-rpi-5-b.dtb and forgot to test
> bcm2712-rpi-5-b-ovl-rp1.dtb. My bad.
> 
> > I've made following fix on top of your patch, but I'm not sure that it
> > is the correct one.
> > 
> > Andrea, could you comment please?
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > index bbad90d497fa..734b06ac5ba2 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > @@ -9,8 +9,7 @@ / {
> >  	compatible = "raspberrypi,5-model-b", "brcm,bcm2712";
> >  	model = "Raspberry Pi 5";
> > 
> > -	aliases {
> > -		ethernet0 = &rp1_eth;
> > +	aliases: aliases {
> >  		serial10 = &uart10;
> >  	};
> 
> Adding a label to the aliases node is a bit of an uncommon approach.
> 
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > index 9f1976f0fd1a..26a99e72d441 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > @@ -22,6 +22,10 @@ &pcie2 {
> >  	#include "rp1-nexus.dtsi"
> >  };
> > 
> > +&aliases {
> > +	ethernet0 = &rp1_eth;
> > +};
> 
> We could also just do
> 
> / {
> 	aliases {
> 		ethernet0 = &rp1_eth;
> 	};
> };
> 
> and drop tha aliases node. I'll send a v2.
> 
> There's a side question of how the boot loader should pass the MAC
> address to the kernel when using the RP1 overlay, but I think that can
> be addressed later.

Yes, there are several (and probably more constraining) details we need
to figure out before referencing rp1 nodes with the overlay approach, which
is something I'm currently thinking about. It will take some time, unfortunately.

Thanks,
Andrea

> 
> > +
> >  &rp1_adc {
> >  	vref-supply = <&rp1_vdd_3v3>;
> >  	status = "okay";
> 
> -- 
> Regards,
> 
> Laurent Pinchart

