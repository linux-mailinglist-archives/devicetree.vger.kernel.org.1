Return-Path: <devicetree+bounces-107812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600D990250
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 13:45:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52113B22180
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 11:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EACA15B11F;
	Fri,  4 Oct 2024 11:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HjR8GugK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5E6157A55
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 11:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728042303; cv=none; b=qZ+RPpe+roO0fbZCoiMq7a3lkzJmUScrAsN6TwZVst84CUj5IWjV6BUqzoKTrDyIxZkDDtFUUc4yxeLMSlaVEWdulAaJAaDuGCpgNID/ImtIBFppeXxNNlKWMWz8M5HyalwrKJvuWHdHkAgwIhNGGXS4FXTA8P/38HCezv8xCz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728042303; c=relaxed/simple;
	bh=ddGvXf1L/Fq3c4RMPyxrOA14cqgWI9P90J4zJ4pJs4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JsGJIry7yye/SgqUXPygZiXOOkWbPcjSvgf/XIy43vcerGi5zoih+pEIjwd6pFQpBovpxC7su69ZIERCDSaZWYeuAifd2t/tbVSGzbBmOxJdviMUvFjvl8dSSzJL+VH1tKO5wWT+xBEPH+D6vPPZNBDRrTuayyjYgSofK1fEwa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HjR8GugK; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fac47f0b1aso25911731fa.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 04:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728042299; x=1728647099; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Khwkr05lsMPVSpq7TCjaX0gPVi7sWovxm4CAOdt4/3s=;
        b=HjR8GugKRCDjLPeodO8HloyjgQ1OLPxVoLDlQlXKO2iSZOkvjJy0DTvLv2+4rxk8A2
         9QtantMsXz4bxkjCWgpec8Nhg9JuUgDOeTjdVEFVgGtnNqcOMvwq36OgW1nPFYPT2760
         H7fUVJRbq7EXeYfn7sEZMaTr1OYR5cJZuYS+tpPdlNKEtALPfKBeh9XkJ/e0Ta61XMXh
         c6QGKeRXtjX5gB1uBpNfUrarXzxpsKiV52MAsiv86aduOF4HO7FMIT67lAttqYVjp6Ak
         EoeC3GBL1oqtoKOPwM9D7toIcqNiuokz8gBOFcgK6dl/x0Xsbosk7zgOdMuVK+3hc5uu
         If+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728042299; x=1728647099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Khwkr05lsMPVSpq7TCjaX0gPVi7sWovxm4CAOdt4/3s=;
        b=v1yTqtrz1YOAOWNX3tLa3e4MsPhIO90dPvLWsVC9m+8U/0qkl1kRMlHxta5ZB/bJv3
         rm4VLrLJ7inqjmPY8691Z2+wjASByPUZ8vdpovLo+MLNRWojjI+3UA2DRoKSovB0O90C
         CabgbW1XXBVCmhCDf49LEYudNyD4sdATiegl2QIV3KG7Qcf1FGcVP9VlKtAGzAlosZBZ
         cX6kGcEh8GyDUbeTj+7fMdgkQzJ0U9ONZBdlTs/p00T2soiXlTtXpNk2jWflAcxAUFMQ
         raGigNjk7fza9Uc2+CEJWdND0fSziJiYms7MFuzRyS24ZmdRfuOZlCbgQMtZTAebb3ii
         9O0w==
X-Forwarded-Encrypted: i=1; AJvYcCU8x9ePm72td+TwT5H/ZZWq/LplAFJK57tUj1nmzT1T7MIXpAv9+X5av/1fVbwRdI9AsJLbyB6gH+Ub@vger.kernel.org
X-Gm-Message-State: AOJu0YwHsXxsPwus9tpOIwn3IKNkR4ntpjT5+YjrffQC9j+BGE+afS5B
	UrXubfcBn5uoqtUnGEwZUrBIjHyantZqaT6MDgE9fstiUoGsgp+AVK34C2nmUBTIsarxPcDWqTE
	GHr/3GJ57SnDpIMpz9TZG/z4a+GU9A3dJTIeRnQ==
X-Google-Smtp-Source: AGHT+IGiTQzYERLjm/jzUGh/crV6ATYuQpv4nXIEVrS7JrXOOcQzJB/z1NXK08Yox/oqqZ9WwDQ8tFMFsN0Zrte3h1I=
X-Received: by 2002:a05:651c:b22:b0:2fa:d4c1:3b6b with SMTP id
 38308e7fff4ca-2faf3d74e2cmr12168961fa.33.1728042299452; Fri, 04 Oct 2024
 04:44:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241002232804.3867-1-exxxxkc@getgoogleoff.me> <20241002232804.3867-5-exxxxkc@getgoogleoff.me>
In-Reply-To: <20241002232804.3867-5-exxxxkc@getgoogleoff.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2024 13:44:47 +0200
Message-ID: <CACRpkdZnBBAEgHZ=HShwvaXaN-6icC5hzwHqDNWWy_PKJDh+Fw@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] pinctrl: qcom: ipq5018: allow it to be bulid on arm32
To: Karl Chan <exxxxkc@getgoogleoff.me>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 3, 2024 at 1:29=E2=80=AFAM Karl Chan <exxxxkc@getgoogleoff.me> =
wrote:

> There are some ipq5018 based device's firmware only can able to boot
> arm32 but the pinctrl driver dont allow it to be compiled on
> arm32.Therefore this patch needed for those devices.
>
> Signed-off-by: Karl Chan <exxxxkc@getgoogleoff.me>
(...)
> -       depends on ARM64 || COMPILE_TEST
> +       depends on ARM || ARM64 || COMPILE_TEST

Can we get some more context for this?

Is this another one of those cases where the SoC is actually a
64bit core but vendors just choose to run it in 32bit mode because
that is what they want or what is the reason here? AFAIK
IPQ5018 is always Cortex-A53?

I just want to know if this is something we should encourage
or leave out-of-tree.

Yours,
Linus Walleij

