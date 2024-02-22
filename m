Return-Path: <devicetree+bounces-44709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FF085F4EE
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C40CA1C240B3
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A77B39859;
	Thu, 22 Feb 2024 09:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pwJMM1Kg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EE038DF7
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708595200; cv=none; b=h7F3yu71Tw2MxEgJpwevNwdhQwBN4MUKlC5W8WvIoMgncOMBPj2NtfwrWbpFA7AHZ3Wt6nX+kq53BbVl5pckOjXbssewn7Kh8VAVOqj/EKCai6q+UL5RIMB1mg0p3XBQvkC/+TMBJ+SJCBR1p/MlS7a7zLjdL9cnot1ZqeZIPng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708595200; c=relaxed/simple;
	bh=bPCV+xnb1Qk+NcS73lqI21dN52imcgJotWmT68p5gz0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QNbge5Ihg1b2Uv0VLuzAu8ONkin7bnTu4VGFLxO/5H8+W5m6dzTCUMzVYCrB7iK6NrksurN9ump+IYt48YSZYNDN1aZqqgViXhI41z6Rtwsydbic8icafUpK8A8qV+MzNDuS2mIWhq7iggfyWwUf+5Abv+h0XEzrmkgn4XIiRHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pwJMM1Kg; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so6930320276.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708595198; x=1709199998; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JrHiV4SbPrNlHGeovFDnwlGAOJlYDpe2wRYcFnz5Qkw=;
        b=pwJMM1Kg351ZaCBT3YrECkJG+hyPYFBHZHDTOpW6+w8TdKKaKoWjQXhgfiQAeqVDtS
         J9vb+bRFaFVPElzAL1rQLjzX6xe6RDsI+UL7EembEkspgS2BZPiKGiSIQviPw/OE2/oZ
         sMJvAYsziXeWepafAgDrugdocNvpbIDQtjixX3rPIR57M76JBg7bfvkvuuUWOymhzP9F
         5pZh2ZlQK53um/05k3+gCqRyCrNlWnSmu70T4Hy8+pxAQCrP6sKDfIoos/+JH5P530Im
         Q0DbOAa13WqEIid/ylG6BjizZGAVEVsb2DzavmRoG4eWzm1BJlPWZ9LipQqmUK6m/WD1
         UOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708595198; x=1709199998;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JrHiV4SbPrNlHGeovFDnwlGAOJlYDpe2wRYcFnz5Qkw=;
        b=dEiJx4ANeUF0OTUCjvwQQSGbBgnl4HAsOjxkcVKUk7nLuxQ3BQ++sIeaP5pEbn9DFO
         HtlrOAhik6/gQi8aIppWjg/3HpZJ6v8FyTSv57I9J5w2Ui59BW3e8NkHGlTQhuxw7xby
         IvL3H1gwotU5rPhX/vPmtkqzybxecaa7N5aleBf8UwsuH8IK0Wf8PritEoJy7p2tfPF0
         xBp5CawyTudeOkYCzdOVafR4GJsSHAfkhHeFWEAAPpnmSmCcnrM1iNAdg8M8fdAXA5l3
         5cKn/K/XprJgS/+k01ke8a9UdGrwyzrr3VIMkbyqDL+bubxTdGlD6I0RRXuSiiiD1YRR
         3xKA==
X-Forwarded-Encrypted: i=1; AJvYcCXQGqpqbZOCEAAulSxlCU16weAtgB2dlP42Lh38L1Rq2V5pNvLU2j2LNBgpgfCTago4mtCs/TaV3ZBhq9c/w7J+jNBx2+0ZHihTqg==
X-Gm-Message-State: AOJu0Yz6l4Z/jKlBa0d6KdrBPLlUihLbTqCBZBpIlHAjaJy6A2fHlxxz
	YdXiRh8iT/rA4r69RcuZX8jluf4aiZxuodEK/LII6xQlrkGoIsD13fyitSVUV+pM6wtos97WoXH
	bDHUNFroF9I4OHVEtn3HfMr6JX8OnA4znj59qcw==
X-Google-Smtp-Source: AGHT+IGEyFWMc/Bnv5N7cDt95kU2F8T66cMEz+jPU0sJPw/x3JWrXvmnu3gbf07WKBKu3lfbVlW8M9QwMg8fyGR6PUA=
X-Received: by 2002:a25:c805:0:b0:dcc:8114:5a54 with SMTP id
 y5-20020a25c805000000b00dcc81145a54mr1737712ybf.43.1708595197808; Thu, 22 Feb
 2024 01:46:37 -0800 (PST)
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
 <8fcb5816-2d59-4e27-ba68-8e0ed6e7d839@linaro.org>
In-Reply-To: <8fcb5816-2d59-4e27-ba68-8e0ed6e7d839@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 11:46:26 +0200
Message-ID: <CAA8EJporaUuddHHqpyYHiYSu=toHmrDxSHf9msZUJoym4Nz72g@mail.gmail.com>
Subject: Re: [PATCH 3/9] arm64: dts: qcom: sc7280: Enable MDP turbo mode
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, Douglas Anderson <dianders@chromium.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 11:28, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 2/22/24 10:04, Dmitry Baryshkov wrote:
> > On Thu, 22 Feb 2024 at 10:56, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >>
> >>
> >> On 2/22/24 00:41, Dmitry Baryshkov wrote:
> >>> On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> >>>>
> >>>> The max frequency listed in the DPU opp-table is 506MHz, this is not
> >>>> sufficient to drive a 4k@60 display, resulting in constant underrun.
> >>>>
> >>>> Add the missing MDP_CLK turbo frequency of 608MHz to the opp-table to
> >>>> fix this.
> >>>
> >>> I think we might want to keep this disabled for ChromeOS devices. Doug?
> >>
> >> ChromeOS devices don't get a special SoC
> >
> > But they have the sc7280-chrome-common.dtsi, which might contain a
> > corresponding /delete-node/ .
>
> What does that change? The clock rates are bound to the
> SoC and the effective values are limited by link-frequencies
> or the panel driver.

Preventing the DPU from overheating? Or spending too much power?

-- 
With best wishes
Dmitry

