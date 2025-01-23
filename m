Return-Path: <devicetree+bounces-140457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F1BA19E72
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 07:25:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9282160756
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 06:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 279951ADC79;
	Thu, 23 Jan 2025 06:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ns37gBrb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C516170A11
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 06:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737613521; cv=none; b=f4aCFOYnhsANdYwrxLsG/FY61Eo2ixT7VnyYTVUNUMS/rOKG+n6j3FrMQuzGq6HXlsxETcDoSxoIO/ZP8QtSwHlv9/S9FWe8Y+W4zBR5TlYS09ucLu2RpRYbNwZ/qOKRxLcrEm4u/zvBIq/fRLGUELI3302vF06r+gmqF3EiI0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737613521; c=relaxed/simple;
	bh=9bwYMmAg8VWivh0Q28h6rvauGMF0XnNE+msNjrnFeNE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kpfgHwbGa4wvB/9ydQymzhPJPMEGTuFBASi59GIzvC476z7WdVpG3nu+FhzjCYyvF7znlW9zTQbqZv7kZvuzDzr4yOC9+7vL3EJUtc698tqU0bVMoKx3fdSBqFaBxu+q1qLtpiwIPzltCElv+c0NbyAa9S04g7WNFX1MQhBOaXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ns37gBrb; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5401c68b89eso615128e87.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 22:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737613517; x=1738218317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bwYMmAg8VWivh0Q28h6rvauGMF0XnNE+msNjrnFeNE=;
        b=ns37gBrbH5gK6PRyJf0MUJLTH5OtOrw40ngYIBfphboR7KSYrFT0k9SOdvvJjWpCZC
         D+Ecf9W+PHrl7DqvrjwICdSfFhhJOx+3zDsHMPtP3bEcKgJA2sBbY8iqDgrqGfbgkl9Y
         ZhlOqv1gfecKHk3xw8nI5M6XoEmh5F1G/Za00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737613517; x=1738218317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bwYMmAg8VWivh0Q28h6rvauGMF0XnNE+msNjrnFeNE=;
        b=ehxohRXt/rAkqH3x5bODpEXzEcQkOH3kvJCAjS/cw5yfd0GnTG//WTubiTjDVlnFRJ
         4oeBsl0rncc4gvBYESE/Z+FbVz5khhdP5oQiU14aaSPLcQM3BrYjsMrX4SKQ8TgKZNNB
         Oy3h8feBM3SMmJqE2jfPfZOEeuTbU2tejSy52/zIvP+NZVsw4V9NxrecVH8eCrjhd3VD
         7EDFanvRRhGUS0LhAEWqp9E9zEOu45MB5s4tLnhqku2/+DYDmf1WfXIvK+Jklv+CBvI7
         Ji6z/gP5djAmgOqvnfrNamZnU6Y+njmqmtTzn0psAP2Kp3ou+0h1veS4vN3yIe84hjmo
         NaJg==
X-Forwarded-Encrypted: i=1; AJvYcCUgahYmv+u+ugIbnChZNsXPjlRo5uyOCAlI+KhWPOTyaPl/yRTWicu66yQ9f5tOGAtBpuzJEItFQ/RE@vger.kernel.org
X-Gm-Message-State: AOJu0YxyfSMStNY0JkuK/dnlyClfUfvAVgPcyD6IhUV1GFz7CHdq6DtT
	Bt8Nb/QU7Ec1QAlJoCEoIpOt6csAlcF3PlFMneUGxMjg6BeSYegEiB2f/zaIKg+cl8XBX0+7e+3
	u1fBJdTMjhX17LWfE1enEocyQkqcV0NIYkXY4
X-Gm-Gg: ASbGncvVg8S3+FujcYGlFXtcDyHDNehfIGG1Mu7oUmTCNGtbQnbeQ/YWv1CaNrYXed8
	TejixWLweHqWvJWs4snP6sLNJPDeP83V2V1kxtWFn3g4Ki0IZL0VqF/eWdGO+Wp3lddxXzbw5kb
	2DK1UBLbc7+P3RgWeASA==
X-Google-Smtp-Source: AGHT+IFjV1nbatIBQFwYYLMA1abMLSRNx+Lvn+/q0MRJLEjGc9mVSRrS+HUSZbvSas2ijuwobcEMUWdONKDCpspTIUU=
X-Received: by 2002:a05:6512:128f:b0:542:8c7f:cfc1 with SMTP id
 2adb3069b0e04-543c21ff387mr771068e87.3.1737613517221; Wed, 22 Jan 2025
 22:25:17 -0800 (PST)
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
In-Reply-To: <b9405b09da418eb3c65592b53489d7f0dd4093f2.camel@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 23 Jan 2025 14:25:05 +0800
X-Gm-Features: AWEUYZkP14TqYWMXYt98_YoyRL5G3Oss74IUQkNsE40hMbKns2HVZ7v-H1NK9Uk
Message-ID: <CAGXv+5EhG+xnJmYj6kYp2hzgkX62HfxRUJZKc4_X-s09aBMvrA@mail.gmail.com>
Subject: Re: [PATCH 03/12] dt-bindings: display: mediatek: add EXDMA yaml for MT8196
To: =?UTF-8?B?UGF1bC1wbCBDaGVuICjpmbPmn4/pnJYp?= <Paul-pl.Chen@mediatek.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>, 
	=?UTF-8?B?U3VubnkgU2hlbiAo5rKI5aeN5aeNKQ==?= <Sunny.Shen@mediatek.com>, 
	=?UTF-8?B?U2lyaXVzIFdhbmcgKOeOi+eak+aYsSk=?= <Sirius.Wang@mediatek.com>, 
	=?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>, 
	=?UTF-8?B?WGlhbmRvbmcgV2FuZyAo546L5YWI5YasKQ==?= <Xiandong.Wang@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
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

On Thu, Jan 23, 2025 at 2:11=E2=80=AFPM Paul-pl Chen (=E9=99=B3=E6=9F=8F=E9=
=9C=96)
<Paul-pl.Chen@mediatek.com> wrote:
>
> On Sat, 2025-01-18 at 10:22 +0100, Krzysztof Kozlowski wrote:
> >
> > External email : Please do not click links or open attachments until
> > you have verified the sender or the content.
> >
> >
> > On 14/01/2025 06:49, Paul-pl Chen (=E9=99=B3=E6=9F=8F=E9=9C=96) wrote:
> > > Hi Rob
> > > Thanks for the advice.
> > > The root cause of the erroneous log message is due to missing
> > > power/clock dependencies.
> > > Once the MTK clock/power header file is upstreamed,
> > So this cannot be merged.
> >
> > Decouple dependencies or wait with your submission till depenedncy is
> > applied to *LINUS* tree, not even maintainer. Otherwise this breaks
> > maintainer's tree. I really suggest decoupling.
> >
> > Best regards,
> > Krzysztof
> >
>
> Hi Krzysztof
>
> I hope this email finds you well. I have a couple of questions
> regarding the EXDMA commit patch and decoupling:
>
> 1. Would removing the example from the EXDMA commit patch be sufficient
> to achieve decoupling for EXDMA YAML and MTK clock/power header?
>
> 2. If removing the example from the EXDMA YAML is not allowed, what
> alternative changes could we implement to achieve decoupling?

Just replace the macros in the example with the raw numbers, and
drop the inclusion of the header.

ChenYu

> Thank you for your time and expertise. I appreciate any insights you
> can provide.
>
> Best regards,
>
> Paul
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

