Return-Path: <devicetree+bounces-261195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCfTJKWVfGkQNwIAu9opvQ
	(envelope-from <devicetree+bounces-261195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:27:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C10C8BA117
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 661C330046B6
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C0D436A02D;
	Fri, 30 Jan 2026 11:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eacAcz6d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FFC7080E
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769772445; cv=pass; b=Sw5fFPmi/MhNs2r7ZMkHB1fbmKLiauYzoSeGWMpeTuOJo916iBql9Sm+Ze0/ynJI2nqOq2e+BGfG5aMzpgicY4LPZxY+2NH8cDHspq6eXoH8BDM5OSEUatdh+t/DwFg7a/3HPxkow2htWzjg6HUDmfcOdxuI0CTKQMGtetAtkAE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769772445; c=relaxed/simple;
	bh=pC6EqmS+EnGYe8Q5IuSOWCmBS0Js0/5aG8PXRBQ4GlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qERPlubpzHHO2voEuFiCkypGQYxsQTqLjnXCF+6o6siCm2Cvu9o8Ei/CHiLQUGIS54anjLssF5VwBd6o8aOQI10Y0zasS2kjKgaUH9m/IhoKohb/g1eVY8p0R1J0/QjGmZIp+gjJ8UadEKvdyEOpL6Cd2vCfS71Xky/WZlM9oRw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eacAcz6d; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59de77e2e30so2540247e87.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 03:27:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769772442; cv=none;
        d=google.com; s=arc-20240605;
        b=OSg1nIrOXM02wcb45Yu9CBOi94perGyDY7VyKX6CC2R0SBCXPeti9l5j8Rl2hxKMAu
         cEBt2kVXRTI8iOUUAPRD/tj5bQVJ82+G1NhYqo7bXncZ7SjEKPLYpTcBmwe5GvI5g9uX
         4X5vdu53gmFJDH2r2v/ZlM/ROGFFXrfKT9xAtP59sGt30tPOQHWybPYEBeqFDlNICU7S
         gsNrgJJ5r1Ac1QqY/vxkzW+vVeMXbn+8B0CpaVo5W4TLfOVgKnw9OcFn6qsJbGTKbVal
         cjWJOBsiplt1Z9RnSS7yOiBGwKhWiPEPaVaswD1+tQfWs23ulMFR2/R5NshUuLsSiRBG
         ZePA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CTJuqQRZKV7ijK4EJjSamZFAm+pamffo2mFKEbOeye0=;
        fh=tnpsXFIOAvb6RZtidNLopsAy4AJQ5fIqZ9hxWpE6ZkQ=;
        b=Grn4VvEJPNG8SSEdZJFl0JfzW3AneijpQSip7xTA3oieca+AgjGf4wMg7zutlePzxQ
         pchrbByeuWmG9XXJKhYlgIoucgOFBfyaL9A03FMFXLpDvrFZtIZDdjz/09lmQAU7N2Tt
         u8Vc9QfeK3fQo5d2hFDcCzM55fd3Or0i39sw3Ta4+n6HtEMMvsB2P1LsNbI2u4Ct5dYv
         Skz2TOek3K/ASMaJ1Q8hA7IiETwbO3qgkblr7GPvFui8EAgUVA5a+lntpkkuhnKSKoB2
         mnB3fyGgoe9EMrtn36LUPXBvZMZUShrHFLOIDRHwMu+ZWq1z/br8l22tPKwITBISo50M
         FiMQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769772442; x=1770377242; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CTJuqQRZKV7ijK4EJjSamZFAm+pamffo2mFKEbOeye0=;
        b=eacAcz6d5BiANL3HwUEFCEohpNeH5wEOJEJIPHVDsPSOtDh0XIn8arSwO1/AtKuXqE
         GmeIlTilKWKtFaC26Q4aq3vu2ysEZUt+zrHTK9jjXGtiZHw2kF1E0exK9mpziEpvU8yh
         8EWtKQicCCBPALi/wDsPxHI5H2nTuZAd3eqR6B6Y1c7raanZHLiMIfQ/yvKkuZYjS5KX
         OXnEBYUbJHZ5EuNxVV8ace6tagsUDtCmXPvxbtDM654SRpSY42+X3a6wsb/NGJqTWEUo
         WhnVW+Si6499mU0jJDT9f9bSWSscEYSLsQ9WfzLidFtcmpUcuZfrSV/DgJHgSa0/5WY5
         oPpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769772442; x=1770377242;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTJuqQRZKV7ijK4EJjSamZFAm+pamffo2mFKEbOeye0=;
        b=bcJGeHNLTJqaQzn2NpG1IwDh3mmJz4ixESfhbx/9IFkLwzhhzFN6u+nvj83xRBK1rA
         jFaGd5HSGYbaQ7cU9KoB60ldTzNMztE1TNRsl7HH0f9fZ6fk2hriIyJroCJeDvLr3zS/
         81UqaHxPfaoEHoQun86EeCZS+zSMdxVfZ+SEjhuQTs5FgSse98AmqIUUOTrHFhig2ZRh
         oLdou1jtau+mL0HIHJOypN0GL5Hua4sXRj1riZp5Bqt6JbAnbQq3cWQmenlNReD+3NBG
         gJhsta+VMXXq55hlvOCZQapovvJamaj+JQKyoPkyPORax0+HrRrAX8kq9+Bj05Tw6hre
         3egA==
X-Forwarded-Encrypted: i=1; AJvYcCWeR5/NkTrVlj15c0ayEUhdCLR/ih+lTKV6k9f0jEl0jOBIHJViIitmSP48V72KaAEW/TGdbJN/2aoa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9442cq+KuygKwKy0qQPY3suDXRbs3t2jDmEVldDVqiP/JrGTs
	8bpOMXDhqbZ9+dWySIztlM1/BNJlp484LrEaJLkxDynUCwEwihRdFa0KjBG3hHerva4sKy0Beq9
	hI54H9roBGaVg1JHTdA5cq5z0zY5nShUY2So6qOmsPw==
X-Gm-Gg: AZuq6aKHD4ZrPTMWNs1gotARP58+1f4iZbL1Q6nMEiQAtTL9PaNQCN42ahRlj+uyBUw
	ZgwnZpGJmVLFwwNlrCg7LFr2kvLMAsvEaRHhy950abywTvpuJUGMC17scNPOJ+I2iXtHihVJ2ve
	+P9GPj9J+iZQ/CMbXs9XVXXGinH2590Hx6RGhocfRnRF3Z6R6ynxdxOkiKbGNPiTI4nx+fPJ4S+
	/SF/954/DYipWjemAYK44aGqXKbuP5XxTRVEIMk0Y0uU5FFSApxawqxYc2ebr2QDoQ6ZBl4L4N0
	e+CcZQI=
X-Received: by 2002:a05:6512:1105:b0:59d:e714:fece with SMTP id
 2adb3069b0e04-59e164051d2mr838308e87.24.1769772441507; Fri, 30 Jan 2026
 03:27:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251211-rework-rpmhpd-rpmpd-v2-0-a5ec4028129f@oss.qualcomm.com> <CAPDyKFpCZyseq2XiQLfL+zHWjYZpS-4Wo56=W5AkBpdhajJxrQ@mail.gmail.com>
In-Reply-To: <CAPDyKFpCZyseq2XiQLfL+zHWjYZpS-4Wo56=W5AkBpdhajJxrQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 30 Jan 2026 12:26:45 +0100
X-Gm-Features: AZwV_Qho2KSeqV-UA771mqMAbX-CoeazXpNaSx_w79F053JQdWzkRlNIUDFeZ6I
Message-ID: <CAPDyKFpSgRkc_cPnX9uTfxB_xrOc6=gjy0+OaQr-outr_eeX8Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] pmdomain: qcom: sort out RPM power domain indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261195-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: C10C8BA117
X-Rspamd-Action: no action

