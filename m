Return-Path: <devicetree+bounces-121390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A829C6A41
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72D76B2378F
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F039189BBB;
	Wed, 13 Nov 2024 08:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="5mQfxZnW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291E017A922
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731484993; cv=none; b=d/NdtCIYbxwwDcM3n7BTgDZ0BimhEO3ReITnW7IyXm3h3OkNgVxjrmjAkdl6r4lhgWbZiMWrC3V2CMZRCq2prn+PnUSqmrIjoFS+xJsTLzQt3A5HRIgwBLQ+Wb2eyVbeoIkJMEoDu8dEf7D2WrAMxpq43ep5I4tM/H38+F8TyHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731484993; c=relaxed/simple;
	bh=JtfJ/M8Fde3sq0t/X0kZEogyBD+h5DUxk1EyzuQfIiQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=ij2bk/Iqy8tJ21RkVsGcRKFp12OZi6xkKPpS9xauRKUUAQmmVPJsboad2wMTzdTQNDGvkiGX9/pIEE8o/6SpXpWL0p3EH8HP4kvq2CMSNT6zaSQv8g3yC3oKr1FpF0MDBokRX7a7fTYbgq/ovsZDYOF9ovwHUPaQC4Q1ooEhx6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=5mQfxZnW; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so4306279f8f.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1731484988; x=1732089788; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jKyYktRQuJ/QeBC58+VEnoyS7t9UdeFDO97IPToRn1c=;
        b=5mQfxZnWHR/zupZge//HJjN9lGSuo9Zau6+Dm1sAiKsUlpnk5fyvD79V1fUJ3mk85M
         qFv02UpglU0aAjHWLp8tJQE54wpqxT+ny3q8TMl7MV5VUDQCIMs4AsnqBtieuADmlONN
         7IP7ihPjPxvpJshQwck/36tvUiYp8oyMkXqdTm9FaHendhoDu2yLXxmeYKPwrbEK/rHX
         E4UxKOyVzQZKO9jbxzfXsjR9CsnZ0O8GZ5ADXKJOqtEV9PGnCpwQuittgOdgytQ7jIgt
         QAjwFkMGeRv6meR1ymtRBagZeVYfT8Jtd9RlJeaVVL+/6Qwvr2dMw1AQputrV2hrViv/
         L4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731484988; x=1732089788;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jKyYktRQuJ/QeBC58+VEnoyS7t9UdeFDO97IPToRn1c=;
        b=p3a7d2hEII9j19Vdyp6MsbVL0OCuEILeI5j3vYC1qvXMdhbbjxPpox/Bo8I1fR5XXl
         W5O4/k2SLPjgreX/i8Ck7pMDAjmixW3YB8oJxB3KKe0qOlh/ZO6gqSw4pGcfMxLRJzAL
         t9qOyh0Ntrdytu4GsnrSuikW6Cb+7yX9y8IsIXc2Uak8jOljG9qJCvhSmY8pc72n+LoD
         NuzC452JF0gz+6P+jKgm+syPKAGUAe9DdkbEpbutuGMMCkQxxsjBFie3JgfGLkPq2595
         6voDeEV6WSqJPgUqSnTPHJfGeWwRWu1Xq2kLwcxDzwbTtuoCHO1PLRB6NDJ9wSRe8qL1
         UHrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWT2JC82ossgOE1xJ9sfSqc/Xn2NG2WRQgRDnXePe3ykWVdYHYtMpS5rUEb1/bcQKu4AowbxwhTrCED@vger.kernel.org
X-Gm-Message-State: AOJu0YyYgD8MZtggsRwLE91NXs81HDvc5o2VqrJXuFSsqJ9M+y9pIWgO
	OUu+JyBzg3Z5K4zq9Nqj82w7Gj0EfrFGWRX58lorXusj04HqV80Q6H9UbEh5KstZv0t8DE7qvYh
	Y
X-Google-Smtp-Source: AGHT+IFOEcn5QjxpPu724zso7ULSYt3uZMMHchhIsaHCQRGB1Ui88bJ4YmB3X+sf4mSWdm4RywdtVA==
X-Received: by 2002:a5d:6daa:0:b0:37d:377d:c7b0 with SMTP id ffacd0b85a97d-38208110ab8mr4231577f8f.18.1731484988382;
        Wed, 13 Nov 2024 00:03:08 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381eda03e8asm17571508f8f.90.2024.11.13.00.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 00:03:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 13 Nov 2024 09:03:07 +0100
