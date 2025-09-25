Return-Path: <devicetree+bounces-221250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD029B9E07B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:24:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 629DF2E7512
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89C6270EDF;
	Thu, 25 Sep 2025 08:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qsl01IfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE4E1FE45D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758788679; cv=none; b=l1+/3fsja02udMdux01RYhqLyE9d9VvV1fiFQd5fZaPbeFtN4OnjUY0nyCN5fhT+pVm7Xe5AE+LeZ0W3ZSXK4FzO1abPzHpuMItj39eZcUer28A/LUbv7JiGVVbUe7k9xWJ6Pwc4unKXcGqPV+V5cSzcRZYhz4y5bJIPHl0A1NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758788679; c=relaxed/simple;
	bh=sTAR1grncL68dTEELBlinnV4e/5cxUfPyddmz586pzg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ab5f44l+r5t0JR7eN/nl3EoK9avUka+hwBlMcB6Nq9ML9Fjlbv3yyr80VQDD1CoBd6mqcb5M372vqBprk6aqdKn1GfhwUM4uhqaT9dKOo+jDGrarjgfmygS2Tbr+NrQLoRNeH8+zi0OXui9rPqgJuh+SEEaW55gWl0gVg6OxZ64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qsl01IfI; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-24457f581aeso7698645ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758788677; x=1759393477; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6V4Dh7tKP33MFC/qEDuqzXdiriXrPzKRW29udUVBt0U=;
        b=Qsl01IfIZIZwB76KPIosUg0a6osOo3O4VhTMMtQzMm3PUlzQrQ25k3N+mjZkdQdk7j
         U3QSWNNRUQw9gfs2VJJa+wPSqelUV0CeO2JpBhqMdP8KMAuoGlRViDVRJfW6JpiV0DTk
         owxeS7XD1BSXgegCvu32SWQGef2BnnwPat23VC2jCy+FtOMSYSu5JnHZ2blkjBY8fBSv
         H/vLbYmEi3cju8tJ+wP09mnuF9ssY1tQvZQuNfK5CWtm5D1quLWn3/oql/EPJfsmpEQ7
         bqRLGh4v+LOQ1qmLwKUFnip0J2xgVOvEhvWTUzDeghDenPig91Q677J8vlTdBmgljIEV
         DSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758788677; x=1759393477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6V4Dh7tKP33MFC/qEDuqzXdiriXrPzKRW29udUVBt0U=;
        b=hxGndd2LJ2IIBDPq/gr4VhfxYVmQTxZYrIYRoJsr8wdv/2VdIwySSaIgSGg103t/b3
         RXodd38XFGH68QGk6f0+R+SKqwHPYXfpAiStejFhfhjwDspEYDBB0RgULxaNll3Ecg+Q
         /nNPvnXGbKggnzWCypsYDLt11yX0jMOYHYx+RgwFhzLxaHC5IO6XMleGOPtiweCuSjHy
         NebuKYctHveBj6BMdCCmLUrA6knulDCbQTFM5PppGVIVS8R2dHqwFBggnCdfAp5eRDdl
         yRgAPc2JThI+52z+QLNmOtF0MpyYJqC9Q1nLo28ClMwcj6LfELMMtz+iYZYwWX0pI/1/
         f8Pw==
X-Forwarded-Encrypted: i=1; AJvYcCWnZ7HPN+yQ+ROO8r0X8OPGn+F/lSb1KhBxRx59Qg4nVEfjSEE7KO44tQ55iJgXrinFltQTb7DxF1nf@vger.kernel.org
X-Gm-Message-State: AOJu0YwCsOz8Qd8Bs/Ck939BJKDiBIVkLljj/tG8ZpSihSpEgCMdoqD3
	7O3ycBwAWzulSqs23Fo+sl3aBFvUFXo5jRIZ97pbYyzmvPSmm03r62a4ISHwPe94JgUkLAHTtYZ
	bahdc6JJxNoV3af6acxEhsmMHNhfsPAw=
