Return-Path: <devicetree+bounces-37984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DA84710E
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 14:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DAF7B219A4
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 13:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7951D46546;
	Fri,  2 Feb 2024 13:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="a7fClUo5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBFA46425
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 13:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706880244; cv=none; b=OC7MGXwNl1wZneVkDn7TLFf9HAFjJl9GHn1XYCyuYRYzfS09IHixgm1tfEwQoQyEt8XxCp1KUjDJ1PuAA7j8Y3bKPyjYwXduM7GGGF8OB05PYBlaspDG2R12DoVRvtsQWl8wMXsYYBVc4Mt8lAJP0xxFVOrScXRLO4yj6lnu3gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706880244; c=relaxed/simple;
	bh=UAaor+OvHRxZyb19OeeiMq5YPyGKff5Y3t7zNK5hQio=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NR6ShGBNncISuWsQAv4vy0DpKUW2NRrbaD+lnzl0q7hUSvZmcdF/GSnKHNUqytF42QhzEu/6u2HFbrTuA3tJ2CfS1LenfxxANC24BZMWNJxgakA+ePMBmBLb8CZ3faOYy9gCu4fI3ep22gBNW30NyGHLUnAXJeuiOd2uzF1GGZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=a7fClUo5; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-7d5fce59261so1038165241.3
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 05:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706880240; x=1707485040; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hz8xZTKk1yx3xYmAtNA8p+sXodOnGKPr8O/375rWSU4=;
        b=a7fClUo59NJhPA1ErWnmZbE5HKGKf57H4BEv1vLgB2psSSIcIWWk3I1iXkcfktbUJZ
         62hvTvJoBSPygBbjVX1KQWQUqGJorUBVr1PU9yxWqBXKxeWqjng+RtSXcGiB9JixOJ+3
         A1FBrkxZDkyxLxvwphZJXDPlsxXT1/8OwxUp0tMnzE0/zZr7xjtbqqP5e+XYFgbNqHtf
         XyJ97MBpySHM3fhyy+AQzkxDR8mBlC+OmjCWYj6KNZ+g6lDoI6eAakzYTEtesrUvU5aB
         HXDoJllnInkzI37vPC1tesNuCBReeE+m9Miw/t/31oDWKk1YHRGz9xSo9Tr171Rsfihe
         8p8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706880240; x=1707485040;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hz8xZTKk1yx3xYmAtNA8p+sXodOnGKPr8O/375rWSU4=;
        b=v9snCvX8SyEJUoJTkAEb3gZnByltZhHLfjQmOt3MSuRYhh9evqFKGN/v3tlvjitoVF
         SSXuD1lInlP0LKS1uBr/UUHp3VpJidGTTm3I+wX2NFi3Ia8Cx/3oIKjNpgGopPo52P7U
         x5UHC6i9H3PX8hSTbB7LpQYsbJ8I57PmAVUnTVyLNaoKNSOyT52cwYF748rwAiK0ryHS
         NsUPRXq2LZSAILTlvvjYYZUkNZ36yActc06fNqoBF2PuZAHiSKxt6Aoh8LIL2hOIgwRn
         oryU5GuvcLsCHj24aFaRtAKLJAy4N9jYhPyUvqQfVQbmtQSRSbkYzJl3Gl0FRtkW8avu
         hGMA==
X-Gm-Message-State: AOJu0YwGALJwaygWLvSwIQn8nRy/5rvU4FjVuNlSZ/RqmHnO9f04Ng6j
	AGV/Mg849I0ZUUlm1Vri73xnLhT6FzMmX60yJrlb+pLFdU3Xl3pz0HoypGyCFlXHy5SNs/d0Qld
	MWasaeGQEh4tekh+w6n0IOKWqh7paAijcfh2Hsg==
X-Google-Smtp-Source: AGHT+IFW4i4ANf20+Aj8hI0qnUo70/DfClBMexuJC+KQ5QvWnmdXsoNCitjgC49/m3KRH0I430Kb7cSQQ8+F2edsC+A=
X-Received: by 2002:a05:6102:3e1f:b0:46c:f805:eb7e with SMTP id
 j31-20020a0561023e1f00b0046cf805eb7emr5536531vsv.28.1706880240522; Fri, 02
 Feb 2024 05:24:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201155532.49707-1-brgl@bgdev.pl> <20240201155532.49707-3-brgl@bgdev.pl>
 <5lirm5mnf7yqbripue5nyqu6ej54sx4rtmgmyqjrqanabsriyp@2pjiv5xbmxpk>
