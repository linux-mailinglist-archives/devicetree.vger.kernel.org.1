Return-Path: <devicetree+bounces-218919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7139BB8595D
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C4B517AE97
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C0E243951;
	Thu, 18 Sep 2025 15:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lkU890kN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DBC2222CA
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209242; cv=none; b=Rpm7qUtum7LPq0+LAUxv9nFcE7b/uVQIj+GXb/eE6uczCBgKNHwnpILkobPyJp4YFEfCE7Q/53IyX4b9DIW6X3CgjnBJa/vObN+MZPHujnjLTHUUpk7rJ5qVKWNQf8M6f7Px6Ze0k89m4eMnrS8B2zherXOMOo1/kXZamE2tdj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209242; c=relaxed/simple;
	bh=YBK/SyTZPuGX863Tcjtijt2T0fHp5LvG9rFeW7r66Mc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qbMw7N7UGjo2lCd6e3pJAkrRepeYOydotcdrjy+aSprggyYHG2tHRch1IgQFS1lwYIAjeUMmoySfc7zc004D+XffcuW6gslEuaqRgZhGUjrLdIsACEJRRSMv7EeMkFpMmFRmQ7A2m5xsP33rU/mTVm4OVnM1J/miQzgDFRnmxyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lkU890kN; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-71d5fb5e34cso11529257b3.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758209240; x=1758814040; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ohjdE7vsdp2mFA+MExTFcCWgNEkrk5a/T8KfjfgAz0o=;
        b=lkU890kNry7mju+kcE2/yHzQwVoKlC/rh5L9iTThdKbYyq4QP1m2U8h3WeqeXi6jK1
         aA4IDOaicxPNqrDdj7BnxFLWr5deDP+DS5FVXT9SdEVFdcQIewi69H5o+dOOtm6XqgK/
         at0qhN1xe6aLSRPF2AgfwfvdGcwhR0pB+wu/5KGNJk7ZCnzABY+pO9h6rLVM3Ptd+RnU
         0D5ivpUJsoEfegU9T/gc38vwpNqf4wSov2iyxHa5289SJodtvhGr3ovdM7J6Dedp0TQZ
         oD8pipm3zeMK77+3PhGAz1yVcqhKUKshG96OQkXOzxZja6OGdSNZwDIXx/iTtv91i5M3
         qcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758209240; x=1758814040;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ohjdE7vsdp2mFA+MExTFcCWgNEkrk5a/T8KfjfgAz0o=;
        b=pdPl4PFlq0p9ozEjlNRxdyXC/9bklYHsJEakMW6b7rvdHdAq2e2fcimlkqPmNkLJO8
         fGp4hamon/z199+IFmKIbSCcVDHmw3ZBAEMVraoHrGEhqxzYrCKxcHdtTGjumvdmOIOL
         w8FXHODPhlz8UIrt4UK7CkbTUcabcbHzs2fY9adZpvRNLS5rCINf8nVClq/xY6gyoWhq
         U+jFFMnVexYAB43d0YTYJ/jo89nLp/Cf503CURJthsojLCIfOOFr5ULNpM4bEgTYBE6I
         HG0inYKVMmLAvHzPvAuAQYR0liPjGplO+lDy7T1ufYj46f109aYW78GwDjgTtzb7fEjE
         x/7w==
X-Forwarded-Encrypted: i=1; AJvYcCXzqwCJBmVTIM7/vVvjH6Os13CfNmHy4vaJLF2+7qiSpXlRQhjtVIOaKRBz3nwagkg47qSyeq5ejYsy@vger.kernel.org
X-Gm-Message-State: AOJu0YwYtEJeoD0Z/+BZKJb5yvPj3CfVo+7cVz53oV42rEWBCZvyr2lt
	gh2TEl/TXNpDFHRVoqpPkvVD3R7Q5J84CQB0atIJR4gJW2a5GfQoJo/N0nbqtYYsgME12NlX5lj
	ioneyj//56C3HOYsFlOfWVgeLLhXsTK2vrLgJYmw4cQ==
X-Gm-Gg: ASbGnctkzWgBqx7011EQ+bIzgbkYa1fmGlj93lJQWJydTjkCeebwnd2cLc8DAQ1MkuB
	n35L0JWe7l5D2W8CN4i88CRBQdo+pmFmzkXgzjgYpxTLiSL2la3oChsmgq066vNFpfKgR5qGyNL
	USRoKHNKFmeszUsP+kk0t33SWnExrUN+0jfGqJjtSgzyf758731bjYrf8Js1Uje/ogdCco4ot65
	QVfxVUYiipUpTmFzY8oEN8C6E0=
X-Google-Smtp-Source: AGHT+IEQCrv2rBD0HZ5Ef3kA7d83Z57qpN7uwi/iH7ea1Nc2x95VmWRF+4zmzOqyCpcnKa543iKVkH+EZRR/L9nuveg=
X-Received: by 2002:a05:690c:6588:b0:734:61f:2b1b with SMTP id
 00721157ae682-7396eafa4acmr29231447b3.0.1758209239669; Thu, 18 Sep 2025
 08:27:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917-mt8196-gpufreq-v3-0-c4ede4b4399e@collabora.com>
 <CAPDyKFoi9KcsP5k84cSxuXNuMHmcf3a8emfOc6hMjGm_0FMk8w@mail.gmail.com> <2162077.CQOukoFCf9@workhorse>
