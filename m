Return-Path: <devicetree+bounces-93438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AEA950E06
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 22:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C0081C22961
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95BAB1A7044;
	Tue, 13 Aug 2024 20:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Oz3Ll7Pi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC3A4436A
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 20:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723581537; cv=none; b=GZjGBroLzQXZh61tO2Omwxhfx282WmJKwD7MlISM59bJr35yeGCg2ihXxuXnm3zU8RlYNdWpvXESC75i1+H/sj3UUgXm4uK5Dny35mFW7e3+yWp//lj1pqIxmzFnIVAqqvgqLyX4AKuZ8gUYARmjegqZh4AR7/n1cmZkrrdU0uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723581537; c=relaxed/simple;
	bh=gNtFH0wApHxalqL7M1Y4HeiaaIIYrW5uAUatBVf99kg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Iv/XhWOT/LzjWlnbfY2FzPsDTledWlzHq5M7tBAfkeulnZAQgxVQ9I7CoRn9CoCtWfQhpmQPj6aGOM6rGGzpRCz51g5zPCi3vDxhKE0iucYUEJo+PCrIctJO1dTWgYd4nY3lLZ+/S2CsrbNu1LlX/byQ7PpCOhtolnnO9jIednQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Oz3Ll7Pi; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52efd8807aaso7922241e87.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 13:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723581533; x=1724186333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JxYJZVCbiulA6WlEVSJZnh2sLWG8dwT+9Zzyjvb6OdA=;
        b=Oz3Ll7PiXz6MJGOiMtb/bS8yED6jOwp3gsjtJo5j/NmHosK/WB/RM8bObR3HntdTu7
         TcQ/+cOoJHIfTdwkuzZ9pYEClwaB7FmKnN4B0+0ztPhnqbZpPJSO2WyQK7Vw/knOehsO
         Yyt9ntavzYQzBoAGBp86IEAXs2ELPqloumRwZVijtiU8WyRopxDswHWQiM0oh42SGi/I
         r+jTdqWzHsFKUij96vboXUiT2IZBJCg97PWhUcJJ5HHufz9y2QS8IQlTFYdK/YJ83oSi
         +y6PcgnwP7s3qq8NmDvODU2EVhFBo2c6UI0zvOIKZkImNr13QAurs52VSZq9wZ+2pvnT
         H+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723581533; x=1724186333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JxYJZVCbiulA6WlEVSJZnh2sLWG8dwT+9Zzyjvb6OdA=;
        b=D5z/ERnLDYoiCEaHpwGd7gY45P/siUWN6S71MYv0jILJ5UKCHuwB3yifs2tQAfV/ZD
         8e2ky8AD846aqC4OIa8Ez3rVY1huJC63Hxb0++bnZ+Q3yCD8ER5aHRtjQ5CHnEm128Vd
         TfiQkHKMnK37htosp9CcVw3siYnw0xbyovJP2pZy32x4ZP5o3qM4jviMlOK5Jbeqy5sU
         17bqKeLtsr0SYK9aDABU8rKyii2mhc2ZNblWek2mMh5/ZssmyjqASJ3NJsTEIUKP6Hel
         36sgegFwYxM2ypnPSpc9WaXY3MlIAPbyXu0iL3GN3Dlj8CGnH4285oOuvdov02kZzdYA
         p4jw==
X-Forwarded-Encrypted: i=1; AJvYcCX7Csz1IXcApc23Icc27r8ArIUE71IXUJTWEzR50dInHzA2ySZQhQ9Nzwgo/OVHkMkQYBkSgEQv3bRBMdOanV4r3bEktfBJ2lKslQ==
X-Gm-Message-State: AOJu0YytQ05SDpuG1Dm8qx6SKhi+eHzLbDBNMwHquww4PqyaX3zMdtte
	LvZ+++0kuy1r5m3uQj9W8NR0NVJbovfb6/AcCbhSTaCrKO02dSlItNNm36HKldFZfXxkhfg27uG
	Ywt6GYfhiJaUG74sch0cfUd9DV9mQIQ0+waU5Ng==
X-Google-Smtp-Source: AGHT+IGHpapBOE3zhbsNgbWREFk4XYGeFsXW/MdqKSpQitkILKImHg1qnLGBXEbV0fHFawXJzNr5kUikTZyKGH0yB+0=
X-Received: by 2002:a05:6512:b93:b0:52e:fa35:15a4 with SMTP id
 2adb3069b0e04-532eda81aadmr336141e87.33.1723581532741; Tue, 13 Aug 2024
 13:38:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240813190639.154983-1-brgl@bgdev.pl> <CAKXuJqhuusKMgVj7k7DEEBCSW6VjRhiyqoD6usaoSnawMxODaQ@mail.gmail.com>
