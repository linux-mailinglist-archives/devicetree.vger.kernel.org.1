Return-Path: <devicetree+bounces-44892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3E185FF72
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 18:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6F4F1F24F93
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 17:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1898C156979;
	Thu, 22 Feb 2024 17:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kL2z3nZO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B50C156977
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 17:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708623150; cv=none; b=j/R6/wArk5y3YKMmpHVpq/F3syjoX/KC35a1E31n1BuoDpeij7uIBTAGfA++HCzpOaYvVaM00Rg5u176QyHE67u4AaNFu8V/DoFQTIVjV5d28v/OzfjjBw8b77WOr87jlIkAKL358cqX5OdWpGR/cKrBElyvCqcIGWILrEgur/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708623150; c=relaxed/simple;
	bh=XoXX/VGE3vTnIw/F8JWFhSua5GxofxdO60mrbzWRe4U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=szDbIY+uG3HWEu3OpBQYzV4MEhy9P3yzrRfxzdHu1uaCcDUA200dLHAbKYG5eENi2TTL3NWOErE1ZwehAZxYaTm+hqJbLImzPzA/qOHMI7QhZ6E7HkgF1YbLIp7DiCNSSYqeeLv0sv5xNa9W9jyy1nFKUXnr6KXJ/nUaogghcjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kL2z3nZO; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-607d9c4fa90so84606847b3.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708623147; x=1709227947; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uHYuztdiqcnoWxT8IYhA0vORd3mYh+h0ETbBCJU2hFs=;
        b=kL2z3nZOztxBINmjthIYNqVOy3nfyv/QdwJy5XKPUavBawjUiJABSK0rke1Q7dk2OC
         5xRwENisjn6J61ztzxE5N37C6bKsqFg6x8aDlDUVPBBKkReDoPj1gGjEtCqp+Pw5b43/
         mTXqPi/lMZ7bZjrLhp0PJzTCjQ9i6809PRR8tRDlnGXPle8q3J2KUetLO69vjGGV60UZ
         7UpZYS7/R3OFBD+x5eS5seyg30f7WQlTiT42qsJBbzIQgwDFe2BK4THRJqZI51PaUm6x
         lA23xd5eLA6c0uVSdHs8ZWLptddS+pSNR9cBmfULeT9IlUdmIa9tXnO3q2vZaomGw3C1
         lE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623147; x=1709227947;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uHYuztdiqcnoWxT8IYhA0vORd3mYh+h0ETbBCJU2hFs=;
        b=BcDW15tQQGwQZbUiEaiTxV1oO+l0k3oviQh03t6rrBq8RYzvMOX0L9YxfD5dUkUj1B
         ldKdXoC/0V9Rohi9XLTBl7pCFtBLRxiU293N9np7oYthPgNktW8omIG0nATgdhEwo3HC
         EXU4MZwGO/vmSvTcAPcze1k80rAA2wZRd6v22VzGsTh25B/pljGN9h9xDhRb5UC2kSVa
         jB70VWiUUTFIb34trEld+unE1Mb91GwHFvbfFmPrgHz8vUCGxGg6VGK5aXmQnLRHxvq1
         vhROdaSJ4lC+XY5iLFiFOLi3ZKgwu0LHaD6Hyr6UP6s+nsF8KmGzpiQtcIMLBbaDVciQ
         JU6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVAnBobGz4M4YG7oDCfefx5sl5EzWiYtMP+dK7Kk57rJXOvhwlyIy2nbPP4/5ntWPJgyf8Xq4Cu9QkJd0271YN8mt5J0EQOM4xPww==
X-Gm-Message-State: AOJu0YyyP2v1ovmSy3LFREt+EUSyNDSk0dPlQuWc7CiEweT0b1pej9Xn
	fHcZVpM3wjNC3ZvGRWQcXBa6WK6FSZVqtbMo+ePXBN9fxqm9VTPb39U3RLrkPX8lvT80YID7Pv1
	u5v/vsWhea7w2ZzePpHtAhPhn7r04J+N06NLLmQ==
X-Google-Smtp-Source: AGHT+IEChpsE7RSvYtvlDilze7tlEfcebE5fWeV9v6TUsqyy6KJBLB0hOKOdzrs9KYPLmaKn2wbmU4LNaaPxNFAv0eU=
X-Received: by 2002:a81:6c0f:0:b0:608:7488:8691 with SMTP id
 h15-20020a816c0f000000b0060874888691mr6826857ywc.38.1708623147287; Thu, 22
 Feb 2024 09:32:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com>
 <20240221-rb3gen2-dp-connector-v1-3-dc0964ef7d96@quicinc.com>
 <CAA8EJpo=9vhM+5YzaFxUoYRuEWQyrMS8wLNPSF3K=bN5JwWyDw@mail.gmail.com>
 <8313a7c3-3ace-4dee-ad27-8f51a06cd58c@linaro.org> <CAA8EJpqFj5nf8d_=Uoup7qg+nQrxqQU-DHbL3uSP138m9AcXLw@mail.gmail.com>
 <8fcb5816-2d59-4e27-ba68-8e0ed6e7d839@linaro.org> <CAA8EJporaUuddHHqpyYHiYSu=toHmrDxSHf9msZUJoym4Nz72g@mail.gmail.com>
 <20240222150423.GI2936378@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <20240222150423.GI2936378@hu-bjorande-lv.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 19:32:15 +0200
Message-ID: <CAA8EJpqd=1KV_dN8AURQDcFDDyO+YtbC59gM7ftt+HohGM93hg@mail.gmail.com>
Subject: Re: [PATCH 3/9] arm64: dts: qcom: sc7280: Enable MDP turbo mode
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Douglas Anderson <dianders@chromium.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 17:04, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> On Thu, Feb 22, 2024 at 11:46:26AM +0200, Dmitry Baryshkov wrote:
> > On Thu, 22 Feb 2024 at 11:28, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > >
> > >
> > >
> > > On 2/22/24 10:04, Dmitry Baryshkov wrote:
> > > > On Thu, 22 Feb 2024 at 10:56, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > > >>
> > > >>
> > > >>
> > > >> On 2/22/24 00:41, Dmitry Baryshkov wrote:
> > > >>> On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> > > >>>>
> > > >>>> The max frequency listed in the DPU opp-table is 506MHz, this is not
> > > >>>> sufficient to drive a 4k@60 display, resulting in constant underrun.
> > > >>>>
> > > >>>> Add the missing MDP_CLK turbo frequency of 608MHz to the opp-table to
> > > >>>> fix this.
> > > >>>
> > > >>> I think we might want to keep this disabled for ChromeOS devices. Doug?
> > > >>
> > > >> ChromeOS devices don't get a special SoC
> > > >
> > > > But they have the sc7280-chrome-common.dtsi, which might contain a
> > > > corresponding /delete-node/ .
> > >
> > > What does that change? The clock rates are bound to the
> > > SoC and the effective values are limited by link-frequencies
> > > or the panel driver.
> >
> > Preventing the DPU from overheating? Or spending too much power?
> >
>
> Perhaps I'm misunderstanding the implementation then, are we always
> running at the max opp? I thought the opp was selected based on the
> current need for performance?

Yes. My concern was whether the Chrome people purposely skipped this
top/turbo freq for any reason. In such a case, surprising them by
adding it to all platforms might be not the best idea. I hope Doug can
comment here.


-- 
With best wishes
Dmitry

