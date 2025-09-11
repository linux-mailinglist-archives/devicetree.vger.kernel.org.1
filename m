Return-Path: <devicetree+bounces-215844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF316B52D13
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAC10188B9D8
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99772E8E17;
	Thu, 11 Sep 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RprQKS9S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C9A2E264D
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757582573; cv=none; b=H1aANN8a5rXCkDlbFC60U5kRyp7SNh6IT9LrQK4eFUOEKq+c/pV9bEKYpBQ5OqYGsjZjNiM2vSgE1XBoUehHnSRdVlQuRRvRlyfxLQeXSwQTUBQ49xFUHxcDmBlOff+NRyUNa7whzystoqAvuqeU90Vacio54eR0DiLDzOOrMsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757582573; c=relaxed/simple;
	bh=91x2IFdC5zaQq2SHZjMI+Nt0EODRaAqqDPguE5q5Oqc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OEQGZvtqwM3cRdOZk+hEAgGhtICmDBkHnT9BI55dGeeNvvlSdree/c4NZEQlpIbxcTaWKXUISss3WgPiAS9yiRmYEDzoYbHpnYhE6T0/aqasxje3snZdEgAAItJaNs3OmzCrKZ5pUUS8ntQIvAUQZ5MIo0B2xn+6Xp9T5V4K+DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RprQKS9S; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55f7cd8ec2cso577721e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 02:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1757582570; x=1758187370; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xClIjfrvAbF1xtvQXj+QQGe/hhZ9PeRp4erbvUtEvwI=;
        b=RprQKS9SldtTTCEsP85MNs0KXeUs27BEuVZv8j1xyEjbRYIpcyA7ogn5HnU4FZ5Hbf
         ELhOuvdT3vED5cjxMlyT4QwoK7gVdhtTJfpinsDeTJEifmBhwaLiljPUBVacwdP5r3D7
         C3/69LcaiiT1r8x5tlmB/xgtX7xve81EYhamQj1iCO52CCmcJCrTffyNOWwzH5i2a1ao
         XrcVjiDCXk0T+KPZA3FZJZUF7fEulAhkjzHPqd81h+TNI6BaEDq4Iu864G5pUiKXDzul
         dD4DUJWPQWMLgWxgduOtYTapfxsJ9lF6iDvZ84B+WeesovPlG4891C4YoSz3suIfaC48
         4Flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757582570; x=1758187370;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xClIjfrvAbF1xtvQXj+QQGe/hhZ9PeRp4erbvUtEvwI=;
        b=sDYX0YUAsdQ3sHzCrFzzQ2AnyeGu2u9ZxRiLvuphrTn+KxfnDwuE9FVs8UGW+EcCz2
         b1D7UZaz3NfxVtpo35mt6iUQI+233pLAzgrPsZT0sj882QZO0G3WJkyYO+w9MwPXUuST
         4YcqMzQ1jmPNmOrCEgCyHn0i6OcKHnlb8oRDNubeDk612r4Wzbhs9K3M1bdNm/PRuPjL
         WFkNJg1QhJMdgWFPnfbGua6DbLnNpH/qoB7KBasaCJTiWsuPNQNvsf150HXyKCWKyIXg
         B4ftWDoosUyIDXEn08LdzPtR7qkNuCRAEQHpDMjRKdfRNdc8/ApHWkzoTcAX6eKKMCNN
         ztag==
X-Forwarded-Encrypted: i=1; AJvYcCUcck0TugZezWsfsY5Qn8/wCKyjS5vpj8LFkZRv3ngMm1o2XS5w0tGCbTNUMyunSt89bkhy95fNI0yr@vger.kernel.org
X-Gm-Message-State: AOJu0YxKvkP1G9g2zQPct7pYkSm0bnKB/+rcaFpZ1hOyPnt9zQhe0gTF
	+NgzJiYAWC+JBqRbhrv+cwatHtcUGxe/ScxbSM3u+VmG6zJrrajPcxRN3BQg+TKcC+SsND9OysH
	tzCHCZm13Iz9uSBs9g60yNEzZ9Ybo1phtUR19KOTGmA==
