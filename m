Return-Path: <devicetree+bounces-93474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB429510CD
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 01:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 351171C220E0
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 23:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3121AD9FC;
	Tue, 13 Aug 2024 23:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b="Ucab8Kes"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94511AD9DE
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 23:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723593471; cv=none; b=gEVyfgYJx6i9DFXCeEnuJmm/H3gCOcmhg5cafYrpg8BhNFSv1F1AXw+GyjNEn8S+9cMARlqhOvfLVpQV/4XXYruE+nqNBmNDAsQEhEb2kWrudy+TCJ6p+Rp03nbIdGYKat14CrlSetAfen3WaXTmaLSfmQrFAyl3lU1rpoVhhSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723593471; c=relaxed/simple;
	bh=9rJvxFbTtyCjbfwWhjJOEmSF/uL9iwHO1cXiYIS0WbY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YICvs+v+1YWZl1Hb1rgr7deQ/hAYlXnXZlGVV7rjFI6LsIH3dVsnm+kE7zgmdwcKUKtCzhXytGNIWmeVNfQ7N/GoPqZDYPw0nxakmdVMwgIR1iE9ls1tCEY58OpVjOBhQBe9nBCRliSwW5VgsjC6lrkO9r981QAVCvensuxTkLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org; spf=pass smtp.mailfrom=kali.org; dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b=Ucab8Kes; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kali.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa69dso5975618a12.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 16:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1723593468; x=1724198268; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XL6lleqGVBmY7etiLUhpOHar1oHmk2I6pw0/ETB9/GI=;
        b=Ucab8KesvWVUFKNFZ6dpcw/SCdH3qhqqCj6/6/0YFRrJljUqATw3mQ6hjb+ba3jFKj
         h/5pUZKeLuroWw3DrVkHwqk7M2pXXbteXnSwhDzj4YDJJWxFoy0kyFaKnvonh6mhMfKp
         7zOpOQfYKgEWt936wD7S1m8Qo79iN2XkNy6TjdSsBFBFXfBOiUU9v+liDQFRkJDqBOxd
         kK0bJRAqGVYtU3LpjI8MA796oS9YNIKxgRF7YPB4IdPW8zyIBuPVIB6wLTtif5IPWown
         6DSFpNC0pix/FnE17OdtiTLDuZT+mpt1rkiJWO9oZ+32NxCgmNxxVr+jfIiPg5DYf2p2
         B+7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723593468; x=1724198268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XL6lleqGVBmY7etiLUhpOHar1oHmk2I6pw0/ETB9/GI=;
        b=RZsJyCKjs+oCCzIUo/590wxTWvWPtSdCDBokVSEJHlRKKYvNswLEis8GSKXeI47qyR
         F2LkcEt79i+Xg8Fgha35ByGXMfs6Cxuia0NVahX8+1BZdk+o264qC4bfB4QoAAqsDQBK
         mJVAB5kVcHGlKR7NY3cTkYhSrEURzVRR7Id6S4BsoMtYED5N3DZulu0XAn/9PDr5K110
         js5AtMlNgguM1ND1sLnU+qBa+1lG6tIdPNzzSSLsDWf3LQ2pqpS3JN/a/JH8aPBDUVVD
         1HEvaqb1/t9CFvbRYhkqGnqgq16hf3L1UTASB5TUhWxxt1S+bmSs1i7Wwqf2fFMmGtd8
         6xwg==
X-Forwarded-Encrypted: i=1; AJvYcCXsbTFcB6wkolbJrOXpmJBxDbAZC7vTPvoPCk8AxJR3iZ9BMMRszMZbdOudenSOJsMsBDgFf1MAEDfaXC1vn3MV3u/boM8OVi95HQ==
X-Gm-Message-State: AOJu0Yyb/sjXplSBDuGm97eHis5KKdKrBkg8WiutggijrXtQNc3Zkg0R
	Hdn9b1KkHUcEGBFHLGvAJkbviq1wY+jrj7fuF5xGy4kHz+JXRQDOuBghwjXrOwIQUv0LzYADskh
	HKGG31khlrdW6nZWkVleyCybXPDw3RCMS4qjf9PUw4BH7iK+i8VLv5Q==
X-Google-Smtp-Source: AGHT+IH6ShMSixDx7MY8utuUc4M6Q7TUi0zFccuz6gpCW22FnQCw/SgeUakRSDdQ2IlIMRt68drdrQQGeRdyc6iSkKE=
X-Received: by 2002:a05:6402:f1f:b0:5a2:87d3:6ee6 with SMTP id
 4fb4d7f45d1cf-5bea1cb7cdemr708953a12.32.1723593467117; Tue, 13 Aug 2024
 16:57:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240813190639.154983-1-brgl@bgdev.pl> <CAKXuJqhuusKMgVj7k7DEEBCSW6VjRhiyqoD6usaoSnawMxODaQ@mail.gmail.com>
 <CAMRc=McVYgorbRrQ5NhJbFrQbgvdMg50vNS+mUsERMbO8GZc2g@mail.gmail.com>
