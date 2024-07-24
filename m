Return-Path: <devicetree+bounces-87827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EDE93B1B0
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 15:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24063281896
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 13:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B97158D72;
	Wed, 24 Jul 2024 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IuWNtdrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B00152511
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 13:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721828062; cv=none; b=NKcqRRK5UcPccNKVk1q4ThtmhDXUHwdlxWTyvQ7TGXVCClP/8GEilZrcRf37FcSNIIEJpvG5eddajBeUoX+Kqb185ke18DKrxRsYDQJBHMKcGlNtadoHaVDyXx4+SPLZZ2+Mv5oBuIBUxMlj5wSKJRH/Z2TdYl3Ju/MB+Mxarmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721828062; c=relaxed/simple;
	bh=SUUQmRZ2+Ng08hMBvnZsJP3Ew1XLswHadjWxmeWwjWs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fYH59kmPKTfq1WwjqOYHLSB5jOAQxqWjG/ObZU5kz2X6QyT4Lixg3e7uWSaaz7Hw6+G1TrupNZ1gMmshvBY9azrItRBRVzPSRgHPZ56qJstOdDM0t7sQd6DwcMScf2juevlyfUJ5PSgUguG07Y5H/3f5196+5MqSEZRboYU7ymU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IuWNtdrI; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6510c0c8e29so64427497b3.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 06:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721828059; x=1722432859; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUUQmRZ2+Ng08hMBvnZsJP3Ew1XLswHadjWxmeWwjWs=;
        b=IuWNtdrIJB/MILUxeb4oorGa7CVWlCw3O3q0TqNN4Zwc0v0jD8GBhs06uEGfNJzVSu
         fUKHP0zHKZpzNuDo0wT7NCY9JDYswSqRbdxayxBYlWFtyRBLjLdHUtxF1KiP6gv5TTI2
         5gUXlpl8bKvdKmj8x5juV2ss76HeuT6jSWHWkfIGc1U7/P42hEM05/BX9e0t/5oIDeyo
         A+Luni/dW1CzbPc9XfO+d9K+LhzBfXiHrUatM6a/s6O1C5JYzSVRt8BpliYDZsaMNpat
         2twMK5RlO6OKVmtemG7KAT59k3fsKMyhNxzFkGxDgWVUQTUWcd+4N6Gdm7LkYsKanjpA
         3OJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721828059; x=1722432859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SUUQmRZ2+Ng08hMBvnZsJP3Ew1XLswHadjWxmeWwjWs=;
        b=jJTdAZseH5KN0sKK+/oyoirtifyqsSB/HahotxBAfn6JDRQzsfJK0JI1wj+JM72jFE
         dYoM5hvYfx13v6bH83LfAnP5DrYybO3ZYJiMR7sx+PYwtwMOzjySPHaF4pQa4W2Q+2CX
         lndhLstabf9ft9fJ8PwrkVaDn0H+X3vD3GSqfTgH/2cOmXdLJmMXF8zC3GaP2gNGhwuz
         F81+8GcS9Gjy2DrFNdm5o54mm4o5QnflZcdfEZWHvPPOCDlffJxGejtPhdOgum90Jo68
         6ddz4gYIHMYagE77yKWx1NNSVn2lNMxihc6VmaWWNYcqX60cADYdcw7NFSz9Lc33UQwT
         dgaA==
X-Forwarded-Encrypted: i=1; AJvYcCV67wA3gdiO/KXyVBJaEtSry2yAEnaeRZr9ZUrxege+uy0XmBugBdWd7xbn9BGRpR1vxlC6Z8z7DNJa05O9r9GT3dxM8bbadSu3cA==
X-Gm-Message-State: AOJu0YzB1eDupDFkcv/0kGyiLAfisXU2FOhZSaJ/a1ysfRfwpQdfJAoE
	ClRpZvGaOl4Q2V04fIyTSy3LxlnMPXZIlZerGK0iMQkue4eJRa+mIc6BLWpRV+jVJYRuE8WBlkh
	7q1CR4Aqi4EKCMOwK+o8ojd1iNvPvTAaAfCTQmg==
