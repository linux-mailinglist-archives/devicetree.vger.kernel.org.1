Return-Path: <devicetree+bounces-140973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1556DA1CED4
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 22:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F4156188664A
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 21:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34E617C20F;
	Sun, 26 Jan 2025 21:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YxZ25F/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACD315CD4A
	for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 21:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737927829; cv=none; b=Miu7x1jF9FbemEnmXzxl/Xp5+MuoI4U8wvd5BltBRtPIDZHY0CCfHql/edZ+wnHw2cIOJnqzEj4Zj1il1oxvzedSfLPsNT36hLtgXrnVssMy75l6uBySCVNQhC2laUea5CD6CAFq5Z2WNSd04wqv4jJUChpJRFERXNR+9QB+2CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737927829; c=relaxed/simple;
	bh=xpMRXpe3m5PVKuKjzBgshZO9KI7/GnFo9rP4PGbVZNA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n7sJJJl5Kkyn/7J1t75qfwRCJaJ5Nm0e1S1Nj28Rsyym6/eQeteybQpwV6O9Rk2JX1h/GvpKUFQ0cXOcC2fSzvlUgvC3CqJPL9yQvqGE2gO1t7qaEBuuJM0oqzrEIJXELVhvJopclDPhkalmSa3WhIbpF/t0Oj18A54OOh8y/Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YxZ25F/O; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e53a5ff2233so6670783276.3
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 13:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737927827; x=1738532627; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpMRXpe3m5PVKuKjzBgshZO9KI7/GnFo9rP4PGbVZNA=;
        b=YxZ25F/O1v4VLoLHv/rEtqrw1bYe1j0yFLEefFvZDwFBFWrKc4tN4zLDe7/XARrgC0
         TGTKz/yl26rP1d8lLAnisrCq3s9iLXUWzHBs5Kaj6l7rVSJ58nMaB3r+NyAhlGeLEQ1V
         TgNIx+MZp/+iGbANxqoRNQQxCGlmplbjdSEDc7CaxCCIsUN+TTYlVkC6dBIAD+ymF9aT
         tqEmi2yYmocDev2GKrDA4x9MxLCYsOnCHUwQ7h88YVTeA2s+pkGb4vGbmmNuMLGYFYrR
         aEIzk4q7y99ht6/JEX+fZi0hZZfkdwzfUkvtX0Tx3TUTC9VwhfC1BEI9ql/9MP/iA4UB
         9g+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737927827; x=1738532627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xpMRXpe3m5PVKuKjzBgshZO9KI7/GnFo9rP4PGbVZNA=;
        b=KqJ8tW+eHhfQ9bFwEXAL4Ae3q+H8oZiCJDij0BnRRr3TmFb6suLjGBJULJx9mhDHyW
         F1c+LGiC96JLKzLjEqUsNL1qG1ma73sIlvdT3P3J9DVWnJJgZlvZWOsFM/MyjqAzIRD+
         Rsb35T7W+WUAmuOFf/rU3YE5yTaMQeE4ujt6+B3bup3UULQMKMvNywj9ttz2xXIpw7mq
         BYsAZ2NRinuKm75ROlMKuCb43EH3t2/TJub5kgLfCkS8/SLaoE1+F1ojJPAHY7LrRoFh
         otz2c15SUeKR9nObUjcaiifLfseevzDf0fWQxGbp6A1lamwld0UXKk5qT8AC/8X/5HgL
         yPig==
X-Forwarded-Encrypted: i=1; AJvYcCXuWeSbbcBqzuAjOiaEpk0uBc9Yyeyln6QFTTjlL3C3ZensmPJ2JTzUkBR33O1C95DuajDDqqop1k+O@vger.kernel.org
X-Gm-Message-State: AOJu0YyYDNCnctLvJJKskcdeOoWcwN9Bh5uWKVScxAODJeyvP+sTyz8g
	mgMi0BR5nlKdMP5u7NMQ7KSMDQka4vsGpRJOVjjAol1GxquJZ+TG1G5uk+1/uiIr8mbIB2fdSZm
	0jL7UHdZpIFRxy1TDVQO/t5yHliSyApjcvEu6tA==
X-Gm-Gg: ASbGncvJMEMOJ56UYGdZ+nOLwceoIEuq5QAvo9WPjovSDwLTP3v0ikXOVr8BVXX0f/g
	rARi8ROG3IsodFs6HhN9iU6j8KGZmG+Pts72QJcQD1M9plC4tLd2klfwmA8ElM0+vZgAsL2b0P+
	I03N57ar+ypyhiG+HR9MQ=
X-Google-Smtp-Source: AGHT+IED1fOe+VPdEMF1l8voPxPWe0ESJkMKTkKmUiZ4jzWziPmagBg1bn3j8UK591ZwCsArMWcAfvtOn2xjwmIhMAs=
X-Received: by 2002:a05:690c:6a04:b0:6ef:4a1f:36b7 with SMTP id
 00721157ae682-6f6eb908ed8mr286092907b3.25.1737927826972; Sun, 26 Jan 2025
 13:43:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org> <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
 <20250126163222.nhcxvr4m2vncwi23@thinkpad>
In-Reply-To: <20250126163222.nhcxvr4m2vncwi23@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 26 Jan 2025 23:43:38 +0200
X-Gm-Features: AWEUYZnvKJ4Ll6Bi_q1ledtl7hY-Y2l5gnW9ImWZn2oAiWKheStXl7ROs8IdqJs
Message-ID: <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 26 Jan 2025 at 18:32, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Sun, Jan 26, 2025 at 01:39:05PM +0200, Dmitry Baryshkov wrote:
> > On Sun, Jan 26, 2025 at 12:59:52PM +0530, Manivannan Sadhasivam wrote:
> > >
> > >
> > > On January 25, 2025 11:00:23 PM GMT+05:30, Dmitry Baryshkov <dmitry.b=
aryshkov@linaro.org> wrote:
> > > >On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
> > > >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > >>
> > > >> Add a new, common configuration for Gen4x4 V6 PHYs without an init
> > > >> sequence.
> > > >>
> > > >> The bootloader configures the hardware once and the OS retains tha=
t
> > > >> configuration by using the NOCSR reset line (which doesn't drop
> > > >> register state on assert) in place of the "full reset" one.
> > > >
> > > >I know your opinion, but my 2c would still be for not depending on t=
he
> > > >bootloader. I think that was the rule for ages for many possible
> > > >reasons.
> > > >
> > >
> > > But if Linux or other OS can trust the bootloader, then it makes perf=
ect sense to rely on them. Obviously, the question here is that on which pl=
atforms this level of trust should be established. And the answer I got was=
 starting from the compute platforms (atleast X1E).
> >
> > Is there any way how those values can be lost that we still might want
> > to support ? The GDSC going to the OFF state? Some deep sleep state or =
a
> > power collapse? Actual suspend to RAM (instead of current S2Idle)?
> >
>
> As per Konrad's reply to my identical question, PHY register state is sup=
posed
> to be maintained by MX domain even during CX PC. This seem to be case on =
X1E
> based platforms (compute).

Is MX on during S2RAM?

>
> > >
> > > So let's take it on an experimental basis and see how it goes? If at =
all any problem arises, we can always resort to in kernel sequences.
> >
> > Sounds like a good proposal. Can possibly have a corresponding 'do not
> > merge' patch with actual init tables?
> >
>
> I don't find it really required. If the init sequences are really needed,=
 we
> know where to find them.
>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D



--=20
With best wishes
Dmitry

