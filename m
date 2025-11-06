Return-Path: <devicetree+bounces-235740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22861C3C29B
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CC88F4E4DFE
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C9930DEAC;
	Thu,  6 Nov 2025 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="vnxDit2v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56949302179
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762444114; cv=none; b=QMe0PxnC7z96GvAvPqXxfAMfoixTnugYOXN9IZHsrEyH9jFSUqwLtZlF9jhOxK7cS2xl0pFdt5T0njW9NdRKzq4YyRrAP2y3ETJS1Drdn9JJgOrrR7ha/r2X8OrOY1PW80HuuZsAdc6d8qUrm1gD886AUoCEf423rb1u50Poens=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762444114; c=relaxed/simple;
	bh=IzsySpkujMcR4WoEBmC55L6jaGwoKuDh9CSfvagLBlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YLe7O341TkQAdxf1lG2dCtXE2blWBKR7/BnguqqW760vUgcUrp+mSLOXLuUvMHkHSMbakBuEe7ScVsuayYL9FkR+626kiENWdMmkxQuOlWmtvr+wRdZ+0Ok+A4JC/aVx3TVi0pblfW1TJ5tLnnF5K817LIe+Sw3+xcvdEhvTsuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=vnxDit2v; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7ade456b6abso1054990b3a.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762444112; x=1763048912; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97N5NFxuu/uCytVCp353kHzM6K2Dbd7TnX+o0fzl0i0=;
        b=vnxDit2vauZQMJwZ2ytrCOVucQuUZyaX3P9jn9+sZGDLDkFHL61/EcEYrZunmkgqPo
         sfmeGvdn4+APinTvn5Z4sHdp2F4XCh2kLIdd3q3Y/SojuLAwfTkakZjYJbfoQBY4YtWj
         R19eO6GqGUfkTjzt1gSwoUa7YkVeEgPGQ+krmgF6Gp+3ndvjQtHECwBLOjSpNMAI4sS7
         O7k7L8OFkp8JZ8qsp1J1j3/IeRk9OnEy5O0zd6Y4j9Ko+cc+fOaPuiOYPx1g4yJbk03t
         /05SY0vuqfiu2h4ppZBoBLeNa6F0uYpZXZQdwudojfoC9s3gU/aIwdaOkMs8E0+xaoD9
         rc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762444112; x=1763048912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=97N5NFxuu/uCytVCp353kHzM6K2Dbd7TnX+o0fzl0i0=;
        b=Pxe3BjMwwpOMnuNZy5TlSvTwlFoqe/gI+bKFKokMmLVG/LlAMdoJ61lHxQMNxR0Vqi
         6kiEkTj164gavRQywUC5yjK5Bt5rQ0A9dvjzIoFwQVasGUDwJkxva4lQ3hWnAl/EkJaw
         8jx+K3b5is8Qfs3FGcSKYnALqiLx/roXtlML//rph+l3ITMucyXzAcNSH7IHspH2A4ct
         77FQQAib4MVm5IeK8LqIvNX7pbJH7s2+vluQvL+CqcmmQT60eicbniQbvHF7u+oKfNKd
         99wnjeQgqkSOjaVGA2De40kD/xIF5RXSfpyPEl0EChKBmaZ3HmNWCuv6JnjASAPf2d6H
         D2YA==
X-Forwarded-Encrypted: i=1; AJvYcCWT98HMXYmmc209HIjCmjrSew3QWE+z7dOD5UXejxDOugbIx/iP3zcaW3aaxc5CMQfFAeXXnnztT/dx@vger.kernel.org
X-Gm-Message-State: AOJu0YypMuKQ/FFYLIdQuPhSmFjIG9xQG5oO2JuWDcembfehJzD/3SOJ
	YajIEUe5SR9LLDAGrtrVRQbNOpA+jrt63UmmL7Qhn6Tv6aK77We1EU1DqqNFPaHVVLsgsA67ARl
	bGSwcFdErUmHDfRo/8N6pkJQjkKJuQhtry25/q25i+w==
