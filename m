Return-Path: <devicetree+bounces-62682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E48B8B1F33
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 12:31:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F199B217EA
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 10:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D027FF;
	Thu, 25 Apr 2024 10:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dxlnf/mo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD833208A8
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 10:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714041074; cv=none; b=YNZbeOU2v+HX3NgbJ1uGwgLW4ZMznaHsKUsfbmEOZ+KpWW11anSwYG6NNGbSXTbst52pLuP8cUBrjQ6bB3PJHSpNnwsdV94ZWuiwCT33Xl09nfUVAZQuGzc9BhWvbs1Qd8tc5GkHWinH0dP3AHANn0sctxE58CqdZRl1mbQmESw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714041074; c=relaxed/simple;
	bh=xN9PtKBvyMktmSfmEeNUmxWtUYxk59jPOkkFgsg7R2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SRx2U5Z2NU/Ug5EBRM5gZURQ2MWHISZA1Fxjs1FpEjygfQQ5SccVTWecORHNkr3o8AgVTGUXBopGXreN4NjhSlGmm40jik8iGGHcpsYQQmiITy70s9aUPV7jtbjgFfFh5YgxUA2RQxwhJ5DKx5RP9lTt/UM01qHH1RbSOHwv2v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dxlnf/mo; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5aa2551d33dso552840eaf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 03:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714041072; x=1714645872; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xN9PtKBvyMktmSfmEeNUmxWtUYxk59jPOkkFgsg7R2o=;
        b=Dxlnf/moo14SsVqyHA/PQOXlfZmr6ZihgMMXZPQbNsoq6DN2Uw5TkRu5yWnmVqCTxo
         FGoxjlTiKTsVJs3Aq5aa+7dVDc8/zccq6VGlmkr4h4AHurD+f/iE/FtYWabLYbfCYEie
         tosakCbp8T9AVkLbF+chNAd7rjaljSRRgHyMoBS/ASn+HllLnCgWGddcUlbJfDFzRtQM
         JY7HS4YvSH+XC3m+5tR7RU20VLsfwgKnSp9nYNOim+zlYMq8LPW7BF2s9jTueNbj5WFW
         8wkLWIOdyXyMQUyWGMTrLwp1Vd4albeZpOq5/Z53mL9kCZ4H2QX7S8pgLJ7/0VVJpwkm
         VGbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714041072; x=1714645872;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xN9PtKBvyMktmSfmEeNUmxWtUYxk59jPOkkFgsg7R2o=;
        b=Lx14YKOU50E6cwxO1nyj8ilcinHGdWkvJkovb1jV5P0ZuqiA9sHo/bqvdzvX2T1j3Q
         IjICcL2pgHZv5iCRt4XPcIcKjFLDIz1sEtTwX0v8WF/KJit4LLy8XMhiivaCP+4L6euB
         lTIp5l8+0w/PWFh6cWmsfUN4AoVE55gW2KNBD2QkSxNMpt8t6hxXjrxltfftBbTSIc16
         PbB8zK5FwWIqn/yrFN53HktMSfBm53/yZrMSd2G3kS7gtTYApfWo2rhG1DudPLy+9DxG
         i2nsFTb1oh+cl5GzLkl/QuPEGaw/6ER49H2wwHiVMc6Dl3TKuRexTVqP6UTXPVG9QGTr
         Og5g==
X-Forwarded-Encrypted: i=1; AJvYcCWiiYuObW3Vbr4hVt2QxaNGmhrJN8JfQWEgTo6VYkBBAMNT+AIN9qa9aPzUHqewJiP8FQtPC4nxc8iZP/P81IM4pTiXhjYK69agzg==
X-Gm-Message-State: AOJu0YwRKtN6EKklsfPKfMrSbR18F5RnE1jZBGBnts4xx2vN4VV+l4Ah
	DVnQnqKQpStrVL/PeeOspocegb8eMgnFNL/HPb0Jh0WqDoPqDrfPx99mbYG3A5b9TNdRqubGPxe
	vTbAm8OUxLVzrQ3BBcLA5ytjpQxwsDqc0O8jUPQ==
X-Google-Smtp-Source: AGHT+IGO/471Mzvi/y2z1aDjn5L+UJBxWcuj8IJK6cDIoDb05k6uE4IKvnf9QACW7GCx8TFESueCWiwBoN73OQOn6LA=
X-Received: by 2002:a4a:ab82:0:b0:5ac:bdbf:8a31 with SMTP id
 m2-20020a4aab82000000b005acbdbf8a31mr5448764oon.8.1714041071820; Thu, 25 Apr
 2024 03:31:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423205006.1785138-1-peter.griffin@linaro.org> <1c6f5984-7f9f-47e3-98c3-3c3671512675@kernel.org>
In-Reply-To: <1c6f5984-7f9f-47e3-98c3-3c3671512675@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 11:31:00 +0100
Message-ID: <CADrjBPq_0nUYRABKpskRF_dhHu+4K=duPVZX==0pr+cjSL_caQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] HSI2, UFS & UFS phy support for Tensor GS101
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com, 
	ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Thu, 25 Apr 2024 at 08:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 23/04/2024 22:49, Peter Griffin wrote:
> > Hi James, Martin, Alim, Bart, Krzysztof, Vinod, all
> >
> > Firstly, many thanks to everyone who reviewed and tested v1.
> >
> > This series adds support for the High Speed Interface (HSI) 2 clock
> > management unit, UFS controller and UFS phy calibration/tuning for GS101
> > found in Pixel 6.
> >
> > With this series applied, UFS is now functional on gs101. The SKhynix
> > HN8T05BZGKX015 can be enumerated, partitions mounted etc. This allows us to
> > move away from the initramfs rootfs we have been using for development so far.
> >
> > Merge Strategy
> > 1) UFS driver/bindings via UFS/SCSI tree (James / Martin / Alim)
> > 2) GS101 DTS/DTSI should go via Krzysztofs Exynos SoC tree
> > 3) Clock driver/bindings via Clock tree (Krzysztof / Stephen)
> > 4) PHY driver/bindings via PHY tree (Vinod)
> >
> > The v2 series has been rebased on next-20240422, as such all the phy parts
> > which were already queued by Vinod have been dropped. Two new phy patches
> > are added to address review feedback received after the patches were queued.
> >
> > The series is broadly split into the following parts:
> > 1) dt-bindings documentation updates
> > 2) gs101/oriole dts & dtsi updates
> > 3) Prepatory patches for ufs-exynos driver
> > 4) GS101 ufs-exynos support
> > 5) gs101 phy fixes
> >
>
> I asked to split, otherwise please explain why PHY and UFS depends on
> DTS and clk.

Seems I misunderstood your feedback. I thought you just want me to
make clear who was merging what from the series via which tree. But
you want separate series?

1) ufs host dt bindings & driver
2) minor phy fixes series (most patches got applied already for phy)

What do you want for cmu_hsi2 clocks and dts/dtsi? The device tree
depends on the clock bindings to compile

Thanks,

Peter.

