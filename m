Return-Path: <devicetree+bounces-72810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8401D8FD073
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:08:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 102341F22FB2
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 14:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB7117BBF;
	Wed,  5 Jun 2024 14:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="UQSDNqLe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D685B19D88C
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 14:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717596529; cv=none; b=QjVGCdWWHVPtdKt+/stBAUcBumCnxnlTyk2zPFKHLyyZy7i/a0eNxRDIrPx6zUZ3hqTMrg+knBd7g1CfDKQSJ7um/wAoMB4b2Y0MisoOqi3hMKc7UGgv7e8o4JMS6/P3zN0D6KbCK5gL31JfobAGLSUYMoXGKLAJxgbdCiA44kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717596529; c=relaxed/simple;
	bh=LiyeTVR61UKKdfGZzWXSIUzQsWrUlb7cMftBdtGQCdI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GH9IdyZ/ctT7f8uGwihnYB8ZvjVVPVc/LJzDd5aDg2tF2XK5sNBGyIRBuSE50D94z20xdPjRrvdZhHq2Bo0R+8x8nVKDhOzV6FHNFlcyPTwbBcrYei8q+vVlFsoQ39SkdaacS7LfKqiuXqfbMSqTBnckrWod0PkxH88GAfOSwXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=UQSDNqLe; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b94ad88cbso6114075e87.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 07:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717596525; x=1718201325; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZHSispro9byIbJJ27egkXQIvYlTCe/tBCT6tEz+/1ZA=;
        b=UQSDNqLezPtezV0T7GLrpADklMNkI2daMF9cUJOZ7Dr163QK7Yyx6yKmNRPxgvM18/
         MZjxtcIQIfTo8uOKrYF9cr7NdNMtALFIqSnd0sFoOdf5bRNvU8yz2gh/QJr93m1TI7ql
         YQEOyVyaPObc7KI1f/KDp2jhmZy6ejgpWKJcU/rNTJe1TxfF3+uZ4XLG+4Dpfgg2BpmT
         c+Go6TR7N8o+e+pSSb3+Wq5HB+Llxd1++j5J3xLpNwfPjFOCAb1Sbvv0Cu4KZy2QfeqX
         2l2G7x4sSXAon6haMrWWRwNtcMi5Pv40DOFKFKgfg37maxSO+2l9ib5VyXlWS7J79H2t
         X5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717596525; x=1718201325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZHSispro9byIbJJ27egkXQIvYlTCe/tBCT6tEz+/1ZA=;
        b=dIpNTlhXRJNWx8IGQvwRY1i4YWwcoeMWwPeBa7yU2PNk9L3msE+x4iqgcVkzOX1vCK
         03tKaBTJukwMECM2UiF69nm5EKD2rqJv5s9VuMiNs0uO+3m855XyxOgf8c6r3Fkyhlqu
         LZkLDzWPO5IeSKaEGXH4Au6mFJUo8nSq/pmzo/DmN7oCL/SbzQk5SSLu8mEo+VzyWXj1
         44Onn+0zdzF+bYjDW3JNNtoPgW/6kslhPh04+9go3QZTP+fSgn0xNOiNLR9TR0oVb5Ju
         hSr43IUkH4Y5AcXFdMukI0Qv/GCN6vysGrvl6RwrsQQem2p28FCgxO3GiMtBHyrwnnX/
         xGvQ==
X-Gm-Message-State: AOJu0Yyc9m2vYP1kjTtysO4/IQMBqBv2Mqnf9isbgapooCaE+9UdlhCt
	VP0E2UUbUy8FPIUN67Z26RE/FWtxGe65bkXIAB7M43EOJiYnFSo6JvFez21O/cwP0b0ptFlxbKL
	++rpxH6mUAE6bpoaLxaLhSwDz1rlYV/hJZ2j0UA==
X-Google-Smtp-Source: AGHT+IHVO+lSKQJ56xItpne0KixFpMYolI8f49B5HwH8eWN98yjpZ4Zaz6HR99APTQLC2bwhfkxQQ0OkpCA0PkyvYmw=
X-Received: by 2002:a05:6512:31ca:b0:518:9ce1:a5bb with SMTP id
 2adb3069b0e04-52bab4fcbfbmr2613769e87.54.1717596524882; Wed, 05 Jun 2024
 07:08:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122729.24283-1-brgl@bgdev.pl> <171759285132.2201422.6812393889473417095.robh@kernel.org>
