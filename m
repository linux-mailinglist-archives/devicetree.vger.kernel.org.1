Return-Path: <devicetree+bounces-75649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2AD908448
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 252AF1F24117
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE611487DA;
	Fri, 14 Jun 2024 07:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VtUqZoPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6C21474BC
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718349508; cv=none; b=j1jc8DRxBs2fF2bbgX1/bQNycj6tttjJG/qrPkmn+5c/WAKMKfxmQCr9jfDDXm6m8vxgt2Nr2HQuBS3bmKx4o+JX15WfnswKOCRXP1CXerOndT1LCwRSi0IApf0/1aOG8XH+ddnHJTI3Ffuvkt1WClxwCIL1jlNHl3aLRXZwrAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718349508; c=relaxed/simple;
	bh=wqLPYteu3ayqHey69yCKfVVfVBHj/xWhI8yDdx19SLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R1T6Uu5yirbvgk4M0NSXWcMJ9TYCW/MAsOsA5qtQJyMEklLeGKZ5XWJhUWwK+OOIgPZbq5Q56PNMsftHaOP7vvzRkio32VttD23eBhlJyfcyknahYYzo7fsY+Cvc8MMoWaZIYomiB0NiNDRqU2/8iQIC0YqNWP6rR/0Sz/YLDw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=VtUqZoPz; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ebdfe26217so16223241fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718349505; x=1718954305; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wqLPYteu3ayqHey69yCKfVVfVBHj/xWhI8yDdx19SLE=;
        b=VtUqZoPz1UsOwgW8eYU0udIbjZpUtAcB2DEjl7VEQodjFhu7/wvvGpbvI6G8A5XEwr
         xWh4T1w8haEgMcE3QAbHDUoSaGDvsH848MTnEIX/HioQTbJILLFrOY11MzBJFSKJfYSM
         X4wBsKLYUQKgx9KDfvkJfXV35a0ZDqWwYbTS7Ea/KsEqTHHvWo7xjX8gKn+zYmVJyd8T
         vvpK967izvdPAj/k75XtlZxgoNUOfAVBKTRvSFf2vpyhChn9oVchYGGuspqQHy1RdXdg
         aCDtGhHr4OUJitR7e3Ei5IpWhwIYvNqutHPGh/nITec4ESfyGzymfnsPS7t9/Lw0IT5R
         c/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349505; x=1718954305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wqLPYteu3ayqHey69yCKfVVfVBHj/xWhI8yDdx19SLE=;
        b=Q1kjzdfE3kBsLrFYrLdq1NjESxZ8uE4Se2yylCSu9AMZ38PETxL8i2LTUOnyMI67LY
         UuT/2ZYgyF1GbQF0orsOMFHBPze6E/gdHt0OFNuPc06crTRRxOVwoJbpG90YTCqSk4X/
         aYLx9860tWU/b/Mfey/ons99zIQ5KL1/6ZNTPcbIrGWdpH4f24R2vALj/ZsEY+lREGWo
         FZQJYaYJaz+Kum6k8VHtXsyDnpsfSik3WRtkZ0LRyYNOUUCIFqBnR79XZga2alLMeDx0
         RrJkHE5vSPwjDGxe5DUcipVcaARO/FeQzEw8jbTUgzDsrl17U+SkZ0BgH8hxo5icv/5A
         f9DA==
X-Forwarded-Encrypted: i=1; AJvYcCXGNj1JqqYnnSjm0HQudsF8W8M33gSlLSUjsdBXZIVCbpDjeX65NYxbpfEwRSSZBhHtSnfrhs5XNd4kZZjibUtkvHfVX9PaPsL5LQ==
X-Gm-Message-State: AOJu0YwilrT7UzoEaNziVps3X6AcVDKH2UvniVZ1lg3G3bCms/JVa0f1
	vo8/7WGVVxjfdtAP6Ijsr0RnZgemVhBks0i5532gD5dDa/KJrNWLZW9bg+VwjEVxvgp0Mhq7keB
	iD0FeV6BF/esZfv5XCiALiPXPVLB1COCaPJZyzQ==
