Return-Path: <devicetree+bounces-67117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D7B8C69B0
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 17:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30A211C20E0A
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 15:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7C4155A4F;
	Wed, 15 May 2024 15:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GzDHP04b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1D2155A2F
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 15:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715786918; cv=none; b=bogt1Q7c6UhlwanFPathx/ImAnX4i4MESSTcTTj6Ze4B+IgcdPo0SRg0Wtd+TYMg+KVM0HRILvV1Z98tK54BaRgLMPY8seUzW20FvCczHI7JzKnFfIPUdRyVybM9AhwrUz0c2pAWrRkzyHe2VKyZ1S1//7MxNE75QozRzJF27pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715786918; c=relaxed/simple;
	bh=2XWtQopJ5WaoJU+TFRKDE1l091Uy5UpsoGhoV1vSu5I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OAeSceS64kkKjdWMy1Lg/5EGEH+hHF6qgJYiOfKPNcCFDP9WpPHLri3Zdav5VIsEW6/8OIPnAOPkjs2p77V9e7U8Zp1JMgIer6CFq28KoG8FjAKl5NTC3AAmxmqP+O6msHo6QeWRvI36ecm/s34zy5i3oLF5aErvkeBYtbIMwTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GzDHP04b; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-61e0c1ec7e2so69771907b3.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 08:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715786915; x=1716391715; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lLoV38YSNY0ImRMx/LYFYwq/MKBBnsM+kClQaZgh1Tg=;
        b=GzDHP04bGe/NTNQcjlA191xjX/rmZMjAwOFKkyf9e3JOVBOj7P0v5NcP6rpLNcB/vc
         qPk9UOjiLfiIZDpdwAaJFLSVYuxYUEAhFvXyaMpc5gRmKkDDKaxm5dgpktgWWKosJses
         elJsSGnoG1ROkLYaDmdBqOfTIP3XUZtSy45016z2lOyq+aoWe9Rkuk3sKAtOvKUDVwHK
         El4Gq7r6ups+hDPb/bmMOR/liMfeg/pR3jbRMAv/Z49ybqHwAVWyB1qRKecyrRt1EL9+
         1VR5oj4xj9AXuXlROWmRngcfQ8dxzBaRi0ykZRTQkoiHkkU5rkOGb/93kE5FebQr2vac
         Ei7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715786915; x=1716391715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lLoV38YSNY0ImRMx/LYFYwq/MKBBnsM+kClQaZgh1Tg=;
        b=fF2s3wvT6phhA6PRSafrPCqQb6JT4ARFL2wG3rqqP9al43SylSI8oroKlg9z/Z6Ns+
         hn+9Zx729PqcQJKPj2PPg/+jjY4SPluV+Au+Qj/zA1cVbOGtqbyf9BhF+DsxGt3XQERv
         urv0nHytO0Yt/T+OASI8gbe6T4ZYjDpUsuN534/WeeSEIOv6vfTxphRF6G+mfVebBXr+
         l7xkzBSOP9DM1BmUo9qbg76QRNwBK40pMaPIZD9l/kR7pqXmep8SF+Om9sMK1je+tZ9s
         60wpGACLfy7PrlzHXWZr00soGxiKY5x9yrQraQoO3mYlhTtrM6tGRrIz74gC2nGZO9H5
         Oawg==
X-Forwarded-Encrypted: i=1; AJvYcCVlV1eU3BzJ67VoL7wIdZLufFaszDw2jjjKxeje4lkWzaTS4h8ipPCpaMsRRSomCRqXGmHDTNUN6jMkTWEsMbhQSzeENKzqh+TUUw==
X-Gm-Message-State: AOJu0YwCjC2d4aEey2nrgYZkhPbaLROE06XbCHjA4PFbjR1n7rT87G18
	lR1L/1PXFc6HwiASDhN62+p8ClPnmRFrLOMauZDcO8buVsw05dGOU4PBTxFHKvnptRfJr99lqNQ
	CW0L9HwnpePCJCCOVAlUgGkcqaGGPAWHVyBBwJA==
X-Google-Smtp-Source: AGHT+IETUm5OzF57+f0kDuMhuRspa11LUhe8o3EKHym2sMSFLTqlRUqT5H8o8YeFCUdZawHVMqHdOBrBIYTvHkJeCWY=
X-Received: by 2002:a05:6902:1371:b0:de5:ad01:ceaf with SMTP id
 3f1490d57ef6-debcfb727f2mr14814212276.10.1715786915578; Wed, 15 May 2024
 08:28:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <171405653305.2527744.3813895380659072690.robh@kernel.org>
 <20240426142442.7769-1-quic_vvalluru@quicinc.com> <jr3ble6sxr5mr6cvm6ldvpyk5j4rucj3xy6vbha6ttoecte3d7@llu6qf6oasuc>
 <171517823376.1753082.4070659246393696781.robh@kernel.org> <20240515150459.GA32547@hu-vvalluru-hyd.qualcomm.com>
In-Reply-To: <20240515150459.GA32547@hu-vvalluru-hyd.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 15 May 2024 17:28:24 +0200
Message-ID: <CAA8EJpo=Q4_=JU83-9ooSqiSr=xUeHh2awDhzq9q3Xd56h83zw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: enable hdmi bridge
To: Prahlad Valluru <quic_vvalluru@quicinc.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, 
	quic_nankam@quicinc.com, linux-arm-msm@vger.kernel.org, 
	quic_abhinavk@quicinc.com, konrad.dybcio@linaro.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 May 2024 at 17:05, Prahlad Valluru <quic_vvalluru@quicinc.com> wrote:
>
> On Wed, May 08, 2024 at 09:31:24AM -0500, Rob Herring (Arm) wrote:
> >
> > On Mon, 06 May 2024 18:14:10 -0500, Bjorn Andersson wrote:
> > > On Fri, Apr 26, 2024 at 07:54:42PM GMT, Prahlad Valluru wrote:
> > > > From: Venkata Prahlad Valluru <quic_vvalluru@quicinc.com>
> > > >
> > >
> > > Please don't thread new versions off existing version. b4 helps you with
> > > getting these things right, please check go/upstream for more details.
> > >
> > > > Enable lt9611uxc bridge for qcs6490 rb3 gen2 platform.
> > > >
> > >
> > > Even if it's clear what this is, I would prefer if you described the
> > > hardware a little bit in your commit message.
> > > "Rb3Gen2 has a HDMI connector, connected to DSI via a LT on i2cX.... reset and
> > > irq pins comes from x and y. Describe this."
> > >
> > > > Signed-off-by: Prahlad Valluru <quic_vvalluru@quicinc.com>
> > > > ---
> > > > v2: Addressed dtschema errors
> > > >   - Fixed lt9611-irq
> > > >   - vdd-supply error to be ignored, as it is connected to
> > > >     input supply directly, on rb3gen2
> >
> > The choice is either fix the dts or fix the binding.
>
> vdd-supply is mandatory for lt9611. Only in case of rb3gen2, we are seeing this
> error, since it is connected to supply directly. Will add dummy vreg to address this.

s/add dummy vreg/describe fixed hardware register/


-- 
With best wishes
Dmitry

