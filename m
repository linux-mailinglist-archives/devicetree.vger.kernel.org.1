Return-Path: <devicetree+bounces-35755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E737783EA6B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 04:02:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AA771F25720
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637B8BE7F;
	Sat, 27 Jan 2024 03:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QCx9qNXA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFC6BA5F
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706324521; cv=none; b=lOObY844ysxqAQ89MjAuvwE9NLUs/pVsoVAifunsQoth/o39d7ZhbQE2J3Ijj7p08VVY6tWclbOJKaqf4QmXxFzV4TLjXWwDKItesQ1QbVzdJ2x57BnZz94XExLxGNblacPoNWlMiIpCTkksQrN+o2uc0OvmWxseROnt7FaAZTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706324521; c=relaxed/simple;
	bh=dpCL270UQPI5eSppcdrsOlocVyO13KcXBRgxFoQDaO4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pizaKs4DBmYWiSjx3rEe39MSnEziKN6ImoFCmawKofTfs96Oizxd/kd2uW83e6laX6P3P7+IuFG+/S4Q75GntoLg5omMq7AZYuOcFKjxbeS/3ij+ulyjQ0I7D+OktVH8zlRbf/MMcG8ra726ldBezzr5ZXgRloQizuy1X603Tsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QCx9qNXA; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-686980d9a9bso7137386d6.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 19:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706324518; x=1706929318; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmcMqTe74whx9rEKa8Rswz2LGLtHny0L7TpbU7oKD6Q=;
        b=QCx9qNXANqe731od4L38foRK7cROElujdSNFMkLjImuR7ZqyotI9VxZw3lkwi30FTT
         oSm0nb74P9XNioiaVbOmXuUA/v0cIN7PK840W0ExL89sJxpxufxnnh24IHlkqZ9M8IWF
         mCnQypVvqsETmo+VX3/70ATm0irb9+FxNV67dMigbo2lpaXryIp70CevzUPp+tG4AJml
         uEbK03W/j5wfPOc0h+L3xgrOXQKy4jb8cFH2BgzntstW+k8CoPbqUTVWi2hpIk+s2kdW
         bl9970qK6FnLkpev6ERmzVvS4s4CRvya5etuwwAcgC/mV+DPoBIeNZAMLiwXrT4ntC9S
         F7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706324518; x=1706929318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmcMqTe74whx9rEKa8Rswz2LGLtHny0L7TpbU7oKD6Q=;
        b=pe7e8ycyKglPJm8+euIYumoR4Q7SCEZlKL0J7+CTx08PtZruvvb01XnQeCxtw4Wv+x
         6xtWkyVn4dAficnM6BqWRIbbHDly6G9k9ns+OYZeeC0B73hhEY8h9Q5AYhNCg19EMuW/
         JC3uMzioWFAcCTuT9aC1f3S8Uh6AMZkGXyJb9ALuyw65QJbh4C8ZMoE6hnt16788P5Vy
         VPW5dLORgHgHw17GCwjT574IP9FGoPsmoyfSSr9t2QNX1pe/JdVIywNPNZr1vr+w5ENp
         DBLkfp3uJc3zN+wo6u1GAo/6CkFEvmJBN5VJ4sBmF6/Ouo6U5IaUukvR6IufmXjunrvY
         bVoA==
X-Gm-Message-State: AOJu0YwGw/3SznGmk43/fA1wFT1FP+immcL0LL2ClkFK9Z5eKpXxZ1SR
	BQUjhuq0MZAh7TVJppj89JN2UdW2ObJkP0RG52OqL5RNZlwglJ5sLE0I89paCeZLW6r3KxAMd7l
	vGsI0CpdKCE3AKzymjIerF4MaadlQRkbA2kXqeg==
X-Google-Smtp-Source: AGHT+IFl0pTq8D+qlRGElaXOH+Jp+6F2IhaN1xuPOVWBs/rLWvnBMzTHzpUbTXgaCK5ievjh3HGeFhyktkjJY70TJoU=
X-Received: by 2002:ad4:4ee8:0:b0:686:aafb:2696 with SMTP id
 dv8-20020ad44ee8000000b00686aafb2696mr1130335qvb.29.1706324518010; Fri, 26
 Jan 2024 19:01:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127003607.501086-1-andre.draszik@linaro.org>
In-Reply-To: <20240127003607.501086-1-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 21:01:46 -0600
Message-ID: <CAPLW+4mLuisoxQqOagFjjQ3n9yRYEDQTbGYz21_kO0zDMoRYkA@mail.gmail.com>
Subject: Re: gs101 oriole: peripheral block 0 (peric0) fixes
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	mturquette@baylibre.com, sboyd@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:37=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Hi,
>
> While working on peric1, I've noticed a few issues in the peric0 area
> and these patches are the result. They should all be pretty
> self-explanatory.
>

Looks like "PATCH [00/xx]" is missing in the title.

> Cheers,
> Andre'
>
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 9 +++++----
>  drivers/clk/samsung/clk-gs101.c              | 8 +++-----
>  2 files changed, 8 insertions(+), 9 deletions(-)
>

