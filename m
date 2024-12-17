Return-Path: <devicetree+bounces-131792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5581C9F4946
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FD55188F95F
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BCED1E6DDD;
	Tue, 17 Dec 2024 10:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CEy63q2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4425E1E5726
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 10:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734432829; cv=none; b=p9m4a12kiF9r2NvSQKgdeUzoEC9/pjMP/+PJRMHriKuOPEz9AWjmwEE2KSdY1DIMfYG9Nbus9UQDxF7ea1P5IhBbCIrcXWJVJYMc7ft4qoGsOfO8M0yhjgxeDKu8kXpIwOaKnafzykJBJxKNUjhAvOfUNx2nlMloumrwscXGE1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734432829; c=relaxed/simple;
	bh=sn/GJ4+g44OhE9Mc8Vrz5T6j/3vd76+SDLofs3xOB4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JSivS6WEtABPmhHG/elT99fuBXHGPXOunWg033tg3NPgV7dxmMAyhx9Vuj5yRgRUR5oDX8p+DjslrlayXjuouUYB2HjgCRv6PSYdjCaZmnFiNiFbw3eTNYUNF7eRcR76dIUw0zlLor4V2EkjaK50at9QW+Dzs6w3658sgaw15J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CEy63q2G; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401fb9fa03so5201885e87.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 02:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734432826; x=1735037626; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TC5jCVTWg7lej2YzYw5kT82WMr/4h0gli5MbAUjaM8=;
        b=CEy63q2G4ruYlwFglV5g0nsvR0DrhO2Q3RusQmORCfhjo/GKsXfuSg14deeNToGFOz
         fEUWaKadMYdOH74OmUALYS2QWHOmRXZZBFnqSnnjTlk7QNx4xOWLDG1y3egQ0st8OV1o
         OIfQv7JUlfcNDYJxzBR0oWQAz8/NgPs6wuF6868Fko4J4fOvuUCuUy3t/OwkFNX0IYj7
         3K/xOr1nzdYN62mRXXEUkPRcm4ObRa6rbSaesn3SX03YO6lJYCqPoqiMMUZIIY76Tut7
         yH3Nd2maMvAd9r/XsUN+ZUt3HltIJLSwsGI05/INlFMPoTltU+cOq0/v+rNNDHTVLwrU
         ypxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734432826; x=1735037626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TC5jCVTWg7lej2YzYw5kT82WMr/4h0gli5MbAUjaM8=;
        b=II+cnjHN9yF0ERcD7Q9T4F3tExdhU1aNoo6NF3ncOQyeWJcza3+WBPd71FnLZAt5OV
         SqcQY0UZINnvLWwgxU9a7k/wHq8jPW2SQqhKOPy8NV1hiBq3tCSK3WaJhFJQivPQ7UCJ
         LAviG8QhT/BfJlTUkq3MF6aUW9pOxFZpXX1X7OtiOsOVL/yl8T86lu0aJ8pmFLsZ6gy5
         aq433ENKwjBTBlUdwNf8vL6lWqxeuTVaWPqegfDvnkl9+TnBYEaK+QOOtNA0BA1gn4LP
         VhUf+FPT2OyMlxVlTTqT4t8sCcvzOWu8LzA/k3Vyd7q26r6X849UNaoHfjOzsY5D0aRM
         SU3A==
X-Forwarded-Encrypted: i=1; AJvYcCWaYLpuaVO2Qvj4Ta6u2xHuQgToCIHrE7+2Ja0CP6y019qOYVc/TwJ2Y1qLYzftKUxMYu6WP2ztnog8@vger.kernel.org
X-Gm-Message-State: AOJu0YwZmvufEicuuhNFyYZ/NM0D8bUdmvDMlIMv6gFX9B9yUiRQR/Yc
	UjPSeaqI2ok46lh82A3OmpclgsAuWVBUDiglIEPR+lRNgdb9y9igA/7q7H3Ek7db8sojs8w2RXF
	2S2ueY5oXRsixDAuNeYW9bnG61GOYk8oW7BHEXA==
X-Gm-Gg: ASbGncsq4b8RjyTUvent5vAvCFmqcO/Zudkzh14GOWVY5i15xM8o8jfKZGPwtIJnWoX
	V4HNq7M3/LoSAKPrI3QsEwKtYEHUXnfoBuy1UzA==
X-Google-Smtp-Source: AGHT+IFCphVocPAZunWIma8kPi4+wa7YjuJsfjmpYKp21Qxrzj+4sr7LDLYc8cAc2pcpQ3Dk/5SYwN1smESPCaOVYA0=
X-Received: by 2002:a05:6512:3094:b0:541:1c5f:bf86 with SMTP id
 2adb3069b0e04-5413158b015mr867723e87.18.1734432826342; Tue, 17 Dec 2024
 02:53:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217091308.3253897-1-quic_mmanikan@quicinc.com>
In-Reply-To: <20241217091308.3253897-1-quic_mmanikan@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Dec 2024 11:53:35 +0100
Message-ID: <CACRpkdZimr26=3hndy58OkxgVxDZ2990h_xRHwMweJykfhT=4A@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Add SPI0 support for IPQ5424
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, konradybcio@kernel.org, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_varada@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2024 at 10:13=E2=80=AFAM Manikanta Mylavarapu
<quic_mmanikan@quicinc.com> wrote:

> Add an SPI0 node to the IPQ5424 device tree and update the relevant
> bindings, GPIO pin mappings accordingly.
(...)
>   dt-bindings: pinctrl: qcom: update spi0 function
>   pinctrl: qcom: ipq5424: split spi0 pin group

These two applied to the pin control tree!

>   arm64: dts: qcom: ipq5424: add spi0 node
>   arm64: dts: qcom: ipq5424: configure spi0 node for rdp466

Please funnel these through the SoC tree!

Yours,
Linus Walleij

