Return-Path: <devicetree+bounces-34606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C5883A4DF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F5A71F22CC1
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33BF317BB2;
	Wed, 24 Jan 2024 09:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Zhk9/IlM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9937C17BB5
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706087190; cv=none; b=lVZfBey0udoWhVnYMy9a13TVvFeliZTu0RiH+vwa0sWn05T7r3NtVrDiijiQbQmlDmYT23bAXaxEZ5AFpO9eIzSs5nA/G3SxHkwiIv/nL/YrjYyztFVCPO/H6BUsnN9uy/r5rL3docsm5xeeTRtQaUKpzPuzevVUsW2/bW/DXek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706087190; c=relaxed/simple;
	bh=SvgzQJOVzKFyo5y2yWHlyqTgiruwQ3Jo4sTlJ8GKWt8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MbRgkXyzpcZHFJ0lHq0Kr/hT+qHhrfcdXLYzt9cuXhOnCqExdVQqNM/wCDTU4p6q+YUFnag4zCLR5q1JLIWjzIb/3EJF36d1Mx07US54YvirF55auHyXyXdo3c7K/pgy2Cqb+euBD/zP1+nKEK3BiDABGhrNTjLbNBVIK9Kdg18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Zhk9/IlM; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-46af87380c7so419449137.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706087187; x=1706691987; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ztK8J8dy9UJ3zTKlyFYgnCK60E5swTIPybg3C/yykI=;
        b=Zhk9/IlM+eJFgWIBIv1CEVTDz4VLq7Tz2yASdIe5ahp/3ECMDFfpeSs2jukphuHmxC
         1kRBZQD4nh0hReUumhORV2C/1tMcvGnswCgGpsuZh3H3qaFMBLX2fMIBfo/LD9Gc7+r/
         dEwt+d2e/8VQs2A3EnK3vzYCGdqyOqzs1WiARiCo/VWy1n3qGRsf25Q4MTTZrAdnK1tB
         5gsuhtGWsyVolarg2lLn4ZJEvAbLOnjPBZWyDN0DfQkFIxifQSU7Eps5SlgDrS8Zty1k
         dYNSnmoruho4ETnheWGQvQ4qVbYWGFr/AGP5ln50uQg2jGTDw2dopRBLxdbMJv6pBa2h
         tVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706087187; x=1706691987;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ztK8J8dy9UJ3zTKlyFYgnCK60E5swTIPybg3C/yykI=;
        b=mQswpctoqC7vQ/34ZYJRt+/iqGSmS2f1JPDg3xadAHagbSo0GO5dw1s/0yp1uimSt0
         ShnC6GI70gCOA66+SpN/f33c7zaU9JQTAsgH5AqFNJ0PCAU4SbPEZMglMbjmCO1oa7Xo
         MoMue8pXTkXi7KtJXOzzzI+UM41Ry/L+3s6qTpMNM/e8eu3/acv5dlgYJgbk/rKjG9dL
         CigKh4BfwybtNWJ6VUSyI5llTYgjwZ7mChrNQLM6oa+xj3lwUI9IJdf55/KiwlZQFu4N
         hQ6MM5gdgu2MRGF3EC9AcjjI+pzLiXmY9B9q0m7rbdCYW3ThWDCS17AnWPIArPJpa2tr
         lTCg==
X-Gm-Message-State: AOJu0YyWbFVCAbRUQy3b2e9Du61YvEbuL0yu27FlZqSsHS1jR+jZ6bZZ
	xlh1wJGI9JQS5/kVdnP3v4Hi6mQe+q2rWtsfNEnUQlAhMSN6lgkwWBcKEIquqALd31wSaeZvuu3
	mUABDLUxxmnzYtjY9j3SyeJ6eXu229GXrN+u11w==
X-Google-Smtp-Source: AGHT+IFmlZa8u1vWsikjPEa/ZKvG9X/VTqqnRlaxfxP/RqrWVVKEcn8oSxoOrEJ8CzuIeRSGacDYYe0KzaF1QGEiD1E=
X-Received: by 2002:a67:ec4c:0:b0:469:a699:3273 with SMTP id
 z12-20020a67ec4c000000b00469a6993273mr4574253vso.1.1706087187440; Wed, 24 Jan
 2024 01:06:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122182158.69183-1-brgl@bgdev.pl> <u5kvv3iip552yb5ykc4t2arfry2t7f34hwmemd7z6qfw677fs6@ldlwoycyacrm>
 <CAMRc=MeT08vUUqJmtVCP=kSUrbsoKFHP6gHgJPtqztC593oGpQ@mail.gmail.com>
 <2d36zymagbran5m7ggcmy2zmtpt7xpefgys7rebbwydz5bpux2@svlv75ctdow5> <6786954e-096c-4216-94a4-71f090d7eead@linaro.org>
In-Reply-To: <6786954e-096c-4216-94a4-71f090d7eead@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 24 Jan 2024 10:06:16 +0100
Message-ID: <CAMRc=MckG32DQv7b1AQL-mbnYdx4fsdYWtLwCyXc5Ma7EeSAKw@mail.gmail.com>
Subject: Re: [RFC] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 4:49=E2=80=AFPM <neil.armstrong@linaro.org> wrote:
>

[snip]

> >
> >>>> +
> >>>> +             regulators {
> >>>> +                     vreg_pmu_rfa_cmn: ldo0 {
> >>>> +                             regulator-name =3D "vreg_pmu_rfa_cmn";
> >>>> +                             regulator-min-microvolt =3D <760000>;
> >>>> +                             regulator-max-microvolt =3D <840000>;
> >>>
> >>> These limits should be applied to &vreg_s2f_0p95 (although I'm just
> >>> guessing how this maps to the upstream supply...
> >>
> >> I'm not following. Why?
> >>
> >
> > Are you saying that the PMU contains a set of LDOs or similar that
> > alter the voltage from what's provided on the external pads?
>
> It's what I observe on WCN785x, on one side we have the usual VDD_AON/VDD=
_PMU/VDD_RFA/...
> and on the other side the WCN internal PMU generates the VDDXX_PMU_XXX vo=
ltages that
> are consumed by the WCN785x again.
> The schematics is clearly split into different entities of the WCN785x:
> - PMU
> - VSS
> - GND
> - PWR
> - CONFIG
> - GPIO
> - RFA
> - PCIE
>
> Neil
>

To be precise: it's page 33 of the QCA6391 datasheet and it defines
"power inputs from host" and "LDO power outputs" with different
voltages.

Bart

[snip]

