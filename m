Return-Path: <devicetree+bounces-195361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1058B01532
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 09:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47A7858242C
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 07:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F8E1F4621;
	Fri, 11 Jul 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="0EYSHf0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54ED1F1301
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 07:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752220313; cv=none; b=ciBlqS4oFWWtuolNEMY9e8vp7Desj3pGU/8xBMtC44z0fwGTDaZD0tfQOY/L7aAqbdYcczJKRJtXCzNyhvv2qF3xlm77YdEaZgZlwE56weIx/b7A1cI5Wi7ZJYW6b0bxn10YJ2rKkK6s91OMtQVtkTUToXrBKT58f3O9Y5d2WwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752220313; c=relaxed/simple;
	bh=xPBWnGeT+ZkowyBG+TGuWUGOrJimbpN1WNzJXeQmpqs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MAF5xeV0imQXxmFr/eysrPLIwJR2k/vhtAH5SSEHY46PDy37sru3oqiq5eqVdSXAywhC+k2oF5x9MqyH/H79JD5lnEHJhYv+su5BeCWCY+5zw3iRo4ndIZm7r/7ewVyKezst++llhdjr9oReN+nZSYKUf3kdsZQQX2GZV5WSDMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=0EYSHf0R; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-553b5165cf5so2295170e87.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 00:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752220310; x=1752825110; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPBWnGeT+ZkowyBG+TGuWUGOrJimbpN1WNzJXeQmpqs=;
        b=0EYSHf0RK26TIXN5nXPLeMqiNndHySiX3asGO19cLnTiOjrdN/ewzDEqwxdKkzvIZC
         XJ+x4qnBMVG4GmR6ootSLjZH8NpDqUJuJfuMf7oXvddLn1rUz07atY+UubP5ZU3gZusI
         AzLGZFQJ8rPQK+zTfHuxUN1U4/04WBTkcx5/4T+KrO6oKozM4/z0vmtF7RsFgy0B7ddp
         uWL1zQjDQQgy1S/lm3et9yiGfVJEh2UR6KlKXoRjJKC3/eaSc9EUYJRzQH378njuT+w+
         kmo0jnZl4DuzhTcLXLKG7C0qYjMH4DJdQQ2MfHv9DpCvDHbs60lSpJSnu3d4nng7rEBG
         UCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752220310; x=1752825110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xPBWnGeT+ZkowyBG+TGuWUGOrJimbpN1WNzJXeQmpqs=;
        b=u0zpPLDPGLF26LJG2epXKUvlMnFmh0ReIqIP/7RxD8dZqRjj+EhW7SVzBUBCmvuk1H
         7O+GnxvpgpPIOLds4SqCc+JOuqblIYYNFc9XrMI267PxSX17kqYswjsabyRXD3Ki82aT
         THLw74lEZ9ue/HmFS5gDrKDBQJjEBQ5jy8c4rDknnoWPGquMwaijBDzbcwJMrSanzuDC
         QV7B1xrjUCAx4FYkgMJRbfotUJvCw7Y2KeUbZ91SNZBFoGrr9Dj8v52+Dqw1bvTTZazC
         91NifbUaZkNKU24a6uI8O0Rd5q51xW2N7cb3gOzIUtt15p+m3r0S0eDgbvXsFxh1WF2K
         RJOw==
X-Forwarded-Encrypted: i=1; AJvYcCVa9Glaf8uoVRkM+uWECDnFmYCeZDMUynfkTlwIAlp7/IC2mveItW+aHw31PwmICCmny2tSyec+phBB@vger.kernel.org
X-Gm-Message-State: AOJu0YwjQr+2kXOPFgjhBUbN4oqeT4OUlV1rihSrB0muromT9Uk74WU/
	/TNtVqVVdJwelRRsrKXgtHxjjDWiz56PS6YEKvIV4zgb+3GIrsKwrkCvagrkTO2usaLS77kd0HC
	dN0kiNRFBjMDILT4YvjpZi+4y9azCzxv5of3CC4bBmg==
X-Gm-Gg: ASbGncueP3NxQbA3y5uI5F/KJIsCLd9+Cmu1p4VK8NtQqKdMIrFXuCaVRE2u44hDwTB
	mBFfjbXDGprXp6ZN1dEgjlO4zKcVdHcP80E2YElch72pWCQTSkQUerzLiu893fP4VZCcLMgWHAb
	oQ0KLc/stchqIWnxc+jbTrfYfsT8TNx8qNY3oGCcWSP12uNrPXS8m0bWI1AFkuUuFPMWcGxFPBR
	nH21L6z2feuwJafVZl015gwUO2N4/wbgvBW4A==
X-Google-Smtp-Source: AGHT+IGPyUWmLfi01YzuGstUS2Vbkw4PQMxBgxEyG73Fs26b9n6ZiV02FI5SvQ43Jmygm3NL3xJAyCrUFc/JGRtIixg=
X-Received: by 2002:ac2:4bcb:0:b0:553:acbf:e003 with SMTP id
 2adb3069b0e04-55a057dc13dmr388356e87.13.1752220309800; Fri, 11 Jul 2025
 00:51:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250625152839.193672-1-brgl@bgdev.pl> <42dd44ef-cd6f-4dce-bd40-6f5cb32c5fbb@oss.qualcomm.com>
In-Reply-To: <42dd44ef-cd6f-4dce-bd40-6f5cb32c5fbb@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 11 Jul 2025 09:51:38 +0200
X-Gm-Features: Ac12FXzYGxuxHuUsoBRUpadwCLcatnVpepQxQPlM_RsnnT6km9D2BJ7BVbgWLlk
Message-ID: <CAMRc=McshVar8j80CbSTyQTs0MLdX9JCHyVu3xTMZQc36-6ugA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: add debug UART pins
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 27, 2025 at 5:09=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 6/25/25 5:28 PM, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > We should not rely on the bootloader to set up the pinmux of the debug
> > UART port. Let's add pin definitions for uart4 to tlmm and bind them to
> > the relevant device node.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad

We're late into rc5 so gentle ping, any chance we could get this
queued for v6.17?

Bartosz

