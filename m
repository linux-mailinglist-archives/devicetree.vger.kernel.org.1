Return-Path: <devicetree+bounces-107903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DB59905B6
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 16:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E700285011
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 14:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9063A217339;
	Fri,  4 Oct 2024 14:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Vs++4bNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89476217304
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 14:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728051210; cv=none; b=YHUukL2S4zOUt/k2vey6tfQUtUPaeqBPXrBCBSXlvj8Y9Qk9e8GhXnRzXX5hIhkoBoII3BnMUIac/VH5iUWPfdxenepDYVjXkXGv70RDW7KUmhP/cIxwHBL0Pp3vZS6n54H3h5YnWQJJCL+XN2TMjfB0QTNRzdOaDfUxPXvXP/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728051210; c=relaxed/simple;
	bh=Pfr1vMoDBmbi4ivUfyNjxgf28YzEK0jBtrK+GaS4D2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aVCs/0zVbpEDn3yAGtj37g4zRvtyBeWrsg+x5jIKXUUaw7qMB/DGBjEBu2ZDkYxsRo5EqiqVUav3RZU8ZYHLCwT4lHZaycDMi5P5qVepW/PIJijz3VY8F9XpxAVg+Qg5mUhBNIDFFz8U/cVfb5CwYB71xAcLOxiOnDND7+5hObU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Vs++4bNy; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5398d171fa2so2676245e87.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 07:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1728051206; x=1728656006; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pfr1vMoDBmbi4ivUfyNjxgf28YzEK0jBtrK+GaS4D2M=;
        b=Vs++4bNyYVBnVkvWIxWozSnAn3p3FkEfcUjph51SCmhXmbBnEicAyP65Sl4iu9xldT
         3K0DNo35cSnQl3kL9A2y8A44Thv7o2Bb2fxB12h/5SHdutYMIHE+A1sy9gDLda1dPjn4
         2fKPZZFkDUg6tvLsZ7dpJrP9zXw9F2Fk8HTOdCUZbqkbSmQxkoLVkUNbJn7hrYOx7YCm
         kzIMeZzhptmGVc68unarAx4v0nlOnNZ39igA6sa7iYMORx6Xfki3zxA8UbkOq3rY6TE4
         y+qCA4JSaz6eemHDfBmcS6NkjIrCKtdHHiunXJFSNicmdu5i0PzkcYezNrN+NVzPLeTX
         mNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728051206; x=1728656006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pfr1vMoDBmbi4ivUfyNjxgf28YzEK0jBtrK+GaS4D2M=;
        b=IzVx6HCJAHyPePx5i0uWe/J7Dpi7WLdwWuk+t3cqQ/MYmKgfT41WMHcbOhx5kLWT0+
         wEJd/RiyhcMFRNKtT5sLx8GW03kvxCc9vvLtZRQqVuhhCbsqNiPBMvqejLMOmHfdRGXB
         E72QUWxTvjBifdt5YhZfB62IDKf3p2rr7yiBKCblCc1YJn+CzrfQjxCOE4g6hAFUCNLZ
         9RtEZ+gsTWVVSIJ3P+/DPgtpPR9W2ofGIXQabrm/sFP7/N2OUCgYj9fkd8OAGrB8VALC
         ltoTyL/044p4LSRYwYRUwRtDqY/qFQqhTF7E0d9NxFElfgwLkXoZqLJDNDKd95N3H/Bu
         +8IQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAL6H+msf60Uvlutm04AvED/JOhsO2+9/H/H+YeR8gapjRlhHS4t73bRoP2JULCV7iEPhxXQOZSB1t@vger.kernel.org
X-Gm-Message-State: AOJu0YwLhKB03HLwC4mpxjyX7aldKVwq7RgG4HDP49pA35GrMrIaEC7d
	nmmINNJaLHeTwAq1Xq95/+UQaJ7BWEp/taS12pYNP0Zw2YrTFxx0zJCHd2kN2oRW+s9An2DXSf1
	4TqB2vF3yEyiV2rd3xoaX97I/b3C7sPc8e0rM5Q==
X-Google-Smtp-Source: AGHT+IE2U1cjYMuf7S0P6mRyvPGhbqF7gOednFYaJtrFTIN1Sq2Nm7gdftzNvEVY1wTl6WsotGbsgqMpB2rdjluKgC8=
X-Received: by 2002:a05:6512:39c9:b0:52d:b226:9428 with SMTP id
 2adb3069b0e04-539ab85bfadmr1859500e87.6.1728051206319; Fri, 04 Oct 2024
 07:13:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001-wrapped-keys-dts-v7-0-a668519b7ffe@linaro.org> <Zv/0DVQNEsJPoyCR@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <Zv/0DVQNEsJPoyCR@hu-bjorande-lv.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 4 Oct 2024 16:13:15 +0200
Message-ID: <CAMRc=Mc__SzjxA_XoYcco=zLUvtbSCyWmdhx=NOXt5CGLWGK1w@mail.gmail.com>
Subject: Re: [PATCH v7 0/2] arm64: dts: qcom: extend the register range for
 ICE on sm8[56]50
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Om Prakash Singh <quic_omprsing@quicinc.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Gaurav Kashyap <quic_gaurkash@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 4, 2024 at 3:56=E2=80=AFPM Bjorn Andersson
<quic_bjorande@quicinc.com> wrote:
>
> On Tue, Oct 01, 2024 at 10:35:29AM +0200, Bartosz Golaszewski wrote:
> > The following changes extend the register range for ICE IPs on sm8550
> > and sm8650 in order to cover the registers used for wrapped key support
> > on these platforms.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Changes in v7:
> > - bring the ICE register range up to its full size of 0x18000
> > - Link to v6: https://lore.kernel.org/r/20240906-wrapped-keys-dts-v6-0-=
3f0287cf167e@linaro.org
> >
> > Changes in v6:
> > - split out the DT changes into a separate series
>
> Bartosz, this strategy of "let's split things such that the maintainers
> can't see the full picture" is just BS. It needs to stop.
>

You're exaggerating, I'm not doing anything like this. You're still
Cc'ed on the single big series containing the code changes for wrapped
keys. The full picture is over there.

> Now you will argue that these patches stands on their own, and that

Yes, that's precisely what I'm going to say, because it's true.
0x18000 is the true register size (as per QCom docs) for ICE on
sm8[56]50 and sa8775p too and that alone warrants this change. If we
can get the DTS changes out of the way of wrapped keys, then that's
just a bonus.

> might be a valid case, but the argumentation you're making in the commit
> message clearly ties them to the code changes you're making somewhere
> else.
>

Are you referring to "(...) registers used for wrapped key support on
these platforms"? I could argue that it just says what the additional
registers are used for but I can drop the mention of this from the
message and just say "0x18000 is the true register range for ICE on
sm8650" if that works for you.

Bart

