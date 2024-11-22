Return-Path: <devicetree+bounces-123827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A109D62AC
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 17:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C951AB2137A
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2121DF72C;
	Fri, 22 Nov 2024 16:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DzN8NUdD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12F21B5ECB
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 16:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732294643; cv=none; b=Fv4DGQOR98XYnkmep6ajaHkIRYjtOGD8CTBZ4jED6tRue3G9oudiJoSGJzQkkkV6i1JWNDJSGO1Vt3edM/2hsAQ9Td7/9iG+wb9ea8/I3JGeUa11f9aLHIUzHvVuEoP+d47KWjq51G3tpBFOjs1FzEa1lIOt3sECTcDPRMiFc5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732294643; c=relaxed/simple;
	bh=ZNhJ0AnnhsP1xQ5LpsDqA3efNo9VGhUGzrAteBE+23s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cKc/kdVlbEAKw5CC0wXx3r4wga/k8O8fyJpUvdg7AVKRj4MUs8k1agT+/OrTZgGOEi9uKYZZapmWJj9xzTZvB5IBUlh0l1ouD6AvtAS8yJ3SrbJ+97QtZTmL4VGwf8yMcx4l/JwBggqMZC6en08e/UI2dmuxVroTcZW1H0yVNlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DzN8NUdD; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-212884028a3so14157455ad.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732294639; x=1732899439; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FZwDSMvFnipM0RD36mLVFKH4L1T4MEAtnhkfsYAv+8A=;
        b=DzN8NUdDbQpmQAdaoEpIXWnp08e/npx6EmJAM8JakMqMmqIppy50mR9ngjEDIvaWIn
         5xM34u9ssPBDcvuhaHn+VcZC5j0VbJtDmQFJXJf4s1qf6I3rppcO/NIdalKYGx2n2voZ
         Nb5b4iBo0iEtVNRgXQEd+LgEl1A4/sGRs/7aL7H2HFVX70JoerR8+RMfzPu+2krn47jH
         fmwjOqZIdl2A2nED1Xgi+reld+CHBQwUAVVdIvGg8fJvpVV9SOTxJsHVINMofoxU7W1w
         FtJpmskiJmsaM1HAPGqW8BrJR8e8kQk5l6fxLn0p+k+UQI76KYVta+/GklsaBcL7oZLN
         kGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732294639; x=1732899439;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FZwDSMvFnipM0RD36mLVFKH4L1T4MEAtnhkfsYAv+8A=;
        b=nv1KbN6AGI6+gCw2PqKjkV1I0X1kJyumxBq6J1QTfzXBdBqLhqpAv4CRXe2zbRYbhU
         ImkA591m7dpLs9A1Q48eVEp7xDn5TgeW3fMqllohzrXIJoOvXZ4jMLksv+p+pzOvu+X+
         1rZGPeERR08hmGjWVDcRZN0+5ynrlk2NDwrenDth3Z5U+QkSn9i6ClAk3IVz4RwQ2sbO
         sDV4K/lItCENjyNb09+ig9N7b9fRmBP810zOa6Aptr3JWWmwOn6y3EymNMMUqeoU/l6/
         IeeEwkSXrcFkGNuWp2huwO7Tx507q20ZhYtmjjPN/nLmw4xx+UUhpN7bF9feGF3clV5p
         6r7A==
X-Forwarded-Encrypted: i=1; AJvYcCUz9bo4lN6OILid80t2D7G+iNpq5QnbdvXJWONFPdQ1nS2LmbOSxUD9vNWPfdFdBUwLvicMYdfxh2cv@vger.kernel.org
X-Gm-Message-State: AOJu0YxdbOTPwoRvAJanX8I4JWQixlOZ8NA5R2KuIx1y+V5Gz1iiuC2J
	irBUuOFGJfnaq9yhUXUfo9GQQiA3Pb31d+tZ5eVcLnWylUP2IAV1KzTDaehd7Q==
