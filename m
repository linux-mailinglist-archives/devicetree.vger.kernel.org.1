Return-Path: <devicetree+bounces-88465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C659F93DA05
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 22:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BA121F24846
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 20:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1843E149C79;
	Fri, 26 Jul 2024 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Od3TB5DT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E937143C6C
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 20:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722027034; cv=none; b=NuWa+5cwqVMHzKdOi2M65INRUFBfICwQA/HiSNbOudP+o3DOHaURTr8xaUL2ePv46wMFwDt6V/2p9KcG3N3PvTqfoaksSsn/y4PuMGxZNTN1RZ/bZPShBB+XvdtJ+OyDB/M6g8saD+2j2HUj9wz+HIc5//ZpdGMLoKy0CjJIvOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722027034; c=relaxed/simple;
	bh=KogmYRFSz2W2+mhD6V6jG3/dYCuZTqrU9wdwTpVNdWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dCxEEbHg4kefy2NJLpQtF6eFc7gNz28qeY+agBojtIacnXrp+Bif9H9q2H/mAr1odZL5XxAri3pLc1szbh1YTJGvujk8SN2ewFNw7jq0FYYnTgCav/TLhR1s9LP84YxwqG9em2kPicnMcM2ULcPLTtWN0nhni2Z/3pY5IG6grlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Od3TB5DT; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f035ae1083so20782941fa.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 13:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722027030; x=1722631830; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sW23BR/or2MMuYF31lJOR7RMa4C6ZEhZGo6Oj9/Pb3Q=;
        b=Od3TB5DT1KbNLDO4XyQzumnKCWM80b/szVLnruv8B/gqtD8Kza5DQe3OA2yHGHRzm4
         nfKK0heMXTSckqurOqxkGxISsPtmPKZp7XkQjnYxURKXcmEGvOQOuG94cfAiMN8xhiLP
         zqgCUN9+9wO8Zw279XHYJECa6ej/0MtWniQ2XbQp9utEPKdl8DsnPVX4b0h75VntJxst
         LbwzhIMJmE0h8TP/bD4Ag8CfmPEWSWX7dhBi446lp2P/FaBd2aY7meHIZ5xNzNWnh+Bx
         n4GRIXwreAWUrajAkE2DUQ1IAkAPtr/hZ9rVmN2qPy1xxrw7tAO2W7TeUDwnH+9irlEY
         opKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722027030; x=1722631830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sW23BR/or2MMuYF31lJOR7RMa4C6ZEhZGo6Oj9/Pb3Q=;
        b=V+cJS9gPc43V4wOl1MQ3CU9IylYwsd9Zl6VsygR70soUyG8WwjC9gEj3SkeUpM8RIz
         dhudzFkE++ntMWInnJJzhzj0LgqwmjgNkZuqQFSoatI1v7gnhyN133zpBLKharCzgets
         DjYl1DvLQNtjLq2zRLkWR/60gCxMDjDZ06+jEVqAtJcOC0YdUCrQLTy1C7VMINgIZAa+
         M5L1uyYMKtquRDLbSOk2SIHrT9P3uVyu2KjKlVxNsL3uV+YxPXTmxS9yUFlA+40A3D1y
         v1SAZNoOK5inT2CtNjPDUcWk632WKGWd4HcxW+ecft+lNEROG1evCFfrm5X0ItgAkPDb
         Ih3g==
X-Forwarded-Encrypted: i=1; AJvYcCULKn9gstGnFFyeCVtvf4ir0oslDHcIuhANwJpitgSI2krIUJ2im3cLyo8ChQW91KOxa6hGS9SN57yFHYe49oWPDtzkFY4hy4EwFQ==
X-Gm-Message-State: AOJu0Yw7Su3Y+e4OK4ia6U0GnPTAhZapcU3qCVY5qriBHsmzAqeEze3I
	rXSRYO2YRhaG5FGWLWgjVBhfShJ/kEoFRxsbjXWhjvXquyxECQg0iMBTNtS+AvTd1V/269h5gJ8
	Hqc0qI56Jymqz4rtPlOj8ozHQ1JrRR92I/MGGmg==
X-Google-Smtp-Source: AGHT+IFX49EtxpZmo3lCBvR7LAjeTkZmE2Z3kScGsck8eI7LPC1PBQoOA3czp83TviYDk42LHWvS4Ey6OgvmOSAZBX8=
X-Received: by 2002:a05:6512:32b6:b0:52e:9762:2ba4 with SMTP id
 2adb3069b0e04-5309b274931mr464874e87.25.1722027030326; Fri, 26 Jul 2024
 13:50:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722160022.454226-1-valentin.caron@foss.st.com> <20240722160022.454226-4-valentin.caron@foss.st.com>
In-Reply-To: <20240722160022.454226-4-valentin.caron@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 26 Jul 2024 22:50:19 +0200
Message-ID: <CACRpkdZTntS7K4aLqoXKbfdO2xumx9nLnA7CXysuYML=ptTCzQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] rtc: stm32: add Low Speed Clock Output (LSCO) support
To: Valentin Caron <valentin.caron@foss.st.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-rtc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Amelie Delaunay <amelie.delaunay@foss.st.com>, linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Valentin,

On Mon, Jul 22, 2024 at 6:02=E2=80=AFPM Valentin Caron
<valentin.caron@foss.st.com> wrote:

> RTC is able to output on a pin the "LSE" internal clock.
>
> STM32 RTC is now registered as a clock provider.
> It provides rtc_lsco clock, that means RTC_LSCO is output on either
> RTC_OUT1 or RTC_OUT2_RMP, depending on pinmux DT property.
> The clock is marked as CLK_IGNORE_UNUSED and CLK_IS_CRITICAL because
> RTC_LSCO can be early required by devices needed it to init.
>
> Add LSCO in pinmux functions.
>
> Add "stm32_rtc_clean_outs" to disable LSCO. As RTC is part of "backup"
> power domain, it is not reset during shutdown or reboot. So force LSCO
> disable at probe.
>
> Co-developed-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> Signed-off-by: Valentin Caron <valentin.caron@foss.st.com>
(...)

> @@ -1928,6 +1928,7 @@ config RTC_DRV_STM32
>         select PINMUX
>         select PINCONF
>         select GENERIC_PINCONF
> +       depends on COMMON_CLK

Just
select COMMON_CLK

Why not, it will with 100% certainty be needed anyway by the system
clock controller.

Yours,
Linus Walleij

