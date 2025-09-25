Return-Path: <devicetree+bounces-221267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E2FB9E2BB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:01:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D59F1BC2AB0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6CF627F727;
	Thu, 25 Sep 2025 09:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J93XPlV2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A2F1D5CFE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790890; cv=none; b=KNkTY2d0AwqV5OF7y+NqBK8+JnecLhMfztlJCDoovzOLDOtzBTw6z2dtC+sCFuOCWG9/b7A6ODKwSW8SQdsOYvtYHs+spe5p7LbR70bBA1vwtsmKBhifyMeO5K1N2ebiuN0RJr7D7B/2ogBS44zUECEDehCytZqVbpV7GUq8jD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790890; c=relaxed/simple;
	bh=fD8ApcusGcdw4m6JF+k8e+dqbfT02VTIYtFa3Uz/XPY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SnQg6/9DF9k8dCQOzWK3tkdOLS+8aUWvXBNJrL5tAesDpUSr4F/yliKEIxyrDcP7VL3ShKbATTjFwTa62XbF+A/5zZCKZE4k5Xpz4BiBQqWLlHBLFRqtwRvhJ94FFAZ8jPN/FQ1qR4kVomR1Vjb/+oT1wMQomByCHLq33M2THTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J93XPlV2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0639AC19425
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758790890;
	bh=fD8ApcusGcdw4m6JF+k8e+dqbfT02VTIYtFa3Uz/XPY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=J93XPlV2xhk1DAsweHLvz3IsodKcio2vCtMAuQvfTTKqSI8z2Bc/97EkmRGmwjx2i
	 zZmaDvYdNSNB2RFXTVtXQHs7IBb+6xBdUQLJp4a7dHaZ5YjgRmcT4OBvBrC9jkZyV6
	 k09A+q7ccDTy6LBo3Nq8uuHaY/i6iLbrmmrN5Qybi8K9y6gVrYTcIRnf56vgtXtaZG
	 r362LerAOeBghmqKG8oQhrElM1HQp8UGKZWVDc/Lc8zvYSpBNST9Jguzl+Q2lefplv
	 aQxnOHZt8H1P3pveaokZl9GhVFPCdbijFvVZS8FMHy8xKBOFNd/8O/4y8GYSr3Sd8+
	 rEfan/japRtXg==
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-27edcbcd158so3238205ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:01:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUW500Jtyo61aWUodWuM3lfGziAa/YM2mGkigeGNIq3PX/WhAdXh6EaID9nc27aV3VLWxSZIChhYvuv@vger.kernel.org
X-Gm-Message-State: AOJu0YyHV6j6nADQ68XRTdWUHSI027BobRBb0b71UDHtXxrnOYa7v81D
	BDp/jPSKsfIaI71lH54SLK3MC7Rqi8gONMlR3r2Y7kUeCLCi7urWhJ6ga3AtRScyMVen6aU2psc
	xid9Z6PXeIaS82RFGVOsTiQFy7ep0ftw=
X-Google-Smtp-Source: AGHT+IG3ej2HHVybp4+rYJBAMsKx4UiDYKhW2qkPfNaRZpitN1plIE4OoCr/H+en0xBaU83dJRUAaFQz2rvvflsPJvc=
X-Received: by 2002:a17:902:e78e:b0:25c:6159:8ec0 with SMTP id
 d9443c01a7336-27ed4a607f8mr24947925ad.51.1758790889405; Thu, 25 Sep 2025
 02:01:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com> <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
 <53d63dd6-a022-4e80-a317-3218976a7474@oss.qualcomm.com> <CAJKOXPfGC=FK7AKOtmmSV7=3NNXAHe8A_PGjjhTKgRs4Jk25xA@mail.gmail.com>
In-Reply-To: <CAJKOXPfGC=FK7AKOtmmSV7=3NNXAHe8A_PGjjhTKgRs4Jk25xA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 25 Sep 2025 18:01:15 +0900
X-Gmail-Original-Message-ID: <CAJKOXPe6Gdc8qb7fwwNsMLiv0SxXm=aOtrR0HsU0S9wiu6erKw@mail.gmail.com>
X-Gm-Features: AS18NWCcdYHhlfDr6MT8BcOkfsqFVNv3n-aNcPx7RGOvPf1-osy5VNyVN2DH77I
Message-ID: <CAJKOXPe6Gdc8qb7fwwNsMLiv0SxXm=aOtrR0HsU0S9wiu6erKw@mail.gmail.com>
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
To: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

> > >> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> > >>
> > >> Add the base USB devicetree definitions for Kaanapali platform. The overall
> > >> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> > >> (rev. v8) and M31 eUSB2 PHY.
> > >>
> > >> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> > >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > >> ---
> > >>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
> > >>  1 file changed, 155 insertions(+)
> > >>
> > >
> > >
> > > Second try, without HTML:
> > >
> > > I really don't understand why you created such huge patchset. Year
> > > ago, two years ago, we were discussing it already and explained that's
> > > just inflating the patchset without reason.
> > >
> > > New Soc is one logical change. Maybe two. Not 18!
> >
> > It was previously squashed into the base soc dtsi patch and mark like:
> > Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> > (added USB), Manish Pandey(added SDHCI), Gaurav Kashyap(added crypto),
> > Manaf Meethalavalappu Pallikunhi(added tsens), Qiang Yu(added PCIE) and
> > Jinlong Mao(added coresight).
> >
> > While it is over 4000+ lines when we squash it together.
>
> That's why you send one node per patch? Multiple huge patch bombs land
> the same time from Qualcomm, with patches adding one node. It's like
> the "no more patch bombs" discussion and rule never existed (yeah, I
> know it was removed but the spirit of keeping maintainers mailboxes
> sane remains).
>
>
> > Also as offline reviewed with Bjorn, he suggested us to split out the
> > USB and other parts.
> >
> > >
> > > Not one patch per node or feature.
> > >
> > > This hides big picture, makes difficult to review everything,
> > > difficult to test. Your patch count for LWN stats doesn't matter to
> > > us.
> >
> > With the current splitting, the different author as each co-developer
> > can get the meaningful LWN stats.>
>
> We don't care about your LWN stats.
>
> Sending stuff like this for your stats, means that community and
> reviewers pay with their time.
>
> This is really just selfish. No care how maintainers need to scroll
> through their mailboxes.
>
> > > NAK and I'm really disappointed I have to repeat the same review .
> > Currently, there are 10 SoC DTSI patches sent, structured as follows:
>
> Why did you ignore all the feedback from 2024 and 2023? Every year it
> has to be repeated?
>
> >
> > SoC initial
> > Base MTP board
> > SoC PCIe0
> > SoC SDC2
> > SoC USB
> > SoC remoteproc
> > SoC SPMI bus, TSENS, RNG, QCrypto, and Coresight
> > SoC additional features
> > SoC audio
> > SoC CAMSS
> > SoC video
> >
> > Which parts would you prefer to squash into pls?
>
> I made very clear statements year and two years ago. We also discussed
> it on IRC multiple times. Can you join discussions instead of ignoring
> them?

(Apologies for lack of trimming, typos, HTML - using phone)

...and you sent both inflated, LWN-stats-gaming huge patchbombs
(Kaanapali and Glymur) three days before the merge window starts.
Community works for free, doesn't it?

