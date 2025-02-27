Return-Path: <devicetree+bounces-151893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C706A476BF
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 08:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5119B16C95D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 07:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A9B2222A6;
	Thu, 27 Feb 2025 07:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="MqL0PS9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA669221F08
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 07:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740642133; cv=none; b=Ac0UVv8SH7NChK1+LRhiEdhCJX2ctsxncK2qMjTkP5C+gdmPhhS62rbGT2zlsYRt17wjEEW6aRDjVkj6IelDA1VXlGutQY8/DRluoq7aXadvGQPgYBqLWR7WRcBEu5fWtXtdj/v9j565wIkHKe2VPWnGQUR5fIPtWHIY0XQPBbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740642133; c=relaxed/simple;
	bh=hOWdYrxNiuPN+XNM7jJtHqXLqHZiONyk2eJf35zleLQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=eu3lC3YHj9O0ciQCZ1DHx1J+4/InKUcAPpv/an9dfyn+Ahzvy/yWIZDoL2yGcHGieMUoK+iptdexc1BXs1OrUTzrB7uvPmMfiq22cz9CGPm9zeghiXAjEEwIht3leJJKEZsKgdHAR5cRKnH6jPNValnMCStMUExEIySARtA7rEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=MqL0PS9N; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4399deda38cso3940775e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 23:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1740642130; x=1741246930; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vDstNabKa+U0RFMr+z3tANP7Vpq5gfUk2k27kasy3M0=;
        b=MqL0PS9NAInaTWnWSw7cHRNWcriR0cflcIq2/WF0wQrPby2EiMBOywObtHbpAuQfBx
         D8Wenx9alUaIUJ2vpZB/+mcuqA+o0UkrwxLcK6ImBng1qEuzymEgX0wJ5HCchYQbsqav
         DznWcnMWq2E7KuITZAStKu3mcCsJp47bjhYAqbD5OR75oIJswJoRxOBBYoeZJGB6zzXF
         Ksi4Vt97tMysPaGPnP++Lfi4vWz5VEwV7Gy9gi2fYaVyQuKyiCuM1Z+3hvDdm/I5hWAK
         b0Um9R0jl5vFdol5oav0NVHltb1AfxHhUY5jtbLHZiKHGAm9Xv0TuGNVa8u6q+iU6DtG
         ixwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740642130; x=1741246930;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vDstNabKa+U0RFMr+z3tANP7Vpq5gfUk2k27kasy3M0=;
        b=Sozwzhp4sflWWaKQ0Jm/s3DFTZXG2CAME+FiP8onGHuTdaxVxLZj0M48Wjgzo9CMYP
         HZmgFZU8YzmauAR/WwI4VzlCG83QYLoYafJIJQFR04mKGZKklcEy5l+oXUbbMCXWuW6/
         DB5GTUZMVC3nETdL3H4sYCB1ggsOMDzws5Ye19QJl1fvfvdhLPV82FlOFzPX+odK96ua
         cJ/JkOx1o3fLTiSqJS63bG7bX9Wux0a3Zu1Ow99qu0qR9A06P4+Vgspib2y+GoMMiukM
         pYw3AF4r0HNBPPYaNigLOoaDwkyoJfg8owxgvM0+EIe5I7yLczn7xTq5LjRLlIjb4Aku
         nHlA==
X-Forwarded-Encrypted: i=1; AJvYcCV4Z3jIYtpbiuMbNFtnUoqfxmFy2VT4kIs+zcNAnWX/qu8LHikl7sT0GkpOS0ZGFVgEVI6xjHoIYmGt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx40vdh7kEbVxNIUgD7Iajay5/aO9OZEZGYzRdLayrQcuUn6oxW
	+ONqPyb7QvXpGhjeIyDmFf7mVHi19O/6+Mfr0AQGoDzhERvCIOKWPhe84k8wQU0=
X-Gm-Gg: ASbGncvbLE6h4W06tNvt3X9TD6NhmFuYQLd69UwHI/WHvy74ym3g+ZNIUQth9PPO+Ja
	K/qs15tSaI3hWPKmHtV9E8FfaWPY7RGCUHNMMTBs6b9BWIbEBDzhWLZqKP7zMxSsjzXdIlJK++z
	X59r9AcUHmcZLorBuJ6BL2poqWYAIAE4PoIYJZXY+BjE7RKFj/zgRKqYW/M9DK6etLp5xWFL8WQ
	T99g7N739RhOLp9SdtoMTENtSRBSc4SHkm33W6GMJsHOfH8aETNOZEVw2u89HuhUg6mLv9sz67K
	3XjRc5+nPtC01y8oaw4U7jV6qxKpk9JlH/k2eREz61tMmEos1c6axpXuBy2PxGguXuQdRfU=
X-Google-Smtp-Source: AGHT+IEjgF0COFVrxkgx63jJMahBS/fzpXpuAZ0WbHEMTNr8DH0vZgYR2D9bi1jTvh7DSZQR0NvF4A==
X-Received: by 2002:a05:600c:468e:b0:439:9828:c44b with SMTP id 5b1f17b1804b1-43ab0f3ccddmr106690235e9.14.1740642130144;
        Wed, 26 Feb 2025 23:42:10 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba52b947sm45759585e9.2.2025.02.26.23.42.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 23:42:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 27 Feb 2025 08:42:06 +0100
Message-Id: <D8324XX78W5E.273JA9U5U4NV8@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/3] Fairphone 5 DisplayPort over USB-C support
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, <cros-qcom-dts-watchers@chromium.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
 <e5290e59-0022-4eba-abce-a11928d76d3a@oss.qualcomm.com>
In-Reply-To: <e5290e59-0022-4eba-abce-a11928d76d3a@oss.qualcomm.com>

On Wed Feb 26, 2025 at 6:44 PM CET, Konrad Dybcio wrote:
> On 26.02.2025 3:10 PM, Luca Weiss wrote:
>> This series adds all the necessary bits to enable DisplayPort-out over
>> USB-C on Fairphone 5.
>>=20
>> There's currently a dt validation error with this, not quite sure how to
>> resolve this:
>>=20
>>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: typec-mux@42: port=
:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpec=
ted)
>>           from schema $id: http://devicetree.org/schemas/usb/fcs,fsa4480=
.yaml#
>>=20
>> See also this mail plus replies:
>> * https://lore.kernel.org/linux-arm-msm/D0H3VE6RLM2I.MK2NT1P9N02O@fairph=
one.com/
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> Luca Weiss (3):
>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502 redriver
>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Add OCP96011 audio switch
>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Hook up DisplayPort over =
USB-C
>>=20
>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 110 ++++++++++++++=
++++++-
>>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |   2 +
>>  2 files changed, 108 insertions(+), 4 deletions(-)
>> ---
>> base-commit: 417c2d4ed67b729abea7dc73d7fb2153b7154d31
>
> I don't see this commit in -next, master, or qcom/, this series fails
> to apply atop next-20250225

Maybe I was a bit fast in sending this series, the 2 patches this
depends on have been merged into qcom tree yesterday, I've sent this
series based on latest linux-next + arm64-for-6.15 merged in.

https://web.git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/log/?h=
=3Darm64-for-6.15

Regards
Luca


>
> Konrad