On Thu, 11 Dec 2025 at 12:41, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 11 Dec 2025 at 02:52, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > - Switch platforms to using bindings for RPM power domains controller
> >   where compatible
> >
> > - Drop now-unused binding indices for RPM platforms.
> >
> > Two last patch depend on first two patches and either should be merged
> > through the same tee, should be merged with the help of the immutable
> > branch or just merged in the next release.
>
> As soon as a couple of related changes [1] that are taken care of by
> Bjorn, has reached an 6.19-rc[n], I can pick the complete series and
> share it via an immutable branch. Let me know if you prefer another
> route.
>
> Kind regards
> Uffe

FYI, this one didn't make it for v7.0, please make a re-submit after
the merge window.

Kind regards
Uffe

>
> [1]
> https://lore.kernel.org/all/176499396490.224243.15580177530806530343.b4-ty@kernel.org/
>
>
>
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> > Changes in v2:
> > - Rebased on linux-next, dropping merged patches.
> > - Split RPMh bindings patch to separate series.
> > - Link to v1: https://lore.kernel.org/r/20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com
> >
> > ---
> > Dmitry Baryshkov (3):
> >       arm64: dts: qcom: dts: switch to RPMPD_* indices
> >       ARM: dts: qcom: dts: switch to RPMPD_* indices
> >       dt-bindings: power: qcom-rpmpd: drop compatibility defines
> >
> >  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi |  4 +-
> >  arch/arm64/boot/dts/qcom/msm8916.dtsi    |  8 +--
> >  arch/arm64/boot/dts/qcom/msm8917.dtsi    | 10 ++--
> >  arch/arm64/boot/dts/qcom/msm8937.dtsi    | 12 ++---
> >  arch/arm64/boot/dts/qcom/msm8976.dtsi    |  4 +-
> >  arch/arm64/boot/dts/qcom/msm8998.dtsi    | 16 +++---
> >  arch/arm64/boot/dts/qcom/sdm630.dtsi     | 16 +++---
> >  arch/arm64/boot/dts/qcom/sdm660.dtsi     |  2 +-
> >  arch/arm64/boot/dts/qcom/sm6125.dtsi     | 12 ++---
> >  include/dt-bindings/power/qcom-rpmpd.h   | 88 --------------------------------
> >  10 files changed, 42 insertions(+), 130 deletions(-)
> > ---
> > base-commit: 008d3547aae5bc86fac3eda317489169c3fda112
> > change-id: 20250717-rework-rpmhpd-rpmpd-13352a10cbd5
> >
> > Best regards,
> > --
> > With best wishes
> > Dmitry
> >

