Return-Path: <devicetree+bounces-227910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60127BE5B90
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF13C18857DE
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164162E540C;
	Thu, 16 Oct 2025 22:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kgWntrFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17B52E03E1
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760655081; cv=none; b=EdU1vSUpQLK1Sc8+Krs2KTI0udHD8dW/ANwsVIHgrbUJ1b1W/xQvcUzjbPcKtLGXiltyjJhoaav/frcsCrS7NMCjaU7Ll6LxF2GQgkE2BSvT/3KUyHGfEWpFDyfJRC/4DEC7RZtP3I2kqeyOocewChUpKdBUuOp6Azlu+NuS9Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760655081; c=relaxed/simple;
	bh=kmEYRnE9eYaFqXKORkJ+PIJAmcGX5bvGN7hsJdgH+6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bvbqxz7a0mxlqrdpika/FLqUECi4uTUVYRxm4SF8HZ3y0zMVm79vQ5xmiKKUT2CdKTqJt9oBieN91y2hfILvpH9Ae9U7ce/WOt+7uYgysTVuZirgXQOP/b5+rffmCEqQhwNPxq/5hZA70739PtlsXNRb018vAFZA3C5OZo4QUAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kgWntrFf; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3761e5287c9so15746311fa.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760655077; x=1761259877; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmEYRnE9eYaFqXKORkJ+PIJAmcGX5bvGN7hsJdgH+6A=;
        b=kgWntrFfAfzS4ndV/cr7cLNh88RSLBL19wsltxNBmjtPMXK3QCKbPWcu2wUtsLhz2w
         8CHZ/MQuSCIIG+VtRngZolwKCLnxdob+5bUFvLbj3KAbLNYJhc8b8PWkUKE5xqQLHMKL
         JvHiwWkMO6cgddjkkTGFUJ0DNRCuoLifbH1t78CMQSfQDNLLR14HjDVY4U0vs9DApyVt
         WLWRff6ws2uEH/YzG7Svp2ZT5HJGd8x44D20ZFECG/AOtyZj/dpBM8LUWl2FTJ3MJIYo
         B3m6bf8Nt5kpaxz0x75hvXJp8iqhgsxxDHhh22h0lJyOg5zmksqtcnym+rTjGeHg9Shb
         xhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760655077; x=1761259877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kmEYRnE9eYaFqXKORkJ+PIJAmcGX5bvGN7hsJdgH+6A=;
        b=i1U4XlY+d/Ioir2uCS1wVRP8KxhUDKrBDzrsy0PSg3ZyTosufrnUu/5KJbdnSzVeeL
         UP/0pix5OIGjIvS7z+8nF8hwmTdMlqxS2V2xato6sEr+00QFs5gO0Hb5/lHHhfUQFdEP
         d0yKHgaeAd6r6KKQ8WXyJuXjabrmPjq2Qf9Da5PxgJLoEwfnvrprTRcAfNR49WbtNuCN
         cdJC0uTMxy1XheijD2wpdUPqUi5fmlGx3Gds6W+unnJE6Sgg9uMCFIt1namNIC7vvU0r
         l9DXQkGzBAi/17f/XT/aKXnQtS+/CvXXCTgh/uB3gIHjcA8SzEBHsYJbGNIt67LDpLF1
         NvbQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+Moo8t91hVMb7k2yeITPzqAG08HSIo1+c2cwlyBxTE34cXDukMf7StY6OUAup77K/yFYTEV+NsAQw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtsqd76rLsU4N3bvMDUBLGacOqEpBumILn1HDnUeDPtmlJ4ESs
	WX+c06D7zsjaLUCXKj3JCLTCJi8MAV1f7BgI1zYgI+Xvo/WpZjqGV8Nx45OjaDHqXXEX/YerArc
	19ovwWocO89fmUFymoX2i1V5/VKQacXBlkCeqDJoGYA==
X-Gm-Gg: ASbGncssxN5zMcYj+BJyUi1Dd0aLOtaneBDHFAHuUERW7cj+76kRAs2LCbEEJllnBGb
	tdRgOc0RLMs4QZv/XGca157CB5sDer4wXQ5Qu4Hl0ZDaGM5ZewbRIPBM4wuI+MJcuSdINN906oj
	T6n3LukDT5BvpyWAaW76cRJVfx9gfez8yM/lnYa0/I8mKOz7p3mgcOE5Mz1oAA4hgxjC9K+CqRE
	qDcuPDbp6eG7FhUKrB7nYwmbdfnYSKu49hyD/F4+5Kimes2/+THJYWQjiHo
X-Google-Smtp-Source: AGHT+IF2PsArzf82nnnIcXMKJafhbORBWTmQjtEV2MVSW4tFFx2e5kaE7Rul4euIEnksQA36PN7ysUqEvFRBOXSjgk0=
X-Received: by 2002:a2e:bc85:0:b0:351:8d16:d0bd with SMTP id
 38308e7fff4ca-3779791150fmr6358721fa.19.1760655077092; Thu, 16 Oct 2025
 15:51:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014015712.2922237-1-gary.yang@cixtech.com>
 <20251014015712.2922237-3-gary.yang@cixtech.com> <CACRpkdaXW-BFM=HvqLiSY-Mkmhso2ETmkZzOX328aSadUEBdSQ@mail.gmail.com>
 <PUZPR06MB5887BE1631D6D6959067FDA5EFE9A@PUZPR06MB5887.apcprd06.prod.outlook.com>
In-Reply-To: <PUZPR06MB5887BE1631D6D6959067FDA5EFE9A@PUZPR06MB5887.apcprd06.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Oct 2025 00:51:06 +0200
X-Gm-Features: AS18NWAn7wwy003ztU4tRuoGojKRToh6fuepHCkeLH2yGuI4i-eeI2-SuJ4p_pg
Message-ID: <CACRpkdaOuih=CVuGVgpfwP921g5KSd1Dm5v8oyyYq0pJdrzgHw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] pinctrl: cix: Add pin-controller support for sky1
To: Gary Yang <gary.yang@cixtech.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 16, 2025 at 7:41=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:

> GPIO IP on Sky1 is Cadence, not Synopsys designware. We wants to do
> it when upstream GPIO driver in the future.
> Are you agree?

Yes no problem. (I misremembered that it was Cadence, not Synopsys...)

When I look at the Cadence driver I see it needs some modifications
if it should work properly with GPIO ranges and interoperate with
pin controllers. It needs to call gpiochip_generic_request() and
gpiochip_generic_free() from its request/free functions, and
preferably also gpiochip_generic_config() which will extend
the gpiolib to call down to the pin controller and take control
over line properties.

But let's do that in a separate patch!

Yours,
Linus Walleij

