Return-Path: <devicetree+bounces-90665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB279464B3
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 22:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D653B20FDC
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 20:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E4EB4F615;
	Fri,  2 Aug 2024 20:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uqV9yFiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E83249634
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 20:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722632226; cv=none; b=nSB6cx40puOU1CqUxMBJxgKCM9jSpOOMVhOSa21atEr8adBBrwjr5Kby0z20M0A5pwUMED74FAPnKb8GyXsUrEedJ7eRwWNYeXNA00Dt/l7GhzFfyA/RhcRyETyI/k3A+RcHG2zcQio43Wb7Tw9NGnQQpW/TCupxkPLbTS3C2A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722632226; c=relaxed/simple;
	bh=EHoufGKZeNUryCyLA/+zkaxEPpoianrLqYlTOdN9QGs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J92mdjfhnJCceS/xHqst5Z/jbxJHw8EF4xZPU9xI1QLGItcnkkWDGzt8uwoBIw58QlolFaE3BqZ6qxkBGkWay2/MYR+ijs0umNK5SZ+WKNNI3ApHYOAB04PIM8zHWPxa1MB6OoSqrLPYSpgjRPKtosxfYAgNT6LCToRAjrgtTzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uqV9yFiX; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52f00ad303aso13006502e87.2
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2024 13:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722632223; x=1723237023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EHoufGKZeNUryCyLA/+zkaxEPpoianrLqYlTOdN9QGs=;
        b=uqV9yFiXv7Xo7nEhbDt+lv5KALHHIrYW/rH7ZeI7v1ELjAkUsxEv+8ps/XnLz+2Zcv
         nB0P40WwOP/YmdN9DQc7XKf/nLi/AeKK8/444JAc7ptY4lau64BddQ4bXst+QXIqa5Vh
         AmRv0Q8ixnU+IGf7qa+9ZedQdllNrQAcm7x7q2WSMe5qbiqvol58/LX+hAHspZ+PZrFl
         dNs/M8sTaAaQe8l55+BNwlXRGvd5lcjm4si9qeV7T4mkUJRU9Ve32NySIOByx5Mb06Yj
         shDwC3OkBrbIKBQjDQf07JjCMt/kJezK6cCeoXIOGADxtEUMZgxT/1gOUTEJUCeoxYON
         nwoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722632223; x=1723237023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EHoufGKZeNUryCyLA/+zkaxEPpoianrLqYlTOdN9QGs=;
        b=TvSha5x/vu4UjEhOPHShrqmQPFbbT8L2CrBb+YnbpRfba4Ca0yBgeNiPFxfCLOK0P7
         a4rqKo5yFLpoBEWnMJdI7lBmMZ5an2+Qel+CE4LPKbDU3Nqm8EgoAHjbtUDVfuRsaONA
         Tg+thMrfc+yc3syjnuV6JWaNV+QoJbMuIz71+7PKZ9e1BkPN8WNVnKoU376j+dBf+x99
         oMIrYTI07wYYy7Buxx2+TucXfCrWXe95QyFZi0qHf9gtlRQ1DDYnPxVOtEcjZ1GAboon
         JMHyjvPGiyyGgS0m8BFXr77/L9yRz3vt+LT65EBmOLsXiuPIAxlm3dwbBpKSitLY3d6B
         m65A==
X-Forwarded-Encrypted: i=1; AJvYcCWUjde9Io3CO6fQYawBcmKvE8LxTXCU8NrcnRUh86flSEtqMP20br95M/ow3CL8VeHQmNxP2dLveuHk@vger.kernel.org
X-Gm-Message-State: AOJu0YzaDUCf1y0Qdi/Ed+OZX23VHJRDobmYnL2hguG3Rxr4FYrI00tx
	OBpWPeTevqSKFFX0S4+/sH742NqlG3gFRa9dIEWyI0bk+S4gldRW6QGd2Fj1nYbLj/ZaM+/TtT4
	xgDjUUNVNg9fe39iM01njC7hFAi7XkbjeQdPuVQ==
X-Google-Smtp-Source: AGHT+IFSAobZlgNBt2mHwGZSkwuSohByPTwEotsEjUgojbeScm1oYWLEvLsKj3nyo90zjHBoZrcIWCfeL9L5VHqJ76g=
X-Received: by 2002:a05:6512:2344:b0:52e:74d5:89ae with SMTP id
 2adb3069b0e04-530bb3cde4emr3210685e87.39.1722632222377; Fri, 02 Aug 2024
 13:57:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240730210030.2150467-2-robh@kernel.org>
In-Reply-To: <20240730210030.2150467-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 2 Aug 2024 22:56:51 +0200
Message-ID: <CACRpkdb1TbiMps0WLXZF4vu=RO71ubPUL9fB3DWO8axh4LOJmQ@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: arm: versatile-ab: Fix duplicate clock node name
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: soc@kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Arnd Bergmann <arnd@arndb.de>, Guenter Roeck <linux@roeck-us.net>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 30, 2024 at 11:01=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Commit 04f08ef291d4 ("arm/arm64: dts: arm: Use generic clock and
> regulator nodenames") renamed nodes and created 2 "clock-24000000" nodes
> (at different paths). The kernel can't handle these duplicate names
> even though they are at different paths. Fix this by renaming one of
> the nodes to "clock-pclk". This name is aligned with other Arm boards
> (those didn't have a known frequency to use in the node name).
>
> Fixes: 04f08ef291d4 ("arm/arm64: dts: arm: Use generic clock and regulato=
r nodenames")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Oh excellent, thanks.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Tested-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

