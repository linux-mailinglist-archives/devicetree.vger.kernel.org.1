Return-Path: <devicetree+bounces-156824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 508A7A5DA13
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:01:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A247189D4E4
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA4723C8B9;
	Wed, 12 Mar 2025 10:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="LM+WMKTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6DC3232
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741773675; cv=none; b=HpQKPqEVDpJDIqsV+7CZNlxZvnslS2j7nluL/ZoFKypO1N+0xc/RIJunEnQLvIyNT5XwrYD4zrCfzOUUv+tizKhWv2XoM4BnybKjtbAmBITRM2zILR/9L/hl2flQdJm235JS/4Rl9iJ0l4Tf5JF1oQ1xv9rImTd4nZaoGwxUGxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741773675; c=relaxed/simple;
	bh=H70cromMzBc7G1Dxdn7Ujl+1TcPLdylbz6SBFKEdUOo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W7wk1HL5khNmDTHgZLkihTKVf2jM7/1QNoQU/MpPCJ3/RjOKIFZ59HOgGOaOm91BV29objxP8WWaMQg+vuq8J+KjU97ypjILQczl/zUxzKoJvi2aFj4joLC4zEtQrld8BKufEFg0HqkeVveA72fYeKtbYAVOsbPit17YHxX0268=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=LM+WMKTE; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-548409cd2a8so6360339e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741773672; x=1742378472; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H70cromMzBc7G1Dxdn7Ujl+1TcPLdylbz6SBFKEdUOo=;
        b=LM+WMKTEtBro67ucRHGFG82QurBUVVTKueWjq6fDb4ct1i3KejryugfkoRLxmXodsT
         gEpX5bmbXgc0Pia5+kYM/u22mb5eE2PU965J+nKcNzU+gnD5g0qPMC+AGwDIvQNU6OvV
         4gMhJu81ak6Plrm7PcR85qREnu0ChRdO7Emv1PqiXCRAnO4HUygSvj4GME7wukOG4JqE
         nNvagmkxB0k4nQPKYBG9kk4nnP3qFHWfkRXv4BzJq1kZiCUbpYTyee0J/hz4Ljbj0zUU
         mRyJzAftdRRvSOocXvmTHIPX+TQQJF6mMMuI2P28z22iLTQX56T6IOJLTq83PNJ5WsYz
         J8xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741773672; x=1742378472;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H70cromMzBc7G1Dxdn7Ujl+1TcPLdylbz6SBFKEdUOo=;
        b=FGNEAUsOlLqdo1o2vV5tYZnzuxbh+ZGmVoUKHsCgW5tMHRFzZVk0FnQuEtJbr4Nw6s
         3HZd/WieVyLwFt8zoDwrqsMZs3Xhfdeiy/lgIeBVjt7C6S47aoeBNgjXfLsr0RogFVKH
         QebygD1rDrvsPLO7P4GlGfs3CepF0we0F2/SZ2E8Zov5TLfYfbrDdNltUrIWV7kWcAMd
         1pi0QAOVwYOtnq3B4Y2KP46TEs1liRwkArDvkhQQxcisp/CzGyeZEB0S//4IJyCnEkaP
         Y361mN4ZugImPaPEXZoGkwvguMa7lMQIY/R92bmgXtBgZXMYOFsxlUs8KUixpKHglUkf
         GYCA==
X-Forwarded-Encrypted: i=1; AJvYcCUajNaOhaes95qbm+q7M3D64pq1zGEO2O4T+bcPT+g0zaFpC2gntDy7RIpsbIxOdvAuUpFLeHgp+xWT@vger.kernel.org
X-Gm-Message-State: AOJu0YzyKtQ5Ocbop7ev2F8PP0ENL4qg8FPKUvxSXh+l9DT/+oCAlwCW
	IhPMLIaC2xK5sN0UEw0k4v2xpZ4Uz1Cq6l/7TYwhhqCn6ztQH02gcQ5XwwJ9AES7iFzr9f9ITRB
	7uqQduq6mXrAt0vbnkeqfQNZY4fdhaiEGUERWHg==
X-Gm-Gg: ASbGncvHRY3w81dWb7TeFsokgXFmU5n/MBKEw/MfeP/cBzf2bRihtmNmEERnvXOqJwe
	+wPlAkgXIraYK41e5CPVaTdMnOn8pSlJGBfXYLkvzmLTFage0pi7CBZTcgWiqULboFqORGbkgw7
	0UH/y0+1rVEZJe2JfZBUcoOuXG+ScVb2n+4sBheq8ghck25gDtS3p6r4KwcA==
X-Google-Smtp-Source: AGHT+IF3JsnGDmtC8cFGGo9UJ3LwBpBWNU0LU9dhkqF7FdQC0xv6vW0juUcQgoshe4Cj7uKAJnjHv9k5v01339Iy9Rw=
X-Received: by 2002:a05:6512:220a:b0:545:49d:547a with SMTP id
 2adb3069b0e04-54990e5dac1mr7224533e87.18.1741773671774; Wed, 12 Mar 2025
 03:01:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250312-max77759-mfd-v4-0-b908d606c8cb@linaro.org> <20250312-max77759-mfd-v4-1-b908d606c8cb@linaro.org>
In-Reply-To: <20250312-max77759-mfd-v4-1-b908d606c8cb@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 12 Mar 2025 11:01:00 +0100
X-Gm-Features: AQ5f1Jp2A-9h5YN6Ed4bZKIBT4UotjU0jd3UNyhUp6pXeEy9BD3imBjHO6ZUslo
Message-ID: <CAMRc=Mddcku1vokKQzxyJOtvpdJSjM2TFvG9r0tnZ_qY7HBGJA@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: gpio: add max77759 binding
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 12, 2025 at 10:26=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@=
linaro.org> wrote:
>
> The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> Port Controller (TCPC), NVMEM, and a GPIO expander.
>
> This describes its GPIO module.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

