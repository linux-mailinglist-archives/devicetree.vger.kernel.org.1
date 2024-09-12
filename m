Return-Path: <devicetree+bounces-102380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF92976C9E
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCD601F225B8
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 14:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5141B4C26;
	Thu, 12 Sep 2024 14:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h+qzh1ii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F400C210FB
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 14:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726152585; cv=none; b=eUsHBHS7fzxPgtXxmGmzz+VAuK2gbbJZKxjoFcQNs944b/PVaW3KZn4xFMTsxyq68ak25ZrTyJeZ2G8B3966eS866QYL9NPGir6HNJ2YqLWJe//kCtkDgyefEPCBJC1gzbOgvPPeazMAgUJ/7wXFN8vsvwD1Q0epCtVGCJISmGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726152585; c=relaxed/simple;
	bh=2sYEXediN52kSljXl1Ler+JGcwYjaz8Qt5oRB8w8bhQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jj9pLxpwsIcJr9n/s7U1amTvWKF0cA+YNZgEcjoaEWDR7QEz2muRhcCKz46b35GVCnW0k4TSHghaqhO1yJ5NxU4NRKp9tMD0VCxjrBxPTTUXPdq1P/MvIr8coy65U/44xeaX8ndfVIOxSnu13HgZvy+LubB1IztK2Xv2dpSVQEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h+qzh1ii; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6d7073a39dcso20126967b3.1
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726152583; x=1726757383; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2sYEXediN52kSljXl1Ler+JGcwYjaz8Qt5oRB8w8bhQ=;
        b=h+qzh1iiyx57msrHUANixZsIKV/FP5DRmaLrSOVwntNZWCtD/1mTI/QgX+fBpI82bm
         aJ9SGi0OBVSgTlmM4FyHPPErRBDFHEvOgaj5MJRUAsLQKDiPQp9/8UIsK/2t3sNBaEAc
         vDfbb8w+ln96NqHsScjYNvhZDJ+/4qm+6z4Y0ny/DMqWPwg2cG3MqxSWTA0V7LiU9LMb
         HWTRoeodWhLjJt5AhyhbbeDSzG7ik1q93+RJbByN06w0A5hkGAsoedrKI+Bb5KeQ1Gy7
         d/Jq+pmXvr2dpoenVXJ2B8qnquXavnYOYBQN477b1GvB0xpMra/4mc7c7GfCOQZiR/IB
         o0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152583; x=1726757383;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sYEXediN52kSljXl1Ler+JGcwYjaz8Qt5oRB8w8bhQ=;
        b=UCIP192lJtxLPgpX7JpgI6ab6OZfc7kvRbtVM86Z/r3A3iXfDUAo008eqZ6kwb4xGE
         6l3TcknWKPTivOGNr0iIYUkRafFKlRUWNOQeCOtqdLcEACqCrVb7t5u8imlImwepRcBz
         lCHi/lu/dSIMH5Y9ejxjtb7S6+rqBNtcB9VkmBSAIiAnwdNcW6ObF5A0wfds+9228Wvw
         H3p3XiC5T7kqxsgg3XAYmN52Sq/BNjRupJksS3SEcbo8OdM23dZR8pORq5lWfpybXw3S
         kBEjXqUUMq8PfUFyoAYYfIqrJA01oD8IIajyTuByGZj6vRNshrgB/eqLEAmTt9Jt5MF/
         Qrnw==
X-Forwarded-Encrypted: i=1; AJvYcCWbzv7AC//zh6kK+XQGneU2b6GB8u3WKqFGfPbBZwp/tAuU8ok//96s+WH50bjh860WKw7RuXuaPwJe@vger.kernel.org
X-Gm-Message-State: AOJu0Yync9wAKZPoStDRcUQfck4NBSYWPJByeEoMQ+i2nWu5Gogp5T5I
	8dYeL1H2CS18aiRgj7ZOojKit1o45U9x0aY/vpy5YBcnhSmF3lzjEpdtKQQWzxWz9GKP30GyfHi
	Qf+0YwrzbmOpTX2xcc7gex5cq5Mal+NZtVLXHmA==
