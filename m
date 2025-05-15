Return-Path: <devicetree+bounces-177642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6939FAB856E
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 13:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73ED18C74AF
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 11:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1666F298C08;
	Thu, 15 May 2025 11:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eP3elCmt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C0B2989BE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 11:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747310245; cv=none; b=DoNdDAEXc6UonSHSTf2UBqY6dOS0ttBwRgqLiQZPNP4ABreHQDwdQC4F7mFy3gIWJcCtXUgE2UgwjZajovqQP9LO5lSeoohG64+RWAcq4smlLV7Prx6bgNoNF/t7CUIg3xx7kUqYz5zpwXNg6KIK2kL11YP+BngNJnqbCvsqRMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747310245; c=relaxed/simple;
	bh=km/RWekW0Wmo0YRMLipkkWHgAO46VaDkUZapim5cAmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dOBQ4z+AiHT3G0p/GJftEn56z9v1byHGg/hf3ro05r4zuVS0MWRbyJLbZnK7nBWds/rEewgiDYGdLp+rmINMbDdwph/A0uRCfnnsJP+oKFyhccCT/Vz/h/SRRawwH5Ndc3cK4XSX7j1JrQcF5wXqASgOfsl9tGhc9T69eubkjoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eP3elCmt; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a0ac853894so653254f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 04:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747310241; x=1747915041; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8kTrvJwPYog6ibdC8R73i3/w/ryvC/QOpevsthuxZsk=;
        b=eP3elCmtMqnBv10plsMkVaUw6Z95NGpzkoHbLRbKePits2p8iBUyrunw+1Dj+hYMUD
         YIwVslpX94BfklEu7scmYbM8YVWTcvTPJOQ2kk9Oiu0cxVhSk/CsUS8DhM5MEX/f0IhO
         q1jCQNSO/ahq8fFxzAfB49Jbi7IsyDwWTDFZUP8DP9QrgrYLGpRSZbJZYieHBFV2pW/F
         1l6dMfdLDoQBxk7xvOUdyBoHo9YTLTUWX3WEDXfM2DWmZ+Lyzqin8yKy6Iswwyf3vBXw
         G98IJsfUtfcOXAWdxbZEH0ACpwhXuEpFUpnFUD9EVJs5ws0/p2oZXi18WufXkiRwaFrU
         URlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747310241; x=1747915041;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8kTrvJwPYog6ibdC8R73i3/w/ryvC/QOpevsthuxZsk=;
        b=BCoBO5TwALpxAEInSLXCe5JeoCqGy8l18Dgzt+31m+MVGJbkpV1L3DDoA09BQYp6Z6
         gusmtC1lSIAIpWg6mqDIorU91dqJmi9lFMoXKoyclNcdoG5R3iH7c2D2SZ53L8oNh0BV
         1b46ilJNHDz4oUvJ//cXjTERbn1GepmBxTndX2FOMNaigeFULn876sXvboyVLBqPEjCB
         ntDb0/9Tbsvvb2LYc/CVyEvEFh2/+b9NoLgltX90HZHqWfxE2jmPLwZJ2Q7DsZj3Tf8O
         Wqm/b0aJGZ6JNNtTLS91rZTZkuEk+lrPqm6ZAP6012uxK53fH3t9HxAY9tYD+mTlpfSv
         94/A==
X-Forwarded-Encrypted: i=1; AJvYcCV0lPayF1IAS1rMbyiXpxFSlQnxuclLgOizOC0jER1vHeENBGQ+Mg+S2vz33SgACU2vQWmtHmwlt/l4@vger.kernel.org
X-Gm-Message-State: AOJu0YwECrn9FGokT9oQpUYiKHaNM2rRt4323+++C3R+VnsDWO84XjEP
	jLWyaqHJajOoCo/nRrSrcdizB0GwnSVTFN/GdpSqcM2patiXEEl2GsE0oKZvxg==