In-Reply-To: <5lirm5mnf7yqbripue5nyqu6ej54sx4rtmgmyqjrqanabsriyp@2pjiv5xbmxpk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 2 Feb 2024 14:23:49 +0100
Message-ID: <CAMRc=Mcq8a7T06DaX9nirfHOXPs+Bh51rKgO3FksxKH+Hph2FA@mail.gmail.com>
Subject: Re: [RFC 2/9] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	linux-pci@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 2, 2024 at 5:34=E2=80=AFAM Bjorn Andersson <andersson@kernel.or=
g> wrote:
>

[snip]

> > +
> > +             wlan-enable-gpios =3D <&tlmm 20 GPIO_ACTIVE_HIGH>;
> > +             bt-enable-gpios =3D <&tlmm 21 GPIO_ACTIVE_HIGH>;
> > +
> > +             regulators {
> > +                     vreg_pmu_rfa_cmn: ldo0 {
> > +                             regulator-name =3D "vreg_pmu_rfa_cmn";
> > +                             regulator-min-microvolt =3D <760000>;
> > +                             regulator-max-microvolt =3D <840000>;
>
> I'm still not convinced that the PMU has a set of LDOs, and looking at
> your implementation you neither register these with the regulator
> framework, nor provide any means of controlling the state or voltage of
> these "regulators".
>

Why are you so fixated on the driver implementation matching the
device-tree 1:1? I asked that question before - what does it matter if
we use the regulator subsystem or not? This is just what HW there is.
What we do with that knowledge in C is irrelevant. Yes, I don't use
the regulator subsystem because it's unnecessary and would actually
get in the way of the power sequencing. But it doesn't change the fact
that the regulators *are* there so let's show them.

What isn't there is a "power sequencer device". This was the main
concern about Dmitry's implementation before. We must not have
"bt-pwrseq =3D <&...>;" -like properties in device-tree because there is
no device that this would represent. But there *are* LDO outputs of
the PMU which can be modelled and then used in C to retrieve the power
sequencer and this is what I'm proposing.

Bartosz

> [..]
> >
> >  &uart6 {
> > @@ -1311,17 +1418,16 @@ &uart6 {
> >       bluetooth {
> >               compatible =3D "qcom,qca6390-bt";
> >
> > -             pinctrl-names =3D "default";
> > -             pinctrl-0 =3D <&bt_en_state>;
> > -
> > -             enable-gpios =3D <&tlmm 21 GPIO_ACTIVE_HIGH>;
> > -
> > -             vddio-supply =3D <&vreg_s4a_1p8>;
> > -             vddpmu-supply =3D <&vreg_s2f_0p95>;
> > -             vddaon-supply =3D <&vreg_s6a_0p95>;
> > -             vddrfa0p9-supply =3D <&vreg_s2f_0p95>;
> > -             vddrfa1p3-supply =3D <&vreg_s8c_1p3>;
> > -             vddrfa1p9-supply =3D <&vreg_s5a_1p9>;
> > +             vddrfacmn-supply =3D <&vreg_pmu_rfa_cmn>;
> > +             vddaon-supply =3D <&vreg_pmu_aon_0p59>;
> > +             vddwlcx-supply =3D <&vreg_pmu_wlcx_0p8>;
> > +             vddwlmx-supply =3D <&vreg_pmu_wlmx_0p85>;
> > +             vddbtcmx-supply =3D <&vreg_pmu_btcmx_0p85>;
> > +             vddrfa0-supply =3D <&vreg_pmu_rfa_0p8>;
> > +             vddrfa1-supply =3D <&vreg_pmu_rfa_1p2>;
> > +             vddrfa2-supply =3D <&vreg_pmu_rfa_1p7>;
> > +             vddpcie0-supply =3D <&vreg_pmu_pcie_0p9>;
> > +             vddpcie1-supply =3D <&vreg_pmu_pcie_1p8>;
>
> As I asked before, why does bluetooth suddenly care about PCIe supplies?
>

Yes, I forgot to remove it, I'll do it next time.

Bartosz

[snip]

