Return-Path: <devicetree+bounces-85932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 220FC931CF5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 00:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53E6C1C210FF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 22:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668531411EB;
	Mon, 15 Jul 2024 22:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="Bm45zrop"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f100.google.com (mail-wr1-f100.google.com [209.85.221.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343B1CA9E
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 22:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721080896; cv=none; b=A0dyUj2d5lIBI9aUgi0vJXNXfVahhnT91Fh+nDvC//cQFwRj7d/XmoDEMgOQB4zp8IiNy2hQISRuIMhu4pZm0z75ZEV+K89gWZ2YqxSmDKHa/J0xzN5kFKDV5LI5W8Hez0S0+3MYVmk1RJrFZxcV534mDnNjs4rS/5TF1dGX7Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721080896; c=relaxed/simple;
	bh=Sa1VpdW08p2aj6gL8rcCV8PaWw2o7yNCzJX1wOCvk9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C+5hgrqKL55GZfxuGAg0hx6jlQmnAg0ciSYyaH0To68s6vHb1UaokFIisEF7Z+Z9jxo+z/2fHGkrqzmEC6+5owyqAzftK45APaPj97GGNa/Ov9tb38EWKJgqg7al6KORr/wsBmMKhEq02/DjL3C0ZxvEZnGYCrDR24rku/YubZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=Bm45zrop; arc=none smtp.client-ip=209.85.221.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-wr1-f100.google.com with SMTP id ffacd0b85a97d-3679f806223so3473255f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 15:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1721080892; x=1721685692; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+BUvVl0J/nuQNagRwxGpxDnNPGxIa3AWh48+e83+Uk=;
        b=Bm45zropHACOMf/jtvyRfUxnRL4FV3GQGVCQGUQchWn45NKw+ZqXBzdovi24SUDx3O
         eAesU4vYVDW4/2z3W9ZBIw49AlpEWgyWr+aQAb0TxutUenYv/eB5ncgisOGSViZn7QZ/
         7QXfGdnWC66rcj1SXjCdPFSKNnoNbvGSv8410i/zvRyf4zCDnCdHso1A19yHPvidGTEI
         +dB+5L4R7kTuOmbjkfJlhaT8CAU4sSlmOAjFPIGSg/tZsnvNIrIRYbpNHgIgADkbg6Pi
         LDGjfA+P2Lw2gLtVNfpQ76YXvmZvKu4IUYfiED8di7G6MLu4/CR2vk9S1QyRTIwTEBMV
         72pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721080892; x=1721685692;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+BUvVl0J/nuQNagRwxGpxDnNPGxIa3AWh48+e83+Uk=;
        b=Irxzucz8jciOkYVgaE7v4N3uyWvxitwPOBsjNUDnXXE+3owjgJFcmeepV3v4ye7VyG
         IwSfneD8YKOum6pgvocyelBwlaiS3pdg/eIEBhexC5j+JbZtC/vT3qAB712hwdw38CJI
         nmaZMI/juEsp7Yt48Z4a0uZs2eB8VvbbjePmcJ+n4Pa01EpnE5Yoxr/ZKscJT+w0UNjk
         dmbI6g7K45Jo4EinxlPvzX69S0eA/7yTV1OL7KCysKOoCxsG6ecqPknL1aQyHaxaaVeR
         gy1mJRXtibS83S9PdgzMkJmiZODsBSvZoBKdE4d0cxCxjScZybV0/YOqXZCqA05vgko/
         2Xlg==
X-Forwarded-Encrypted: i=1; AJvYcCWqWqJy6F2anXp79sSpcwLqPBFnUl6TUbHPJSxQIw9pCjy8UTw84219gfPjAKSC/oM+az3ZB0bdBiU46TjZP4A3UvmHzEZp/OUDVw==
X-Gm-Message-State: AOJu0YzEdAVsG4qO8Se5ed6UcAdFnYmutN/lx/U1p/RXLxwDL0Rsxnr3
	LdevjwxeE5K3L9igh+ujNb8YzjaFph7dYFxpKzElV1ygostZIkaftSO7lZxlkZM6TeJpDjQKw+Y
	+RLT6Z9Jax+wE/MA+FHzxb7JpxCyy0F5Z48U8CWgx04Lfv2oo
X-Google-Smtp-Source: AGHT+IHpSf/KYfctxSSyi/sD89fVDUXGVyjcm2UKyaFgIxOAaMInmrj7JkZwkZRSuKFlJSV4os1K8uuq2iOS
X-Received: by 2002:adf:f5ca:0:b0:368:5d0:5c2c with SMTP id ffacd0b85a97d-3682616507fmr86721f8f.29.1721080891246;
        Mon, 15 Jul 2024 15:01:31 -0700 (PDT)
Received: from mone.local (p200300c1c7288900101feb289c80409b.dip0.t-ipconnect.de. [2003:c1:c728:8900:101f:eb28:9c80:409b])
        by smtp-relay.gmail.com with ESMTPS id ffacd0b85a97d-3680daf0de6sm174557f8f.69.2024.07.15.15.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 15:01:31 -0700 (PDT)
X-Relaying-Domain: blueri.se
Date: Tue, 16 Jul 2024 00:01:28 +0200
From: Patrick Wildt <patrick@blueri.se>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Steev Klimaszewski <steev@kali.org>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-yoga: add wifi
 calibration variant
Message-ID: <ZpWbUjHna1cE5zHW@mone.local>
References: <ZpV6o8JUJWg9lZFE@windev.fritz.box>
 <ZpV7OeGNIGGpqNC0@windev.fritz.box>
 <cisap4ctuolfrs6hjqxz45fqtckcy6uhjzma2shcxkso73jvoh@jj7l4bgftoir>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cisap4ctuolfrs6hjqxz45fqtckcy6uhjzma2shcxkso73jvoh@jj7l4bgftoir>

Am Tue, Jul 16, 2024 at 12:51:53AM +0300 schrieb Dmitry Baryshkov:
> On Mon, Jul 15, 2024 at 09:40:41PM GMT, Patrick Wildt wrote:
> > Describe the bus topology for PCIe domain 4 and add the ath12k
> > calibration variant so that the board file (calibration data) can be
> > loaded.
> > 
> > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> > ---
> >  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts      |  9 +++++++++
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi                 | 10 ++++++++++
> >  2 files changed, 19 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > index fbff558f5b07..f569f0fbd1fc 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > @@ -635,6 +635,15 @@ &pcie4_phy {
> >  	status = "okay";
> >  };
> >  
> > +&pcie4_port0 {
> > +	wifi@0 {
> > +		compatible = "pci17cb,1107";
> > +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> > +
> > +		qcom,ath12k-calibration-variant = "LES790";
> 
> It doesn't look like it follows the rest of the calibration variants.
> 
> Something like "Lenovo_Y7x" or "Lenovo_Yoga7x" sounds more logical.

This is what's both in the DSDT

  Device (WLN)
  {
    [...]
    Name (BDFE, "BDF_LES790")

and kvalo's board-2.bin for this machine:

  $ strings board-2.bin | grep LES
  bus=pci,vendor=17cb,device=1107,subsystem-vendor=17aa,subsystem-device=e0e9,qmi-chip-id=2,qmi-board-id=255,variant=LES790

I don't think we can hand-pick these strings, they come from whoever
decided upon them and fed them into ACPI tables and QC's binaries.

