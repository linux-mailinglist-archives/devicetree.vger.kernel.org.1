Return-Path: <devicetree+bounces-73818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED589900D3D
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 22:53:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92CF11F243C4
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 20:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15A5155338;
	Fri,  7 Jun 2024 20:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h/e4QyA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57F614E2FF
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 20:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717793594; cv=none; b=g6v+DqJUHE1zS7WB61SMJZF3gNJN5y4/mVnlS/u5jxo/u/uooT+wUcN9U6psyQS5LhcFI/vjW3QaS8w4H5x5ItcYrtWUPYl+wpe97JaJrSB736Ph55GBi71t7DHErUR+Uj+jUGk2FjVYJIr9GQHJv92y8PFmctNhGT5OQL7PJHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717793594; c=relaxed/simple;
	bh=P4GqccFemYCv3Ph3Tj4HFzTepeQOmwXMVKjFNfsdrHo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B+eepMUcbcGNg+puNnTTOyqYW/JF3Z69kfJmdiK/C6iX/PPvYy3Z0/8ZcjqKvCt/dwhAU8rcx89mn+RkjcYvtzXg024dgjgxF4lPMWCQ1uZeIzEWVILNvKQjT38i4OmbGSzQ8L9xEzmCS6JVBRYXXY6eEAQQfjk+ByLu4Aqkpaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h/e4QyA+; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52b976b5d22so3598842e87.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 13:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717793590; x=1718398390; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ALL6wLm/pEiklAzdrlD0fFMMB40OeFD3F6hHrSjlWrg=;
        b=h/e4QyA+1ti/beho16Kp4vdAb0lDLmCZV4QKM3S0hk9uEttg2m+h5TFNkenQo0oPJD
         V5XWLpcycgDrm+5UlxBQN4FU/VzBLWGk27Lzo+4r1OilY9k6fdtuHaf4/4R4wbzb6h4J
         6MWtQZKGhpie5sPDVhLErJaRfErYl4R56FDZ2FbJUYmYqRT3JC9PDFA51kR1cpXOv56Q
         i65WBgD7XumtJOlgrTaN/knWx/mFInRK8jCwGDFdRzZkflyQuFVJp1odCh5QBPAyTTzV
         n3rK7foI+BzQVrzePFa29iIqFAlKgPck+oDfBxXhGuQIFeQlUlgjxsSQF0IC3XwXAxU2
         jziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717793590; x=1718398390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ALL6wLm/pEiklAzdrlD0fFMMB40OeFD3F6hHrSjlWrg=;
        b=uNfCErY/tgCkDxs3eCN0/lnsBB/ocoXPFjZo2WmHOwHLhXtbaXm2AU+Nq3ZBhQs3Vj
         nuEoAouE9SvEf+Sy3cE860NfHRgQwM555FijQwYRZEo9gW5v/0u13kZGhiNICphF3vwI
         H4Dd4mlMxsKr5NYCSbQfRAueajTySL1wNyWmakvNuNnTgzysUE8yKtI8P6sxlUKIIGxP
         AtU0+UethrFzxFLFg+9+aWhih2vMOPwLNeIxFb8vORXRy56fw+lghsJhAJ/WQRkPm7/R
         RL2wnVWzfTC9KIT1wBa7Vta+DPmjJLAOkhWipvTY2Dl5F8wF0PhqdgoJvSA3vyq1M8Cm
         EIzw==
X-Forwarded-Encrypted: i=1; AJvYcCWXVUHa+NZ0phS17zBvF4fMx08srF64FTvs8lj09UtkkEGJLruOKwLFzKe4H2WqpPV/VHginKOt36iQopD2Kve1uWs2/h++lzJKIg==
X-Gm-Message-State: AOJu0YzUwz5MyT/6JY/0Mz/iSPYjXSRA0aPFiocicufD9JfEheHO2mZk
	186cSiQeTNEhyUA39bfK3Q8JRd0GlNey7V5lmG5yzNyHIDIvgYQ9lNobRafRztn6CRN06UATi55
	9kIqlY9tJhwNUcVt+QhmMZKRgKG7FPAXG4nDfuw==
X-Google-Smtp-Source: AGHT+IGhGBYgYkG9ZA8FAwO0qaapJnnGVds+RrxgL96B4r78rFR4O2xGdaFmnclK8Gfv5k8zd5MDW6bRfsiVqyeC1S0=
X-Received: by 2002:a19:7502:0:b0:52c:50ff:6567 with SMTP id
 2adb3069b0e04-52c50ff65b2mr228916e87.22.1717793589914; Fri, 07 Jun 2024
 13:53:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240529162958.18081-1-johan+linaro@kernel.org> <20240529162958.18081-9-johan+linaro@kernel.org>
In-Reply-To: <20240529162958.18081-9-johan+linaro@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 Jun 2024 22:52:59 +0200
Message-ID: <CACRpkdavOBqVe2gON=5Zk6JVWJfjy3E80YFEsyo0-94d1bX8FQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/14] pinctrl: qcom: spmi-gpio: drop broken pm8008 support
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Stephen Boyd <swboyd@chromium.org>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 6:30=E2=80=AFPM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:

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
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

This patch applied to pinctrl fixes.

Yours,
Linus Walleij