Message-Id: <D5KW7A8BZG6K.2L7FEV6SWRZ2D@fairphone.com>
To: "Vedang Nagar" <quic_vnagar@quicinc.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@linaro.org>
Cc: <cros-qcom-dts-watchers@chromium.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Vikash
 Garodia (QUIC)" <quic_vgarodia@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: enable venus node
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20241004-venus_sc7280-v1-1-4d7d8fd7e95b@quicinc.com>
 <kezh3lmysij56g2tjwwuas5r26ro5i777yxxitsdcjeg7zp67v@oknrdbkzison>
 <78e6ff6b-efe1-496c-a1fb-c9a0a4aba2d2@quicinc.com>
 <CAA8EJpqqZL7xybcbJMsbTQB+ht5-A+ocNs+Sq30j=v1zM3JL9g@mail.gmail.com>
 <fbba794a-ba04-4790-b5e9-b4df3cba35b2@quicinc.com>
 <D5KAUZHYJHFS.1NXF5SVWYL03G@fairphone.com>
 <39206687-6fb3-434f-b2ba-a028cf6f8ed3@quicinc.com>
In-Reply-To: <39206687-6fb3-434f-b2ba-a028cf6f8ed3@quicinc.com>

Hi Vedang,

On Wed Nov 13, 2024 at 8:01 AM CET, Vedang Nagar wrote:
> Hi Luca,
> On 11/12/2024 8:49 PM, Luca Weiss wrote:
> > Hi Vedang,
> >=20
> > On Tue Nov 12, 2024 at 3:39 PM CET, Vedang Nagar wrote:
> >>
> >>
> >> On 11/12/2024 6:43 PM, Dmitry Baryshkov wrote:
> >>> On Tue, 12 Nov 2024 at 08:17, Vedang Nagar <quic_vnagar@quicinc.com> =
wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 10/7/2024 1:20 AM, Dmitry Baryshkov wrote:
> >>>>> On Fri, Oct 04, 2024 at 04:22:31PM GMT, Vedang Nagar wrote:
> >>>>>> Enable the venus node on Qualcomm sc7280. It was made disabled
> >>>>>> earlier to avoid bootup crash, which is fixed now with [1].
> >>>>>
> >>>>> NAK, there might be other reasons to keep venus disabled, like the =
lack
> >>>>> of the vendor-signed firmware for the particular device.
> >>>> Can you pls elaborate more on this? Any device with sc7280 SOC can u=
se
> >>>> venus.mbn which is already present in linux-firmware git.
> >>>
> >>> Can it though if the device is fused to use vendor keys and to check
> >>> the trust chain?
> >> Yes, infact the existing ones are signed and works with trustzone auth=
entication.
> >=20
> > No, the venus firmware from linux-firmware does not work on a device
> > with secure boot on, like the (QCM6490) Fairphone 5 smartphone.
> Are you saying even after applying this [1] you are seeing the same ?
>
> [1]
> https://patchwork.kernel.org/project/linux-media/patch/20231201-sc7280-ve=
nus-pas-v3-2-bc132dc5fc30@fairphone.com/

That patch has been in mainline since v6.9 and my tree is newer, so yes.

See e.g. Qualcomm doc KBA-161204232438 for some details.

Regards
Luca

> >=20
> > $ rm /lib/firmware/qcom/qcm6490/fairphone5/venus.mbn
> > $ cp /lib/firmware/qcom/vpu-2.0/venus.mbn.zst /lib/firmware/qcom/qcm649=
0/fairphone5/venus.mbn.zst
> >=20
> > leads to
> >=20
> > [   10.848191] qcom-venus aa00000.video-codec: Adding to iommu group 13
> > [   10.863062] qcom-venus aa00000.video-codec: non legacy binding
> > [   10.909555] qcom-venus aa00000.video-codec: error -22 initializing f=
irmware qcom/qcm6490/fairphone5/venus.mbn
> > [   10.910099] qcom-venus aa00000.video-codec: fail to load video firmw=
are
> > [   10.910849] qcom-venus aa00000.video-codec: probe with driver qcom-v=
enus failed with error -22
> >=20
> > It's the same with e.g. adsp firmware, modem firmware, etc.
> >=20
> > With secure boot off, yes, the hardware will load any firmware
> > regardless of the signature.
> >=20
> > Regards
> > Luca
> >=20
> >>>
> >>>>
> >>>> Regards,
> >>>> Vedang Nagar
> >>>>>
> >>>>>>
> >>>>>> [1]
> >>>>>> https://lore.kernel.org/linux-media/20231201-sc7280-venus-pas-v3-2=
-bc132dc5fc30@fairphone.com/
> >>>>>>
> >>>>>> Signed-off-by: Vedang Nagar <quic_vnagar@quicinc.com>
> >>>>>> ---
> >>>>>>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 --
> >>>>>>  1 file changed, 2 deletions(-)
> >>>>>
> >>>
> >>>
> >>>
> >=20


