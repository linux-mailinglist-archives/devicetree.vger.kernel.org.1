Return-Path: <devicetree+bounces-229113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD21BF3BA2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:26:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1D4894E6780
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 983C8334C00;
	Mon, 20 Oct 2025 21:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7MAEpQk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA4B334692
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 21:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760995560; cv=none; b=htIuq7LM5IKqWTM56RikEA+CDKzVICT+KU/FPL6PYpjSNDUHakYqq7FuZLUMeYIuvVBP+ZnIYvmeyE/qjXQT72v2Fhw9zWUHSgb2YimgFSQ9Yp5tEzNGTof4ykiihA4TbnkNIZjy1BUsePLp6fY61py3AAL5o3e2P0c3pLrXPrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760995560; c=relaxed/simple;
	bh=3ficstr08eO/ho+LvgoSlORtGJi90d5fGOsDZArihyE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bdFUHaHPdtrtAAvQSQn3sTNOpOG/V/4u9usT00QuxaS7VBH3gVl1Q6VvPBdjTnwJyB8aBROtpmztJU2tkrBfHqBGP3SmVoc1k1sBeOHpl8aO9UeHg4GlXKGkGM+x8G2E7DEEHIAQXScuFo1Z+yuujvB5KEHblpTLaQWVztDKmMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T7MAEpQk; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-78488cdc20aso30056417b3.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760995558; x=1761600358; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ficstr08eO/ho+LvgoSlORtGJi90d5fGOsDZArihyE=;
        b=T7MAEpQkVpGf+lELgQcarCHJ7WfDW76bSwYS25Bouli5STkVhZ0xIorybcjQzOVGeg
         UUcqRPedHJqHdW3KnqaXyyD6v0+bqV/pfZ1Z0vv6jlrSXif1atKM91WdS5nqRv/enrke
         osXULzwnQmS3n0omif9E4ewC0mcmjZdQrxZioeLwZyyLiGEydfI6C1kWtuCK5FmaE2/L
         t4vIVxQSBPy0SQerNyju3kg25mypmH+zDldvugz9FrIJOPWIuEQ8je4ZNFQUAqruXIMK
         QFyeSPmrIwhMtzX5YzjmEwwu1y5eaJJZkVPXvG4jeJTL/IpLKExUUQ/ZIqsrE6w9iv4M
         Gjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760995558; x=1761600358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ficstr08eO/ho+LvgoSlORtGJi90d5fGOsDZArihyE=;
        b=Gh2oFZIg5OsdDRXD1l9QvgDnM78B2kibZrAurmdZvZgjFQk3cFt4BzSrU2IW0aqQe2
         vSLPGyPk6XZkgVEJF98nTmIZGpIIRQnAKzjHE2rHbneO0PMqi/HxIckOQ7+nIDr7UTKa
         PRR2RPC0Q49hK0cQ172OdF/0q/FhejEJkMrkQ3raaA3BPO/Z+kZ0U0k/AZFx7SdYjxmM
         ZBA7h1KEGJIHpcNv/KwIrG2iIN0xCiauAsSJpiyUEqMg5+9mvSGxIv5qlH3p9NiG2ZoX
         I5h+dLjtcLfiFqelfUb43nsyAxeh8i1CGzdbfXgXTiAylszkEmPGqIjocnJdSv5xhdrx
         GxOw==
X-Forwarded-Encrypted: i=1; AJvYcCW04ZAZbNY47c1WAL1m7C+2EnhLC3iQmHtKkOJuxRUOVCLRw9EpafxeSoJDyoH80zKhFlh6RvFKIBiN@vger.kernel.org
X-Gm-Message-State: AOJu0YwuiDwETcoD2IpIK9BXhqLcC4LRf/Va1qnEwAGqj91/1UQFR32L
	ZvO3CSwMbyY+8o2mHKFnTeG36xTP/0yCnnDl98cmIY49KKM0icEwwjNW83LvZ0gF7kXhhvm1m6l
	mjhMXddLqTGhtDS5FDp/AbB/iBo1lW6jf+1mzRt9A0A==
X-Gm-Gg: ASbGncuA2lOAGb9QOvBNoULC8Z9XxXp3Ixen+uao3BhxoFq9TSlCwXHgvi83Z+wpoB5
	nGYeEUYb15BqNDSmtgauI3sjNU8vmSPvYplw2DiGMl5Cru48Kp3lTSBLK7+uhELEAUiz0TdnlQ0
	pdaUXnphoVdYfVfOkmVYkrQ7I0+az6qFq0SD/3Px0S+GJN/yBaJs0BjnZpQ1DAQ6AM5svDio48u
	osCcFhCf2C3uOUM9Y7a23JHzWyz0d4qmwoDiPIRVpFUB2eHizSU/l37ajPWn+Am6xbQDyk=
X-Google-Smtp-Source: AGHT+IFEK+u7rcHcFq2YCBURn2SZqsS5EQVHgyo+WSTkrxddRAm9NFxgRGfkZifZkr4k8srGrUAoxt4PUGQB/cXcduk=
X-Received: by 2002:a05:690e:2505:10b0:63c:efd6:c607 with SMTP id
 956f58d0204a3-63e160d904emr10557853d50.3.1760995557991; Mon, 20 Oct 2025
 14:25:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 23:25:45 +0200
X-Gm-Features: AS18NWAZD7qKc4BMmb2MB0EYqlsiZhHQMPkiNfMmUGQwwkY6EwztrFsHH2m1viI
Message-ID: <CACRpkdaNJ4g_yYkwJHORtOdtxgYWMgmN1FZNj6yjDtZyc01CYg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin
 configuration properties
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 9:11=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:

> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the pin configuration properties supported by the RZ/T2H pinctrl
> driver. The RZ/T2H SoC supports configuring various electrical properties
> through the DRCTLm (I/O Buffer Function Switching) registers.

I was going to provide some comments but Conor had already given
exactly the same comments that I would add myself, so looking
forward to the next version.

Yours,
Linus Walleij