X-Gm-Gg: ASbGncs2C/rVrEFQEZkG/e5YrCQoXQxegwQN293k6VuetupKZaRQ6yqrpn1Dt5dueTa
	C+9fHZJWgirbH59QTxNqcmfmG6bRvtguPSikbblJP4iU/3falBzGE4jOXwir+ZOMzj1yljv7J17
	1GzJauyFWOQbhTEhuceeK0je6byH0LO5my2j0LgfqPTaWTeGhxHMtIA7qE/3E9SoW5QydXIbuL+
	wUItq8cZncvtBsb3CmlluQ1B7cMmhkOSLaFkhw=
X-Google-Smtp-Source: AGHT+IFsnkGxYpIZ2no6WEiKw7trlyFszU8hXSZ7C1IoobeXgikTcX6nfxEwSn+eF6XIvxGU/64B9GjviqVf+lb37jo=
X-Received: by 2002:a05:6512:145b:10b0:562:d04d:fa0f with SMTP id
 2adb3069b0e04-562d04dfb5emr4915461e87.57.1757582570041; Thu, 11 Sep 2025
 02:22:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250910-qcom-sa8255p-emac-v1-0-32a79cf1e668@linaro.org>
 <20250910-qcom-sa8255p-emac-v1-2-32a79cf1e668@linaro.org> <175751081352.3667912.274641295097354228.robh@kernel.org>
 <CAMRc=Mfom=QpqTrTSc_NEbKScOi1bLdVDO7kJ0+UQW9ydvdKjQ@mail.gmail.com>
 <20250910143618.GA4072335-robh@kernel.org> <CAMRc=McKF1O4KmB=LVX=gTvAmKjBC3oAM3BhTkk77U_MXuMJAA@mail.gmail.com>
 <b83a59f9-16ae-4835-b185-d5209d70a0f6@oss.qualcomm.com>
In-Reply-To: <b83a59f9-16ae-4835-b185-d5209d70a0f6@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 11 Sep 2025 11:22:38 +0200
X-Gm-Features: Ac12FXx_Hui0lKjh3pL6K30JyaITyJ2wgwj7xLN_jTKFVW2DjCpTudv5l9sTHKE
Message-ID: <CAMRc=Md83STGFYya5eu4j33=SQ+D6upcP-7fnBwKo2dPdTtX+g@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: net: qcom: document the ethqos device
 for SCMI-based systems
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org, 
	Andrew Lunn <andrew+netdev@lunn.ch>, Vinod Koul <vkoul@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org, 
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 11, 2025 at 10:53=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 9/10/25 4:42 PM, Bartosz Golaszewski wrote:
> > On Wed, Sep 10, 2025 at 4:36=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> >>
> >> On Wed, Sep 10, 2025 at 03:43:38PM +0200, Bartosz Golaszewski wrote:
> >>> On Wed, Sep 10, 2025 at 3:38=E2=80=AFPM Rob Herring (Arm) <robh@kerne=
l.org> wrote:
> >>>>
> >>>>
> >>>> On Wed, 10 Sep 2025 10:07:39 +0200, Bartosz Golaszewski wrote:
> >>>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>>>>
> >>>>> Describe the firmware-managed variant of the QCom DesignWare MAC. A=
s the
> >>>>> properties here differ a lot from the HLOS-managed variant, lets pu=
t it
> >>>>> in a separate file.
> >>>>>
> >>>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>>>> ---
>
> [...]
>
> >>> These seem to be a false-positives triggered by modifying the
> >>> high-level snps.dwmac.yaml file?
> >>
> >> No. You just made 3 power-domains required for everyone.
> >>
> >
> > With a maxItems: 3?
>
> In the common definition:
>
> minItems: n
> maxItems: 3
>

Just to make it clear: if I have a maxItems but no minItems, does this
make maxItems effectively work as a strict-number-of-items?

Bartosz

> In your new file that includes the main one:
>
> properties:
>         power-domains:
>                 minItems: 3
>
> Konrad

