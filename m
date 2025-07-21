Return-Path: <devicetree+bounces-198116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E79A8B0BC74
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 08:22:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E8DA169246
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 06:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F4926E71C;
	Mon, 21 Jul 2025 06:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aq8cV+t8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7114E1E835B
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 06:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753078932; cv=none; b=akJNp2JD6dDb678dGEE/N3D4eQ7Ug500LAZxOlI1wvusKibg5jm8LVkxyY4R5MC4OOGh5OH+M6rd7HnE+BNMq/eJvJQDO8ZGbPl8atOrrNrGs56kROzCxdak0l/cSum9zpA6xTjN8pNrBek/taZiGR2pLDz344xsjsTwCHDAV7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753078932; c=relaxed/simple;
	bh=e/WbSFDNeDfS+LSOj9AgaJuPp6oksM9qfd/sSKFNU8Y=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=VFVil9DfbC50fUSmUQwPylKC3PYKIHpNvEBhko9xbjhkhFlJr6lt79fXzYBypcpeuseEGfY6C3qCXyw2KbKjOH2iXdIyzurMJtWS364Zn+39iex9lPCH+6WwLbMl89V9weVZrizBK9bsp8HkoXy2HcSyTKfWUgWkKlQ/eQIJbLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=aq8cV+t8; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-607434e1821so5513800a12.0
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 23:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753078928; x=1753683728; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxlTp2H4f+SSkPB3pjUTlZ/GS1r2OUFTEUF3Vv45kbo=;
        b=aq8cV+t8y3rWHCjiRbl1Fa/PBc1hKt6fQzWP9kVTQ8Lbya1WAwYWSCto1v2ps501YO
         kz6t8IVe7/MxPGy9n/plexfvL9Xk6caeMmH1znATp2fzc9Cu6iYNevRm4g0YE1sT9Z7G
         M9FWnLLkYRmhWd1sOBOmDSS5RSuCLGw6qohCuuUZAmjMoXji/WD400pN7adUslNfF4Ju
         jxShos+hgQ4l1awXVGTZVeaS0YwOCjZ/FBRM6a21Rmo4O9xPTUMLYcKLI5uecb0xdd5H
         GGZEZXu3eB3WpgW//GERqpoAKIvduMvNq01cjq0ompbmiayFUZgCvlBHfDvaoZ5OiXGl
         rftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753078928; x=1753683728;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SxlTp2H4f+SSkPB3pjUTlZ/GS1r2OUFTEUF3Vv45kbo=;
        b=V5DAxeiuSVLRl+ntWSXcmsmT+uKgLjrepHg0oMqkbpu/WvyqYG4/wI4GIZS9smMVSs
         ZmMzwdgdDWwiNtA5I5giE802IS1CUm+qcwj4yIkB6Rp2eBvV1GSGL1oPvW4Y5kYM0/Ok
         olGeXg4t8ld9kbGvuXe+89MqEHXw9BdpwIqs05gctZd4f4JIO+UgKaxXR96nXv4SG9de
         sp3xp36sfPRxNp3NeeKbJ59qQ8vm/X+nE+4V2JDsU9q1Dkt8+O/byHvDrCRfWYUkbfQr
         WpLW8nfvfSmQMKi/WeYzCW+s69FuhW9CJTtZk/tyE+S2ZP4dOyxuS1YgjbA/4ETzqNG2
         3ixA==
X-Forwarded-Encrypted: i=1; AJvYcCWzKPJASDZDTxYLpW4C6CZ1/bC8IhABFoOLbn+/VknVn5y5Vp4INfmngvMKyd04qGu2e5LejDbfIxWc@vger.kernel.org
X-Gm-Message-State: AOJu0YxznINgagqhWEiB9o5aS2eBFTUU5pGJORXEMjw6iVe9zene1cJ0
	0LafuZDT8UpScgDUcY4fSZc26BUV4JLcRbcjPKR8ZkCU2QW6D180fK7uzBAJln9ne90=
X-Gm-Gg: ASbGnctgGEn4ruCduuOBxPsuWCFTWaZhqjRybXA67tC2w/XW7XuwQYEutb6haqu/luY
	I3VMCJVLB5zbDSWWPSvctCdQFP3ALoazDljM5ZmYPX/lcbOD+MVTYiPCr2029pssRVgxhYAI05I
	hbEetmoZgenu/G6NntcckAABYOXB2B0CuTDW+ArHLglaywe9A8E13DwMjcT2465BOfCW6SB7feb
	mWx4eWZjOLBLbeO/+FhaihaYu9dzzScsWhQ+HqXaaW2D7OwQcRUQ9z7csM8uUdJOWjSulh9efAl
	5CyGxKurLRd3OoWxQT2hif1zp44uTigeIsTtb9qtvTqXpejSIZ95AgtDo9ko2xdWCBW3LxaQAML
	h2KLJxTupnb5cmxx5Z/4MJ/2h4smPIRX0v5HyZ/6Dv/5s4SR58/Hujy2Po27phm9w/tnFlZCD2R
	kfBmZOtnur5i8l8yRoC+BYIUkNbsBaYX0=