X-Gm-Gg: ASbGncuzz34r2bkXi9JoWUE7P5/t93jPZFHs1eGlht6UlUFZsNbGjsEqSXcyqAMwc+t
	Wf7zVgVPx0u/tLA6jo71IZNMZg4y19QBsuaTqzDn6umBtCIqKzpW/wDJQfy206S7J/HpAJeHST6
	W+x5e48vuFd6rxphV2mSR8Cqhnfj+jz3u4uwLg9kH38iKyoUnvDF90hx6b8eOcm8Buq61OjRrwh
	vDkKYb/Hpkuxo6DuPkRGJi7zXg3t9UFrZDLvPJ8eoLZG8wbTsmtP4pBaQoM
X-Google-Smtp-Source: AGHT+IEBQTm+mdF5/l17srn1QQIlJ8cpbCtyU3PjuFrTHKPmmM8RGnmeO63H3UfI8TU8tQ6zNeMktQ==
X-Received: by 2002:a17:902:d2c3:b0:20c:6bff:fcb1 with SMTP id d9443c01a7336-2129fe0903emr55796195ad.1.1732294639012;
        Fri, 22 Nov 2024 08:57:19 -0800 (PST)
Received: from thinkpad ([49.207.202.49])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129dc21a1asm18338035ad.222.2024.11.22.08.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 08:57:18 -0800 (PST)
Date: Fri, 22 Nov 2024 22:27:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, l.stach@pengutronix.de,
	bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
	imx@lists.linux.dev, kernel@pengutronix.de,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 08/10] PCI: imx6: Use dwc common suspend resume method
Message-ID: <20241122165712.5m7xuycxzjzatf35@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-9-hongxing.zhu@nxp.com>
 <20241115070932.vt4cqshyjtks2hq4@thinkpad>
 <ZzeHGd/vfNFgsID2@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZzeHGd/vfNFgsID2@lizhi-Precision-Tower-5810>

On Fri, Nov 15, 2024 at 12:38:33PM -0500, Frank Li wrote:
> On Fri, Nov 15, 2024 at 12:39:32PM +0530, Manivannan Sadhasivam wrote:
> > On Fri, Nov 01, 2024 at 03:06:08PM +0800, Richard Zhu wrote:
> > > From: Frank Li <Frank.Li@nxp.com>
> > >
> > > Call common dwc suspend/resume function. Use dwc common iATU method to
> > > send out PME_TURN_OFF message. In Old DWC implementations,
> > > PCIE_ATU_INHIBIT_PAYLOAD bit in iATU Ctrl2 register is reserved. So the
> > > generic DWC implementation of sending the PME_Turn_Off message using a
> > > dummy MMIO write cannot be used. Use previouse method to kick off
> > > PME_TURN_OFF MSG for these platforms.
> > >
> > > Replace the imx_pcie_stop_link() and imx_pcie_host_exit() by
> > > dw_pcie_suspend_noirq() in imx_pcie_suspend_noirq().
> > >
> > > Since dw_pcie_suspend_noirq() already does these, see below call stack:
> > > dw_pcie_suspend_noirq()
> > >   dw_pcie_stop_link();
> > >     imx_pcie_stop_link();
> > >   pci->pp.ops->deinit();
> > >     imx_pcie_host_exit();
> > >
> > > Replace the imx_pcie_host_init(), dw_pcie_setup_rc() and
> > > imx_pcie_start_link() by dw_pcie_resume_noirq() in
> > > imx_pcie_resume_noirq().
> > >
> > > Since dw_pcie_resume_noirq() already does these, see below call stack:
> > > dw_pcie_resume_noirq()
> > >   pci->pp.ops->init();
> > >     imx_pcie_host_init();
> > >   dw_pcie_setup_rc();
> > >   dw_pcie_start_link();
> > >     imx_pcie_start_link();
> > >
> >
> > Are these two changes (dw_pcie_suspend_noirq(), dw_pcie_resume_noirq()) related
> > to this patch? If not, these should be in a separate patch.
> 
> 
> Sorry, this patch have not touch dw_pcie_suspend_noirq() and
> dw_pcie_resume_noirq()'s implement, just call it. I have not understood
> what's your means.
> 

Sorry, I got confused. Please ignore above comment.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

