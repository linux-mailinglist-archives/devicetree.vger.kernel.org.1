Return-Path: <devicetree+bounces-140606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B01A1A7BF
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 17:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDCD83AB0DF
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 16:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA3C211A03;
	Thu, 23 Jan 2025 16:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K+vuElEH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58B62116EA
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 16:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737649260; cv=none; b=Qlfkjv46JS2yacbHvmHjjiFZo+EIfU5ShoeqXF1Bhx/i19j6O/W/MNGcj+NPErZSS7HgJL3Nwr2onFMIDfb0c9HWgXYRvw7kCC9/QmJKcu+Oh7UzWIPA5Fk5Zt4oUfkV1BSF6r3/XYFku/zJNaRQE2R2Y7Nl3sC2pfXA8qhqARU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737649260; c=relaxed/simple;
	bh=oy9T2x2+MBmD3OnnRS+yi2mR65j8O3Q1ZOmRzEM4vhM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hmhsg9iSam/ZTuwtDkMMTep2Z5VD21xPaQqMFwD8YYQaN8FBSvGavF8FreQI8EQ8yRQeVKeakDyL+8xxsfqzO73LPgcGvAWkYthDrzqq88CMJw3KRMpkpl200kCBHoKxrsjVVwBOwu/0UhbC4LzBw07hd5ZPfwW1kYqquqArXB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=K+vuElEH; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53f22fd6832so1203678e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 08:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737649257; x=1738254057; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dP4iIFxpGRxJIuWg8fbKde8yqpGCy/LbovICFuWMxcc=;
        b=K+vuElEHv4POWt8pe790n7fyVxiZEWiNWHXfWXREXUO8Vl1IvhLHz2ubdU5EQVEasH
         vcr+ZORArzIvD9LHNBqvqjEVM8zqQ7Apk4uqatN3lqXiVpZA056xFocrR4DR8GnKf5p/
         nDTANDUNDgOUQubove+L3aDtrYOq7S4Uvq74I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737649257; x=1738254057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dP4iIFxpGRxJIuWg8fbKde8yqpGCy/LbovICFuWMxcc=;
        b=dRY1EN5cKDNECcI5sXXccFNLYj9+efJeppD4xbW4VixRblC5d9UGraJlTLsgNdm+tF
         eRUD9D1uTzpSSQICuqvweXkfrhRbVbvAwyJJ3041srFfDBmJzobj9s7ycCr5TWDDcTLb
         MlH4jsYyVQ/+CDM47ELcmezEiIYfbxCSotZtVj8sv40awW99yim6SIfSEwdOMQA20ylZ
         EQSRNA9Tc+vKgjunzFRyJ/r7AE7fwCHLjDt7DdS0J47JoCJUAgsv/XYlR+ofY1EMnSNe
         aRvme6oqMdIsuuyk9hsZepyKbZDIFisr2ad71H3xcgdmikOSTczNBaF+7BAY0BRnDf1x
         aKFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8R6s/gahNrGg8BqYwFM25vHASUtO9U7sOtZH6FPij8uynpH+zWs+dS7XW4Q50myMVmJqgAWYanOQE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9P+V26YbJhJ1badyAlNjrXweYvu7cDYqlP6TrxVwag7vZn7eg
	cxk0Gj+MRdK4rtIimEHUJTWoizFAlIe8gOTftw8lUIKdbi4SNjxyU2F5NwwX7onekPlumivyH3i
	elLzYbqQKsB5NOYUToUXuHflxPIQsFXfh3jfD
X-Gm-Gg: ASbGncv4Gph0317q0/3az5m+wIaSq0AwSYUsR+X4PruJjfyzuXVB0hBvkAzRFHumVkI
	OIlVYeKcv2UYdjBV96475HSZtdiHUXv5GwKMTe3p9aXhpnHFyAIaxUK05IQG812/uYwquxOuurJ
	6HxRv8JCzow7NQG663Pw==
X-Google-Smtp-Source: AGHT+IEKUB561xRTvYxXd4p0qNfpMRKfCZE8QX0G+Jn2kD2LonKgpFupCThYaQ1M0nTLUAE+dgJAYJFA1Lqm+sRFeOA=
X-Received: by 2002:a05:6512:124e:b0:540:2549:b5ad with SMTP id
 2adb3069b0e04-5439c246d35mr9447895e87.22.1737649256790; Thu, 23 Jan 2025
 08:20:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
 <20250110123835.2719824-5-paul-pl.chen@mediatek.com> <173651725269.2671643.2891127782637834272.robh@kernel.org>
 <SG2PR03MB66367B4A9DBCC971F55DB326BC182@SG2PR03MB6636.apcprd03.prod.outlook.com>
 <d116e180-a056-4595-851c-ed1bb6f24cef@kernel.org> <b9405b09da418eb3c65592b53489d7f0dd4093f2.camel@mediatek.com>
 <e6fd5225-b437-4f3b-9835-f206ae4b9d2f@kernel.org> <843f2dcee012007572f41df991e52369c1e5ed22.camel@mediatek.com>
