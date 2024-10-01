Return-Path: <devicetree+bounces-106793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5E498BC0B
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:27:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 434A528463E
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 12:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCDF1C242E;
	Tue,  1 Oct 2024 12:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JleF9r8C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC3C1C2422
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727785659; cv=none; b=sfhsqLrRjbkP61z8SHs+JQSr+zb+LIDobPbaO8gcOXtI0Jh6CGhIpCUsHgYQM1BRgtnon9MjawSQneTRMr4Zc7iEvXVeydlrQRd10JCdU12YPQZcudJtD1ZXoP6egSKnJffY3ibA6FhYp3iiUIAUKav95L4S6+SbB8e/b7r9zlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727785659; c=relaxed/simple;
	bh=SoCurHIkleGhUTp4khwR0zEhKLpu15VK4lI1dWVteZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J72DZU0raEVlSEB61a495kDdJUoC3oWjWzdU4RxWYozBEMsCCp4sKaGZ8Qgz2scz5wawNfNJP+3dfquhQRdI7NMvlnuNDqyWu2A9nz4uZjisNTuvVk2Y+E1c5LZWwomrQxKeNbdZOolTgdjY6Eow1VuHhGZ/6vnXZDDHw5lpn9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JleF9r8C; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53993c115cfso2601555e87.2
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 05:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727785656; x=1728390456; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SoCurHIkleGhUTp4khwR0zEhKLpu15VK4lI1dWVteZ0=;
        b=JleF9r8Cgi9SbBqVu55NMMmAoISmLTy0hHRyDrs6xJgV+eVRDowmb0NJmyMZQyxW+N
         CZI14fImA0403beZLe8mdGEAdZ3UV8JjR51ywik9gPK+N2V9blYDdnMl+DUQ51PD7diZ
         +pwARflZ8+DC6UNJqGdb821COFI3wNKtJHoEOANmTIfX9XdbHvRPLWRcvujcSrQkFQas
         arkNUQq+pzqX8BU04co41pNJUhxkAb0qjvXwAEcHpPoj/1/3/JRun5OKwgjDXCep1YdU
         //TyyJaKEDVSBvj7+yuZq8YlF5repxzxKGMvaQaWL9CAptFaNBq4xhN/e4gfNaBJcvHz
         NyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727785656; x=1728390456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SoCurHIkleGhUTp4khwR0zEhKLpu15VK4lI1dWVteZ0=;
        b=k9smXWeL8atmI5nQ3yNRaA5PsTZhagmRuWFQ5x0w0ke69SbS7rJRxqM4/+N/mnyf6x
         i/zMEjJBC7cblQYUM1x0gOINGQsyA7YZ8jIDGKGK1WnvYdDNC2fbmFWtnm6B5VQpcT8Z
         vP2AQMzbj+UmFBFrqIOlsFWn5ySpBUnV1KDygUmjn69ktT3BF5si9zUCOP0C1YHs7d08
         /qXsLUGfWNUEe6N9TabMaDQISQE1EA3/GBC6Z2/v/FK8fgrm8fcNgKI7A5HTBomDl3WP
         yirDxmx8Ql5V2xPnOTH2t4DN7TeO9Mdp/3QbZj7KWYKVKnhAmtUbGT7AFvlmQzPl2tXv
         mE6w==
X-Forwarded-Encrypted: i=1; AJvYcCWf0SAh4HmWjmS/b4lfRrdwRlOLVXdprjiEnbRbci5tS5cDFlgGYJH4zhfS4Y+TK/QRo+YahmzgrZ9R@vger.kernel.org
X-Gm-Message-State: AOJu0YxETZCmTaY4O9HD1hiTAYLh3KQ4T4AiWoPvZfUzXBgkr3QJ4P/A
	iZjneVwRQbkcix577lbbaUdklT6vDNMXtKIx5QYcGDT/akxMWGJpurjTOlrjG9UV9uDWA4yUDfE
	zZqLG2hXn3cpQ4iBE6Bd3puIF+FAUDarNhQXtEg==
X-Google-Smtp-Source: AGHT+IG8TzlpP6uZVriUb03XpH7zYmc6S6jIBvK4noZhBbrXE9sWhgUKi4i+nF2zm0Fpa+WkCA4CyjTFVSaUXh1u58w=
X-Received: by 2002:a05:6512:3ba0:b0:52c:d6a1:5734 with SMTP id
 2adb3069b0e04-5389fc3ad9bmr8742854e87.14.1727785656074; Tue, 01 Oct 2024
 05:27:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240926-k230-pinctrl-v2-0-a9a36fba4b34@163.com>
In-Reply-To: <20240926-k230-pinctrl-v2-0-a9a36fba4b34@163.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 14:27:25 +0200
Message-ID: <CACRpkdYk9aCp7mdWJJTT-1cwNZC4RN_eB6v5rducDY5MGJ_dbg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add initial support for Canaan Kendryte K230 pinctrl
To: Ze Huang <18771902331@163.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 5:58=E2=80=AFPM Ze Huang <18771902331@163.com> wrot=
e:

> This patch series introduces support for the pinctrl driver of the Canaan
> K230 SoC. The K230 SoC features 64 IO pins, each of which can be configur=
ed
> for up to five different functions.
>
> The controller manages the entire pin configuration and multiplexing
> through a single register, which control features such as schmitt trigger=
,
> drive strength, bias pull-up/down, input/output enable, power source, and
> mux mode.
>
> The changes have been tested on CanMV-K230-V1.1 board.
>
> The pin function definition can be found here [1], and most of the DTS da=
ta
> was converted from the vendor's code [2].

Bindings ACKed and patches look good to I applied patch
1 & 2 to the pin control tree.

Please funnel patch 3 through the SoC tree.

> prerequisite-message-id: <tencent_22BA0425B4DF1CA1713B62E4423C1BFBF809@qq=
.com>
> prerequisite-patch-id: 704efc6e76814e1877748959d7319d558c8386c1
> prerequisite-patch-id: c2144cf468c57b856830a61615ba6ba501e8ec58
> prerequisite-patch-id: ced4a01ccd8ddab2fd308d543ddf47bd1641518a
> prerequisite-patch-id: f8b983b301d0c14f1448b9e4c321262a509e061e
> prerequisite-patch-id: 834b65b6a2b037daed5cffc6a41963622568dc9c
> prerequisite-patch-id: 2401703b57448c9ea2c3dc7650b4502491a28944

I don't know about all this stuff but neither bindings or code seems
to contain anything that won't compile so I just assume that any of these
dependencies are purely for patch 3/3 and I nothing blocks me
merging patches 1 & 2 so I just went ahead with that.

Yours,
Linus Walleij