X-Gm-Gg: ASbGncv0T1NF532dCQtwi+9lOjHCQTRqsPa4EUmwhNY3hMisU0ruuzJAll5om2PttBW
	MmSyb+QzX38wjZsdnMqq2l/274bFjeZG7YbvV9c+a6cOVvun1sU/Sf2vCRw912VAbp4QDQYN8q2
	tlEGZZokh7MKxtcPI0vGzlfN6hw3NiY9VB5Scm25MlujgtzZgbSEKF6JIPa05BFFLt95R6/DXwD
	QAzQcEDdiNIOViJVNMTmNYoio+7xRa1aE5rYRE2OE8wr1PDcbvkHx5ROJw7XMx3bvPwogvb+pJ5
	eWFopCKabnpYXHkwMy3CXylOeaa622SKIXs4QaJNPl5/LcPeS/aNwFkY5HD0i2OBlbJ7X0bqeGF
	KEfl2YFyID+XdmA==
X-Google-Smtp-Source: AGHT+IHT8sGe+qq8cIc4avwun1XMAZX5YQZUGXMdjWUKnjqYpkS2IP5Zbr/WCevnDOHJQIVwI5wV7A==
X-Received: by 2002:a05:6000:188c:b0:3a0:a09d:b31e with SMTP id ffacd0b85a97d-3a34994f2e1mr7059180f8f.59.1747310241228;
        Thu, 15 May 2025 04:57:21 -0700 (PDT)
Received: from thinkpad (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c5f6sm22405542f8f.86.2025.05.15.04.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 04:57:20 -0700 (PDT)
Date: Thu, 15 May 2025 12:57:18 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	linux-arm-kernel@lists.infradead.org, 
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Aradhya Bhatia <a-bhatia1@ti.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Junhao Xie <bigfoot@classfun.cn>, Kever Yang <kever.yang@rock-chips.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: rcar-gen4-pci-host: Document
 optional aux clock
Message-ID: <ne4injlr4nwvufjdg7uuisxwipqfwd5voohktnbjjvod5om3p3@eriso5cw77ov>
References: <20250406144822.21784-1-marek.vasut+renesas@mailbox.org>
 <20250406144822.21784-2-marek.vasut+renesas@mailbox.org>
 <2ny7jhcp2g5ixo75donutncxnjdawzev3mw7cytvhbk6szl3ue@vixax5lwpycw>
 <84cc6341-a2c1-4e3c-8c9e-2bc6589c52a6@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84cc6341-a2c1-4e3c-8c9e-2bc6589c52a6@mailbox.org>

On Mon, May 12, 2025 at 10:42:20PM +0200, Marek Vasut wrote:
> On 5/9/25 9:37 PM, Manivannan Sadhasivam wrote:
> > On Sun, Apr 06, 2025 at 04:45:21PM +0200, Marek Vasut wrote:
> > > Document 'aux' clock which are used to supply the PCIe bus. This
> > > is useful in case of a hardware setup, where the PCIe controller
> > > input clock and the PCIe bus clock are supplied from the same
> > > clock synthesiser, but from different differential clock outputs:
> > 
> > How different is this clock from the 'reference clock'? I'm not sure what you
> > mean by 'PCIe bus clock' here. AFAIK, endpoint only takes the reference clock
> > and the binding already has 'ref' clock for that purpose. So I don't understand
> > how this new clock is connected to the endpoint device.
> 
> See the ASCII art below , CLK_DIF0 is 'ref' clock that feeds the controller
> side, CLK_DIF1 is the bus (or 'aux') clock which feeds the bus (or endpoint)
> side. Both clock come from the same clock synthesizer, but from two separate
> clock outputs of the synthesizer.
> 

Okay. So separate refclks are suppplied to the host and endpoint here and no,
you should not call the other one as 'aux' clock, it is still the refclk. In
this case, you should describe the endpoint refclk in the PCIe bridge node:

		pcie@... {
			clock = <refclk_host>;
			...

			pcie@0 {
				device_type = "pci";
				reg = <0x0 0x0 0x0 0x0 0x0>;
				bus-range = <0x01 0xff>;
				clock = <refclk_ep>;
				...
			};
		};


and use the pwrctrl driver PCI_PWRCTRL_SLOT to enable it. Right now, the slot
pwrctrl driver is not handling the refclk, but I can submit a patch for that.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

