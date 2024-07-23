Return-Path: <devicetree+bounces-87588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 991B9939F89
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9D9B1C21F3D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2534014F9DB;
	Tue, 23 Jul 2024 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ShTUViwz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BCE39FEF
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721733333; cv=none; b=NZOTfVItnorh8zrcdCipfz4riBrrTycx3cKx+QQJFtwi61bcXmhJSNAUFDjdkoPSOG6RxeE+/pNGUTZ4GVO6f1G7YcXjMk8Pmwaw1+qx0x0GjVFQL7d6EYlgMuki/cvwsaCl+rZQ4+1d0lpd3mVh3aBD4XPXHLyefD7JV0Bbte4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721733333; c=relaxed/simple;
	bh=K9wM4j8YlfFJqMQ5wQVlibqExzRm27i+9PimN/mfbt4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l6Da1wKM2POy5GjFyMZJ79RBkUPVQjz0eagWEoaysPa0i4JtOfEUgvm+L+7E1O+u3I9nN2gXsmgCp7ODgaEJA6hVgw+l6Rwl0HEjqqHu5DCJY8GVr/YYoHLT9FOyHZbg6zVjMmCm6Nhj60HmGfeTKKGv3dpSmWEVvVH5i11V/7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ShTUViwz; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-654cf0a069eso55145377b3.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721733330; x=1722338130; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rRFHDv0XLvI63BDNDAb/9+mEEITchZiLb03oqBqQ10E=;
        b=ShTUViwzcaT3nUDoQfEXVjuNRlGkKzFU2xAgPXcFTVxooD3SW2KIyHOYz9VE+eMcOG
         KvJwiR0awEaWTqC8RI02mQ90FR/TQ6X+q6WkJDMdh/UlSpVnsLNixYA6A+grJkCPMfDy
         sbPOELn/d9icd4Fef392kxkVCELdXVYht4Bc2UQxL2Uiz/XmtXUcidJlGHt5eVQeUX0d
         hoz5Cn5gqx+wQzEhApo3zw8JyoySOyMfaFtJh3UQDx8Vi4F1q5g3elCij+qfu60FtPBl
         i8iLmKUbiq+qJG8XOMidBHF3lCoQpfUUIBZg3ZNfvX+0w4hxC0xPTD+qaT4E73IxbnKK
         XKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721733330; x=1722338130;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rRFHDv0XLvI63BDNDAb/9+mEEITchZiLb03oqBqQ10E=;
        b=hBG6NsCR7JYv/00rPoh+1VonKyRo9b3dZiks2pZhHybCg9220ZcWaFHmdhdtgL7uX0
         GzVGn9q4gucNRzLEF6KNk+tuz3QJx90ULIITHCbzCPG+GqFjX44XZ16Ox4HjpZQbOk8j
         CeyBaahP7PrKK5G/tbVPlozohyxxznoJcsVPiipMorvRMKgx83ztEu53BHlMLZGb+Kq2
         nGAPZFANgtRul0vCvrffaArJwB+b//VUBW3eBaA/oX3h0ImsGAM65/vzr/EXF48NyPLA
         j7NWQsHT/UQ3k4UJfB+JOHx+/qHTkME4R/henourbXitMM2h6zMTxOdhJszQHGopePiB
         TybQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2icEmtGvYRr7cuOIKxp7VhXs3MkFEVlijni1gNEmNg6dg0oS/0/d5NkkwpeeLa5vAbOs8faybqbpV1/lvskbp/TnHmFN6ksQNUA==
X-Gm-Message-State: AOJu0YwghsBO6nE1HSD3S4FII1ddD36CxtAjEl7ZDNpByzG2I8hxfB05
	fxzEu1byAhxFeC8UOh6W+3G2pRUVgwITEUcu5aZDE91moWQ1DDQVl2Lh7EzswLPfSrmBHMtA/hr
	65Xs0HWLY2p1VQCJ6oLZbHYGAU4ZHvCMM5AOSUQ==
X-Google-Smtp-Source: AGHT+IHm3baNo2+1Gq1+OTlkkgIdaB3nZkpHkAXBXv54my6/+osPfPlCcucGcfXK1L4Fhnq5gfd/w/33iqAfDwg6mrc=
X-Received: by 2002:a81:c941:0:b0:650:a1cb:b122 with SMTP id
 00721157ae682-66ad94ba0d2mr96488357b3.27.1721733329722; Tue, 23 Jul 2024
 04:15:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
 <20240722-miix630-support-v1-3-a6483cfe8674@linaro.org> <3a257754-2118-4a7f-9753-f1a2392f9279@linaro.org>
 <CAA8EJppvwXEiNs-6orVMSkkjJu4nYY4ZNdshbB1sUM=z4ouYXg@mail.gmail.com>
In-Reply-To: <CAA8EJppvwXEiNs-6orVMSkkjJu4nYY4ZNdshbB1sUM=z4ouYXg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 14:15:19 +0300
Message-ID: <CAA8EJppLz89YCpDvTxaVuRsdb_zvX+FMWi5s5nnmz9sOnf-LpA@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8998-lenovo-miix-630: enable
 VolumeUp button
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jul 2024 at 14:11, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, 23 Jul 2024 at 02:24, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >
> > On 22.07.2024 1:57 PM, Dmitry Baryshkov wrote:
> > > Add gpio-keys device, responsible for a single button: Volume Up.
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >  .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      | 25 ++++++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > > index f585bc8ba2ce..bca309ac0cb8 100644
> > > --- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > > +++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> > > +
> > > +             key-vol-up {
> > > +                     label = "Volume Up";
> > > +                     linux,code = <KEY_VOLUMEUP>;
> > > +                     gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
> >
> > No debounce-interval?
>
> Strangely enough, no. See existing defines.

After more digging I see it being used. Let's use it too.

-- 
With best wishes
Dmitry

