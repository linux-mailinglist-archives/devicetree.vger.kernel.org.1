Return-Path: <devicetree+bounces-100744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A11096EC81
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 09:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 072E72896F7
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 07:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B68158862;
	Fri,  6 Sep 2024 07:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qhazo7wO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1F1586CF
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 07:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725608758; cv=none; b=I2btT3OEXgS8SLQxraEmJ2P0TYfL0ekLPfFRI+ga5RFMRBAIF2AbqembspgcrrEZ2ObSMjIthGPeIHdjzQBwudcoOi133wnRnzJxzA6ONVly0KD+JYmHpgQYWczdHq5ut4aZ14MZ5u9ZfBwAkPTJWRuwLxO5oxlnFiWJiC41sRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725608758; c=relaxed/simple;
	bh=KbzNibm01vEuz+vcZi+szQJVhYdE5ymS7WVjaeo/64c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m+5W3OkaZfrfKfQylZCPyTF8JAAnFUoFx3yXuSeNRfoTdifqtBGhgvMaJqTygBXYVXiaMjENQdP+uQiQliublOLLRiVRxAJeywMuZJiV1h0aXANcixmQ/YTaTJAw0xqtE1Rtrv7BQT9YFrQEwf69NF5WNkZfZh0GjC+2YswSE0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qhazo7wO; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-536584f6c84so664212e87.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 00:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725608755; x=1726213555; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=peA5Xi46r5KS8PibplJ1gJDlcVPnc6AYKPt9afJyua8=;
        b=qhazo7wOKlMZ8PkAEoRFbO7dih961/MiFZ15aQLstoXIpa8rTbeel/XJc8n8H9dbpt
         KbO4rJavHhLG7oLe4FggdAJ+SZ2wGF7OP2Ip0fCZNuS17fYNvULTz6pM/n1sXnZAU5yt
         1kAQuw/CZ1nSzOgrX+kFdyFJ/vM8j5tK4Jkp/DmAMvg8t8Tvqv8ZYDA6UV7bwObJL7+C
         18I0g67OdOx55AzshcwFAQPhrS0UgEsFWDtdZCRdCLZl3TCPshZ299niqBhwKIGmDRhs
         +5YaoO/DG6lIwRspEZTcyCV70WYYI5NO8CUHUOGYBwYyaXfjiXSgGHjwVV6HwmZxV8rK
         MaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725608755; x=1726213555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=peA5Xi46r5KS8PibplJ1gJDlcVPnc6AYKPt9afJyua8=;
        b=Jct33xllDhVbZ+sCd+I6wNALAqMaWA3lccucBZnxs6svx94oyL63+m1aOE/P/Kkb7e
         Bf0+0wWwJSH7eLmJ09AL3JP/sPZbVz0eKYWEwpKJdNgqTPc5ptxNyGbEkqOFBhZLK4NI
         W+5w37LgPlUsYyJ+KnahjZ4xec6807EnHbgFw4jpxWx72NYDt8hX7FllljWkjZibYmBf
         wgPZFiM23fdHCJi3dEoo841mrvc/jYOkZeSTCDl0OLa4Lvmz+/sSiMRFPqh8BLNUb2J7
         qzSKdG6sCtDh99N56b4SRZs+7IGFL6KAa2u6lHFCe/b+MJEwqp8QShN0rMWr6+tXjQq4
         amFA==
X-Forwarded-Encrypted: i=1; AJvYcCXzW+2BHi5/0NTYHkn3LDxOgjm/tl+4cLPqqVAsr9/L6OblLCVyb5fg5dq2TCG2vVij5INlvr0byLGu@vger.kernel.org
X-Gm-Message-State: AOJu0YxwkWsrB5tNPlZhBlvHSx1OBMQaa7U0H6cNHj42FhAiK1unfpG+
	uDDKfzD3nP1SgCZiaYABm/4vOz8Dr+YYpNCRtaTZV39tzi9PMeaS3HMtVERzzeJP7Le1GmUPVmf
	q3/4Pf3ILwqaeb4jGOhwZGik1TTStY4UkOE/bCA==
