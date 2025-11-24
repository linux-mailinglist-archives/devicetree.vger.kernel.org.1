Return-Path: <devicetree+bounces-241656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D83FC8071E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:24:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 288353A160E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A2F26F467;
	Mon, 24 Nov 2025 12:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UCbDuoun"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD2A1D6193
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 12:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763987059; cv=none; b=ftdQX5dncvmdIDKvaavBgmiOKfPFYSsm/aXnbhtMEm2iKP1qMtFfvnJxvBOp1oT9uipY0LY6HprY5hJ6iFpIEQ9oYO10y0uspskijutYDtHG1CE0PuS9ygiSGTDHbrxTVoSuRyvoT8eaVOlFg50DhEZTQCtDRSFvByK+6xELibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763987059; c=relaxed/simple;
	bh=CdkSoOGkYCWxizMuG3oTq6c8mgAr5aYWC1EmHLuCzoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uUtHRy7IYpNyca8/2S1SE8hf0HDl0SPqQxGe+qzkkd46NQk5buY6l3pIg+/Faf7pebk/GEeCvkLTDxgrUV76PDbJESWZgxFaIc5Oj+0QxpdISMXpsDJiTurdhZM5BC99HJTicf1ik26MwGZk1hFfO4nUUxme9O4jt9buICiTiZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UCbDuoun; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47778b23f64so22247575e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 04:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763987056; x=1764591856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NuDHMylOaR8g/JvAKh/yVTJ3Yy9MU0h2/4AVh9Q0YsE=;
        b=UCbDuounVqSiqmDAXoLXRE5I9dFcU6DpDr2x69zGYpPXZTkRElRWo+DyCpkiECPoI1
         clywfWeE5GNOrOjh/TlCuYeW/HItONNXzU1QZY8lVv1+JJz/U9VNUIrMWilDMPmh8DGN
         hwk1Jfgzxi12C4OLttLoZNycimvbAMXfAQxVlon4j3D6YjONXKFiOCBvfh2mi2WPCRfU
         nf2oLcSvfMNdjsroFZx6ojdeMU2RTyaCO/VmKL/yRcj2s7OAc5pN9gmtUbpAGNeBFsUn
         mIWOT++SrBMaUqXnWP/xoa/wCiOtxjIawOUWM65dJ3/N7h+B9CPdg+vXFPfw8/oLXubn
         Owvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763987056; x=1764591856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NuDHMylOaR8g/JvAKh/yVTJ3Yy9MU0h2/4AVh9Q0YsE=;
        b=PItbrC3cJZ25l7A4Fn3tuFYVnnfZupHWOQ2nNHGfRJY855WnaGQiqPoKx/4Ttgum4P
         qrcAecX8UL4ZJjKn3iav5VvOwaWEB/cAHSB9QKSDiHbd5rla6PDDIYH2RHU6gehJjmyC
         rW7yI2kPBww9MkqmCIyGEyOB2rC6uMl0OR5aqX1DxyKFVSwJH6hmTc7Czc7JfB5l95uU
         jvQg/a3CTRBgcJTiSZ1yiKxx1u+FGQ/X/qwGzysr21TtmOkDBL4LK+y9RZ5/qSbvXhjo
         dzrCYtBXL9VtKxO6vmZ6iCaG0LOJ4rWm9ns+vvapi+xiqFuXKqBiXBGoiCF2cI1kXosr
         /1qA==
X-Forwarded-Encrypted: i=1; AJvYcCUjgEvLfMQ5dDN2LyAXSAm2Rkj5V5G17ccOxKyboQPum7igZVFYvjo2HAz9BjMlLVNfhlWgnY/GLXP0@vger.kernel.org
X-Gm-Message-State: AOJu0YwTYmtfiidTiAvcEkop6h0R33ESgor3UFFs8o8OjNs1im1Z5as+
	5dUT2mgrA6zFZigGdrlnz84X7f96Y0YHuFAtMFMV1RiXq64wi+9i18UVzRITOWhqlRo=
X-Gm-Gg: ASbGncuwI+hrtdz6qfYiMtR3FwRh2kORd8ey/Pp4OxTTt1BI5aTNOQBs5qU+XRcUne3
	6NGOBlQ5SKa3O+TndrVrubvfxjoG6Syai/Um4pM+U0npyKfhf8GrwVtZb1UFIvi3ON/quMQ6uuH
	miLS9hh/UKPtb+JWOdgzajJyNDASx4u2qqBlwO4p7S6Ht31dMQeGqU9IS/zA5uerEqIau/c7CyN
	xNZCGU5S87spUVChHXZU1oggE3v0b24q+skjY8eQx1w9C4LkF0rBy2tfsNRZS6kxBV5EdoP50sn
	gKWezrY7GfXg1jCWiidcYZwHHsEWNIGnFMCqjlVHAesmT+MoFfjkX5puB5DZ4KBTWNivXP+n3J/
	g8XGQiVDFtID9Pl3CCiomehUo7wjWAHXkBapwJBssQRy7e5YZ2IPmLbQ4ncOQpEXzej8kYh4Md9
	sNx7zqZN2OVmy3vn71