X-Google-Smtp-Source: AGHT+IEmdGS3kWJwFOXkHdsFDbk48NhySqk+PBrvHOVCdWUgLmQZKnzxI3vscqlPqEO9OwfBwd6wWPGHC+h+ULfhzqQ=
X-Received: by 2002:a05:690c:fcb:b0:64a:7379:eb53 with SMTP id
 00721157ae682-6727d7bca25mr25623317b3.43.1721828054790; Wed, 24 Jul 2024
 06:34:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1721067215-5832-1-git-send-email-quic_mrana@quicinc.com>
 <rzf5jaxs2g4usnqzgvisiols2zlizcqr3pg4b63kxkoaekkjdf@rleudqbiur5m>
 <a87d4948-a9ce-473b-ae36-9f0c04c3041e@quicinc.com> <CAA8EJpq=rj-=JsYpPmwXiYkL=AALf-ZPQeq9drEoCkCAufLdig@mail.gmail.com>
 <20240724133139.GB3349@thinkpad>
In-Reply-To: <20240724133139.GB3349@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Jul 2024 16:34:03 +0300
Message-ID: <CAA8EJprSTfddwT1DxK7_B-bLbqWO7hTWKRfHnN5kxya6GbcmEA@mail.gmail.com>
Subject: Re: [PATCH V2 0/7] Add power domain and MSI functionality with PCIe
 host generic ECAM driver
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Mayank Rana <quic_mrana@quicinc.com>, will@kernel.org, lpieralisi@kernel.org, 
	kw@linux.com, robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com, 
	cassel@kernel.org, yoshihiro.shimoda.uh@renesas.com, s-vadapalli@ti.com, 
	u.kleine-koenig@pengutronix.de, dlemoal@kernel.org, amishin@t-argos.ru, 
	thierry.reding@gmail.com, jonathanh@nvidia.com, Frank.Li@nxp.com, 
	ilpo.jarvinen@linux.intel.com, vidyas@nvidia.com, 
	marek.vasut+renesas@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, quic_ramkri@quicinc.com, quic_nkela@quicinc.com, 
	quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com, 
	quic_nitegupt@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Jul 2024 at 16:31, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Wed, Jul 24, 2024 at 10:12:17AM +0300, Dmitry Baryshkov wrote:
> > On Wed, 24 Jul 2024 at 06:58, Mayank Rana <quic_mrana@quicinc.com> wrot=
e:
> > >
> > >
> > >
> > > On 7/23/2024 7:13 PM, Dmitry Baryshkov wrote:
> > > > On Mon, Jul 15, 2024 at 11:13:28AM GMT, Mayank Rana wrote:
> > > >> Based on previously received feedback, this patch series adds func=
tionalities
> > > >> with existing PCIe host generic ECAM driver (pci-host-generic.c) t=
o get PCIe
> > > >> host root complex functionality on Qualcomm SA8775P auto platform.
> > > >>
> > > >> Previously sent RFC patchset to have separate Qualcomm PCIe ECAM p=
latform driver:
> > > >> https://lore.kernel.org/all/d10199df-5fb3-407b-b404-a0a4d067341f@q=
uicinc.com/T/
> > > >>
> > > >> 1. Interface to allow requesting firmware to manage system resourc=
es and performing
> > > >> PCIe Link up (devicetree binding in terms of power domain and runt=
ime PM APIs is used in driver)
> > > >> 2. Performing D3 cold with system suspend and D0 with system resum=
e (usage of GenPD
> > > >> framework based power domain controls these operations)
> > > >> 3. SA8775P is using Synopsys Designware PCIe controller which supp=
orts MSI controller.
> > > >> This MSI functionality is used with PCIe host generic driver after=
 splitting existing MSI
> > > >> functionality from pcie-designware-host.c file into pcie-designwar=
e-msi.c file.
> > > >
> > > > Please excuse me my ignorance if this is described somewhere. Why a=
re
> > > > you using DWC-specific MSI handling instead of using GIC ITS?
> > > Due to usage of GIC v3 on SA8775p with Gunyah hypervisor, we have
> > > limitation of not supporting GIC ITS
> > > functionality. We considered other approach as usage of free SPIs (no=
t
> > > available, limitation in terms of mismatch between number of SPIs
> > > available with physical GIC vs hypervisor) and extended SPIs (not
> > > supported with GIC hardware). Hence we just left with DWC-specific MS=
I
> > > controller here for MSI functionality.
> >
> > ... or extend Gunyah to support GIC ITS. I'd say it is a significant
> > deficiency if one can not use GIC ITS on Gunyah platforms.
> >
>
> It if were possible, Qcom would've went with that. Unfortunately, it is n=
ot.

Ack.
Mayank, if the patch gets resent for any reason, please add this to
the commit message.

>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D



--=20
With best wishes
Dmitry