In-Reply-To: <CAKXuJqhuusKMgVj7k7DEEBCSW6VjRhiyqoD6usaoSnawMxODaQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 13 Aug 2024 22:38:41 +0200
Message-ID: <CAMRc=McVYgorbRrQ5NhJbFrQbgvdMg50vNS+mUsERMbO8GZc2g@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sc8280xp: enable WLAN and Bluetooth
To: Steev Klimaszewski <steev@kali.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2024 at 10:12=E2=80=AFPM Steev Klimaszewski <steev@kali.org=
> wrote:
>
> Hi Bartosz,
>
> On Tue, Aug 13, 2024 at 2:07=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.p=
l> wrote:
> >
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > This enables WLAN and Bluetooth on two boards using the sc8280xp SoC.
> > For the sc8280xp-crd we add the PMU, wifi and bluetooth nodes with the
> > correctly modelled wiring between them. For the X13s, we rework existin=
g
> > nodes so that they align with the new DT bindings contract.
> >
> > Bartosz Golaszewski (2):
> >   arm64: dts: qcom: sc8280xp-crd: enable bluetooth
> >   arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn685=
5
> >
> > Konrad Dybcio (1):
> >   arm64: dts: qcom: sc8280xp-crd: enable wifi
> >
> >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 169 ++++++++++++++++++
> >  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 ++++++++--
> >  2 files changed, 255 insertions(+), 12 deletions(-)
> >
> > --
> > 2.43.0
> >
> >
> What does this patchset depend on?  I'm assuming I'm missing something
> in my config as I've tried to test this patchset and I end up with the
> wifi and bluetooth being deferred on my Thinkpad X13s
>
> [   18.655330] pci 0006:01:00.0: deferred probe pending: pci: wait for
> supplier /wcn6855-pmu/regulators/ldo9
> [   18.655347] serial serial0-0: deferred probe pending: serial: wait
> for supplier /wcn6855-pmu/regulators/ldo9
> steev@finn:~$ sudo cat /sys/kernel/debug/devices_deferred
> 0006:01:00.0    pci: wait for supplier /wcn6855-pmu/regulators/ldo9
> serial0-0    serial: wait for supplier /wcn6855-pmu/regulators/ldo9

On Tue, 13 Aug 2024 at 22:12, Steev Klimaszewski <steev@kali.org> wrote:
>
> Hi Bartosz,
>
> On Tue, Aug 13, 2024 at 2:07=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.p=
l> wrote:
> >
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > This enables WLAN and Bluetooth on two boards using the sc8280xp SoC.
> > For the sc8280xp-crd we add the PMU, wifi and bluetooth nodes with the
> > correctly modelled wiring between them. For the X13s, we rework existin=
g
> > nodes so that they align with the new DT bindings contract.
> >
> > Bartosz Golaszewski (2):
> >   arm64: dts: qcom: sc8280xp-crd: enable bluetooth
> >   arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn685=
5
> >
> > Konrad Dybcio (1):
> >   arm64: dts: qcom: sc8280xp-crd: enable wifi
> >
> >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 169 ++++++++++++++++++
> >  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  98 ++++++++--
> >  2 files changed, 255 insertions(+), 12 deletions(-)
> >
> > --
> > 2.43.0
> >
> >
> What does this patchset depend on?  I'm assuming I'm missing something
> in my config as I've tried to test this patchset and I end up with the
> wifi and bluetooth being deferred on my Thinkpad X13s
>
> [   18.655330] pci 0006:01:00.0: deferred probe pending: pci: wait for
> supplier /wcn6855-pmu/regulators/ldo9
> [   18.655347] serial serial0-0: deferred probe pending: serial: wait
> for supplier /wcn6855-pmu/regulators/ldo9
> steev@finn:~$ sudo cat /sys/kernel/debug/devices_deferred
> 0006:01:00.0    pci: wait for supplier /wcn6855-pmu/regulators/ldo9
> serial0-0    serial: wait for supplier /wcn6855-pmu/regulators/ldo9

Hi Steev!

There's a bunch of driver changes and some fixes needed for this to
work that I sent later. I also sent out DT bindings updates for it. I
decided to target relevant maintainers with smaller chunks because I
have had more luck getting patches upstream this way than when sending
big series with everything in them. Given that QCom patches take ages
to get picked up, I figured the driver changes will be in next by
then.

Your best approach would be to use the public integration branch from
my tree[1] or the one rebased on top of Johan's tree[2].

Bart

[1] https://git.codelinaro.org/bartosz_golaszewski/linux/-/tree/b4/sc8280xp=
-pwrseq?ref_type=3Dheads
[2] https://git.codelinaro.org/bartosz_golaszewski/linux/-/tree/sc8280xp-pw=
rseq-on-jhovold?ref_type=3Dheads

