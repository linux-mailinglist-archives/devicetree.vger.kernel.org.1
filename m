Return-Path: <devicetree+bounces-107525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AD498EE15
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 13:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 031421F21387
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0589154434;
	Thu,  3 Oct 2024 11:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="WwYXdwJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117581422C7
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 11:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727954775; cv=none; b=f7WCJxzVLmLpV+MlDurxSS5gTdzz5YhkyDuaekP7ZCtXjudyumVCXZ00Pn9Bf5OQRYjupxnrBkv0E1qQ/2N3ow1yAVXBF+8a08/D5kjd9WL4b4WqxVzmQSLV1jGTiRUpC9LilpudPOIOlGp8jRlS2k/0S+xCcQFV2PkI50aApXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727954775; c=relaxed/simple;
	bh=NbODAL29Apvfd6D+JLLYZ5MaHuTJ5svZVOh57sb0hqM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i4O72SyDeVnSgQIB0FZ87mMn2fIdalAyJy+B14uWiOO0afkomxTQ1SkQsFZgadHy/Hd0KyT/RGCcI+VKSPGSxkbvi+HYsDqTR+fgR5yNJareH3jFPL/G+Hs12C9o1LQiOaUtq++V9tz5DJj4tnPWjuLL8h6ssxzC2r+d7DQ5X5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=WwYXdwJa; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5398939d29eso1058190e87.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 04:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1727954772; x=1728559572; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rlLLunCl6g3gRP7KC52BE84aGo81PObxe/Q5X6ID2V0=;
        b=WwYXdwJaIlkmeWiuoKrm2W+/77BSIhaCD8dXab51z1H+dNngu816ymTjEfiog+Ej7c
         gehfcCH962joeC1Yl5jGLPCjdshs4tBqS9tt2VS7tVkTfn3vLscSS1d/7tb8ScPm8TeP
         TCIykmJfjrtDPH/HZv1cGpPoL/9kwvD20ABSVaFTE1A6azwG1UQruPJJ/TrCx5MPn81D
         CNV+TasdHwiiX1/ozE3iRA1HinCYDhxM3tnO1145ELge0+KEZ7l6tQVwTYS19v/GwW6S
         KtEKI4ycnX5kuRmfMluRo0patCV5ObgPTptyFHjzMO6mvQJIJerbSpinmFGn1GYGeB3M
         OjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727954772; x=1728559572;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rlLLunCl6g3gRP7KC52BE84aGo81PObxe/Q5X6ID2V0=;
        b=W9eEAxSP4QIIUR3KVlFrj6x8U4FX2WkoeOvnii9FcBcMh2sBWhvcZJpVfhJSOv58Zj
         87Ii1IlOCx3alLaSSKbhUAcV7QvM5ffsuCLGeFdtgT8uvQiRvLN88g9Xig/PbSr3pJZ3
         C4hT3Ub7r7jfKl7jehWRAZkpAfwEQnhNw7QAwmYU7Qe5zGq4XR7ybiMxhK3jIak57JSj
         LFG9ev3iL+TAPRO/j7yd6c8a4hscaME8uttcWE500GRW2g2Nc14UJPQoOyG1ZdkkjeHy
         /5kMUeo9pxpPL0Ugo0TieZ+i569J/ZtFz2xcbTbePmNemLp7WGIe75Ifnk3rMmsvipBT
         /D2w==
X-Forwarded-Encrypted: i=1; AJvYcCXj0lwfJXFw9fzHUkiaymNOFvWN0asGiY5o4YCKpqeVdiqov29CRuZ2cITNsi9YkLKzQwLYUhduZpaG@vger.kernel.org
X-Gm-Message-State: AOJu0YygjwNSBG/DAAt2uWHNSZhIs+tdowxViwRLHylLVDGRBI7Gpgbz
	G+lYNiVeTP1N+I8NdBf8WqbSoJKFTTjO0iNsP5Ew4eUTiMZscpz4mmxHBVsvPYMfI2N2ZZsIhaK
	eefPoCWHS0UCGn+8BaucH4sAai0XCeoNE0h97zw==
X-Google-Smtp-Source: AGHT+IH/EAovmZOtegJhqaVGARHaDU2Egf6EGNvaVpuGE/EmHaXFwEn8LjOg/kYa13GbfjvlQCAqo0kemX+JkhA3oYk=
X-Received: by 2002:a05:6512:2216:b0:539:9587:dec7 with SMTP id
 2adb3069b0e04-539a06827ebmr3801825e87.32.1727954771954; Thu, 03 Oct 2024
 04:26:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930103041.49229-1-brgl@bgdev.pl> <20240930103041.49229-2-brgl@bgdev.pl>
 <Zv50l7U_Rq91I1Dw@hovoldconsulting.com>
In-Reply-To: <Zv50l7U_Rq91I1Dw@hovoldconsulting.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 3 Oct 2024 13:26:00 +0200
Message-ID: <CAMRc=Mf=5H46Rn_zfQjaG_mvyJ4cx2VKOVZxtGuqnA4whSSeGA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: sc8280xp-crd: model the PMU of
 the on-board wcn6855
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 3, 2024 at 12:40=E2=80=AFPM Johan Hovold <johan@kernel.org> wro=
te:
>
> > +
> > +             qcom,ath11k-calibration-variant =3D "QC_8280XP_CRD";
>
> Not "SC8280XP"?
>

This was agreed with Kalle under the previous version.

Bart

