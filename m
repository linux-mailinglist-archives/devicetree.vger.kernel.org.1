Return-Path: <devicetree+bounces-145449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF518A3157B
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 20:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5960D3A2D92
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 19:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B586026E630;
	Tue, 11 Feb 2025 19:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="wVwgWhD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34AA26E627
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 19:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739302504; cv=none; b=EhHr0NWLrkuhXSHTFaUUp+mrgrmKmdxT/Zd9j1ouSrWNdV/xZx2x9QwjzTeu+FEYfsnKF/pj5+GrTXZjbY5ybTJJ0eiqzfnIQCbvvEUMYF/Rw5/V4MVvf9C9E06ddJO8I4tHoyKNjDxYu4M73IdXb8V7rBccGsqDgQ364IT7BBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739302504; c=relaxed/simple;
	bh=Lzk3JO4szt3sEB/N/pUn3BzbN+74+DtV5pLcgvSbqxo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D1hHeNK75CwFRsHCu7rrYtgy/83U3JdIeH8CMK5nBp6tl0ycgfMoxr27FiSk3ltpOs/kmu1Ok0SP0pV/syi/ps05/a99IWlSBlRydQYzt9A/dFJbrkneeQgAogwVp4rphcqvsX9YMQ4TEFMQsU/hMXdkGYcFndjYZSU0LsHMEtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=wVwgWhD+; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5439e331cceso6752933e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 11:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739302501; x=1739907301; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=drPWUvNTbl2xqE92lHeNDNa9DZ5Dy2MPgdDShKYcM30=;
        b=wVwgWhD+oSOPPdvPybTqYbKdSsBDgQmlZnQpUftZemELyaXIRezJtYeqmV35ZnDkr8
         d5O7caO7XAyw4XwujK2U9grrM+2/1LYVE8IAkGXBwqpTe4hDo4JnWueqqW8g/YhdWlH6
         zFI8PD9caN3bfYc2XX2onSU+qho5WVLxgXe3FLRnuSa/jouhHhk3sMIxyfhwZTn67Nhy
         0yBqgOSUlY/4SFkOusG5cLGixCwb5paAJnnziZxncL6+lqpDDwUGo6u7xzyoJ46wONvo
         JyvbogUWSVDUX4dOsqedQizr64F2TsQFthx/YWpfYkYRIox233qOHPMFEeibf5/ZA3PJ
         o5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739302501; x=1739907301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=drPWUvNTbl2xqE92lHeNDNa9DZ5Dy2MPgdDShKYcM30=;
        b=NVYbXhSQpZhos7sSTFIWuTmyomsk6kK2rfm8wUXWZF4VvjTz6UfAfSTZTN2wJRJ50q
         OgklLP+ZwLiJBQGWjlPBJZF67Z4J+ZJduOt+t84BEhs0kKo/H6MAuD1U+hC5qR6btclu
         YhmKwANhN+VS6t3DliOJq5yG5C1FC6mZIV9Og80pz7m5E57AYVdAyo/0/cUDVvkQC5fb
         M9y0coa58sq54YQg+EqddlPcDKWWhpWkaXWoKlo6yl0PAToUcobXz95T/tiqTxeh9d49
         tBdeQ4Czbokn37r03Fney4LF67evAp/uXbiA8GL9F7AoQkkbAqWZaVl4NY9jdMjsEBtU
         FHUg==
X-Forwarded-Encrypted: i=1; AJvYcCWUHsOrj0D2TVVea5jfoiD6UIxHlb72/6LIqEXNjIOTqErpgIeZkU+PEXa3oGepVVMYEJ55R3LO/8N/@vger.kernel.org
X-Gm-Message-State: AOJu0YwwJRdKw0gWbqOokdixkYKppEQUbA1UyktuKDoPWv5FO2qRGmdP
	Pvyoe3rdlVj/CDC9qwJfysV9u2JSPm/D2FlpobIwHg6+Kgcr5/zDh7J3I8I4T4FLA5DajP4MScn
	uvvrXmgr5AsBqfKHMrLO9PcBI+QNJY1HtW6/lFg==
X-Gm-Gg: ASbGncvLExWCPogTvR5dzOficZdsBHZ7xcmmLd7m+aq9nlarSkXPT3gtCDkkXa8HlhE
	Qhs459cBSpnGe77ECuaQbR8K+ertZ9qIrJc2ZM8XVueerJpksgpMB+9AkzKAV//z0ysX0pQP55p
	z6f/o9DqNYxkuriOcWg8WRznpKmsA=
