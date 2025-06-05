Return-Path: <devicetree+bounces-183035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8C1ACEFBB
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 14:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE7EC163948
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 12:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF0922577E;
	Thu,  5 Jun 2025 12:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vn7mUxlR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895D8202F83
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 12:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128248; cv=none; b=oAmGXaclqYynOFv3SjbaMSrza2b/b3ILu9uQM1GCUTEiEe82mn3M4d3qURTwClXaZ1lwikiuWyn0/0Hbq6XdJIFcOpekgUk+SWKDT/gbYP7AQZdgwijOfIcomKacb2kExDYNF0K4CPkEnKmaDc5DuzQTaZ4Ob4tumUL7cPTc8mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128248; c=relaxed/simple;
	bh=dp0oUZbHoiqC69CUU3moHGnpZ4l39TaovVOwY49CM+Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kHe6ZUJA46SEjCEcqpNLjMbssZohvaiPvx4TEap2PcLJqVbPe9yJHgjt48dJMbDJjv0+1lD8rcCIEmDB4rM64eAeZCAxCfR3n5VjrO1jk2mnRi0So8gG6hEXnC4lZmUTcorpJTko7juYClEagscYT9Ytj7m5adJXv7U4fUBIsDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vn7mUxlR; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55324062ea8so1254141e87.3
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 05:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749128244; x=1749733044; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dp0oUZbHoiqC69CUU3moHGnpZ4l39TaovVOwY49CM+Y=;
        b=vn7mUxlRdflpTOj+Pf9h6Fm0Dl5dGEFlK9pjKAPnan8AFHnwLq+6TKGggDeqbtGyrO
         5cbtnk4Kpdd9dvchLv5QGnmwL7LSGaR3OmvsrWT13zWRSaLcgWPQ8ZPXZGSy+CRsk0hZ
         NaCFxmu71OseErHcESTxxNzfnv1iGf3xfCUU2U+IrE5qcy9W++J4OHwn245j38RElxla
         mH6ba4yabjVinzeAUjP1PvzZTgmKold+bzopLe25z3XFM9SaXwf1tqP53wih1RfixaNi
         WGkT3Y4fgIKpIZ31dRXY2crpLx5a99+1S4ERkiG4dq2ickkWxoMnnZ0ma8h7iFOycTEr
         RHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749128244; x=1749733044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dp0oUZbHoiqC69CUU3moHGnpZ4l39TaovVOwY49CM+Y=;
        b=Zx+CvvBB/B5Us82Xp4owiWekE+DKO+aO/bxiLmLYJr08qFrbHHU03GHPrZ/s+hkZ31
         YeGjNLTL/kmODIcStHDVrHYPyOR2Cq8XLQMiHG+9Fc8Pkws0RF/2GGPunH4iC7xB4Yhl
         1ZWX/QKKb2bExWkxxjO86yxNpfrRDO2AjxypFUcChpX1lO1gtRUlTPub3Rd27aDTEXvU
         591vDG5CisKWOLXkK9x/GAeKxbLGgmTljDQLEvT2WxeMf0oFiwxiyNJ+sHT4Ys1tx7A7
         yFXlVzJ3DClGkSGDeF3CNJvgLwamYF/ecCHAPCaTw7XuHMyswh1hqjvTJPZS4ibnh9fS
         qJQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXY1QaCKZm+0c0kIMmeMo0VPtCL8EkSgFs+aKDisTxwhvAOlnxoCbPZ3bjFkMRAlPAFF7M0qHq9q6td@vger.kernel.org
X-Gm-Message-State: AOJu0YxNUC6mcLQ2TUpm1dBSQSiViodee1io36eoXfdo7pXPT9cYxJTA
	tTM7eF1TcDRKYq3PF+9S9UAylEVOrdrQuqKyfC8fyUUJQ0nHE29gef4EHTENH8UKEZ+DWMUWx9Y
	i0t/ubmmXyULftdxOzJWu5nME8N4ZJWuqkhX3ffkemQ==
X-Gm-Gg: ASbGnctd5hILPQpDunKFgfS08Q1E9iCquD/OFyY6cysrggA/fGurGT3S+Nat8CXNu4h
	gCc1KCKTL+a/XnMDpzBN2eK79O5bWlV/ITlZX7VX8xFSOA8At77jsa9XSPOGfE+gl4kVpwfOpan
	mTCcwnGrBc4UFugIa2IE/n1Q8Gp0f//2YW
X-Google-Smtp-Source: AGHT+IH9Fc11r+z9z+t3mefrHIVAfP3iFGxFMGaJxOiqNg6l3VU72qxYnBUmiH/fduZ1DDpbUCP8vP1nlENlTDvVodQ=
X-Received: by 2002:a05:6512:131b:b0:553:2cef:2d2e with SMTP id
 2adb3069b0e04-55356bf062emr1989659e87.22.1749128243632; Thu, 05 Jun 2025
 05:57:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-hdp-upstream-v3-0-bd6ca199466a@foss.st.com> <20250523-hdp-upstream-v3-8-bd6ca199466a@foss.st.com>
In-Reply-To: <20250523-hdp-upstream-v3-8-bd6ca199466a@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Jun 2025 14:57:11 +0200
X-Gm-Features: AX0GCFtoxtlGiRHxvWStpchY7_DopJKwnpQcArCi5YFUYLwYh-hGYulMuAzYZ6s
Message-ID: <CACRpkdaXY1=v_HY9-PDZ=HYwJrP7P8ncZoCDm1da=vxoEazD4Q@mail.gmail.com>
Subject: Re: [PATCH v3 8/9] ARM: dts: stm32: add alternate pinmux for HDP pin
 and add HDP pinctrl node
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 23, 2025 at 2:40=E2=80=AFPM Cl=C3=A9ment Le Goffic
<clement.legoffic@foss.st.com> wrote:

> Introduce hdp node to output a user defined value on port hdp2.
> Add pinctrl nodes to be able to output this signal on one SoC pin.
>
> Signed-off-by: Cl=C3=A9ment Le Goffic <clement.legoffic@foss.st.com>

That's nice, this is exactly how pin control is supposed to be
used!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

