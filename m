Return-Path: <devicetree+bounces-71959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0A08D8AE8
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 22:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEFEF1F26273
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 20:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A190C13B298;
	Mon,  3 Jun 2024 20:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="PdG1+DoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DD020ED
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 20:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717446702; cv=none; b=rz0lNDOO7+poY1jc0NpUpAVo9oespE+bWmJC9N3QyYIBauKsm4NKhpzXTXN0KwYhIshRqnItMJmR2t20iaaJQCKLD5fsKGvZoev+bSyjsC3dXXnj0hmI/MzzY1CfZsVwVFPj9Qq0vVzQo9l304e9n5NuUkXfm2GIFDX9HaKDEfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717446702; c=relaxed/simple;
	bh=kseNDCmSQ5FUN+wUVr7xlVyxKaH42d7W1N3nfdVvntU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ofnMgtICbPQwN6FwFHi1H8RmqGBCQ7V71H8jEMzpLMRa6Tj7F6BgmoRz4cZTGoGroMmLUEAzyYckZUi4ovg8eavfHtpZm5LcCMK8uyB3IEAbwHaKNy9ckvOQRhxI55GvcUx0iCb3GwoANI7ZRr/O6Mv5NOcENRqJ1fYEBHRNN4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=PdG1+DoZ; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E18EB3F6E6
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 20:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1717446697;
	bh=ahV+EJLz1b7kXv8nPMYOtMyUKc6v5M9VH6zQprdv2v0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=PdG1+DoZ4EzBGxVWEKmjZoBQnA7cmuY3DnHzTYD4Q5nzDzurF8IQeF7V2lBylPeau
	 O7gYxKzDEj1qOkYzKq0MBYr74LMXz9KUIZxgcQJfKDqrdtWbM90WVDK1L2TEV28d6N
	 jTPpfFf+Nweoy9CSEExdSIdWwuzYxlKmRhtAbU4GseGqMkQh5ytyTZWm5LW0A2uwyy
	 qKB2bf1njwVDopas+qKJtlTSqx85P0DC5th5vE1eDhNaySgeUSYm2QAEFRvz5lACKo
	 F251YbqLJ15riwNLIU+Fyu8niaCiLF6Tt3QHazdNxMzYD6PuACP2nzGNhiwBXtMHK+
	 o8ApRQTyVXUWQ==
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5b98425a521so4926435eaf.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 13:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717446697; x=1718051497;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahV+EJLz1b7kXv8nPMYOtMyUKc6v5M9VH6zQprdv2v0=;
        b=oeO/h/WnyPuJMssmx+8FxjZubIX0W65Do4m+At6E9631ENnez5RnivtHY7bHFTezPy
         fVxcpUFh7PwqA9o3Yql0mPCF5fdOo4xfls/OlpLB2QmBx6BALm+SurYnQ8unQbaRXYos
         bsCkcSLzAhkzyHc8P2Wa0tBumv8nbCcGUFFMrRhDgUGMk8VaBbx82mM5Rj+NTZMNm8zj
         n3iPUc/OgJ11XN3xWr/6Rq2oJAfJdf7imd4KMEPJmgt8BVwcKYIdrjlpV/dV35j/LBpE
         Vouuf8Akp6I5vPtQj0Re8jwLfAQggUA1VQ++XolDZ7NBwUh15WKbtB9mQNt3W383iyhg
         h2cg==
X-Gm-Message-State: AOJu0YzkYsZdS4mvva1JewmmTqCYN04dmsMNL1GW0cpkrf1pbSqgcTb/
	S59DjQ/Rr916C6Z6S8ylVka8z1RivC1yHNRNBUyWY1XK8NZw710KzOPhq2U6kcMVJGPEPM7NrJ5
	92bJaZLXYUnhdSVmJJN2TlHc0V2dvs1bKG2bNJbWJBRLDFalcmSZQSBcME9Wq46BTjUiCsUD4HY
	uqaeDm/uGj57Xl4MMdZtBsWqUbdmpGoD+bLjNowjjQbrM60BkSVQ==
X-Received: by 2002:a05:6358:e49b:b0:192:2717:4ed4 with SMTP id e5c5f4694b2df-19b48d606f7mr1494301555d.19.1717446696529;
        Mon, 03 Jun 2024 13:31:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNOqELb+TNrrcp0k/w7K34E/nZ0eKhmkZ1wR5a0BvRi2qcNm8V+dmkcOht1G0ZNEE2zOCO/z+ZLZWTjCb1Ndg=
X-Received: by 2002:a05:6358:e49b:b0:192:2717:4ed4 with SMTP id
 e5c5f4694b2df-19b48d606f7mr1494298355d.19.1717446696068; Mon, 03 Jun 2024
 13:31:36 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 3 Jun 2024 15:31:35 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <0eb3b03d-f817-4f6d-8a29-abf87c3632f6@canonical.com>
References: <20240603150759.9643-1-matthias.bgg@kernel.org>
 <CAJM55Z82+_RL1Z+DCW+_xgE7ZMmiWdPekCt6qtREPXg1jB+68g@mail.gmail.com> <0eb3b03d-f817-4f6d-8a29-abf87c3632f6@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 3 Jun 2024 15:31:35 -0500
Message-ID: <CAJM55Z8pntz8=aHhad4LW5cH4BLTCw5vfJPYRpYmTjtuuqiZtw@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: Update flash partition layout
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, duwe@suse.de, 
	linux-kernel@vger.kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	linux-riscv@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, 
	matthias.bgg@kernel.org, kernel@esmil.dk, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

Heinrich Schuchardt wrote:
> On 6/3/24 18:10, Emil Renner Berthing wrote:
> > matthias.bgg@ wrote:
> >> From: Matthias Brugger <matthias.bgg@gmail.com>
> >>
> >> Up to now, the describe flash partition layout has some gaps.
> >> Use the whole flash chip by getting rid of the gaps.
> >>
> >> Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
> >> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> >
> > Hi Matthias,
> >
> > Thanks for the patch.
> >
> >>
> >> ---
> >>
> >>   arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 7 ++-----
> >>   1 file changed, 2 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> >> index 8ff6ea64f0489..37b4c294ffcc5 100644
> >> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> >> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> >> @@ -321,16 +321,13 @@ partitions {
> >>   			#size-cells = <1>;
> >>
> >>   			spl@0 {
> >> -				reg = <0x0 0x80000>;
> >> +				reg = <0x0 0xf0000>;
> >
> > ..this is definitely fine, but..
> >
> >>   			};
> >>   			uboot-env@f0000 {
> >>   				reg = <0xf0000 0x10000>;
> >>   			};
> >>   			uboot@100000 {
> >> -				reg = <0x100000 0x400000>;
> >> -			};
> >> -			reserved-data@600000 {
> >> -				reg = <0x600000 0xa00000>;
> >> +				reg = <0x100000 0xf00000>;
> >
> > Do we know that all of the VF2 1.2A, VF2 1.3B and Milk-V Mars boards have at
> > least 15kB SPI flash chips? In other words were there a reason this previously
> > ended at 10kB?
> >
> > Also it looks like my Mars board and VF2 1.3B both report discovering a
> > "gd25lq128d" chip of 16kB, so why stop at 15kB?
>
> Hello Emil,
>
> 0xf00000 (15 MiB) is the value of the size-cell. gd25lq128d has 128 Mbit
> (=16 MiB).
>
> Cf. the examples in
> Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
>
> The prior partition scheme had a partition 'reserved-data' also ending
> at 16 MiB. We don't change the expected size with the current patch.

Oh, you're right. I totally misread that, sorry. You can add my

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