X-Google-Smtp-Source: AGHT+IH7dwNJCKos7PVubwaAvDIO1NYtb95CRhl5tKSoU8mWk4qIkkXILHsFMkiSHJVV6H+U3A4hzabLSWXMZi8hh5A=
X-Received: by 2002:a05:6512:398d:b0:532:ef22:eb4e with SMTP id
 2adb3069b0e04-5365880a275mr688996e87.54.1725608755113; Fri, 06 Sep 2024
 00:45:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905122023.47251-1-brgl@bgdev.pl> <20240905122023.47251-2-brgl@bgdev.pl>
 <6vikrqhdnkefzpahhhtz2hpi62jvcwnzclm7touwtnpxdzvgrf@uc7r6a7bbjek>
 <CAMRc=MeijX2by+MS_vq_OVx25JO6z=zNfymta35h11mbm=vmtQ@mail.gmail.com>
 <CALT56yOP+un5nkxuirJVg=gr7fo4Hqjt1ew3z-=F2J_Y_RcTqg@mail.gmail.com>
 <CAMRc=Mci-8R1Oe3Fe+1E+K-7khzwBPgn_8SQSUPXthpE4032Pw@mail.gmail.com>
 <d6d5a943-ab29-4034-b465-b62d9d1efa61@kernel.org> <87v7zagcyf.fsf@kernel.org> <ywn7bq6j6jgokwmm3vsumkuwijplezmery5tr6z5yeblnpyjh7@djkwdbt4sl3q>
In-Reply-To: <ywn7bq6j6jgokwmm3vsumkuwijplezmery5tr6z5yeblnpyjh7@djkwdbt4sl3q>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 6 Sep 2024 09:45:44 +0200
Message-ID: <CAMRc=Mfj3gpgV0N__oB8kF5pk4PrDwP1CqeUgUbvTwyo7p=7bQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: sc8280xp-crd: model the PMU of
 the on-board wcn6855
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kalle Valo <kvalo@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dbaryshkov@gmail.com>, Johan Hovold <johan@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, ath11k@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 9:26=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, Sep 05, 2024 at 09:41:44PM GMT, Kalle Valo wrote:
> > Konrad Dybcio <konradybcio@kernel.org> writes:
> >
> > > On 5.09.2024 3:00 PM, Bartosz Golaszewski wrote:
> > >> On Thu, Sep 5, 2024 at 2:56=E2=80=AFPM Dmitry Baryshkov <dbaryshkov@=
gmail.com> wrote:
> > >>>
> > >>>>>
> > >>>>> As you are going to post another revision, please also add
> > >>>>>
> > >>>>> qcom,ath11k-calibration-variant
> > >>>>>
> > >>>>
> > >>>> I had it in earlier revisions. The only one we could add here woul=
d be
> > >>>> the one from X13s as QCom has not yet released the data for the CR=
D.
> > >>>> Johan and Konrad were against adding this here if it doesn't refer=
 to
> > >>>> the correct one so I dropped it.
> > >>>
> > >>> As Kalle usually merges data with some delay it's not infrequent to
> > >>> have DTS which names calibration variant, but board-2.bin doesn't h=
ave
> > >>> corresponding data. The driver safely falls back to the data withou=
t
> > >>> variant if it can find it. Als  usually it's us who supply the
> > >>> calibration name.
> > >>>
> > >>
> > >> Johan, Konrad,
> > >>
> > >> What do you think? Do we know the exact name and should I add it or
> > >> should we wait until it's in board-2.bin?
> > >
> > > If we can agree on the string identifier with Kalle in advance, we ca=
n
> > > add it even before the boardfile drops
> >
> > There have not been really any naming rules for the variant string, it
> > just needs to be unique so that it doesn't conflict with other variant
> > strings. What have you been thinking?
>
> QC_8380_CRD (following DMI / Windows name) or QC_X1E80100_CRD (following
> marketing name). Or maybe QTI_ instead of QC_. WDYT?
>

Is there any central authority listing these names? Or are they just
agreed upon on the mailing list? I honestly don't know where they come
from.

Bart

