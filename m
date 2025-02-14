Return-Path: <devicetree+bounces-146657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF09A35BA5
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 164A618922A2
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 10:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9A52245026;
	Fri, 14 Feb 2025 10:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jUWNhab7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC0820DD66
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 10:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739529549; cv=none; b=A5Auo4+xFt4hkLkDaS3Zo0lsEaTnnJKPdBaBd5X8aAanG3zEOQrl6c7EJsEyO70VDRacF/gKO6TKELkR3MYKvLZ9l7bEPW+N1KRdM0S2WXg4tt0dwMy5ZIFtCR5ZbH9gNteRqHQvgnp7lFPvcE24AH7vZI7SrmI2huDlqEV9kFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739529549; c=relaxed/simple;
	bh=9WieDtozVEP30o1rMgmkET2eyeUrqqLkfHQ4w0SM3zE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DBDsrvnUwyjIpJEBYQrYtETMPZ+onIK88WHWGci/XZph2RZQlHLDYby9Yqt4lPts+B6oT8imDOQ6AhzfGB24CAhZktt7ur0EyFRHImYVsShKPbMvtpqh72VmN+dAjh4+dhraRP9Ch/ly+J3WLnNNlD9kGaGEIUMT4uDoWtxFesU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jUWNhab7; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30918c29da2so11335521fa.0
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 02:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739529546; x=1740134346; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+RvZPpwQCYzg+8o1DHR3C6tWw2mYjAqdjhIanmYv+iE=;
        b=jUWNhab7+RtuPZckjgGxMEyoAAFzLiugTgbrU3FaFrAJeWBZh7nNexwB3v51pj8mDy
         xFOQ9eJf2kW8CvfMzfRdJpMGnz8w0GrO8i7J2YK9NlEUMd6lU/rVtlRtffJqXIDolqbV
         SgeQrk7cwZxW0l46kt8BofS9S7W2ZV/+LWT+tz9X4R1Cx6wTDnGJ9mJ3xbit84knxDh/
         iWYd2/5e5mWbR1wPKJ024iSxLZEDK3vY6p21nCsZNwS4CXH8jONxxdJSct72dIxo4Fzm
         mMzvy434cFHudvkYNxCdFxkeorPXOcrWn1cU25gSHOaDCUSKYWqIQcG4hL9aZAoTJHoY
         lOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739529546; x=1740134346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+RvZPpwQCYzg+8o1DHR3C6tWw2mYjAqdjhIanmYv+iE=;
        b=FJlZaohCUexBPD5SBnV+HsgoOxxEEQBxSyNfGrEIadDYVJegVx7JA37lwOuO0fXJMN
         Dk0V5+WQ9BgWFSF83cOj2wHRBw+OH5IAL9FbkoFaEpxMuRJWXKOXANn9wbEnoozvL3Ty
         6i8fxqnddzK2bHT8uohIN0SL64XLzi6XUcWJX0Vm6cDDMOVU/IsR2Hm36MBDFZk4L2MU
         bkU8IEEHUDPqGJRIaFby5ltbYXAqE+42sjdnW+SrRd9GBg784a2HmYHgcySF/zyIF6W5
         wwl2hd449dMdIGAfbrrdfHWD+5HXZg44Bu22tu7RiVww3sdp1BkR8kxuJu9j2NuLFRdL
         a+Cg==
X-Gm-Message-State: AOJu0YytIr3GI3wiamsgRDSTTHwNshMHrFZDT9NwWw/P8XiZoSbv/gjy
	ya4quHu/Ro+OI2MUlFcT3VmVvSpLe5yAAZO0WSd/aDH6VxA5ZkgfryPb6h9fzSKlHrTlTad49qV
	gKCFf+KiqukdQKpOnhScw3z9DDUjrzn8Kh7e1tg==
X-Gm-Gg: ASbGncuy5EziWmW7FFldIweT0bWRp0RJaW1YJLG2dbyCW3pokjFJyKHh2JEVtt0wAwl
	NRrkMYYrL5N/SswuMhoZ5oNgr6x/F5bDVFz++URsdP+De03M5wfUCKtnm7rHCImq8JUKSYk+1
X-Google-Smtp-Source: AGHT+IFcOuS4cumt2YODgYWKRsMLvcBHN8sxE4vos/EFY24hOieVy9WXAkHUqW6GJ2CI2TkzytddIGBb5y9f4GGOEpk=
X-Received: by 2002:a2e:9a0b:0:b0:307:2b3e:a4a9 with SMTP id
 38308e7fff4ca-3090dd33349mr28348041fa.20.1739529546052; Fri, 14 Feb 2025
 02:39:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213180309.485528-1-vincenzo.frascino@arm.com> <20250213180309.485528-2-vincenzo.frascino@arm.com>
In-Reply-To: <20250213180309.485528-2-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2025 11:38:54 +0100
X-Gm-Features: AWEUYZkcoUajk8OY7YlPuAw6yk_Mx24LP1X0bHTPQEW1VEF0lTSP39l_2JHco3U
Message-ID: <CACRpkda-J_NHC7Te=Shk0A-35qWms3xeM2MggdGM0ze3Gt0KMw@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] dt-bindings: arm: Add Morello compatibility
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vincenzo,

thanks for your patch!

On Thu, Feb 13, 2025 at 7:03=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> Add compatibility to Arm Morello System Development Platform.
>
> Note: Morello is at the same time the name of an Architecture [1], an SoC
> [2] and a Board [2].
> To distinguish in between Architecture/SoC and Board we refer to the firs=
t
> as arm,morello and to the second as arm,morello-sdp.
>
> [1] https://developer.arm.com/Architectures/Morello
> [2] https://www.morello-project.org/
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 4 ++++

I was thinking, that since the .dtsi and .dts files are not reusing
any of the Juno .dtsi (correct me if I'm wrong!) this should not
be in vexpress-juno.yaml, instead perhaps you should create a new
morello.yaml file?

Yours,
Linus Walleij

