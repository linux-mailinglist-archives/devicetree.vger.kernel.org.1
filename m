Return-Path: <devicetree+bounces-162500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C11BA7899C
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 10:14:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C874B16D0CF
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 08:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3721362;
	Wed,  2 Apr 2025 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Esg6k5M0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3173233D85
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 08:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743581663; cv=none; b=oFVpKMkqX7lQQnmkWnZ1TtoBgEbcs6cfjyJ8NfNDVeSTSaO/ZYM8yfWqw5AS6fHlzGgrGkVrlVvB737j+lgs5QwD3H3yPn+DCq2sHLAFDJdgx06rv6DePE9BBOjDB988Hy/YyH5Aqg/y+M0ksk57Jr6SnzfaVJnLnmUMtSDYQDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743581663; c=relaxed/simple;
	bh=igbpjlc+om75NKQRRy2GBs5xkFi6I3W5ExEdDflAGfI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VS+p1XX78n+MxrEdmuJA3XhNm+JA6LcC1Dt/WLjDc/kzl1fKzcMJcDy6PMwhGrf7k+SI39zYOry4hvZWgEtsbbkmpL1doBZhLRN8rfI4bdo3IXcoqu7fWFKLNdJH3vNVpMCGm+wobKabR3TELo9fC/YmVkxaGJi8mGEUXPGPKBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Esg6k5M0; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-223fd89d036so137192175ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 01:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743581661; x=1744186461; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H1cnwkimXqhzY/Km6QT4rMUsQ72mwN2an/NJZPWxQOI=;
        b=Esg6k5M0nbHJtr0lwgbfwzoogF8RqwvL369+ty01NXcegdz1upN+TdhiI/eHOEIBn3
         NBkpC0bEpO7KS07TVM/J//bus1NtmU5sYrqVL49LAP9RAKeJtgT3h2fJidFhJk5a3IfW
         588HqCBANV5G7GFYxhVSPW4MPet+odb//fLL1VwC4SzfoHl+/wL0WrxmyaFqprnLEeQF
         synYMl+EH5d/4Gc/7KP+8BpbY9XQzfkehpUPHFoKIZyTNcI5H7Vc7A+vMnsbtIuBCHsx
         qA0zrWmLQOK9nIvk4joyoQFnjTYH1EJi89sEvb7Ov5+zQFssud9ZK3YamRYnajpYhCRg
         JwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743581661; x=1744186461;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H1cnwkimXqhzY/Km6QT4rMUsQ72mwN2an/NJZPWxQOI=;
        b=DtHwEtxz9HJsLnA5cjyTovAeGPTASuml30Vg5sbWGw6pw9KGKA8zb8/pFxlPeANBP2
         JF2QEPDnKA3G29gMavNMJrMNhtcK63TuG69P2y1xBmVf7+jHXSKweowV8YtPiw1LmcrC
         w4Npa+xdaR7CuY1nEOOX0be/fVXa1hrNrpt4FEcudBMP3G7F8wv31K0f/SbjWrfOiBdR
         6jpruaLDIR0plEzDCr00CmPFkjLOs1laQ1qhj2g2m1DP+zTPO92GFcecg9tFPH66T2os
         o+Y+Mx5wLGLuxqDPAo4PbvfJsquyrXv8oN8P5QQiafXyzuLMgp7OXbqDD+fEiPMn1IVf
         FRhQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1W9kG5YMQtfEQTzpcl5xLkSs/ONMHWt8dRizdxY9QvPRxCHmtFrSv+gwl7hbbeWckvKkf10oy6lZy@vger.kernel.org
X-Gm-Message-State: AOJu0YxdgbJr1EULyBXYKDEnVYxt//a9m84YkeAw+giXBBnSxau3HrTK
	IXPlrMgv+UnHauQcamGaQsdUjJ3t4ZbMb16TEL+NJidHJxDyNinVKifjE+2euQ==
X-Gm-Gg: ASbGncu/zQDgv0dCRmhrfLo4Fx9X94xTSv33V037uuGmiJiciySm/lp3Thfln43ro6P
	oHzOGsgSSWCcig8G+uwiWy1wXuDrCZO574OBPNhpTCec2r2mGV8MZbUwGVOqtWR96OKIrUTBtAa
	eWbpAGwBdXasTMh3+igOLEU3FWPDr9YDt/NLNWvGvd2d8CtYRl3yvPuHqVyfeJZHGDWaFvUIT8t
	BrCyeKo3C4GNaImUYsa7Sfz+dwgODIE79WzeC5y+/Wlb9H3Lx7od3UaxyZTdc+TMh7zYj4OR9nK
	CNeEus0R80+C0U6g3Lps13z37UKoPMOhA5OmNM2NixScztjseE1rgWv+
X-Google-Smtp-Source: AGHT+IHF+a/qi9WRmwq/2EhAY/+Zv6byjb7whIpSeiPt/li72CYNWPJd27ConrCk1oEYHZTxrGAa3A==
X-Received: by 2002:a17:902:ef0c:b0:21f:5638:2d8 with SMTP id d9443c01a7336-2292fa23240mr285972025ad.53.1743581661065;
        Wed, 02 Apr 2025 01:14:21 -0700 (PDT)
Received: from thinkpad ([120.56.205.103])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291eee0bfdsm102773555ad.72.2025.04.02.01.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 01:14:20 -0700 (PDT)
Date: Wed, 2 Apr 2025 13:44:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Wei Fang <wei.fang@nxp.com>
Cc: 
	"devnull+manivannan.sadhasivam.linaro.org@kernel.org" <devnull+manivannan.sadhasivam.linaro.org@kernel.org>, 
	"bartosz.golaszewski@linaro.org" <bartosz.golaszewski@linaro.org>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	"brgl@bgdev.pl" <brgl@bgdev.pl>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH v3 3/5] PCI/pwrctrl: Skip scanning for the device further
 if pwrctrl device is created