X-Gm-Gg: ASbGnctELz7wlRDnm8Uf188F6ORVyr/WkmcoQ5+xWTLNazdQ766v57/MoknKgAktjb+
	6qlkh9/CGguNEs48A0iPebz9hNfYTiqMunHFV8oGLM9BqRJEl9cveDQi6Bp+/zxvPuLimgM6xS/
	LBVsU0RLOcWVjV+H00mKUa6lEUdQVAvBMbKBTuvHT/90o5Una2Yruh+7l0C0QmNm+3tl3EedvCo
	Bz8sb7L6IXIR4+8IdmROQXeuCeofks5hEoTevuIVkZhXk6KD8WNeBgWA4RpoWxNBo3+YRTAbuiE
	kkOb4718vbwNzKvbjL+kMdgtgg==
X-Google-Smtp-Source: AGHT+IGkyMxFIxYqEfsxkoeH8/+bnCDt9rf3tx5Zv59yWcveQKoUxGPzEJY1muHMLt5mGF2Rg9TIu+z/TPDNf8xk2Uk=
X-Received: by 2002:a05:6a20:7488:b0:34f:ec32:6a4b with SMTP id
 adf61e73a8af0-35229d68476mr26916637.32.1762444112518; Thu, 06 Nov 2025
 07:48:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105-pci-m2-v1-0-84b5f1f1e5e8@oss.qualcomm.com>
 <20251105-pci-m2-v1-4-84b5f1f1e5e8@oss.qualcomm.com> <CAMRc=McB4Zk8WuSPL=7+7kX4RJbdFBNReWZyiFnH8vfVx3DxAg@mail.gmail.com>
 <tc2r2mme4wtre7vb7xj22vz55pks4fbdabyl62mgutyhcjxnlx@qn4jvx3jqhie>
 <CAMRc=McDYL_B+hFtLekevtB2XpUkaMN1dsDNeefvR+ppj4whFg@mail.gmail.com> <5wbwpr7ivnvpttacyl7b5fsexfda2uvoqau7yaaxuavskka4z6@vvntbnakzrjb>
In-Reply-To: <5wbwpr7ivnvpttacyl7b5fsexfda2uvoqau7yaaxuavskka4z6@vvntbnakzrjb>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 6 Nov 2025 16:48:18 +0100
X-Gm-Features: AWmQ_bkhQdbMkrAQ_h-vWt-L8tplAxdm964sVXmj6JsL9Vun-srDl-nRdBMs44k
Message-ID: <CAMRc=MfCQgMd-7QczbnRuBAvXnhJ5QyUzRswECfKC3NbQ=rArg@mail.gmail.com>
Subject: Re: [PATCH 4/4] power: sequencing: Add the Power Sequencing driver
 for the PCIe M.2 connectors
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 6, 2025 at 3:32=E2=80=AFPM Manivannan Sadhasivam <mani@kernel.o=
rg> wrote:
>
> >
> > To answer your question: sure, there is nothing wrong with having a
> > default match callback but first: I'd like to see more than one user
> > before we generalize it, and second: it still needs some logic. What
> > is the relationship between the firmware nodes of dev and pwrseq here
> > exactly?
> >
>
> The 'dev' belongs to the PCIe Root Port node where the graph port is defi=
ned:
>
> &pcie6_port0 {
>         ...
>         port {
>                 pcie6a_port0_ep: endpoint {
>                         remote-endpoint =3D <&m2_pcie_ep>;
>                 };
>         };
> };
>
> So I have to do remote-endpoint lookup from the pwrseq and compare the of=
_node
> of the parent with 'dev->of_node', I believe. If so, this looks like a co=
mmon
> pattern.
>

Sounds right. I would still keep it in this driver until we have at
least a second user that wants to do the same thing.

Bartosz