In-Reply-To: <CAMRc=McVYgorbRrQ5NhJbFrQbgvdMg50vNS+mUsERMbO8GZc2g@mail.gmail.com>
From: Steev Klimaszewski <steev@kali.org>
Date: Tue, 13 Aug 2024 18:57:35 -0500
Message-ID: <CAKXuJqj5s0wQniS44F9o-KzWO5mO-sKOfkdkRRyhPpJOMotebA@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sc8280xp: enable WLAN and Bluetooth
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2024 at 3:38=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> On Tue, Aug 13, 2024 at 10:12=E2=80=AFPM Steev Klimaszewski <steev@kali.o=
rg> wrote:
> >
> > Hi Bartosz,
> >
> > On Tue, Aug 13, 2024 at 2:07=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev=
.pl> wrote:
> > >
> > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >
> > > This enables WLAN and Bluetooth on two boards using the sc8280xp SoC.
> > > For the sc8280xp-crd we add the PMU, wifi and bluetooth nodes with th=
e
> > > correctly modelled wiring between them. For the X13s, we rework exist=
ing
> > > nodes so that they align with the new DT bindings contract.
> > >
> > > Bartosz Golaszewski (2):
> > >   arm64: dts: qcom: sc8280xp-crd: enable bluetooth
> > >   arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6=
855
> > >
> > > Konrad Dybcio (1):
> > >   arm64: dts: qcom: sc8280xp-crd: enable wifi
> > >
> > >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 169 ++++++++++++++++=
++
> > >  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 ++++++++--
> > >  2 files changed, 255 insertions(+), 12 deletions(-)
> > >
> > > --
> > > 2.43.0
> > >
> > >
> > What does this patchset depend on?  I'm assuming I'm missing something
> > in my config as I've tried to test this patchset and I end up with the
> > wifi and bluetooth being deferred on my Thinkpad X13s
> >
> > [   18.655330] pci 0006:01:00.0: deferred probe pending: pci: wait for
> > supplier /wcn6855-pmu/regulators/ldo9
> > [   18.655347] serial serial0-0: deferred probe pending: serial: wait
> > for supplier /wcn6855-pmu/regulators/ldo9
> > steev@finn:~$ sudo cat /sys/kernel/debug/devices_deferred
> > 0006:01:00.0    pci: wait for supplier /wcn6855-pmu/regulators/ldo9
> > serial0-0    serial: wait for supplier /wcn6855-pmu/regulators/ldo9
>
> On Tue, 13 Aug 2024 at 22:12, Steev Klimaszewski <steev@kali.org> wrote:
> >
> > Hi Bartosz,
> >
> > On Tue, Aug 13, 2024 at 2:07=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev=
.pl> wrote:
> > >
> > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >
> > > This enables WLAN and Bluetooth on two boards using the sc8280xp SoC.
> > > For the sc8280xp-crd we add the PMU, wifi and bluetooth nodes with th=
e
> > > correctly modelled wiring between them. For the X13s, we rework exist=
ing
> > > nodes so that they align with the new DT bindings contract.
> > >
> > > Bartosz Golaszewski (2):
> > >   arm64: dts: qcom: sc8280xp-crd: enable bluetooth
> > >   arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6=
855
> > >
> > > Konrad Dybcio (1):
> > >   arm64: dts: qcom: sc8280xp-crd: enable wifi
> > >
> > >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 169 ++++++++++++++++=
++
> > >  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 ++++++++--
> > >  2 files changed, 255 insertions(+), 12 deletions(-)
> > >
> > > --
> > > 2.43.0
> > >
> > >
> > What does this patchset depend on?  I'm assuming I'm missing something
> > in my config as I've tried to test this patchset and I end up with the
> > wifi and bluetooth being deferred on my Thinkpad X13s
> >
> > [   18.655330] pci 0006:01:00.0: deferred probe pending: pci: wait for
> > supplier /wcn6855-pmu/regulators/ldo9
> > [   18.655347] serial serial0-0: deferred probe pending: serial: wait
> > for supplier /wcn6855-pmu/regulators/ldo9
> > steev@finn:~$ sudo cat /sys/kernel/debug/devices_deferred
> > 0006:01:00.0    pci: wait for supplier /wcn6855-pmu/regulators/ldo9
> > serial0-0    serial: wait for supplier /wcn6855-pmu/regulators/ldo9
>
> Hi Steev!
>
> There's a bunch of driver changes and some fixes needed for this to
> work that I sent later. I also sent out DT bindings updates for it. I
> decided to target relevant maintainers with smaller chunks because I
> have had more luck getting patches upstream this way than when sending
> big series with everything in them. Given that QCom patches take ages
> to get picked up, I figured the driver changes will be in next by
> then.
>
> Your best approach would be to use the public integration branch from
> my tree[1] or the one rebased on top of Johan's tree[2].
>
> Bart
>
> [1] https://git.codelinaro.org/bartosz_golaszewski/linux/-/tree/b4/sc8280=
xp-pwrseq?ref_type=3Dheads
> [2] https://git.codelinaro.org/bartosz_golaszewski/linux/-/tree/sc8280xp-=
pwrseq-on-jhovold?ref_type=3Dheads

Thanks for the quick response!  With everything in place, this does
seem to allow both wifi and bluetooth to continue to work on my
Thinkpad X13s
Tested-by: Steev Klimaszewski <steev@kali.org> #Thinkpad X13s