X-Google-Smtp-Source: AGHT+IEqAc/IITHR5XH5IcyBzMofjdG67Sdge1uWmTB4/BihRUG9JruUjf29s0w2MnX3meX/UPaZVWsbSfUHTarWmeA=
X-Received: by 2002:a2e:8886:0:b0:2ec:492:3fee with SMTP id
 38308e7fff4ca-2ec0e47c209mr11243421fa.30.1718349505123; Fri, 14 Jun 2024
 00:18:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122106.23818-1-brgl@bgdev.pl> <20240605122106.23818-2-brgl@bgdev.pl>
 <87h6e6qjuh.fsf@kernel.org> <CAMRc=MdiKxtnN+g92RUTXdOydaPV5M2u5iUdKyE2SNvDkdXAjg@mail.gmail.com>
 <871q5aqiei.fsf@kernel.org> <CAMRc=McacZMP-51hjH+d8=PVe+Wgw4a8xWcv0sRPLJKL_gP=KQ@mail.gmail.com>
 <87sexqoxm9.fsf@kernel.org> <CAMRc=McYAbhL5M1geYtf8LbgJG5x_+ZUFKXRuo7Vff_8ssNoUA@mail.gmail.com>
 <8db01c97-1cb2-4a86-abff-55176449e264@kernel.org> <CAMRc=Mer2HpuBLGiabNtSgSRduzrrtT1AtGoDXeHgYqavWXdrA@mail.gmail.com>
 <87ikyenx5c.fsf@kernel.org> <CAMRc=MdPQu-r4aaeag9apYP1-FoQ2-_GAk_qnHqDz-jWibRDFQ@mail.gmail.com>
In-Reply-To: <CAMRc=MdPQu-r4aaeag9apYP1-FoQ2-_GAk_qnHqDz-jWibRDFQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 14 Jun 2024 09:18:14 +0200
Message-ID: <CAMRc=Mfsqnfy-Q++QyZNmsYoV72hUoNFEDCW6KZ0H_MEHEe5Rw@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: net: wireless: qcom,ath11k: describe
 the ath11k on QCA6390
To: Kalle Valo <kvalo@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	ath12k@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 2:52=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> On Wed, Jun 12, 2024 at 2:49=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wro=
te:
> >
> > Bartosz Golaszewski <brgl@bgdev.pl> writes:
> >
> > >> >> Sure, I don't need DT but that's not my point. My point is why re=
quire
> > >> >> these supplies for _all_ devices having PCI id 17cb:1101 (ie. QCA=
6390)
> > >> >> then clearly there are such devices which don't need it? To me th=
at's
> > >> >> bad design and, if I'm understanding correctly, prevents use of
> > >> >> qcom,ath11k-calibration-variant property. To me having the suppli=
es
> > >> >> optional in DT is more approriate.
> > >> >>
> > >> >
> > >> > We require them because *they are physically there*.
> > >>
> > >> I understand that for all known DT QCA6390 hardware, the supplies sh=
ould
> > >> be provided thus they should be required. If in the future we have
> > >> different design or we represent some pluggable PCI card, then:
> > >> 1. Probably that PCI card does not need power sequencing, thus no DT
> > >> description,
> > >> 2. If still needs power sequencing, you can always amend bindings an=
d
> > >> un-require the supplies.
> > >>
> > >>
> > >> Best regards,
> > >> Krzysztof
> > >>
> > >
> > > Kalle, does the above answer your questions? Are these bindings good =
to go?
> >
> > To me most important is that we are on the same page that in some cases
> > (eg. with M.2 boards) the supplies can be optional and we can update th=
e
> > bindings doc once such need arises (but we don't make any changes right
> > now). Based on point 2 from Krzysztof I think we all agree, right?
> >
> > Just making sure: if we later change the supplies optional does that
> > create any problems with backwards compatibility? It's important that
> > updates go smoothly.
>
> No, you can always relax the requirements alright. It's only when you
> make them more strict that you'll run into backward compatibility
> issues.
>
> Bart

Kalle,

Is that ok with you? Can we get that queued to avoid the new
check_dtbs warnings in next when the DTS changes land?

Bart

