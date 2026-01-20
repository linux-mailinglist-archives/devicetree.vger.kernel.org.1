Return-Path: <devicetree+bounces-257119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFBAD3BCD7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 02:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB51430274F2
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 01:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1E623ABBE;
	Tue, 20 Jan 2026 01:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBkMuooP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9B22173D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872558; cv=none; b=tvbn7U/YpR6Z/Pd4Lv/lSBK/PEUTtwDl8Y4bVRJOB6Z/7rw41Js6YTre4Avd3KgY/NLq1CS/3HAwl60QJiJNsvx9J6d9E6JXruK6YhzAlvNDby8gUmjF2lbxROZEWIiTNQ6o9mIoGiq3naPi664JyDmCfIp8Bh0jb00JqaPU+a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872558; c=relaxed/simple;
	bh=KRBgkounHWrv8OcZaMyJfm1hupS42tciSdEMXMqtvmg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xignoe2mNueNL6VbQ8dLCL3+5mrOA9O0Ywd+59/ntgjPJ2iy9UG7r9NI9P1mBxXFBFyi+tw9T/7WQ/JK6b9jH/ysD3iqVtCtFtpp0LrySl9KNEtMnXGUBHtgcgOW1MBRBlX3pSLrjq2zYdVkABvdOpSncRw4EE/nJvZ1+degLto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBkMuooP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADD8DC16AAE
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768872557;
	bh=KRBgkounHWrv8OcZaMyJfm1hupS42tciSdEMXMqtvmg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=UBkMuooP3a1zSNAQ6aQU5J6y1ROzxxSlknF0OkBSyuhyGkU/M1Mx4fj5StUVu0/kS
	 Y9HmjimCkYPOomBeJBAxihExE+LDPJAVdLxas/47e/Av+Uf6cM9Zp+O2hmKdjH9Cnt
	 BTKsq1ScuBuC9h0p1SjDZKWU6VMi4Dk5kHmsDv7cYBseBukMLdB3UmB+fbJv9uDN/o
	 q7CGm7Uvrzmi9fwASowTVzCtKLym1WayZVvHd6bLB5V7I1BrzOsjQKQZg4nLH2ZFQV
	 oK5z1Ht4VGI4MJD1ssoeYlmzGQAk+sSvgwypwWW+flnlXzHN07rhFV6nssr/DN9EdS
	 qt2tiUvIeQ1CA==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6505d3adc3aso7605712a12.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:29:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV+L+sPeUhExzOjIFA3BJisKmDypRaStOxsung7nQnZuEfm7N/sGuTUxpspfzvXU6jT9ns9j2KYVjns@vger.kernel.org
X-Gm-Message-State: AOJu0YyNURUJXnKXFFbtMtXnu5xGdkBQgmxk/aTXNP4OktjKzRbfdMj9
	pKQEVY+jJ+wYlkyfnjO85icZeelK2yceHyXWgajDQ8hH7h0bDfrjDwtwq9Udf9J4TLpomDF+ziR
	NjLfcmNiCnWEzgydzBO/JC+USWuDBIw==
X-Received: by 2002:a05:6402:13d6:b0:64b:46ce:4706 with SMTP id
 4fb4d7f45d1cf-654b93641b4mr9128952a12.1.1768872556264; Mon, 19 Jan 2026
 17:29:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
 <176840729246.2734238.959231359705262987.robh@kernel.org> <2956f2bb-7db4-4d66-aa71-2017c9a4a057@kernel.org>
 <38b979a1-8499-abaf-c990-2986971ffa7c@oss.qualcomm.com>
In-Reply-To: <38b979a1-8499-abaf-c990-2986971ffa7c@oss.qualcomm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 19 Jan 2026 19:29:04 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLk=pOqpdX2RPGRsNgd_ka4wd3Vi8YVmYgG4pMpio6mjw@mail.gmail.com>
X-Gm-Features: AZwV_Qgli2NPOkmb3PhgqHtWt8BK5EVwNACrxTYUprfIEX-xV18L7S9DTNWf6Dc
Message-ID: <CAL_JsqLk=pOqpdX2RPGRsNgd_ka4wd3Vi8YVmYgG4pMpio6mjw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Enable Inline crypto engine for kodiak
To: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org, ulf.hansson@linaro.org, 
	devicetree@vger.kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 4:04=E2=80=AFAM Neeraj Soni
<neeraj.soni@oss.qualcomm.com> wrote:
>
> Hi,
>
> On 1/16/2026 10:24 PM, Krzysztof Kozlowski wrote:
> > On 14/01/2026 17:18, Rob Herring wrote:
> >>
> >> On Wed, 14 Jan 2026 15:18:46 +0530, Neeraj Soni wrote:
> >>> Document Inline Crypto Engine (ICE) handle for SDHC and add its devic=
e-tree
> >>> node to enable it for kodiak.
> >>>
> >>> How this patch was tested:
> >>> - export ARCH=3Darm64
> >>> - export CROSS_COMPILE=3Daarch64-linux-gnu-
> >>> - make menuconfig
> >>> - make defconifg
> >>> - make DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mmc/sdhci-=
msm.yaml dt_binding_check
> >>> - make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- CHECK_DTBS=3Dy=
 dtbs
> >>>
> >>> ---
> >>> Changes in v2:
> >>> - Removed the "if: required:" description for "qcom,ice" dt-binding
> >>>   as the ICE node is optional.
> >>> - Corrected the ICE dt node entry according to the dt-binding descrip=
tion.
> >>> - Added test details.
> >>>
> >
> > Is this another report being ignored by the author? I'll start the list=
.
> >
> No i did not ignore this. I see this comment in the message:
>
> "Ultimately, it is up to the platform maintainer whether these warnings a=
re acceptable or not.
> No need to reply unless the platform maintainer has comments."

This statement applies when the previous sentences in that paragraph
are true. Those say:

> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series.

You are adding a new node here and there's warnings for that node.
Clearly these are not existing warnings and unlikely fixed by another
series.

Rob

