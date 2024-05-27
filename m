Return-Path: <devicetree+bounces-69540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9028D01D5
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08DE52947C4
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0460915EFB3;
	Mon, 27 May 2024 13:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aeGZyS+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6643C15ECF0
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716816954; cv=none; b=ifuwhAZjWu22p8Y7UadVSb/Hnr1QR+B2ItFrJQstWV7I2YbUgimgrN6cyskzvs2jinwRAmtNcDwXNpYaG3rpV05d1aFqtKo+cRgD2BAnZNqg+JhNfAQQRjgWnksnLHXVW3KLDFOYk6+3dOalbkWRZuhz1Y1M02WlY2lBMEzRyQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716816954; c=relaxed/simple;
	bh=cHyWOtsQFJXA3gHNsv6N0XMoE/NjXO4PiddAGoUoIOc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YfHDk0VonKEdDqFlijiQeu/axm8tL5KwhkzvatsNpRUxEY8fpGf7NvBxhnhWIpadkMuNZlb3XrCgTlj/HcTHxO0zyIiZIrEGP7B4WP4FgQk7ArnUmJ7DbQLAHuobZ28piSOJw6vRRJKLTCC5CtJRmMRT+IjBxVHKW22socHyk0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aeGZyS+5; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-df4f05e5901so5189419276.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 06:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716816952; x=1717421752; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0l1MPZiDRQM4PHTCb9pi2jF/YP3Ix2IGNRYszcmSCQY=;
        b=aeGZyS+530nyZWWgxl7zthUC3rtD7VXwi4R0m/S9NVh2swl5mv3if5f3ezZSMtgllc
         6uvzKpCTJiWjzp/NogUsYvtpWFvwXHKHJtLzAlciErAl/7ascXoEyKyR5weq+cjmXzyr
         6b1XZC5sFHVPQVba3YQmZE5sLhV4NIh8WW56s3tD+o8ak/hIQnqiY4z0WsJQjaN1uyRy
         spnvZ9E9FLRxzvi+WGqzbE495U7MBeuTHU3YO/NY6YxI+rP9J3DFN4yTlOVgDOr3P9Ix
         FYG22KBAkBi7z87RXfTGqnYjoB3EmNav/bv559rpG4x2b1p48MrRQollI1obUjo1I3tg
         Pgag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716816952; x=1717421752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0l1MPZiDRQM4PHTCb9pi2jF/YP3Ix2IGNRYszcmSCQY=;
        b=MOb2pRAXoM5HbtMgmtoLe8VElgMTbf0/cVQueyKwKqdafXMIHEcRrkt+qvEYCJZxWv
         ARywQTWJeTauQpFJBtpLxRcPPJy8EEU2IHrY+GdEOOOGynm9Cu2fh1kVmHsbeb+r0uKo
         7UW9R7R0PaSsrWnAcwPt9G+xWPEM7NITJ77/3WdiyCCAz4cJGvqAgPAFdHp2eGeWoDif
         rpgXW/4fAlfqY9AhI6KKt1FmNt8YHc16ms8XBQuNp+MFbdMJC+T7OA0kJwAw6vBbTDrR
         BRckbNeLexsDEY99uM5U9Zrb+ijP4YJRzwSPVcrcy3SgmFlalfAa6p74vX8K4XrATBqb
         I3LQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYK38KFM0NbqC+bCW+AnfRT2Zz8xuAEyGrKxAaTpi0yMT6il+TZ+7euHOohJBBI3u205GsivJU5BKin6z9r+90zVuauF+6A4iRGQ==
X-Gm-Message-State: AOJu0YxgM/SxnWd3zTnZ3V5+fodgCnq6kjdrThb5wAZFreZv3jhD06Zs
	1mQMEE3OXEHSHCLKSLYNFoeF2vwZ8rufCht2OiiFfjK9MsTFwhZMRrwx7amI41tmbVaFuOavmJX
	pEw3Yz9cXzC49uqmS92huI+3R3vuEPWjtJ/Knsg==
X-Google-Smtp-Source: AGHT+IE/LA8ME5QhFJ+uJHDIypk5nwZTwYjAHyFG+KUSEiBlCoShGuRS8LXccT+SSLRQq1cYnHUOPX0IwhCX6ekM/qw=
X-Received: by 2002:a25:ab14:0:b0:df4:dfa4:bb89 with SMTP id
 3f1490d57ef6-df7721c8a64mr9723707276.32.1716816952282; Mon, 27 May 2024
 06:35:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-10-johan+linaro@kernel.org>
In-Reply-To: <20240506150830.23709-10-johan+linaro@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 15:35:41 +0200
Message-ID: <CACRpkdakSEGLsx+GwGe1PwTaOT3sBc2a=P0vvdUA3Q3xxHjGsw@mail.gmail.com>
Subject: Re: [PATCH 09/13] pinctrl: qcom: spmi-gpio: drop broken pm8008 support
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 6, 2024 at 5:10=E2=80=AFPM Johan Hovold <johan+linaro@kernel.or=
g> wrote:

> The SPMI GPIO driver assumes that the parent device is an SPMI device
> and accesses random data when backcasting the parent struct device
> pointer for non-SPMI devices.
>
> Fortunately this does not seem to cause any issues currently when the
> parent device is an I2C client like the PM8008, but this could change if
> the structures are reorganised (e.g. using structure randomisation).
>
> Notably the interrupt implementation is also broken for non-SPMI devices.
>
> Also note that the two GPIO pins on PM8008 are used for interrupts and
> reset so their practical use should be limited.
>
> Drop the broken GPIO support for PM8008 for now.
>
> Fixes: ea119e5a482a ("pinctrl: qcom-pmic-gpio: Add support for pm8008")
> Cc: stable@vger.kernel.org      # 5.13
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Is this something I can just apply, maybe with the DT binding drop
patch right (8/13) after it?

IIUC it does not need to go into fixes because there are no regressions,
right?

Yours,
Linus Walleij

