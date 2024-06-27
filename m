Return-Path: <devicetree+bounces-81007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8B191B057
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 22:26:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 351A2281F8A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 20:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF0E19DF4F;
	Thu, 27 Jun 2024 20:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mbG/bkPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C3D74070
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 20:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719520014; cv=none; b=EsHx6aCoWne+e27o5/mk5kLkc/HRYloYVaW39hCsCKTT/GATdMWZm6tiJywV2Evx3KoXdS5oVrzpvSfD8IcUEqJ7mF0UO0STlVE7H0L7hXRgCUE0CWHX74haRH7AcftLqW+82Yku9d79DXYLQHlEcdFt8Nq2Ib6zvyBt959C9pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719520014; c=relaxed/simple;
	bh=RGVGg8f7DBxYNIjZHq8kWvdX8KI04mlNvh9Z47WtPGU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hYcZ2RtsRgdaaZNgGRXzYTgyhvG3862avKxn1hbClmRMjxoWe1eq5iy02/IyX1X4KmOA3CU7PiDdIsUQICePGgV0ekHyiKaFruc5RdrRMw2N1dcXwidEXNS1OobcbbCaVWUxNyirBxNfYfv9xtfqTBj6TIpc/5wz4wOCKXtI4A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mbG/bkPr; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52db11b1d31so3544944e87.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 13:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719520011; x=1720124811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RGVGg8f7DBxYNIjZHq8kWvdX8KI04mlNvh9Z47WtPGU=;
        b=mbG/bkPr+yabCOxyMSpOwkV38l7aqAbT1S034xAPNppVDr1x4coRm4QA6rwTnNeUi/
         k7wlH2a4aTWxXoMf2L4ol+fMjAmhA/i0yMBh9OEOjxASFxnZjNt5ZuLMIuFaLJg9yX7F
         gPbTU0VL1mHZYx1qH8U4k2A2GxKQh5lCOBNvSlUIX5JTOy2szvVlUNtTyr39mavNfnm/
         HBIht695MYnFC0lKcVPY1Oh8o984jMsNy2Bd/2Sxji9LkZfnsb/CPbvuwFqE00nvv02X
         mHTK2nS7RKFLh7Ny3XQhFVoyck4aCAByotrfR0vV1dwCIi0KbGtPwnBuKU1hL5dMc8Vi
         gtgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719520011; x=1720124811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RGVGg8f7DBxYNIjZHq8kWvdX8KI04mlNvh9Z47WtPGU=;
        b=k360I8ftAIBrJRMw3tb06snYUeNtf4YoP3J8HfqsIeZ6UiRkQCsz1DmxeRDNTtp0m6
         OeE0PN71dvKOsYKsXph82ZXUpN6YEEEAkBGK+TPs02ADhzEncDPme8/m9BXgOKIqt6rp
         tZBRPTkP5HG4NEGWE+wxyOhpQNwmA82+T0zN1jlqSs6baUE9au+HWo8XHSzerVQphP/9
         5SQyuL4lBk0u5cHQIox3+lVVz4KruMdmHfqwx/5+jtiU40yJPhV54DhtGLiegV/RRlr/
         pun3Te15PnJjR+CIADGP5Ig51QVmScAe2tKVRbhPPYJ/66O6ncYb7KkySj4VnANW9Fut
         Yu/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVaKH9sGRYHe91n12qRPSMjs5lBCicK3coduYlKxYwGY2NiX9KpM32c13pUJMy+cubSLx72d7nzyevQeY3qvjH/QgF9Eb6kPjyf+w==
X-Gm-Message-State: AOJu0YxxF1A3GQqbvi9gcDh6U3Th0AUZPhamyQ+xZ/sheVBOKQXjGrqh
	V7phlTC01uV7buxItIm44r3BSCgD6JrtpmD/buJOkoGOmoHyjnFb4qvc0cNdIxBcb3ozrvrKF62
	KOc+YPnl/4CdlKWRHLhRvAU7r3YjeoxA6Tt9T5w==
X-Google-Smtp-Source: AGHT+IGZmO/lpYnkfdi+ZwB/Zq0xLlJuMNB2u9exwn3vugOCxHcKNeelxSv5hf2+kDzvi8nqjG7Lka9UyeUh50bVpGw=
X-Received: by 2002:a05:6512:2810:b0:52e:6da6:f94 with SMTP id
 2adb3069b0e04-52e6da6100emr3757924e87.60.1719520010802; Thu, 27 Jun 2024
 13:26:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528191536.1444649-1-robh@kernel.org> <CACRpkdZznuUSAKZx-BLgt+smaTDt8fVtJ-xRzL_0u7uYMDGJog@mail.gmail.com>
 <CAL_JsqKAXnu=CDsOAOoxF0sBnzMxaCDVUU4Z+2k8kseTMvc+eA@mail.gmail.com>
In-Reply-To: <CAL_JsqKAXnu=CDsOAOoxF0sBnzMxaCDVUU4Z+2k8kseTMvc+eA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jun 2024 22:26:39 +0200
Message-ID: <CACRpkdaCMfpa25Ap3NyeWgiTTsiWJZD5Ui3YPdDB8p05OE_Lxg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm: dts: arm: Drop redundant fixed-factor clocks
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 27, 2024 at 9:06=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Wed, May 29, 2024 at 2:47=E2=80=AFAM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> > On Tue, May 28, 2024 at 9:15=E2=80=AFPM Rob Herring (Arm) <robh@kernel.=
org> wrote:
> >
> > > There's not much reason to have multiple fixed-factor-clock instances
> > > which are all the same factor and clock input. Drop the nodes, but ke=
ep
> > > the labels to minimize the changes and keep some distinction of the
> > > different clocks.
> > >
> > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> Someone going to pick this up?

I put patch 1/2 into the SoC patchwork:
https://patchwork.kernel.org/project/linux-soc/patch/20240627-arm-dts-fixes=
-v1-1-40a2cb7d344b@linaro.org/

I think Sudeep probably want to pick up patch 2/2 so as to avoid
conflicts.

Yours,
Linus Walleij