In-Reply-To: <843f2dcee012007572f41df991e52369c1e5ed22.camel@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 24 Jan 2025 00:20:45 +0800
X-Gm-Features: AWEUYZkfWBp2Lo-8TZn9tTq4YyIX0WXHpEKOlB7N1Mjjx7XBDKyByJYKaE3h9KI
Message-ID: <CAGXv+5G8C8F5ua595Z3zs-D4vUP6YSUaxaUTGPQY-kfZ6am61g@mail.gmail.com>
Subject: Re: [PATCH 03/12] dt-bindings: display: mediatek: add EXDMA yaml for MT8196
To: =?UTF-8?B?UGF1bC1wbCBDaGVuICjpmbPmn4/pnJYp?= <Paul-pl.Chen@mediatek.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>, 
	=?UTF-8?B?U3VubnkgU2hlbiAo5rKI5aeN5aeNKQ==?= <Sunny.Shen@mediatek.com>, 
	=?UTF-8?B?U2lyaXVzIFdhbmcgKOeOi+eak+aYsSk=?= <Sirius.Wang@mediatek.com>, 
	=?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	=?UTF-8?B?WGlhbmRvbmcgV2FuZyAo546L5YWI5YasKQ==?= <Xiandong.Wang@mediatek.com>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "fshao@chromium.org" <fshao@chromium.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	=?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, 
	=?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "treapking@chromium.org" <treapking@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 24, 2025 at 12:14=E2=80=AFAM Paul-pl Chen (=E9=99=B3=E6=9F=8F=
=E9=9C=96)
<Paul-pl.Chen@mediatek.com> wrote:
>
> On Thu, 2025-01-23 at 08:21 +0100, Krzysztof Kozlowski wrote:
> >
> > External email : Please do not click links or open attachments until
> > you have verified the sender or the content.
> >
> >
> > On 23/01/2025 07:11, Paul-pl Chen (=E9=99=B3=E6=9F=8F=E9=9C=96) wrote:
> > >
> > > Hi Krzysztof
> > >
> > > I hope this email finds you well. I have a couple of questions
> > > regarding the EXDMA commit patch and decoupling:
> > >
> > > 1. Would removing the example from the EXDMA commit patch be
> > > sufficient
> > > to achieve decoupling for EXDMA YAML and MTK clock/power header?
> >
> > No
> >
> > >
> > > 2. If removing the example from the EXDMA YAML is not allowed, what
> > > alternative changes could we implement to achieve decoupling?
> >
> > Don't use the header constants but just some fake phandle.
> >
> >
> >
> > Best regards,
> > Krzysztof
>
> Hi Krzysztof,
>
> Once again, thanks for the review and reply.
>
> SO If we apply Chenyu's suggestion:
>
> + example:
> +-|
>
> +soc {
> +
> + disp_ovl0_exdma2: dma-controller@32850000 {
> +compatible =3D "mediatek,mt8196-exdma";
> +reg =3D <0 0x32850000 0 0x1000>;
> +clocks =3D <13>;
> +power-domains =3D <12>;
> +mediatek,larb =3D <88>;
> +iommus =3D <&mm_smmu 144>;
> +#dma-cells =3D <1>;
> +        };
> +    };
>
> Does this work for decoupling?
>

AFAIK it will since now it isn't including any headers.

ChenYu

> Best Regards,
>
> Paul
>
>
>
>
> ************* MEDIATEK Confidentiality Notice ********************
> The information contained in this e-mail message (including any
> attachments) may be confidential, proprietary, privileged, or otherwise
> exempt from disclosure under applicable laws. It is intended to be
> conveyed only to the designated recipient(s). Any use, dissemination,
> distribution, printing, retaining or copying of this e-mail (including it=
s
> attachments) by unintended recipient(s) is strictly prohibited and may
> be unlawful. If you are not an intended recipient of this e-mail, or beli=
eve
> that you have received this e-mail in error, please notify the sender
> immediately (by replying to this e-mail), delete any and all copies of
> this e-mail (including any attachments) from your system, and do not
> disclose the content of this e-mail to any other person. Thank you!

