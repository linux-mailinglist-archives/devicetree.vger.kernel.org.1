Return-Path: <devicetree+bounces-140989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D775A1D0AE
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 06:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5710D1884E40
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 05:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11F6116CD1D;
	Mon, 27 Jan 2025 05:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kVr78fZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5839A153808
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737956066; cv=none; b=n2/12wnqlwm1Hic+iqp+mqw+MAvjzP7mRR8H6EK67/1RFAfadz73Ji5EhdkHESyMcxfnbNacoujG14YiJM2JIo+tv1UbXgQWzlIWFq7SsAr26ttGeIGhZ6GXTxAigz+IHUlpZqRlHKmnRas1mcD7WoeTmGjqZDT7iN/DJ2f3rJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737956066; c=relaxed/simple;
	bh=GBGBjMhgsFdTiGft+y8/1jivaBQZgN9QkGKZbY65T98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WubjmiHByR0NUjEzmDEGse/fAzIccDM++kjRgoADydwPwkE/U588fGb034pThdSz04Pjb2AGNrOT80E3j3Rq9Togg9bZ0wlr6/mMCmTf7LXeIFSB8r1/DVyrtvxyLWMFN34arVMJ1cOB19lG4CZDsF+P7CpjEMPAen8MDq7sSnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kVr78fZG; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-21661be2c2dso66559095ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 21:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737956063; x=1738560863; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LYrDkx9vO5H0pWQvLKCfpCZMVAnzkpiFqaoqphbY3jQ=;
        b=kVr78fZGoC5uvOxlyRqwEvINFGIXopMqiBJc5wV3cfuCklB3i9P0YK7D2pRqS6SQPm
         2W7MFL5fbHxiI2rDNtDDm3VFCpOtu5O5IUii5Ev8u9YEMoAhpqBIXH74BB2puh0ukWXg
         TglKbfRJrJH4VJhwAwimZFLQcGrAkavHWyJYmFrkEYSXQGF1C9hYE0TBm+yZ/PAnDtI9
         O+E3JIHP1rw5kY9swa3cpb+yyStaP8IN196HZoEg7Lj4ylx5aHzVOD0ujbtnu6CQcqEo
         uHTT/fC09eDtcQ90bpoN/1YqmHoMde6ctJoi18FeAb1MqYaOWwhcYVQ7NdGvvPDeckx1
         DW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737956063; x=1738560863;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LYrDkx9vO5H0pWQvLKCfpCZMVAnzkpiFqaoqphbY3jQ=;
        b=a3JPswGDug4DCHujExahLL0nbeg2OmMqXsIMIj90cZGBmVh2qQbl/PAOllq2+fOn35
         gpzztWaBggqFqzriZXn+QXHjSl7uAH7H3SkxCGDZAteG72ZXmUGCT63zro2axk0Ui0yX
         Nuf/ETLZJdrspdYHqwfdCMxDjlRqwiUhueKITal7+3aark0KLT9fWdjoF7W+EjmXywWq
         HDcnKMeFPEsyAreMo009O7d+mEjFy2lesjvAcDFSXgELT7qLU5MIqeLHuYRW36kRvxj5
         rn7lpOOA+dbbOno0b6oUbq/XmaIYDj+AQyaz+CKpMi37kt8//xV3CRNT+3fFRofmijJw
         LSFg==
X-Forwarded-Encrypted: i=1; AJvYcCWrd3zVQvfopLlWSgHbi12JAh3hfJmayLUQiMo56lRnvpVt1pCbvw4QQ1+ywpvBEgUS2080JFntnc76@vger.kernel.org
X-Gm-Message-State: AOJu0YwWkZPsu4UwxDZaMiHJ38enCBO5mpGyema1wjGtd1x9FlDxNsnV
	ew+9dnlcyWzHyjkrc5KWKsiRTW7vpgRdxqlK8XqrYSsvrB8UjpWlUnYWhI5JdA==
X-Gm-Gg: ASbGncsri/J0nlHLD1upuRLxvBVmDRba6c6Ya6479HIlEY7Q4nO46bgZOJz4GI3y4h4
	+n84cmdgUyE9f7fzileSy8dZrei0OP20MFtJUz4ZkW43kyUfhwWa4Etf+CiObJd4VgFO2R9toxj
	FaoIGpR2l3QMr8yztkJ8otNleCnIVTyhLJR2VOKnki0ur11ZBEdHwM/UScax0p5+p6yRknZQZJv
	nP1+vUDorlmM9l4hj3tmGoemKw4hEV4rq7JJcvHn6Wk9iYaPS6UO/tyA36ZmuCXESdz65yuhgcf
	9Dm6OkGYLDwVotg=
X-Google-Smtp-Source: AGHT+IF23Vozd3CbI/d3xt3xyb44QrIyJVEbk6LiztTlg7LAAGEdExVb14y+5qQXhhQn+eUfWxjVDQ==
X-Received: by 2002:a17:902:f28b:b0:215:9bc2:42ec with SMTP id d9443c01a7336-21c356092ecmr385990925ad.47.1737956063641;
        Sun, 26 Jan 2025 21:34:23 -0800 (PST)
Received: from thinkpad ([120.60.139.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141baesm54005795ad.144.2025.01.26.21.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 21:34:23 -0800 (PST)
Date: Mon, 27 Jan 2025 11:04:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <20250127053412.anbdj6hgwcmkildf@thinkpad>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
 <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
 <20250126163222.nhcxvr4m2vncwi23@thinkpad>
 <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>

On Sun, Jan 26, 2025 at 11:43:38PM +0200, Dmitry Baryshkov wrote:
> On Sun, 26 Jan 2025 at 18:32, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > On Sun, Jan 26, 2025 at 01:39:05PM +0200, Dmitry Baryshkov wrote:
> > > On Sun, Jan 26, 2025 at 12:59:52PM +0530, Manivannan Sadhasivam wrote:
> > > >
> > > >
> > > > On January 25, 2025 11:00:23 PM GMT+05:30, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> > > > >On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
> > > > >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > >>
> > > > >> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> > > > >> sequence.
> > > > >>
> > > > >> The bootloader configures the hardware once and the OS retains that
> > > > >> configuration by using the NOCSR reset line (which doesn't drop
> > > > >> register state on assert) in place of the "full reset" one.
> > > > >
> > > > >I know your opinion, but my 2c would still be for not depending on the
> > > > >bootloader. I think that was the rule for ages for many possible
> > > > >reasons.
> > > > >
> > > >
> > > > But if Linux or other OS can trust the bootloader, then it makes perfect sense to rely on them. Obviously, the question here is that on which platforms this level of trust should be established. And the answer I got was starting from the compute platforms (atleast X1E).
> > >
> > > Is there any way how those values can be lost that we still might want
> > > to support ? The GDSC going to the OFF state? Some deep sleep state or a
> > > power collapse? Actual suspend to RAM (instead of current S2Idle)?
> > >
> >
> > As per Konrad's reply to my identical question, PHY register state is supposed
> > to be maintained by MX domain even during CX PC. This seem to be case on X1E
> > based platforms (compute).
> 
> Is MX on during S2RAM?
> 

Qcom says that their current s2idle implementation is equal to S2RAM (when CX PC
is achieved). In that sense, yes, MX is ON during S2RAM. Do note that, on
majority of the platforms, MX is the AON (Always ON) domain.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

