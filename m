Return-Path: <devicetree+bounces-47339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5AA86CE7B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 17:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4AA1E1F21985
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 16:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86682159589;
	Thu, 29 Feb 2024 15:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LkLhu3GD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D944014F9CA
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 15:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709222084; cv=none; b=VksqoM01H7I3qI2X+YnOk5q4cvNtY19ETU2ZNOegF2eDbKbbho3SEEuq1PctyIZLsBsbwcOdS6F7NuAD/bmm9zCi5tIumKFkHoRdqRmJj1I6Ot4AoovpEfOkyu3EPwSV37sGKiCZrUT3LRglWJo/lBFtjrMcbG5KgikCIDCcMF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709222084; c=relaxed/simple;
	bh=Fmj50ebsiQKgGvbsywVhM6Fhx/1ciNoD0BmuFWzRd6E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ia+2UpTtYE99qNJsd63ePP7cG2lpvbBVma1A4RH8oNPyETvZunajoWNF+2uxMcLnZFsfgl7V5+u7vIiAsVgobMHcxlaln9v+vqhu9RCsR7pSX5ks78MvYO8IaYrSVlYMoVVmm320KK6UQE+InjAqBTggPq8UD9EWGeL4F4n/tFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LkLhu3GD; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so1130532276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 07:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709222082; x=1709826882; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Srh+6tdz7RM48Lhk9oPRVhCIVS8iBO4HPXxfynqBJNE=;
        b=LkLhu3GDxO2Dj6qxqEGHBUNlFajjGSFSXBICxbIxx5wMCUK9MyTLFF3pT+6rh3qPeT
         z/xFryjAMJtN3TX95x2hp91kcT0Ba4tYs+WM56eWQ98IBs+YfZdw78CHn0bU7nEYGlYx
         GyTQdi6oCYPXYM/viNtia9rFXuvw9fjgcjQ85r0iGduD1uN4pPGsTVSEzLBCqYpWErt5
         jxfEtZQq02+d1dntOTlmykRLNqxxUkBjyHr87zvPvejjsbgVXwG5HUghH/B9+fZX0Qws
         94SZYV+z1AgIwgI8g+3LvvhIGky4P8WxA4HG5oi8phBeXBf0MzEacP+S343Wk/ADWqTE
         SmtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709222082; x=1709826882;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Srh+6tdz7RM48Lhk9oPRVhCIVS8iBO4HPXxfynqBJNE=;
        b=sSHTa63+0Ac5exYPWttW+XozGC9Pr8/naAEcedSE5W+QWbp8aDF72JQ8+PXPft8YnP
         v2wuJkvIFY5UHRc0G4pUM2MN6wTFF8HvTX1rP/k3J1JVa0PUSa2YlK/HtwY5sVg1vFgI
         XFzu+8QvuQVd9JRkMrbaarLu0hPUdHrVZ3GgwA22/ltSsU6DzX4qjm5Nso/qfLvT1lUI
         t8uKXWocr2/PE4DQamJTsvepJ5V63fY/ixDqQj1+dZndGn4QMqDorza5ssCrMvKWVtI4
         Nt0XK26d9PQf++Gyufzy8DSTc2kfCASjT5Qel8QRzu7UdUy7qn4KOlU1V+Z2EHd1F9QS
         ltLA==
X-Forwarded-Encrypted: i=1; AJvYcCV/6GlKugc5pthHsAL7p3IC+iCjV6j/+y3eGRQUyf3CRGDgCzmt3bIb1HQR4uwx+hb0zj+2E8iVTkTLIF9OjafVQNYUTzgzElqCEw==
X-Gm-Message-State: AOJu0YxWveqa5zidIYUefC3tR+sBeJg6jc/Q9chVGgzJ+9JKd1tZzpsR
	H1BU4iMxBLdwfB4zROOG9gAfkBlo06uKegXyEBXdKB4qz067QeeKrN1tLLLSjZccg2cBRgzaVy9
	8hn4TRSDKa4/OnSKmgVJgYfrBhxPC7auFeQdHJw==
X-Google-Smtp-Source: AGHT+IGrY7X4RTDo8QjDtQgZG99mLAi+VyuWqElpCArGZNMLwpnq8A2MweEnHlDSd6Qps3WvhnJlp7ZvAlcScgpu2bM=
X-Received: by 2002:a25:2e46:0:b0:dc6:e622:f4e with SMTP id
 b6-20020a252e46000000b00dc6e6220f4emr2493033ybn.14.1709222081918; Thu, 29 Feb
 2024 07:54:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
 <CAA8EJpoZn5V8N3=4x4AfYM91XBuCZx47vSS8tB-nCP=LvVsD6g@mail.gmail.com> <d50ca4c0-8954-4e4c-9ce9-2c40ebacf8b0@linaro.org>
In-Reply-To: <d50ca4c0-8954-4e4c-9ce9-2c40ebacf8b0@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Feb 2024 17:54:30 +0200
Message-ID: <CAA8EJpq0E_t6bi4TymtpxdX0ZHHNJgBU2gFEEZDWSUZg27pEvw@mail.gmail.com>
Subject: Re: [PATCH RFT 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 29 Feb 2024 at 17:47, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 29/02/2024 16:25, Dmitry Baryshkov wrote:
> > On Thu, 29 Feb 2024 at 15:08, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> >>
> >> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >> will be set in between of USB-Only, Combo and DisplayPort Only so
> >> this will leave enough time to the DRM DisplayPort controller to
> >> turn of the DisplayPort PHY.
> >
> > I think this is not fully correct. Please correct me if I'm wrong, but
> > it is possible to switch between USB / USB+DP / DP-only at runtime.
> > See the Status Update and Configure commands.
>
> Yes, but the current implementation is still valid because we need to
> have the DP powered-off before changing the PHY mode.

Even for switching between 2 lane and 4 lane modes?

I'll check how my USB-A+DP dongles work with respect to the altmode
configuration.

>
> I never encountered such setup and I have no idea how to test this.
>
> >
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>


-- 
With best wishes
Dmitry