In-Reply-To: <171759285132.2201422.6812393889473417095.robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 5 Jun 2024 16:08:33 +0200
Message-ID: <CAMRc=Me34aD=tfoh7YG9Zz1DM0h3DGZFcMonVF0+RDUCUTaNRQ@mail.gmail.com>
Subject: Re: [PATCH v9 0/4] arm64: dts: qcom: add WiFi modules for several platforms
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 5, 2024 at 3:12=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
>
> On Wed, 05 Jun 2024 14:27:25 +0200, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Hi!
> >
> > Here are the DTS changes for several Qualcomm boards from the
> > power-sequencing series. To keep the cover-letter short, I won't repeat
> > all the details, they can be found in the cover-letter for v8. Please
> > consider picking them up into the Qualcomm tree. They have all been
> > thorougly tested with the pwrseq series.
> >
> > Changelog:
> >
> > Since v8:
> > - split the DTS patches out into their own series
> > - Link to v8: https://lore.kernel.org/r/20240528-pwrseq-v8-0-d354d52b76=
3c@linaro.org
> >
> > Since v7:
> > - added DTS changes for sm8650-hdk
> > - added circular dependency detection for pwrseq units
> > - fixed a KASAN reported use-after-free error in remove path
> > - improve Kconfig descriptions
> > - fix typos in bindings and Kconfig
> > - fixed issues reported by smatch
> > - fix the unbind path in PCI pwrctl
> > - lots of minor improvements to the pwrseq core
> >
> > Since v6:
> > - kernel doc fixes
> > - drop myself from the DT bindings maintainers list for ath12k
> > - wait until the PCI bridge device is fully added before creating the
> >   PCI pwrctl platform devices for its sub-nodes, otherwise we may see
> >   sysfs and procfs attribute failures (due to duplication, we're
> >   basically trying to probe the same device twice at the same time)
> > - I kept the regulators for QCA6390's ath11k as required as they only
> >   apply to this specific Qualcomm package
> >
> > Since v5:
> > - unify the approach to modelling the WCN WLAN/BT chips by always expos=
ing
> >   the PMU node on the device tree and making the WLAN and BT nodes beco=
me
> >   consumers of its power outputs; this includes a major rework of the D=
T
> >   sources, bindings and driver code; there's no more a separate PCI
> >   pwrctl driver for WCN7850, instead its power-up sequence was moved
> >   into the pwrseq driver common for all WCN chips
> > - don't set load_uA from new regulator consumers
> > - fix reported kerneldoc issues
> > - drop voltage ranges for PMU outputs from DT
> > - many minor tweaks and reworks
> >
> > v1: Original RFC:
> >
> > https://lore.kernel.org/lkml/20240104130123.37115-1-brgl@bgdev.pl/T/
> >
> > v2: First real patch series (should have been PATCH v2) adding what I
> >     referred to back then as PCI power sequencing:
> >
> > https://lore.kernel.org/linux-arm-kernel/2024021413-grumbling-unlivable=
-c145@gregkh/T/
> >
> > v3: RFC for the DT representation of the PMU supplying the WLAN and BT
> >     modules inside the QCA6391 package (was largely separate from the
> >     series but probably should have been called PATCH or RFC v3):
> >
> > https://lore.kernel.org/all/CAMRc=3DMc+GNoi57eTQg71DXkQKjdaoAmCpB=3Dh2n=
dEpGnmdhVV-Q@mail.gmail.com/T/
> >
> > v4: Second attempt at the full series with changed scope (introduction =
of
> >     the pwrseq subsystem, should have been RFC v4)
> >
> > https://lore.kernel.org/lkml/20240201155532.49707-1-brgl@bgdev.pl/T/
> >
> > v5: Two different ways of handling QCA6390 and WCN7850:
> >
> > https://lore.kernel.org/lkml/20240216203215.40870-1-brgl@bgdev.pl/
> >
> > Bartosz Golaszewski (3):
> >   arm64: dts: qcom: sm8550-qrd: add the Wifi node
> >   arm64: dts: qcom: sm8650-qrd: add the Wifi node
> >   arm64: dts: qcom: qrb5165-rb5: add the Wifi node
> >
> > Neil Armstrong (1):
> >   arm64: dts: qcom: sm8650-hdk: add the Wifi node
> >
> >  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 103 ++++++++++++++++++++---
> >  arch/arm64/boot/dts/qcom/sm8250.dtsi     |   2 +-
> >  arch/arm64/boot/dts/qcom/sm8550-qrd.dts  |  97 +++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi     |   2 +-
> >  arch/arm64/boot/dts/qcom/sm8650-hdk.dts  |  89 ++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8650-qrd.dts  |  89 ++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8650.dtsi     |   2 +-
> >  7 files changed, 370 insertions(+), 14 deletions(-)
> >
> > --
> > 2.40.1
> >
> >
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> New warnings running 'make CHECK_DTBS=3Dy qcom/qrb5165-rb5.dtb qcom/sm855=
0-qrd.dtb qcom/sm8650-hdk.dtb qcom/sm8650-qrd.dtb' for 20240605122729.24283=
-1-brgl@bgdev.pl:
>
> arch/arm64/boot/dts/qcom/qrb5165-rb5.dtb: bluetooth: 'vddbtcmx-supply' do=
es not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/net/bluetooth/qual=
comm-bluetooth.yaml#
> arch/arm64/boot/dts/qcom/sm8650-qrd.dtb: /wcn7850-pmu: failed to match an=
y schema with compatible: ['qcom,wcn7850-pmu']
> arch/arm64/boot/dts/qcom/sm8650-hdk.dtb: /wcn7850-pmu: failed to match an=
y schema with compatible: ['qcom,wcn7850-pmu']
> arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: /wcn7850-pmu: failed to match an=
y schema with compatible: ['qcom,wcn7850-pmu']
> arch/arm64/boot/dts/qcom/qrb5165-rb5.dtb: /qca6390-pmu: failed to match a=
ny schema with compatible: ['qcom,qca6390-pmu']
>
>
>
>
>

Bindings for this were sent separately to for the regulator tree.

Bartosz