X-Google-Smtp-Source: AGHT+IE2KRM0NoVbC2puhshNbVNwKJPWz+ICZnqayewbZXPGTeWmAxNTUENEBP7DBBZHS7uwEyDNePXQxVX5eOsi/TM=
X-Received: by 2002:a05:690c:4483:b0:6d5:e768:4779 with SMTP id
 00721157ae682-6db9542f7cbmr78436847b3.22.1726152582673; Thu, 12 Sep 2024
 07:49:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com> <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad> <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
 <20240911153228.7ajcqicxnu2afhbp@thinkpad> <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
 <d5468dd2-0f81-4d89-a3bd-a546b2395ca6@kernel.org> <20240912144439.fnne4x7qvggveve2@thinkpad>
In-Reply-To: <20240912144439.fnne4x7qvggveve2@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 12 Sep 2024 17:49:31 +0300
Message-ID: <CAA8EJppSFb+Me6w5vUpmbogQ4DS2=15FmHu4nzGz2POWQPouwA@mail.gmail.com>
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	abel.vesa@linaro.org, quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 12 Sept 2024 at 17:45, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Thu, Sep 12, 2024 at 04:15:56PM +0200, Konrad Dybcio wrote:
> > On 12.09.2024 3:39 PM, Qiang Yu wrote:
> > >
> > > On 9/11/2024 11:32 PM, Manivannan Sadhasivam wrote:
> > >> On Wed, Sep 11, 2024 at 04:17:41PM +0800, Qiang Yu wrote:
> > >>> On 8/28/2024 12:58 AM, Manivannan Sadhasivam wrote:
> > >>>> On Tue, Aug 27, 2024 at 02:44:09PM +0300, Dmitry Baryshkov wrote:
> > >>>>> On Tue, 27 Aug 2024 at 09:36, Qiang Yu <quic_qianyu@quicinc.com> =
wrote:
> > >>>>>> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. He=
nce, add
> > >>>>>> support to use 3.3v, 3.3v aux and 12v regulators.
> > >>>>> First of all, I don't see corresponding bindings change.
> > >>>>>
> > >>>>> Second, these supplies power up the slot, not the host controller
> > >>>>> itself. As such these supplies do not belong to the host controll=
er
> > >>>>> entry. Please consider using the pwrseq framework instead.
> > >>>>>
> > >>>> Indeed. For legacy reasons, slot power supplies were populated in =
the host
> > >>>> bridge node itself until recently Rob started objecting it [1]. An=
d it makes
> > >>>> real sense to put these supplies in the root port node and handle =
them in the
> > >>>> relevant driver.
> > >>>>
> > >>>> I'm still evaluating whether the handling should be done in the po=
rtdrv or
> > >>>> pwrctl driver, but haven't reached the conclusion. Pwrctl seems to=
 be the ideal
> > >>>> choice, but I see a few issues related to handling the OF node for=
 the root
> > >>>> port.
> > >>>>
> > >>>> Hope I'll come to a conclusion in the next few days and will updat=
e this thread.
> > >>>>
> > >>>> - Mani
> > >>>>
> > >>>> [1] https://lore.kernel.org/lkml/20240604235806.GA1903493-robh@ker=
nel.org/
> > >>> Hi Mani, do you have any updates?
> > >>>
> > >> I'm working with Bartosz to add a new pwrctl driver for rootports. A=
nd we are
> > >> debugging an issue currently. Unfortunately, the progress is very sl=
ow as I'm on
> > >> vacation still.
> > >>
> > >> Will post the patches once it got resolved.
> > >>
> > >> - Mani
> > > OK, thanks for your update.
> >
> > Qiang, you can still resubmit the rest of the patches without having
> > to wait on that to be resolved
> >
>
> In that case, the slot supplies should be described in the PCIe bridge.

Patches 1-6 don't seem to depend on slot supplies, so they can be
submitted separately.

>
> - Mani
>
> > Konrad
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D



--=20
With best wishes
Dmitry

