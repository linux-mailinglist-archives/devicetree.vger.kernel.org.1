Return-Path: <devicetree+bounces-195607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 695A1B02429
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:53:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53A011CC3761
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBC51DD529;
	Fri, 11 Jul 2025 18:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lwgFoPz2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F43A1DDC08
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752259998; cv=none; b=RfrmpgP3+HPDZGETcvnVxh8hsNC26m0t/LMI4+v37/CDvRpsiQgXoXaOlY6VUts6e8RnUrMsZEw3bGV0VMJsaAAXCYheUhJykeWcuaKj9nutLIQ3EitSsw+coH8F4cw+OlWZfRBgK8SDdalQ+su0yNpIoTGw9uBcH477YcY1HwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752259998; c=relaxed/simple;
	bh=6oa0VmGb0K5iYELBtraMc+ym3sVQgZnaB1e6wip7Kyg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H6q+n2teHGnALIFQWl067xpnIzAjsv+vMWqsl0/ksQXiewnev2I9A2dNOmcNe2H5lDRN+fgLFf54QrESMmJnKsIwNHpRb5F5KSHGhVZSiNeAmIqjtLI7gqH8wcNLBa+OLYQtPjq/oDiQLA7VKooAub+l1Xq46w8cqyrrgHxzMe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lwgFoPz2; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e8600c87293so1937982276.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752259996; x=1752864796; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lnMNvTF+R8ofXhs9BIQ7FQl/jHKBWLPO/PBptuTPHgQ=;
        b=lwgFoPz2EVHuxJIHsoIfsNZnVcYxxE1kRoZhOs417OHb3eubPlOeWTiWEsmyI8XoYS
         uwjidk62k7FV1mWq2B9sVO9eamU+Ml+4r61lV4eX2gBeJnYCmr1v803RqgGEAMQB2MSg
         0S90oLmCea4CaQSFvjnK5/mi0g22cHlkIuQ9dhnf4Ipdz6Ew20xnjXzmZn6Y+cuhATwW
         OUTzC6ZUqeRi/V/E929+DrdLPqt1JNGMjnZL9l7fjfVobB1PXpXOjQW7jb2D4q8umDZU
         0+GjgJ9Qh6+SiTYCfASAypGLUy3ak2h97GkQSBNVUTpbE9fwBvHtZXK2vqUW5hpSQZVC
         SQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752259996; x=1752864796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lnMNvTF+R8ofXhs9BIQ7FQl/jHKBWLPO/PBptuTPHgQ=;
        b=kFwYdd0EyIP8+9OcL6cSU3oQCKdAGAAxflDabU5hxeusBEywyFuTdGHR8Eyx92c6eX
         LEG1EMQXmYDqG+KvxgiQVdjIV3XBqNnO9TwXWMc5GqSlLtdaEmuUq6Hcr5wsBlcY8QUu
         mIK0DS0r1m902AjIo8xWFDQ4YpZEJVhgKMUfMUfUFuU43QYk9XlcFcLQwylfiiZB+SBn
         3/CLHV5D+0wLLEnhrBA8mtQ7vOZ2Vf7eAZU8YSFDw5b/CMeSTyHRNgXAKb6Pvljz0HTU
         o3a1dwkML+C9phnJHpO1yWLCjQJGhLNfbHTQkj17d4VczUkzMQUNmG+B1/SqxhA/IJ2m
         +5FA==
X-Forwarded-Encrypted: i=1; AJvYcCVJjWw5DPHcQMePPZqKDc3n2+lFg+UFnVRdeUqT8N4/FlgBLxjAI2QXX98udjDR9QCJNsQOx1p6fXlt@vger.kernel.org
X-Gm-Message-State: AOJu0YzNF6oRdn3G4/dVhDTLm6x5P286h3w8gbHIT0H43uYF/ixSsKX8
	KrJLu2PdXyAF00cDDgME3M+wrTeLQq+S5bskY+9bY+6yscSzLtRcKjH7PqmIzMCa/o3alQ3LTiz
	v4/mYW+rBV1Bg/kmwbk5M+vVnyiNKPc0j7c/f+LWzWA==
X-Gm-Gg: ASbGncvze70loLi8rC6iw3N8x6+d08tG+8GRvBr4krx6eSUBlIJwBN6IUanqTN+ys26
	6Nncg6vBHfLm2JD15ABczFCqHERTuN0+l7tG4/FbL7qMERy6X91iq3vTC5dlMk5h3OE8vWA9J9b
	dFybyUbKGeKQVMoqiZTAiskd9tVLNLgIbj3RlhBJNs6p5OY35lqcBh5MrjkZfcrHPjYpyu0QDcD
	PiCVDRlegVr3AuTBQ==
X-Google-Smtp-Source: AGHT+IHNGHaJapXfEwRUcTXNTWlTsMHXEiPIQ/b0KTpye4KQsUdp1sxBRmAZdNG++EC1bw7xLSQza58HYJgLAxUXYQU=
X-Received: by 2002:a05:690c:6282:b0:70f:87c5:5270 with SMTP id
 00721157ae682-717d5daccbfmr86777077b3.19.1752259996008; Fri, 11 Jul 2025
 11:53:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250711-hdp-upstream-v7-0-faeecf7aaee1@foss.st.com>
In-Reply-To: <20250711-hdp-upstream-v7-0-faeecf7aaee1@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 20:52:58 +0200
X-Gm-Features: Ac12FXxLjA7peUDZIWJhb4cndI_Q2FwVXxO2uVEd8E-6LJKHyzTLqNgXqkM6VhY
Message-ID: <CACRpkda9M6R_vi5FMGvo6PyThB8OJjX7PMMusHjjs5HcX0OF4g@mail.gmail.com>
Subject: Re: [PATCH v7 0/8] Introduce HDP support for STM32MP platforms
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Antonio Borneo <antonio.borneo@foss.st.com>, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 9:43=E2=80=AFAM Cl=C3=A9ment Le Goffic
<clement.legoffic@foss.st.com> wrote:

> Cl=C3=A9ment Le Goffic (8):
>       dt-bindings: pinctrl: stm32: Introduce HDP
>       pinctrl: stm32: Introduce HDP driver
>       MAINTAINERS: add Cl=C3=A9ment Le Goffic as STM32 HDP maintainer

The three patches applied to the pinctrl tree.

>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp13
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp15
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp25
>       ARM: dts: stm32: add alternate pinmux for HDP pin and add HDP pinct=
rl node
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp157c-dk2 b=
oard

Please apply these through the SoC tree.

Yours,
Linus Walleij