X-Google-Smtp-Source: AGHT+IGWvgXRtNul1EHNPbtYzvjFLipYAjCIlsMOcSI5SACMCOkh5I5JbXvq4SIjNEe0zxTInnpH1A==
X-Received: by 2002:a05:6402:1ed2:b0:5ff:ef06:1c52 with SMTP id 4fb4d7f45d1cf-612859187eemr18924367a12.3.1753078927734;
        Sun, 20 Jul 2025 23:22:07 -0700 (PDT)
Received: from localhost (2001-1c00-3b8a-ea00-c4de-d39d-05f4-c77a.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b8a:ea00:c4de:d39d:5f4:c77a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f09d99sm4949565a12.3.2025.07.20.23.22.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 23:22:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 21 Jul 2025 08:22:06 +0200
Message-Id: <DBHIM4SA3OIK.PXX6HMDE93B8@fairphone.com>
Subject: Re: [PATCH v2 0/5] Enable USB audio offloading on Fairphone 4
 smartphone
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Felipe Balbi" <balbi@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Wesley Cheng" <quic_wcheng@quicinc.com>,
 "Stephan Gerhold" <stephan.gerhold@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
 <DBDAPORDD5IM.1BHXPK225E2PP@fairphone.com>
In-Reply-To: <DBDAPORDD5IM.1BHXPK225E2PP@fairphone.com>

Hi Mark Brown,

On Wed Jul 16, 2025 at 9:19 AM CEST, Luca Weiss wrote:
> Hi all,
>
> On Thu May 1, 2025 at 8:48 AM CEST, Luca Weiss wrote:
>> Since the series for the USB sound offloading driver was finally merged,
>> we can add the sm6350 dts and enable it on Fairphone 4.
>>
>> A few devicetree binding bits have also been missing in that series, so
>> there's some extra patches for the basics in this series.
>>
>> Depends on:
>> - For qcom,sm8250.yaml & sm8250.c:
>>   https://lore.kernel.org/linux-arm-msm/20250425-fp5-dp-sound-v3-0-7cb45=
180091b@fairphone.com/T/
>> - For dts:
>>   https://lore.kernel.org/linux-arm-msm/20250321-sm6350-apr-v1-1-7805ce7=
b4dcf@fairphone.com/
>>
>> Devicetree patches go through qcom
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> Changes in v2:
>> - Move num-hc-interrupters prop to sm6350.dtsi (Konrad)
>> - Sort cpu & codec nodes correctly (Konrad)
>> - Remove usb-soc-be prop as it's no longer needed (Wesley)
>> - Pick up tags
>> - Link to v1: https://lore.kernel.org/r/20250425-fp4-usb-audio-offload-v=
1-0-f90f571636e4@fairphone.com
>>
>> ---
>> Luca Weiss (5):
>>       ASoC: dt-bindings: qcom,q6afe: Document q6usb subnode
>>       ASoC: dt-bindings: qcom,sm8250: Add Fairphone 4 sound card
>>       ASoC: qcom: sm8250: Add Fairphone 4 soundcard compatible
>>       arm64: dts: qcom: sm6350: Add q6usbdai node
>>       arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB audio offload s=
upport
>
> All dependencies for the patches have been applied already, so this
> series can land as well!

Is it still possible to pick up the sound patches (1-3) for 6.17? Dts
has been applied already.

Regards
Luca

>
> Devicetree patches go through qcom, the rest through their trees.
>
> Regards
> Luca
>
>>
>>  .../devicetree/bindings/sound/qcom,q6afe.yaml      | 13 ++++++++
>>  .../devicetree/bindings/sound/qcom,sm8250.yaml     |  1 +
>>  arch/arm64/boot/dts/qcom/sm6350.dtsi               | 11 +++++++
>>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts  | 36 +++++++++++++++=
+++++++
>>  sound/soc/qcom/sm8250.c                            |  1 +
>>  5 files changed, 62 insertions(+)
>> ---
>> base-commit: 393d0c54cae31317deaa9043320c5fd9454deabc
>> change-id: 20250425-fp4-usb-audio-offload-e5d7fb55d283
>> prerequisite-change-id: 20250321-sm6350-apr-15f3e7e4e5ca:v1
>> prerequisite-patch-id: 69859554c94de52068406dab0d2869ca26072c78
>> prerequisite-change-id: 20240809-fp5-dp-sound-b3768f3019bd:v3
>> prerequisite-patch-id: 2d8997a2be02cfddf3a054c79e7eb308a6d06710
>> prerequisite-patch-id: 1b7c8f00ab50ae71c0221868578b9c1dfe939e4d
>> prerequisite-patch-id: 4fd0673c4d35c1fefce63ec5785ff5ea67cc3d3a
>> prerequisite-patch-id: f5ec3a893de19900f62dc691d83986f1104914b0
>> prerequisite-patch-id: fce7573c39e768f7a09c002064b6159b8e91161a
>>
>> Best regards,