X-Google-Smtp-Source: AGHT+IG2uTxmSnqi9HaFJ7zlbUKITzVAUKbFdsMO7ekXsieDrVZoHZ7vGzCkFpr4leaIfxrvJJzZUQ==
X-Received: by 2002:a05:600c:1c25:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-477c114ed70mr173574695e9.24.1763987056305;
        Mon, 24 Nov 2025 04:24:16 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf1f365fsm195163025e9.8.2025.11.24.04.24.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 04:24:15 -0800 (PST)
Message-ID: <1baaae91-f712-4965-9105-4358a59ff1d1@linaro.org>
Date: Mon, 24 Nov 2025 14:24:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 RESEND 2/3] thermal: exynos_tmu: Support new hardware
 and update TMU interface
To: =?UTF-8?B?7IaQ7Iug?= <shin.son@samsung.com>,
 'Daniel Lezcano' <daniel.lezcano@linaro.org>,
 'Bartlomiej Zolnierkiewicz' <bzolnier@gmail.com>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 "'Rafael J . Wysocki'" <rafael@kernel.org>, 'Zhang Rui'
 <rui.zhang@intel.com>, 'Lukasz Luba' <lukasz.luba@arm.com>,
 'Rob Herring' <robh@kernel.org>, 'Conor Dooley' <conor+dt@kernel.org>,
 'Alim Akhtar' <alim.akhtar@samsung.com>
Cc: 'Henrik Grimler' <henrik@grimler.se>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 'Peter Griffin' <peter.griffin@linaro.org>,
 =?UTF-8?Q?=27Andr=C3=A9_Draszik=27?= <andre.draszik@linaro.org>,
 'William McVicker' <willmcvicker@google.com>, jyescas@google.com
References: <20251113064022.2701578-1-shin.son@samsung.com>
 <CGME20251113064044epcas2p1b87addb21473eca7cc52052e4e2e9237@epcas2p1.samsung.com>
 <20251113064022.2701578-3-shin.son@samsung.com>
 <2180a854-8ba6-4424-add2-eb34637530c1@linaro.org>
 <000001dc5d2a$0697bf10$13c73d30$@samsung.com>
 <12346382-7718-4942-a497-4de278b1d5a0@linaro.org>
 <000b01dc5d37$3f6f5e80$be4e1b80$@samsung.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <000b01dc5d37$3f6f5e80$be4e1b80$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Shin Son,

On 11/24/25 1:41 PM, 손신 wrote:
>> Shin, a bit unrelated with the patch, but I wanted to let you know that I
>> started looking at the GS101 TMU. I assume it's very similar with the TMU
>> on exynosautov920. Do you know if they share the same IP version?

I guess you omitted this question.

>>
>> I noticed GS101 uses ACPM calls to communicate with the TMU. Why did you
>> choose to not use ACPM for exynosautov920 TMU?

cut

> Regarding ACPM, I did not introduce it earlier because I was trying to align the implementation with the existing framework.
> However, if we move toward a separate driver, I will reconsider whether ACPM integration makes sense there.
> Would it be possible to get your feedback again when I prepare the next revision of the driver?

Yes, I'll try to review it. Add me to cc please.

> 
> Plus, the GS101 TMU driver isn't upstream yet, right?

It isn't. I started getting familiar with it, and will try to upstream it.
Given exynosautov9 and gs101 already share lots of IPs, I assume TMU is similar.
I will likely follow the ACPM route because that's what the downstream code does.

> Could you share where I can find the example code you mentioned? Thank you in advance.

Are you referring to the GS101 TMU driver code? Here it is:
https://android.googlesource.com/kernel/google-modules/raviole-device/+/refs/heads/android-gs-raviole-mainline/drivers/thermal/samsung/gs_tmu_v2.c

DT at:
https://android.googlesource.com/kernel/google-modules/raviole-device/+/refs/heads/android-gs-raviole-mainline/arch/arm64/boot/dts/google/gs101.dtsi#1453

Is the downstream exynosautov9 code publicly available? Can you provide some links?

Thanks!
ta

