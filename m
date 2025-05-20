Return-Path: <devicetree+bounces-179016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88008ABE68B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:55:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0317D3AFBAE
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62CE425F795;
	Tue, 20 May 2025 21:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nutWqD7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8735B25EF9F
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747778026; cv=none; b=EkIh8Fc0IU0+MKr0drIHRcvGeTnShwiz15ZRI379G1qvsk9jXo2csfF9tPJijNnMsiRMQL3nxK5Qbk3ZrXhyfTWg2RSS80EBXiPhqjXcluNDD/scTa7eIooYqtLXkeZ3NDuOsTb7DueeqfWq89StRAT9BI/ZOCfk9bVJm+hnjbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747778026; c=relaxed/simple;
	bh=BuzhlNqyJc6n1p51Wy6w2ws8ML+CaNuBHjlDaIn4jws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=inxgP2oQ6YvIJ2l+CSm034h10C7A/6vevekkqQE2lkgpP1nYRVyKuEitnwn/4KTh+Fo3GD7XP5TxHLN/o8rgt11J9uie7prw+kN2V2BtEeSTkgQ1UdacS2vOXOdWKwI+GM6UI4OwPheNVCaR8SM0PcLs34K4DIin8FOx5W/e+Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nutWqD7g; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54d6f93316dso7182429e87.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747778022; x=1748382822; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BuzhlNqyJc6n1p51Wy6w2ws8ML+CaNuBHjlDaIn4jws=;
        b=nutWqD7glZEgkaSZ/RoQGFc/OqvDGl1RAgADhvC3VXtdMFoCPkxzEjWH296NLtl1sf
         +kMZns6iB7XOCdGlfhvAdbNZKvFZVf8WHY7B2FdKTK+xOMei5ZOveRub8lnEha/NSWMc
         em460iPvguqfAdXkdEf7TuRuIQd92UhgaiuQmorKOiWpOWUymlLtikACQqJHOrHLsT/N
         Xll8UmAw3MunwXCe1HId099MhFhvUqjpoQZZhjROnVDB7i3/GBM7txz7Sf1MCpc0Xfqu
         yLKgdU5mlKUP15NL/scDj0xakDheW90qZ05H+xY2t+0vALlQCMK7qxYAqZxl4uTwr79K
         /6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747778022; x=1748382822;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuzhlNqyJc6n1p51Wy6w2ws8ML+CaNuBHjlDaIn4jws=;
        b=Qu8dfHFPFJoCPAUq5o3g+4ZcoekacyRu8JBf0on8jAw9xEaP9wJ+xAcHhUklgiUrsu
         nwUzaLkbhBRjh5s3adhwcsaAye4joYFRYVVI6PPCRUFpq4mPpHombgqaDT4G1eAoUCeh
         PDqUJKDIVYlPBjA24K26QUXbGX3A9AAU486J+p0HHS4/qoALxzeJNQCvtmRPa+xLKQmt
         gqDXE6Oi+4xtitbHPxquth/xqULtwBGC5pM2VJM8gSH2wbefe2xxoKhxcNH3x6w3oDH9
         ZyvjZ/bD4aY3AtzO6NZwdl8eOTXCPuFdcN2XPn1HRgF6XoU8Fd+IeZp4yXFlrUkjRKtM
         V2Xg==
X-Forwarded-Encrypted: i=1; AJvYcCWBkgQ+gtpDs4vgXDJrdelaaBt4TNon0g//BfMu9VEXhm2plqQj5JYcKtDcwhcHR7slQCCXY526gb8E@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ37U8MaG2ppgSZVXp8V6Mi7LlZK/xfgUxsXzNPuM4PlIwK4m6
	YHzt6t1UscN0hw/Ff1Zv5VSEgcmtbegnlpdFyQh70LaWDLWfTDW2jC1ZqI8Hh9QNBelfph4s7i0
	A2EKuz55g3ME4TNoc+BuDUIPX2wlJ5WO4wwDSpeVN+g==
X-Gm-Gg: ASbGnct0uQCfftLIzDj9wVntKmpYwYdKv+zH4oOhmDnwKabuZgtOuHKLLtZAwnrfTL0
	ophrfr72Bs9vhz1Wzn7GN+StQNnt+vBfdg3P1UsHcz23mJxvxr6OERPh9vff4WNFayHYnCfisiX
	sDDDDEubpLhhceQX0UvOcmo0hZKrgUiQPI
X-Google-Smtp-Source: AGHT+IFDmcGo1axArvFCz2dx6uFyFqkML6kJ22pcoHKMMAfAxgp0/2ysMJ6m5JO5I5AyQlwSQbgeg4ij02FeQU7FSkQ=
X-Received: by 2002:a05:6512:6317:b0:540:2fd2:6c87 with SMTP id
 2adb3069b0e04-550e71b4e43mr5955773e87.16.1747778021614; Tue, 20 May 2025
 14:53:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250516-gpio-dts-v1-1-a9c3505f54c5@nxp.com>
In-Reply-To: <20250516-gpio-dts-v1-1-a9c3505f54c5@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 20 May 2025 23:53:30 +0200
X-Gm-Features: AX0GCFsoSIZvC7lGTFU51O8wPs6RsCUHG2kDfSqZhe8h4hkLrUFi0bw--0irOtg
Message-ID: <CACRpkdZRdFLyGJrgAf32V8snnYW1gPvbtxSPQaSBFSMkt+y08w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: add ngpios for vf610 compatible gpio controllers
To: Haibo Chen <haibo.chen@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Haibo,

On Fri, May 16, 2025 at 12:57=E2=80=AFPM Haibo Chen <haibo.chen@nxp.com> wr=
ote:

> After commit da5dd31efd24 ("gpio: vf610: Switch to gpio-mmio"), vf610
> gpio driver no more use the static number 32 for gc->ngpio, user has a
> chance to config it through device tree for each port.
>
> And some gpio controllers did have less pads. So add 'ngpios' here,
> this can save some memory when request bitmap, and also show user
> more accurate information when use gpio tools.
>
> Besides, some gpio controllers have hole in the gpio ranges, so use
> 'gpio-reserved-ranges' to cover that, then the gpioinfo tool show the
> correct result.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

the patch looks (very) good, but it seems the .yaml DT bindings need
to be updated with ngpios as well.

Yours,
Linus Walleij

