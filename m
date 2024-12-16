Return-Path: <devicetree+bounces-131344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA719F2E33
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78577163170
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 10:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80867203D4F;
	Mon, 16 Dec 2024 10:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dpHF1bso"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500F02036F3
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 10:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734345226; cv=none; b=NoNUctKyCgqTlqqjmndrvfPA732mWxvzpayq/lN6/2p0DtiCKaAYwg0PgLLtRJHP0fK6vtvbOr8p4z5znk3ZZ3TbdzkMOw0ZG5GNY8Y4DhgxumbbDhIBXM7L7K73oBc4xjdC80JbN8Zhec4jqd6TlCui2pLK5MoGjj97T/pBdbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734345226; c=relaxed/simple;
	bh=PYwh9Ejzktqnk/4b3X6HTET4UjWYpwtQYwse3ElACjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aPFDxoi4bjim9AxE8SpnTba2lxvnayBPCgWkQCpa9xjiVF2/4J4zmzd1WXnmTQEFMsqjI6+5kgPkdVC3ua2+CHFEEY6FGFfglQdDJE4mYEkjj22D/XxObPOIKkGI8ILXZ/s+6a0A/72R5nJoOBGTIsfpl1TEjxJkAY9DPoiobRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dpHF1bso; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54024aa9febso3939784e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 02:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734345221; x=1734950021; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81rR1eTM9HElymQ2hIkXvkfh84mtbQHR8oN+z/vprns=;
        b=dpHF1bsoXY5M3b7MlnEpOGGHghGom+pSsXU1kbrqQrbtRIs8cx1uhnSzks/KNBTRHJ
         DDh91QvjfyewUjLrjskEBJ1MnZb4EWytNTwFvF4ODS+gBeWYtv5f6ftxVKezxH8bfUxr
         YwSSlNMwi+ALqQRPr5fvgsaZqy/faIRKD0R7AXaJrYOii8bd2oIPpIsA57IDTmvJjAV6
         X2Edqs0XGJwYI9T137tVGg+7dXjgn0dccJ+iscBzpZHBVLieHIvhQ1uxRb7jEvLX4xQ9
         bXpsY8++GJ/vOCrO8STHTESfFnmuiZYksPnnwJz6E0lyh9iKp6Lh2y3MC2ArjmDHftQ2
         oZSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734345221; x=1734950021;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=81rR1eTM9HElymQ2hIkXvkfh84mtbQHR8oN+z/vprns=;
        b=IOjsVaE/qCrtTq6yjnT1wR5YnqrisCnlU1KFT21K/VxVez3X9XLuxLkEZvfb6+aXuc
         NVJKMIylq1aN+HKcpORa8KZn5Bg4YspuYJn/Awd6Cu1o/E3epy7h+NDWxpjV9igomfwZ
         nHPG+8dogY/fgVRP4Pbzxew0QOwMFU/wT5TbqsFHBXSU6hNtx57jJ/BaRSTESFnN0H3N
         UYWTVJ2LE5/a2oGjgVjOKn/wW+8CeCZpnvBeuKuDgPxVQ2Kut7LN0dyqGRPdts84CtpD
         yXwysxba7GTwCEANWZ2JnL8aV16iZs/J2D51j1WtpWR9/B1+6Ylee++GneJOWzeEnGMy
         hrJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvYcJDqtOVf+R9jqqZfGK7QUGmH+/U/1RWNcPyq5r0k7YujpWwN7Dl8ctFCBjSC0lDSe2E8NYnGM72@vger.kernel.org
X-Gm-Message-State: AOJu0YyV6QR51qtKzjMoM5fctjEjIVo8z2bdeI9xgw5gYZ+OkP8eylE7
	owa9Vw3lQfo6f6kDn6Rh3zakWDN7aedCMNaAtIngyN4Lz9nYfmRiS/S86aZHbDixkT3bQVixL9W
	FloCnOos4QZjmznbsemyGDHTAp97r+0X9TYwkSA==
X-Gm-Gg: ASbGncu2pm/hkMhS49wYOjNxdyqZQajbxig2/c5VXXV4ntxCD8QCELkN/AUfAZE9v7Y
	p5BSD+0+bUe3xOo9joE1HOV5SZT1QPjct8ui7
X-Google-Smtp-Source: AGHT+IEUf3iLQlaHwj+huKVEu7Rf6ZfMRHEmd0RkbAiajFtXRNVDdgnZzJS2Enw8KLsa6+/B9ivQKuoEjmBWCEUg1Qo=
X-Received: by 2002:a05:6512:230b:b0:540:3561:969d with SMTP id
 2adb3069b0e04-54099b7188fmr3706580e87.49.1734345221514; Mon, 16 Dec 2024
 02:33:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241215-msm8917-v9-0-bacaa26f3eef@mainlining.org>
In-Reply-To: <20241215-msm8917-v9-0-bacaa26f3eef@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2024 11:33:30 +0100
Message-ID: <CACRpkdZ-ZEiGMUPObHU=kw=OUADrRGtxgMc-QC3EaBevp-Shng@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] Add MSM8917/PM8937/Redmi 5A
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev, 
	Dang Huynh <danct12@riseup.net>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2024 at 12:15=E2=80=AFPM Barnab=C3=A1s Cz=C3=A9m=C3=A1n
<barnabas.czeman@mainlining.org> wrote:

> This patch series add support for MSM8917 soc with PM8937 and
> Xiaomi Redmi 5A (riva).
>
> Signed-off-by: Barnab=C3=A1s Cz=C3=A9m=C3=A1n <barnabas.czeman@mainlining=
.org>
(...)
>       dt-bindings: pinctrl: qcom: Add MSM8917 pinctrl
(...)
>       pinctrl: qcom: Add MSM8917 tlmm pinctrl driver

Is it possible for me to apply these two patches in isolation?

I want to make sure the patches get moving.

Yours,
Linus Walleij

