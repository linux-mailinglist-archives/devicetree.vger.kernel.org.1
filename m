Return-Path: <devicetree+bounces-192967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D550AF8B43
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCB031893797
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B3B92F94B8;
	Fri,  4 Jul 2025 08:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MllK1c7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718C8328B00
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616170; cv=none; b=VhCFnNedrxh8baS3z0FhuejyRdUvd1qLXU6arrPgKrSLc4ec2Lor3Soiggz2ETqdcXhsUh/jyvDCyL5etylNvTRwHsuSYqBrJsKQGdYKUxJnmfyf6SfOhAEeby1CBUlsoYIsCSCIoONrcrh61on3jSstc4gC8QXu/cugoksm+2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616170; c=relaxed/simple;
	bh=46Q1fd2UmAUeRYeGhPM7wSGhz2EFf4uCAOpm7Lsa8zU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LdabOVyzPPM95KCGIsr01mqX4D7otnHjqZNcqeYjlN0BZUFHa61/fGeydrgxheg5OOfTz3ji3VZpEFaBv+08skNdRXJvwVYDVWdo5e7cxIpwxg1f15ut5qdtg47AsORPUfxW5tfamyGXZAWnvoMHF47SVUN35E3CwMvQze91I2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MllK1c7P; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55516abe02cso739196e87.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751616166; x=1752220966; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=46Q1fd2UmAUeRYeGhPM7wSGhz2EFf4uCAOpm7Lsa8zU=;
        b=MllK1c7PNs9qQQbLSM7G+74lLv8BXWTBxGZK299gH0fjH5la+q98CSR84sP76JXcg1
         k49QquKoLT2I+0t4QKL3DJZtCiPdGpkjmfsp+kYxFyEUFj18mWgHTl8kvm0SMkl32ywW
         LW+1xGIl0XbVJV2mfWFhUTg1AiBjcHEIDAL8C37FDRMNSos6/ddA1cudanLbzR5WFZo0
         k5oJnnRXdw3rv1C4V3BBlA5zev1PBcezg3wLPO23PBkuVXjyM/Ua6iThDN4KZr/bR+sH
         wupHSciSCbjnE8YURVmPK2HJS5dfdy/KyWqrALT2EAIT/zhkqFOpxePaV0KCfNR8x+Fn
         +OuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751616166; x=1752220966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=46Q1fd2UmAUeRYeGhPM7wSGhz2EFf4uCAOpm7Lsa8zU=;
        b=ZX51Jz7dT4fg4kL22d7H6KdXk0lUs0z/KCovuu9nY2pLeoTnygdP9TNsquzYHldd1N
         oidZ8nappz7Sa1fBAkYC5PSaIJcV2KIOcOJniMj0ajjF4TOlbv4uvhVHqU58uKU+WB8r
         Kp8qTv09gRsASmZb39THr/QOnrArenqg1M/InE1a5IDwaf+PmQZfoEYOfAyY3++s4R4L
         xLCy6MPgPgZGCbPlk5atbw8L6ScHFXM1017HaWGg2C0USlObO9Tql6ju4OpCsaphhU+0
         Xq9230uTvOF99d/nICEEl1Nqz71v2xtcWxUwYgptHCs2Zo27DHELgmEOabV2HVexpmwp
         LQBg==
X-Forwarded-Encrypted: i=1; AJvYcCUDD5wAncA2hWJARwHzsOH5Psi3P7sfgvcHeNyypyOFLR5VFZ7RL2IGtSHyh5ZtezMpIzr0ywQTzsOr@vger.kernel.org
X-Gm-Message-State: AOJu0YwNGi6na3MbKqHRZOWpA5X6a1ao76OUZVhg5+nLckgM077I7qZA
	gjLMiP6EqRU3/pYaWgzUFVok7h+uLPjpXXRjfEIYa85Z4I1PPdQI/Y8Zc5yZMQThjq3Pbq+wkH+
	di79e1bgtPIibWt6EjsOGtvJpytZAKQvFDr/IDTjK+Q==
X-Gm-Gg: ASbGncvpOoNSX/NPnLi3ni4L6wQ4KiD7ejT/r53ojhrIkBsmSKFckVO6vtBfkdYH0Oa
	Y2cflBkDRHzIVaFkV5m4cjbyHBY8u9AJVpwcyVqXu3i2x9EZSlrIIJAMdSY1Ik7Gld9JDaAzEsZ
	BygtjZbMOQFeBwcKF+x2DCYwVjfoBLJRzfnxuXW4fRdvU=
X-Google-Smtp-Source: AGHT+IEViFXCMcn+u4hb5R0d0ojGEnFpfDhNI4g0r3Lc44CnC/koM/mbdYAwzUnF/KlRRn9NNEY5bmwt+E5RollIb+w=
X-Received: by 2002:a05:6512:1102:b0:550:e692:611b with SMTP id
 2adb3069b0e04-5565baa727cmr564962e87.16.1751616165679; Fri, 04 Jul 2025
 01:02:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250626080923.632789-1-paulk@sys-base.io> <20250626080923.632789-2-paulk@sys-base.io>
In-Reply-To: <20250626080923.632789-2-paulk@sys-base.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Jul 2025 10:02:34 +0200
X-Gm-Features: Ac12FXzEoK3lIRrRhHYuQcLxyMKzE37BJ8MYgC7nOBJcQ6FysNDrbqPOTwFxTFY
Message-ID: <CACRpkdZ+kw0=X5L90Wuno9GjEi3pEnAV_bdJX=ELUxCbk5spRA@mail.gmail.com>
Subject: Re: [PATCH 1/5] pinctrl: sunxi: Fix a100 emac pin function name
To: Paul Kocialkowski <paulk@sys-base.io>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 26, 2025 at 10:11=E2=80=AFAM Paul Kocialkowski <paulk@sys-base.=
io> wrote:

> The Allwinner A100/A133 only has a single emac instance, which is
> referred to as "emac" everywhere. Fix the pin names to drop the
> trailing "0" that has no reason to be.
>
> Fixes: 473436e7647d ("pinctrl: sunxi: add support for the Allwinner A100 =
pin controller")
> Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>

This patch 1/5 applied to the pin control tree.

Yours,
Linus Walleij

