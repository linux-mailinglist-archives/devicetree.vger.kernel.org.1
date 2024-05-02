Return-Path: <devicetree+bounces-64475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CEC8B9731
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:09:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34E561C210C5
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B88E5025A;
	Thu,  2 May 2024 09:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fG7qYrNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE4A47772
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714640995; cv=none; b=U29HNUGK64DWuzI1ks2X4hqDG8sjwxv6t2U5/bR40B31UijsV/vDtX8IkHC/IeU8zM+1m6tU5UMkyJDy2McCoaeFF51aUT93/I3wolAzSqUmYaMrlsIn86Y+gB3hixg5oeWHTWdOo4UeHX+sC+cf5ElMnPnvKJYXdL2GX55O81k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714640995; c=relaxed/simple;
	bh=n/OhqxALAln0kGe0/36dqPOYiJ+TShHU1w2PGqEKDZM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i74KW0Y9QQP2RELpZg9qvWqEv3Ndp2EWFpROMFCUhgmCSMRH1uQSzchRWTjQY43/AV15acNesq1zq+qIChRAdcMW70RXi9yBsplSAzvRHj8aD33gLN0zPpvrMXdfTfzsXtaHDDMf3OIpELNlTODj6Lf59tJ8e5+wk5OyBxVzcnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fG7qYrNV; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-61b3be24dd9so13304387b3.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714640992; x=1715245792; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1/zatMGpGKtRjuZEjLxtq2F8wzIhvOe+INlmlepdI6U=;
        b=fG7qYrNVo4jhxhJn6EGd7zD6LWvNhEnriUsTTSjNY9NoUt0pUbtUKIGW5jDj3NZPSQ
         SFoj0VA5471epbtD9RY3ChUy7blynrmO9Yxxd2ngCCUE3I27xT42odjypMCsltmHoKOX
         vMj3jQreiwcO/ykhqE2H28Hi1lhC6LCEPVS9x6kqU7rXWVIqg4rpc5twEIDuLfu/6ezE
         vuCOwIUmXK2UAkyJ0NzVHiiUJxZjs6UZ3XpwDprBOiPXI49kvnfU8SJbho8UT2ENYCUZ
         G+JFh0NAgYpIc1vMxvbu53x/WVlkJHYjRMq354XvT0gigMmutIlbw6eJ08/HnpqgAM9h
         aK5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714640992; x=1715245792;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1/zatMGpGKtRjuZEjLxtq2F8wzIhvOe+INlmlepdI6U=;
        b=KPjReIry04VvWe9PVS1JbibZCHNiNcQgCo6Zj/I28QOm6fHOj9S6he0Mkl/ju6V0Hx
         /uShhUAfWV0+2SG6sBrLGEa7EDq7Ln8ns3b2tff7bP/KAm0ooy34aPnM+3BrFMF+LyXX
         g/2h5wvWTbRGBB6/e7Qy8qQNeu1Gn6vybeWqMiNdNJ6pr7RriX08MpDvcNdClgwsTiYp
         ZPp3UjXQnttVVeNMd1VmP1gSlu6JkFgKAdS0XTftDrFa8gwXrELu3pgRi2yDLlQl1CS8
         /vjzC4FDrqOE0l8UUOx5RkWF9l2yAbaLr/EO09/7FKVoBHd40bngEOK4kotHypRhdXoa
         sPLw==
X-Forwarded-Encrypted: i=1; AJvYcCUk5N9f0vxjM4yTxNvgIkikyJ0U1f6+J27IySyzywvoaRGqwCv/rV0JMxt9Wa57gZjD+jUvk3UkuRFo12OrI37tDWzknLMdk5vIDA==
X-Gm-Message-State: AOJu0Ywyyz8rShr7s7kOY4bxWDzN2swhtCFlDllSQqoHk4TQPug6BJ4N
	RaR+WxWobi6zYynvUkIbwDWtTR0uRgTaLPSj18aCoifBjMg3Cvtw3aDlRJpwKKlV4KbzMpgJpFP
	4b0QsGQN1uWo3hR4o+wc/2BGlVFSbfzTcsiVzBQ==
X-Google-Smtp-Source: AGHT+IHTjIcrLiNWiQmOEtS+44C7Ab3xJFK2eL518wA9ilO8nE4pOsFSQKofOwT8IJ+55tNjPRhgz3t+rKUXR6zejYw=
X-Received: by 2002:a05:690c:398:b0:61b:e1e8:9a2c with SMTP id
 bh24-20020a05690c039800b0061be1e89a2cmr1840034ywb.1.1714640992635; Thu, 02
 May 2024 02:09:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502090326.21489-1-quic_kbajaj@quicinc.com>
In-Reply-To: <20240502090326.21489-1-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 2 May 2024 12:09:41 +0300
Message-ID: <CAA8EJprPLqj7GQM0vmN25U2+3kDow=NH8=-VC2N-0p92Ub3iCA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add devicetree support of USB for QDU/QRU1000
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	quic_wcheng@quicinc.com, quic_ppratap@quicinc.com, 
	Jack Pham <quic_jackp@quicinc.com>, Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 2 May 2024 at 12:04, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> This series adds devicetree nodes to support interconnects and usb for qdu/qru1000.
> This is based on previously sent driver series[1].
>
> ------
> Changes in v3:
> * As per comments on upstream[2], to get role-switch working on QDU/QRU1000, it was recommended to
>   use the actual TI switch driver. Since driver doesn't have the functionality to provide role-switch
>   based on gpio, thus reverting back USB dr_mode to peripheral and removed the remote end-point nodes
>   and usb-conn-gpio based role switch functionality.

This is not correct. The recommendation was to describe hardware properly.
Which means adding schema description, adding  ti,your-switch
compatible to the usb-conn-gpio.c driver, etc.

> * Link to v2: https://lore.kernel.org/linux-arm-msm/20240319091020.15137-1-quic_kbajaj@quicinc.com/
>
> Changes in v2:
> * Changes qmpphy node name
> * Changes dr_mode to otg and added USB-B port USB role switch
> * Dropped maximum-speed property from usb dwc3 node
> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120859.18489-1-quic_kbajaj@quicinc.com/
>
> [1] https://lore.kernel.org/linux-arm-msm/20240502082017.13777-1-quic_kbajaj@quicinc.com/
> [2] https://lore.kernel.org/all/CAA8EJppNZrLzT=vGS0NXnKJT_wL+bMB9jFhJ9K7b7FPgFQbcig@mail.gmail.com/
> ------
>
> Komal Bajaj (3):
>   arm64: dts: qcom: qdu1000: Add USB3 and PHY support
>   arm64: dts: qcom: qdu1000-idp: enable USB nodes
>   arm64: dts: qcom: qru1000-idp: enable USB nodes
>
>  arch/arm64/boot/dts/qcom/qdu1000-idp.dts |  23 +++++
>  arch/arm64/boot/dts/qcom/qdu1000.dtsi    | 120 +++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qru1000-idp.dts |  23 +++++
>  3 files changed, 166 insertions(+)
>
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