X-Google-Smtp-Source: AGHT+IENh7+nnwerkUXKfjNHvIrZjJbgA4nVwo8pSn2O2KjLAKEx5uBtJDNQahXwubnc3itr5UpqLKEB/aF0axoJR14=
X-Received: by 2002:a05:6512:e98:b0:544:1156:a9d with SMTP id
 2adb3069b0e04-5451810d0a2mr50314e87.22.1739302500660; Tue, 11 Feb 2025
 11:35:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250211-x1e80100-pwrseq-qcp-v2-1-c4349ca974ab@linaro.org>
 <Z6txevdftVNww0wD@hovoldconsulting.com> <CAMRc=McApxN7TKKKAL2OmfkosKYA9gCYZXQZXFAE_A9a5qykmw@mail.gmail.com>
 <Z6uVJeQd1DXFFHG1@linaro.org>
In-Reply-To: <Z6uVJeQd1DXFFHG1@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 11 Feb 2025 20:34:49 +0100
X-Gm-Features: AWEUYZmxYAztARbq_llYUY0lB0u5EhPSVbakcUSWbCMuoLnLogvwKAVly3UHO-o
Message-ID: <CAMRc=Mcf8gSr8JGixZ2MQ=d0KbZjDQ3tYNU6RNuSRDQSHpNiwQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 7:21=E2=80=AFPM Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> On Tue, Feb 11, 2025 at 06:51:02PM +0100, Bartosz Golaszewski wrote:
> > On Tue, Feb 11, 2025 at 4:49=E2=80=AFPM Johan Hovold <johan@kernel.org>=
 wrote:
> > >
> > > On Tue, Feb 11, 2025 at 04:01:56PM +0100, Stephan Gerhold wrote:
> > > > Add the WiFi/BT nodes for QCP and describe the regulators for the W=
CN7850
> > > > combo chip using the new power sequencing bindings. All voltages ar=
e
> > > > derived from chained fixed regulators controlled using a single GPI=
O.
> > > >
> > > > The same setup also works for CRD (and likely most of the other X1E=
80100
> > > > laptops). However, unlike the QCP they use soldered or removable M.=
2 cards
> > > > supplied by a single 3.3V fixed regulator. The other necessary volt=
ages are
> > > > then derived inside the M.2 card. Describing this properly requires
> > > > new bindings, so this commit only adds QCP for now.
> > > >
> > > > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > > > ---
> > > > Changes in v2:
> > > > - Rebase on qcom for-next, patch 1-2 were applied already
> > > > - Mention dummy regulator warning
> > > > - Link to v1: https://lore.kernel.org/r/20241007-x1e80100-pwrseq-qc=
p-v1-0-f7166510ab17@linaro.org
> > > > ---
> > > > The Linux driver currently warns about a missing regulator supply:
> > > >
> > > >   pwrseq-qcom_wcn wcn7850-pmu: supply vddio1p2 not found, using dum=
my regulator
> > > >
> > > > This supply exists on the WCN7850 chip, but nothing is connected th=
ere on
> > > > the QCP. Discussion is still open how to hide this warning in the d=
river,
> > > > but since the DT is correct and the same setup is already used on S=
M8550
> > > > upstream, this shouldn't block this patch.
> > >
> > > I thought Bartosz was gonna fix his driver...
> > >
> >
> > This is not the same issue. The one you're thinking about[1] was fixed
> > by commit ad783b9f8e78 ("PCI/pwrctl: Abandon QCom WCN probe on
> > pre-pwrseq device-trees").
> >
> > This warning comes from the PMU driver, not the PCI pwrctrl one for
> > the WLAN module. One solution would be to make this supply optional in
> > bindings and use regulator_get_optional for the ones we know may be
> > unconnected. Does it sound correct?
> >
>
> The supply is optional already in the bindings. It's not optional in the
> driver though, because that one uses the bulk regulator API and that
> currently provides no way to mark an individual regulator as optional.
>
> We did discuss this on v1 of this patch. I think you did not get back to
> Mark's last message yet [2]. :-)
>
> Thanks,
> Stephan
>
> [2]: https://lore.kernel.org/linux-arm-msm/f125c7d5-5f85-4ff6-999b-2098ff=
3103f9@sirena.org.uk/

Indeed, thanks for reminding me. I'll respond tomorrow.

Bartosz