Message-ID: <n74zsz7ae5eks5qccmqgsz72onuecp2cbyrmuod66f472isaxj@vhxq36t7b7uy>
References: <20250116-pci-pwrctrl-slot-v3-3-827473c8fbf4@linaro.org>
 <20250321025940.2103854-1-wei.fang@nxp.com>
 <2BFDC577-949F-49EE-A639-A21010FEEE0E@linaro.org>
 <PAXPR04MB85102429AE77159F8CAF914088DB2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <20250322032344.uypqhi3kg6nqixay@thinkpad>
 <PAXPR04MB851005833B17C2B78CFB421388DA2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <yzhvxyjb75epv4mkkocjqsqkus44c55zwnxta6ac3aauvswv3x@knyhszmrgfc3>
 <PAXPR04MB851049B520288642141570F188A12@PAXPR04MB8510.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PAXPR04MB851049B520288642141570F188A12@PAXPR04MB8510.eurprd04.prod.outlook.com>

On Thu, Mar 27, 2025 at 06:02:27AM +0000, Wei Fang wrote:
> > > > > > >The current patch logic is that if the pcie device node is found to
> > > > > > >have the "xxx-supply" property, the scan will be skipped, and then
> > > > > > >the pwrctrl driver will rescan and enable the regulators. However,
> > > > > > >after merging this patch, there is a problem on our platform. The
> > > > > > >.probe() of our device driver will not be called. The reason is
> > > > > > >that CONFIG_PCI_PWRCTL_SLOT is not enabled at all in our
> > > > > > >configuration file, and the compatible string of the device is also not
> > > > added to the pwrctrl driver.
> > > > > >
> > > > > > Hmm. So I guess the controller driver itself is enabling the
> > > > > > supplies I believe (which I failed to spot). May I know what platforms are
> > > > affected?
> > > > >
> > > > > Yes, the affected device is an Ethernet controller on our i.MX95
> > > > > platform, it has a "phy-supply" property to control the power of the
> > > > > external Ethernet PHY chip in the device driver.
> > > >
> > > > Ah, I was not aware of any devices using 'phy-supply' in the pcie device node.
> > >
> > > It is not a standard property defined in ethernet-controller.yaml. Maybe
> > > for other vendors, it’s called "vdd-supply" or something else.
> > >
> > 
> > Ah, then why is it used at all in the first place (if not defined in the
> > binding)? This makes me wonder if I really have to fix anything since everything
> > we are talking about are out of tree.
> 
> "phy-supply" is a vendor defined property, we have added it to fsl,fec.yaml,
> but fec is not a PCIe device. And this property is also added to other Ethernet
> devices such as allwinner,sun4i-a10-mdio.yaml and rockchip,emac.yaml, etc.
> But they are all not a PCIe device. So there is no need to fix it in upstream.
> 
> > 
> > > >
> > > > > This part has not been
> > > > > pushed upstream yet. So for upstream tree, there is no need to fix our
> > > > > platform, but I am not sure whether other platforms are affected by
> > > > > this on the upstream tree.
> > > > >
> > > >
> > > > Ok, this makes sense and proves that my grep skills are not bad :) I don't
> > think
> > > > there is any platform in upstream that has the 'phy-supply' in the pcie node.
> > > > But I do not want to ignore this property since it is pretty valid for existing
> > > > ethernet drivers to control the ethernet device attached via PCIe.
> > > >
> > > > > >
> > > > > > > I think other
> > > > > > >platforms should also have similar problems, which undoubtedly make
> > > > > > >these platforms be unstable. This patch has been applied, and I am
> > > > > > >not familiar with this. Can you fix this problem? I mean that those
> > > > > > >platforms that do not use pwrctrl can avoid skipping the scan.
> > > > > >
> > > > > > Sure. It makes sense to add a check to see if the pwrctrl driver is enabled
> > or
> > > > not.
> > > > > > If it is not enabled, then the pwrctrl device creation could be
> > > > > > skipped. I'll send a patch once I'm infront of my computer.
> > > > > >
> > > > >
> > > > > I don't know whether check the pwrctrl driver is enabled is a good
> > > > > idea, for some devices it is more convenient to manage these
> > > > > regulators in their drivers, for some devices, we may want pwrctrl
> > > > > driver to manage the regulators. If both types of devices appear on
> > > > > the same platform, it is not enough to just check whether the pinctrl driver
> > is
> > > > enabled.
> > > > >
> > > >
> > > > Hmm. Now that I got the problem clearly, I think more elegant fix would be
> > to
> > > > ignore the device nodes that has the 'phy-supply' property. I do not envision
> > > > device nodes to mix 'phy-supply' and other '-supply' properties though.
> > > >
> > >
> > > I think the below solution is not generic, "phy-supply" is just an example,
> > > the following modification is only for this case. In fact, there is also a
> > > "serdes-supply" on our platform, of course, this is not included in the
> > > upstream, because we haven't had time to complete these. So for the
> > > "serdes-supply" case, the below solution won't take effect.
> > >
> > 
> > Does your platform have a serdes connected to the PCIe port? I doubt so. Again,
> > these are all non-standard properties, not available in upstream. So I'm not
> > going to worry about them.
> 
> No, the serdes is inside the Ethernet MAC. I was wondering how to bypass
> pwrctrl in the future if we add such a "xxx-supply" to a PCIe device node,
> so that our drivers can be smoothly accepted by upstream.
> 

In that case, the logic should be changed to only look for bindings defined
supplies for the endpoint devices. Like, "v*pcie*-supply" properties instead of
all supplies.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