In-Reply-To: <2162077.CQOukoFCf9@workhorse>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Sep 2025 17:26:43 +0200
X-Gm-Features: AS18NWAglY0uDqlAxTVI2SesnRFzqdlGAX0p_bWMYckBiLfd4yldGayxKumI5X4
Message-ID: <CAPDyKFqXVt5rF++GGTRxv6+S-2FevvdMVmJefvfqXkZ2iam1Rg@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] MT8196 GPU Frequency/Power Control Support
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Chia-I Wu <olvaffe@gmail.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-pm@vger.kernel.org, linux-hardening@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Sept 2025 at 17:45, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> On Wednesday, 17 September 2025 15:28:59 Central European Summer Time Ulf Hansson wrote:
> > On Wed, 17 Sept 2025 at 14:23, Nicolas Frattaroli
> > <nicolas.frattaroli@collabora.com> wrote:
> > >
> > > This series introduces two new drivers to accomplish controlling the
> > > frequency and power of the Mali GPU on MediaTek MT8196 SoCs.
> > >
> > > The reason why it's not as straightforward as with other SoCs is that
> > > the MT8196 has quite complex glue logic in order to squeeze the maximum
> > > amount of performance possible out of the silicon. There's an additional
> > > MCU running a specialised firmware, which communicates with the
> > > application processor through a mailbox and some SRAM, and is in charge
> > > of controlling the regulators, the PLL clocks, and the power gating of
> > > the GPU, all while also being in charge of any DVFS control.
> > >
> > > This set of drivers is enough to communicate desired OPP index limits to
> > > the aforementioned MCU, referred to as "GPUEB" from here on out. The
> > > GPUEB is still free to lower the effective frequency if the GPU has no
> > > jobs going on at all, even when a higher OPP is set. There's also
> > > several more powerful OPPs it seemingly refuses to apply. The downstream
> > > chromeos kernel also doesn't reach the frequencies of those OPPs, so we
> > > assume this is expected.
> > >
> > > The frequency control driver lives in panthor's subdirectory, as it
> > > needs to pass panthor some data. I've kept the tie-in parts generic
> > > enough however to not make this a complete hack; mediatek_mfg (the
> > > frequency control driver) registers itself as a "devfreq provider" with
> > > panthor, and panthor picks it up during its probe function (or defers if
> > > mediatek_mfg is not ready yet, after adding a device link first).
> > >
> > > It's now generic enough to where I'll ponder about moving the devfreq
> > > provider stuff into a header in include/, and moving mediatek_mfg into
> > > the drivers/soc/ subdirectory, but there were enough changes so far to
> > > warrant a v3 without a move or further struct renames added, so that I
> > > can get feedback on this approach.
> > >
> > > The mailbox driver is a fairly bog-standard common mailbox framework
> > > driver, just specific to the firmware that runs on the GPUEB.
> >
> > I had a brief look at the series and it seems to me that the devfreq
> > thing here, may not be the perfect fit.
> >
> > Rather than using a new binding  (#performance-domain-cells) to model
> > a performance domain provider using devfreq, I think it could be more
> > straightforward to model this using the common #power-domain-cells
> > binding instead. As a power-domain provider then, which would be
> > capable of scaling performance too. Both genpd and the OPP core
> > already support this, though via performance-states (as indexes).
> >
> > In fact, this looks very similar to what we have implemented for the
> > Arm SCMI performance domain.
> >
> > If you have a look at the below, I think it should give you an idea of
> > the pieces.
> > drivers/pmdomain/arm/scmi_perf_domain.c
> > drivers/firmware/arm_scmi/perf.c
> > Documentation/devicetree/bindings/firmware/arm,scmi.yaml (protocol@13
> > is the performance protocol).
> >
> > That said, I don't have a strong opinion, but just wanted to share my
> > thoughts on your approach.
>
> Yeah, I found out about the pmdomain set_performance_state callback
> a few days ago. I've not looked into it much so far because not
> unlike a veterinarian on a cattle ranch, I was elbow-deep in v3's
> guts already and didn't want to pivot to something different before
> pushing it out, but I'll look into it more seriously now.

:-)

>
> Even if it means I have to get rid of my fun array binary search
> and rely on the opp core to do its linear time linked list
> traversal. :'( (But moving OPP core to use XArrays instead is a
> concern for the future.)

Sure!

>
> I've also been avoiding it because I didn't know how much
> additional functionality we'll add later, but I've talked with
> Angelo about it an hour ago and he agrees that I should go down
> the pmdomain route for the current functionality.
>
> Thank you for the hints!

Np! I am glad to help!

I will try my best to continue to review/comment on these things, if
you need it.

Kind regards
Uffe

