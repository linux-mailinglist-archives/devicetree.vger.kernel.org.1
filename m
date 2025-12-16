Return-Path: <devicetree+bounces-247154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8023ACC4E6A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 19:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 772A43056563
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 010ED33B958;
	Tue, 16 Dec 2025 18:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cwrm8Sld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBE52BFC60
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765909817; cv=none; b=WuAw5C+nW9UjnC8Hd4C400egcXh+AXrlPtiZ3CNFWfZ+f4x3TeMGQqibAfY89ZwIn4tEJP24uulxUcMyOrAt07MvvOQaX104rbuvdFXaRVxw0/vAoIes4jJFFnYE/wF7EJkqyJOW+XinGxZp0C5t1JrCtx+5v+8acV3ulw9LCJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765909817; c=relaxed/simple;
	bh=/QX1+siljLhXuETEqMly+imYqZN+VvoqR7nTfdr+yXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=idGkEgi0bIOnxW0i1Xs7YmByjSNjmCfBdFS5mO5St+OV3n2Dw/LS73L2G38Rg2lvkeRRf1Mkyuyh6J7J3kwdQCUt0E0cq/MVBKXe6wlTGGqKtfoV9wJ3Y46T3c6JWGQsa5CwTEmdJmnLLNJRZfkS1HLawE4A6+jGr41U+38ppRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cwrm8Sld; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477632d9326so30062725e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765909813; x=1766514613; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O2qwyKoiSE4y0S7R/sYbAU8Ep9J/DNr0jxtlpXQRjF8=;
        b=Cwrm8SldF2gSQUsvPOPiroVHw61dCrfsACHy8I854U4ByeuCe60bSLFKsc715Jm+oG
         P4A/4dOns7Pj9NJ+fbIHhqrQTEdfZukbFsKXH8XddQy69nBFE0omto7hgKhr4U7P/fx7
         tAIGTCrwqBkUgosO4X9edB9L0qmoBNXOokCss0f2CjJSD1USbncYOVEf86I8gcqjkkUX
         W/TbST1mjQPf3ic9J4e6dOyuccN+EEh6m7kN84EAhxg+sDtchs1CkuINSP9OncElWdpH
         caFu9TBTmw4nuVomtNIVE+shYlFnCFeWwXir1yXWhV0bYgV0lZIGXHvOnnbS1syb7Pix
         8Qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765909813; x=1766514613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O2qwyKoiSE4y0S7R/sYbAU8Ep9J/DNr0jxtlpXQRjF8=;
        b=EzYbr2y/G3rdibcTRAxn94leuXey7/W3xzw66JflitVJgjOmJs5YbDzGD5ePE8PSJb
         UVYKBnjTKKUYe2I4b+GlimQxElxtpPy5JwdgizNQ1D5zxSM4ocXwbPPmf4tmtcidCMzm
         TAl9TVMODqW8wHdal00BAd1U2JVkMLjJ3Tzkcy7XjOxFFq3yP0D2VSECy3qQnZsHAn6h
         XR8WBkKl/HTdp2PeKvCWH5z3kFNNMZWVaeXfwRdQqs+CPqS6tprnXSpv02A8yBPzI+Cx
         m4FWtTuVKU0gTFIP2NKfJgyp0ePWG36mXP4iJd/3a48nT3KNyhJbAYiBmvu6150KxQ8s
         VPcw==
X-Forwarded-Encrypted: i=1; AJvYcCWiL8U0gtwLGQu/piXLyIVOROFc3cnqpvbamNgALYZEkMlFnGcSd/kGMiWzCAdH6K86JTzQnda7psDQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzSZH+HjHqe7V46aVJ8/Q/gBg/dwHwGPJmc87Ry+qXS8LgYEyT0
	brqTUd6o81zRe79DGK5h2cFNnkz4jjFOF1jWDEhaRL37PTVZGf8KRuGTUqri1eL0nKA=
