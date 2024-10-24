Return-Path: <devicetree+bounces-115393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 885AF9AF547
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 00:20:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C2A01F2312A
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 22:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D142C21732D;
	Thu, 24 Oct 2024 22:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jGywH+U6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52C122B66F
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729808425; cv=none; b=NFZ4iahDirwKLstSEGSwxRUJj/e4feCpUXbnCrSnM2mb6DSW/e9Gk3f7UuBEHhn5kszSoGHQAYm3GK9D9UeD4o+MJev57IoxS9KrWUn7Mad35m9y5uyn1T8sEbMORYVGWs+JhsvUKWMGTjuBxakKFuR1yGXlT4JJogD3cf88+Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729808425; c=relaxed/simple;
	bh=gGEbKYgOX5rc8HvwKP+HLvbmqzBX4NlMnm5BCSkGUCA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lhwGcky4AFsWo9tA9585hjdJVonQY96vNxqBtTMlX6n4AG8LBsxKqGuzn4KB+kWqaNsPsfvaZ47Nr8bDXSesEFclM8S11Hp9pVyN5RCEzAlhWsqJ0vg3/RCZVFJGT2AyUL+KqcYV6N+6TWcv/E0igngY4wNMCwpD02dTSz8i7Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jGywH+U6; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53b1fbb8be5so1661507e87.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 15:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729808422; x=1730413222; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gGEbKYgOX5rc8HvwKP+HLvbmqzBX4NlMnm5BCSkGUCA=;
        b=jGywH+U6YalC/NBXj/R2UswQt5xBU7hBY5ftwdP6cmrhOKoV4TTOv8duyPRbWcUt12
         UgOjr1rVR40ime+C3tjM1cnYdOscEwOTUhMaMNHuN+tNm72Po8Svtx1BW2G3C7kzqWd4
         mI8cpHPxiFJ2Tv1DOiYTbGQ9oBOLnT+7wWfUp05cyOWOneEirq7CB/oVBdT32ei6+MwZ
         /9vnHB0C1jUZqjZniSLhQgbGDhm/eFpwJu+sD/U9Y/JyVc437vsT5mXXm2ymlhGhS0tL
         eLenliZsQU9zB6gTTdhUJqKhC6NUknk9/6pQ53w6tweFfjrw4z2tJlylVSPmBxrhxrFv
         F1Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729808422; x=1730413222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gGEbKYgOX5rc8HvwKP+HLvbmqzBX4NlMnm5BCSkGUCA=;
        b=qFszGYSTZ8vlwRCDR4BxAKvFf1NCYb49i3bkoj06sDZOjYl4+6FstQy1Xp+uEkNGFv
         1zjKDUMlji1JSn4KVX7yEHID9XrcHLRomevugrt181Wv3HyjjocPI7dFkdZVuChSReJV
         dMN13wnTT8ZYM/pNpFGD5xKalD2BZ6S+lFbECQp6gYlPgS2P45A0TINGYESrKjLLvJ12
         gN5E3i9sFfxIL7tUhDTTe2et1XAQ7YCRtOttKStPH6TwizEa+3PSsmKZz5bWwXdbKiZs
         U/TfpB9q4bsmdmnsG/PzMSLB8sAcvaGC85rXEasa2O1ZBAz6kRDukYBCYiNt+yh2imAi
         7Dfg==
X-Forwarded-Encrypted: i=1; AJvYcCWDTPSady0Z1dZ1RP6LqVWCrUokuR7bDz0hqKZVix2MyaFFMxlvOB7wiPbGd3CBSG2gGYUfvCpXjZvC@vger.kernel.org
X-Gm-Message-State: AOJu0YzshsCCWirpUBWZszDHfPKRdM+swLD90dZMisSaWHknmNdHIMaZ
	l0PYgywzS0KmBol1D4C0heHXo9h4N0vXuXhoozZVIjZ4g14X/zhZP2TEMU8jxdHRgrL3TQoK1uD
	wjllGlYREM2pFi6N6yebuLEjai+6GpBSkQ1DqlQ==
X-Google-Smtp-Source: AGHT+IHGIsrqaQ/7HUksQWKQu+JFY6k3cD9zvm7NsmQfaV2x40ET3jcwxFaCHaKIFyRB5Uq3hXr7QboUps1FaB+xBco=
X-Received: by 2002:a05:6512:110e:b0:539:fbba:db71 with SMTP id
 2adb3069b0e04-53b23752862mr1167501e87.26.1729808421764; Thu, 24 Oct 2024
 15:20:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022155658.1647350-1-antonio.borneo@foss.st.com>
In-Reply-To: <20241022155658.1647350-1-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 25 Oct 2024 00:20:10 +0200
Message-ID: <CACRpkdb=-gw0ryP1H+K9BQS_kUrQG9STLQMSrVWs8BZ=QejV5g@mail.gmail.com>
Subject: Re: [PATCH 00/14] pinctrl: stm32: Add new features and support for
 more SoC
To: Antonio Borneo <antonio.borneo@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
	Stephane Danieau <stephane.danieau@foss.st.com>, 
	Amelie Delaunay <amelie.delaunay@foss.st.com>, Fabien Dessenne <fabien.dessenne@foss.st.com>, 
	Valentin Caron <valentin.caron@foss.st.com>, 
	Gatien Chevallier <gatien.chevallier@foss.st.com>, Cheick Traore <cheick.traore@foss.st.com>, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 5:59=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> This series introduces the support for the new SoC
> - STM32MP215,
> - STM32MP235,
>
> by adding the support for the new functionalities
> - irq affinity,
> - Resource Isolation Framework (RIF),
> - Reserved (RSVD) pinmux function,
> - IO synchronization parameters,
> - compile the driver as module.
>
> Some minor code reorganization is also introduced.

Overallt the code looks good to me (I see bindings are being discussed
and I might have some comment on that as well.)

I wonder if Maxime can look over the code as well? He's the only
STM32 maintainer who hasn't written any of the patches and I think
he knows the driver pretty well.

Yours,
Linus Walleij

