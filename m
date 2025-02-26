Return-Path: <devicetree+bounces-151740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA16A46D74
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 22:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3667E3A77BC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 21:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9334422576D;
	Wed, 26 Feb 2025 21:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ydanzjl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E439275619
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 21:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740605446; cv=none; b=de62cpiLwqTvcBMiBci1R//iEPVlmxCeotOhLq6KCckHbqhBMQEjUvqAVGX/2+dvhkz0YqIm3QfMQPOJVKOz/rTNCWQGlDHx+liu4duJ7MMq1SOUwISiNhHPaLxKRpbAgMdX+ybBvrJezYiPVm/ymlMoKT0yMVIaXTeODfS+YIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740605446; c=relaxed/simple;
	bh=SUGyhrxSVMFnfbeL2igPaj/oiGAxEeL7XtDqz9AUnnk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=skS1DpaKV8AePmo0FeZEThOTI4jUnadUsDekCfOpDkWZZbmd2CMnCnPlfYYFQJ+cjfntef9ybGPv6+QPS+bZ6/ujhI0H5s9GqYEkScsqLnYKUqMLYqJrZaePYFdhFeomvTKslVLz4ody5whAmeokDhA7qaLNWdUa/O6tS2iFm30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ydanzjl1; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-548878c6a5aso215724e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 13:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740605443; x=1741210243; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUGyhrxSVMFnfbeL2igPaj/oiGAxEeL7XtDqz9AUnnk=;
        b=Ydanzjl14hrygn91S8Nko4t/Lu6O+jHrxkLHwEUvVpQLrL27BW1krQWoOXnuIpMhcD
         /SCyOav0DKnLX3+CJqsN+yJkwcWvXzaD3AUkrBVlQo5QLPKSr7MFdSKsD4/M3B15RIrH
         KfxPZhNEI6gnTqPTq8IqmLhfmV5Xlf/WdeG1sr2jZB3qRusSGa/01jV6J74VMuZ4C8DB
         CE2blEc734i/ApojqloxUGTMjH6KtTB/8f4VNtupqKgzPYc56Y/fARkBT6vXoKjr6RTn
         CRYn6WMMxVunHXwNtKEVpa4JluLqxKpNEtrx1E4LVcWGMyG135R0cr2o97Nka2L0wcBe
         RxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740605443; x=1741210243;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SUGyhrxSVMFnfbeL2igPaj/oiGAxEeL7XtDqz9AUnnk=;
        b=tX5ghz+GaxXU7dfuq7DuE2+5n1grTFdhvpnouOS8SIkK0kNVOtEvLHXCkk/mZVOX9R
         DzpczByps0tnV6+0nwi+UJ1VgTS2X7oD+uBcQIAHUQ7cEFINdQhHAd7hSKgREEoTHV3B
         4tMpoEFHsPbHybmwByshzW2WDvdaBBCki8d3Im03438F7xAGmhaX1yoIAxycy0gPhJOq
         p9NJTUbqMnqg0gx1TSLCcQYO8cIC2mwYQvYTA+eZWJDz8XkPY0Bzfr3OLtY2+/zHderp
         wcojDtdqnUDUVkSFWx1NxeRj7DR3U4WWIN4QuADFX/U/iR2XicF0qbdESQXMxMYWFq0U
         yYhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYPb8suNUiPaKBT1BhyyW8FVZIMkJlj14OC7d4SAS8t7WnEGrvn05xRce5hKjenBFaKaDACIMbuhdm@vger.kernel.org
X-Gm-Message-State: AOJu0YyTdp7RttMcZrNFxmxBh1Zwc6OCuIHoZxfJt8ljwXjFHs9/fZTC
	+ppVgYG8ews+xWAGzOZF+qjeJwW7/E/OHTsNeTNXgCFUEm8y1MMhYW+H4zMlM/DEwR9dSVtInR9
	i3vEEZylTFbEgortlr2xIUmTC+e0eXWP98BYMbg==
X-Gm-Gg: ASbGncvlofPdDihTATjpwoI+3MNmGEEDycpDLwf5rabqRcZpC4PmEPrRjYlmA3QksUZ
	gdWJYfV0sYHF6uBYcMVeLzK3OZRn8UsRS3hkBwnxYydcYjCG9mx/5QbXs3mSEogbyAO6TsubJ9b
	EoaMhAZWY=
X-Google-Smtp-Source: AGHT+IE8+uZvHOPVlO4cJtPSuzroRvBR0aRjVwpJAshWI+BRIHeRYPen8jIF3ZZZVKAcoSrk/otZQzN4xJtaQL33NME=
X-Received: by 2002:a05:6512:2347:b0:545:27f0:7b6f with SMTP id
 2adb3069b0e04-5483912fc82mr10885628e87.11.1740605442695; Wed, 26 Feb 2025
 13:30:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250211-msm8937-v1-0-7d27ed67f708@mainlining.org> <20250211-msm8937-v1-4-7d27ed67f708@mainlining.org>
In-Reply-To: <20250211-msm8937-v1-4-7d27ed67f708@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Feb 2025 22:30:31 +0100
X-Gm-Features: AQ5f1JpA8TYnCxYWLh_Nsj3CaoL2jBGTRtip6jpMFprAlot5Cs6Ct5PvAxVIfSk
Message-ID: <CACRpkdaokrm1wLHGpP6aCTA9uQYAptVqt8J6+BQu1MmJsk9=Cw@mail.gmail.com>
Subject: Re: [PATCH 04/10] pinctrl: qcom: msm8917: Add MSM8937 wsa_reset pin
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephan Gerhold <stephan@gerhold.net>, =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	Lee Jones <lee@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	iommu@lists.linux.dev, Dang Huynh <danct12@riseup.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 11:38=E2=80=AFPM Barnab=C3=A1s Cz=C3=A9m=C3=A1n
<barnabas.czeman@mainlining.org> wrote:

> From: Dang Huynh <danct12@riseup.net>
>
> It looks like both 8917 and 8937 are the same except for one pin
> "wsa_reset".
>
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> Signed-off-by: Barnab=C3=A1s Cz=C3=A9m=C3=A1n <barnabas.czeman@mainlining=
.org>

This patch 4/10 applied to the pinctrl tree.

Yours,
Linus Walleij