X-Gm-Gg: AY/fxX6emiz0JmTbTYtKdzqc5qr0qUt5XQM6QqhMriQ526QmInTD+bImRoKi9TtL1XQ
	u+ZN6HPT2ZqR7DCfTG27wEAk6DkquJfUzl8dEa2t/k9cC/as4pVx70g2FipsUa8V1yPh3O3lsGK
	JLhHbH3C4rGXK19NXCu+/zLgERs5Jo8FkAWkfgOGJMOCjHuVXGVSedhlx9pkCRFP51QVovTgXrm
	CRvZ9nk/ssKfEdsYkeLDsGs8K1SEcm2AlLxe9fo0bxcpnVq+SgWQHt+paBTqp8Znl109z9xxZhs
	dkqkiPSYqEQsKcZ5gr1XT1cMxSNg5D+cvBIocqmsxV0DXO9PSaNxH4SwFyO1/Xocfta+Js3xPO/
	/ze5Wz5rdOliH2pzZxqek6mLdfglE09N1Wxy2FWEaKVOT/3ZmrDK/SsBCb2/Q4ECppRZWB+TP+d
	kzuthk1FP3sx+5e2DW
X-Google-Smtp-Source: AGHT+IF+nY/k4C/6P18u9JysznJj/Z5B3Y6A+1aqCm2cbh7pc65+FeNcv1ODeP4J/8ke38+irCHPGg==
X-Received: by 2002:a05:600c:45c9:b0:479:3a87:2eeb with SMTP id 5b1f17b1804b1-47a8f91515amr130008935e9.37.1765909812657;
        Tue, 16 Dec 2025 10:30:12 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc23c2b0sm2187435e9.15.2025.12.16.10.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 10:30:12 -0800 (PST)
Date: Tue, 16 Dec 2025 21:30:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Chester Lin <chester62515@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jakub Kicinski <kuba@kernel.org>,
	Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, Paolo Abeni <pabeni@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, linaro-s32@linaro.org
Subject: Re: [PATCH v2 0/4] s32g: Use a syscon for GPR
Message-ID: <aUGlMP7J19L_AHF2@stanley.mountain>
References: <cover.1765806521.git.dan.carpenter@linaro.org>
 <aUAvwRmIZBC0W6ql@lizhi-Precision-Tower-5810>
 <aUBUkuLf7NHtLSl1@stanley.mountain>
 <aUBha2/xiZsIF/o5@lizhi-Precision-Tower-5810>
 <aUBrV2_Iv4oTPkC4@stanley.mountain>
 <aUB4pFEwmMBzW52T@lizhi-Precision-Tower-5810>
 <aUEQkuzSZXFs5nqr@stanley.mountain>
 <aUFvvmDUai9QrhZ2@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUFvvmDUai9QrhZ2@lizhi-Precision-Tower-5810>

On Tue, Dec 16, 2025 at 09:42:06AM -0500, Frank Li wrote:
> > >
> > > Why not implement standard phy interface,
> > > phy_set_mode_ext(PHY_MODE_ETHERNET, RGMII);
> > >
> > > For example:  drivers/pci/controller/dwc/pci-imx6.c
> > >
> > > In legency platform, it use syscon to set some registers. It becomes mess
> > > when more platform added.  And it becomes hard to convert because avoid
> > > break compatibltiy now.
> > >
> > > It doesn't become worse since new platforms switched to use standard
> > > inteface, (phy, reset ...).
> > >
> >
> > This happens below that layer, this is just saying where the registers
> > are found.  The GMAC_0_CTRL_STS is just one register in the GPR region,
> > most of the others are unrelated to PHY.
> 
> The other register should work as other function's providor with mfd.
> 

Syscons are a really standard way to do register accesses.  The
pci-imx6.c driver you mentioned earlier does it that way...  The only
thing which my code does differently is I put the offset into the
phandle, but that's not so unusual and it's arguably a cleaner way
because now both the base address and offset are in the same file.

regards,
dan carpenter


