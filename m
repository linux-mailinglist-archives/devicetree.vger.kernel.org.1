Return-Path: <devicetree+bounces-97823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82297963BF8
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 08:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4FA41C22818
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 06:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECEF51662F4;
	Thu, 29 Aug 2024 06:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qefp23w9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C60216C6BF
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 06:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724914215; cv=none; b=DcmG8lk9qt2kAGmZq9gvrZH8gXcgZIZG2K7geuEaBRxxUIDNId6flL+q0EisCeuO7Xm0kDQtFOi7BjEBnfC+ZaJLKqlyMyUhkXVjB7RSEqZpEXK7Y96YrEabes1A/OhWpjo89pBD6eOBcS77XMTX/a7QM6eapr1l30fjplW96fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724914215; c=relaxed/simple;
	bh=C774xcfWLXiYC7HVHXCktC5RtuHU3NRdVERX0aWozKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tq2NF1n2bPgI4XV/sxIVQxiY2XgRK1k3gHNcK8M9o9P9IQa4Z8HMAYNbw1RIoPVNellc9bMYQ3kaN/6HuSPJDuW7SAJ73SeCkAFtZ/bnhhVyngGX9Q/Bdjk+WAK4XJ3ToUaG5MWLC73Fd3hBlTRnO1it/8yLwfQwV/eTUu1tNIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qefp23w9; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f4f8742138so3396061fa.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 23:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724914212; x=1725519012; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iTbYTU+eEXbesQ1w5uX4PXo79wYQYLg5UgyyuYRsTM8=;
        b=Qefp23w9mBseSKX3RfSEvjF6bOdPkZmi019mI3LD64HK7lQRodhXedxKbBt8DcOzH/
         wB3JCe8f6GV5xa5dUjOSTO4t+CJsJDjDtyiulIMKzEdOwNXBxaU40NlTbXKLlVYyijOf
         3GUW22aLoADXxzCrZsu+Nk8OYlnITH+J7GAhDaN7j3R2YFQGVRJUjwqDEHPzWIkUCLRs
         z8twE+qu1SZjuLMb89MOYkEPAwvv17epFoMC2mL3PlF1azpwT5yHCNUU9DIdLq25qprD
         aTl64AxQDXw245TYAOORoAFL2gL1MCfWfxJ6fOG/is8mbcHkM8v8ISI+6M3ejY80e+G/
         xDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724914212; x=1725519012;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iTbYTU+eEXbesQ1w5uX4PXo79wYQYLg5UgyyuYRsTM8=;
        b=FXeeHbC12Ju52Fp9rIJBeNgit97a/IQkxoMCbpAGPKJaUjsnCB8NzB/2PJ5TwGZSrB
         IHt4fvV97ZdLh+gRzQ3z2EgrSHd8TuDYh9n3Hg0HIUhyqeT16Ta/kZ0NkLRDDpQnqwHg
         SubWhpC94S/SoGu7F+nNf1pLuvnfEbHKpec2h4kdVe9nZFL3yfxnmOhNEESIHHd52/YW
         DIuBaaAQpVgbXGfRLZPs3weC3KUbLp3N+WADQAbLz9nmKpxk9rG8vmgHyvXr0ncbuyC6
         pBMfAUYvY8Krh+SM5De8BydDrG6Gjc2Z9mqdZ86YH3NDi5a4NgwZTXWgD+sYWU3hLwyz
         d0sg==
X-Forwarded-Encrypted: i=1; AJvYcCXYvPilgwJP0IkHfNVpzvbUQbsXZJGtWCP97QAcH0+1rgDYCiyqw0igfJtcffEYmZ8XvBNiqmhYayiw@vger.kernel.org
X-Gm-Message-State: AOJu0YxSJsxp0QU70zix7q2uNS1uQ0qEHKm//o/N8b1Gw3CJqIAuO20h
	R0fBVmDh240bDXRiR3vFCZrGJ0qBcq6pzFgYFnY3jThmSLpVNy6oNVEnF2Tlzjg=
X-Google-Smtp-Source: AGHT+IFD1KFQKXHD2NsxEWGSGcXcBDNM5IA3aCJrru/ZgnQkD8KFd2PJDDxrXBnQQUmUPXuRwBUgtw==
X-Received: by 2002:a05:651c:2226:b0:2f5:2e2:eafb with SMTP id 38308e7fff4ca-2f6105b5e21mr15165451fa.7.1724914211870;
        Wed, 28 Aug 2024 23:50:11 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226c6a3f5sm317407a12.2.2024.08.28.23.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 23:50:11 -0700 (PDT)
Date: Thu, 29 Aug 2024 09:50:09 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Wei Fang <wei.fang@nxp.com>
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
	"sboyd@kernel.org" <sboyd@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"abelvesa@kernel.org" <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 RESEND 1/4] dt-bindings: clock: add i.MX95 NETCMIX
 block control
Message-ID: <ZtAaIRQqC15QPoMQ@linaro.org>
References: <20240729012756.3686758-1-wei.fang@nxp.com>
 <20240729012756.3686758-2-wei.fang@nxp.com>
 <Zs7jvCHO+ifC3VaT@linaro.org>
 <PAXPR04MB8510AE921AD67C110F135BB988952@PAXPR04MB8510.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB8510AE921AD67C110F135BB988952@PAXPR04MB8510.eurprd04.prod.outlook.com>

On 24-08-28 09:31:08, Wei Fang wrote:
> > On 24-07-29 09:27:53, Wei Fang wrote:
> > > Add 'nxp,imx95-netcmix-blk-ctrl' compatible string for i.MX95 platform.
> > >
> > > Signed-off-by: Wei Fang <wei.fang@nxp.com>
> > > Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > > ---
> > >  Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> > b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> > > index 2dffc02dcd8b..b0072bae12d9 100644
> > > --- a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> > > +++ b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> > > @@ -17,6 +17,7 @@ properties:
> > >            - nxp,imx95-display-csr
> > >            - nxp,imx95-camera-csr
> > >            - nxp,imx95-vpu-csr
> > > +          - nxp,imx95-netcmix-blk-ctrl
> > 
> > Move this above vpu-csr, please.
> > 
> > Also, for some reason, this patchset doesn't apply cleanly.
> > 
> > Please respin.
> > 
> 
> Okay, let me update my local tree. I use the linux-next tree as the code
> Base, is this tree okay?

Sure.