X-Gm-Gg: ASbGncs3/4UE8604e6ARuXv6yoAhlaMwE1iawUK4+4gu5Q02VJkS0/XgbAt0JUUWPLL
	OOGvl8iFUST2bnB3VuRKc7nUaImKRtKMx9KPMJarWp//WdQ1BbLTHUOnG/wWjBQixE5ymyuiS9B
	XIKU45/IjR2RobAoTOho6y3xTOvRc55NF+a8bQVS9s7VhYAmgEb2b8WiKpCr6phSXgRjIuNFKlI
	HAE6CT2tUALKYKXYfkDMWENoMxsejtv2ovKwzykxkmaa+CB
X-Google-Smtp-Source: AGHT+IGscpAzAZePJIei4M74SY6t3g5clNF77QW53FQZcP/FV0TyOxZ6EHRVDKib2OHnN3hszfUnxw4zg4b0WsneSec=
X-Received: by 2002:a17:903:8c8:b0:267:f099:c687 with SMTP id
 d9443c01a7336-27ed4a29e1bmr33522235ad.1.1758788677041; Thu, 25 Sep 2025
 01:24:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com> <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
 <53d63dd6-a022-4e80-a317-3218976a7474@oss.qualcomm.com>
In-Reply-To: <53d63dd6-a022-4e80-a317-3218976a7474@oss.qualcomm.com>
From: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Date: Thu, 25 Sep 2025 17:24:24 +0900
X-Gm-Features: AS18NWBrs_SxQohXhwS32-u616VxPcXUdBxvUwQGruDi4ncYM81jJN8M3_KFGEM
Message-ID: <CAJKOXPcsVvb2gNUdYYvm2AP90AjGUCGpT9jVU243E7C_N764rg@mail.gmail.com>
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
Content-Transfer-Encoding: quoted-printable

On Thu, 25 Sept 2025 at 16:39, Aiqun(Maria) Yu
<aiqun.yu@oss.qualcomm.com> wrote:
>
> On 9/25/2025 9:50 AM, Krzysztof Koz=C5=82owski wrote:
> > On Thu, 25 Sept 2025 at 09:17, Jingyi Wang <jingyi.wang@oss.qualcomm.co=
m> wrote:
> >>
> >> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> >>
> >> Add the base USB devicetree definitions for Kaanapali platform. The ov=
erall
> >> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> >> (rev. v8) and M31 eUSB2 PHY.
> >>
> >> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 +++++++++++++++++++++++=
+++++++++
> >>  1 file changed, 155 insertions(+)
> >>
> >
> >
> > Second try, without HTML:
> >
> > I really don't understand why you created such huge patchset. Year
> > ago, two years ago, we were discussing it already and explained that's
> > just inflating the patchset without reason.
> >
> > New Soc is one logical change. Maybe two. Not 18!
>
> It was previously squashed into the base soc dtsi patch and mark like:
> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> (added USB), Manish Pandey(added SDHCI), Gaurav Kashyap(added crypto),
> Manaf Meethalavalappu Pallikunhi(added tsens), Qiang Yu(added PCIE) and
> Jinlong Mao(added coresight).
>
> While it is over 4000+ lines when we squash it together.
> Also as offline reviewed with Bjorn, he suggested us to split out the
> USB and other parts.
>
> >
> > Not one patch per node or feature.
> >
> > This hides big picture, makes difficult to review everything,
> > difficult to test. Your patch count for LWN stats doesn't matter to
> > us.
>
> With the current splitting, the different author as each co-developer
> can get the meaningful LWN stats.>
> > NAK and I'm really disappointed I have to repeat the same review .
> Currently, there are 10 SoC DTSI patches sent, structured as follows:
>
> SoC initial
> Base MTP board
> SoC PCIe0
> SoC SDC2
> SoC USB
> SoC remoteproc
> SoC SPMI bus, TSENS, RNG, QCrypto, and Coresight
> SoC additional features
> SoC audio
> SoC CAMSS
> SoC video
>
> Which parts would you prefer to squash into pls?
>
> --
> Thx and BRs,
> Aiqun(Maria) Yu

