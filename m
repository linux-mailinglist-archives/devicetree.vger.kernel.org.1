Return-Path: <devicetree+bounces-155409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C00A56948
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 14:46:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 919DC18982C1
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 13:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B6B21ABBD;
	Fri,  7 Mar 2025 13:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="DMD604B4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A49219A67
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 13:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741355200; cv=none; b=cK9qL/vve3OqB8or4BSst6yhMzoR4aMftUlOqZSK+I8LL3XY67/+Ai7Cmc2JuhOF7DFykIkxAX4xaQoIApbSR27HAjH0BA0l4sGgixmm/heg9F1FbcQIwYLGugi+34vd8mzV3fW1UMAkiMPO0yFNDgjAoMi+/B7KcLPD+/dfKXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741355200; c=relaxed/simple;
	bh=Ajl5yz/9HKZfXlHGqdiD19xxNeWVYLkq3LJ7DODmHrU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oONllPU1bhLCRyJNxGTUOEJonO5R+PzHw+cBSq+MmRX2MnKvnZZy1ByBTdnT5gYSqOhxjlV5+8Gml8wz4kfoc0oqYr4HrsnkQTxukPJMiE7vx3dWDJNK9uulANYKNTyiCSEcg+KAFwndK/e+lrRk2lNMH+77SsIUjxiGX3CrD38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=DMD604B4; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30761be8fa8so18976961fa.2
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 05:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741355197; x=1741959997; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ajl5yz/9HKZfXlHGqdiD19xxNeWVYLkq3LJ7DODmHrU=;
        b=DMD604B4fbXzD1Wo2WnupxIXIjhzkmP8xTghIQQWhmo90EZcuSk9ZKamSnhtewFpnu
         1m+kBcFogccaSrcp/im2htxyr/WDqEjj0NnR+tEm0fl7cuZaeWJaLeq9/YueXNQRZter
         X3NU5Nu3aHrCCBNJCdhVg50NT+EHFlIpezZ7T8wDfIC1eLPNQ3nbM1fMjWIqGbpv1fRZ
         Qee7Tx5xefQC33pZezQIqVvxfNbdo5Ldw2z6nb/WZyPd/PB3hebnWDdr37FSPaQNMt+m
         XWNdFuwZISQaNsfCG7SFJlNhLPSq7pORBh0URo16JHGtlF3Dkz22/Fu2RxG1Ia42os9V
         1ITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741355197; x=1741959997;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ajl5yz/9HKZfXlHGqdiD19xxNeWVYLkq3LJ7DODmHrU=;
        b=dRujddw+6gfGz1YgARozUM/oNtKdU0vSm+hsL+DW0iQNTsBiG0/GqlDW9G+lnAhwjQ
         9/VxN4pyAakY95bVKLxBvM7Xi/FhtuxadaWJUR190M6UwkTahAYL7327fixPDP3/rCng
         zbJuAJcwAidYQk2+d1534tODSAgC28fQnC7PGGsUkJZ6RHoLT+0WjXTqx91jDrQhCQzR
         CIpWePK0QORgRSFr+RxpzuWNe08hf2f4tgqIArQ+LyxWMPar21a9y6g3nTpxvwga9PtZ
         LRXxyEDsWnJ7kahiPAqvcy40Hc3rqqCqTTcaOgicaU6nFLsgwM2+q1zMC5RcmBLHG1y9
         Ifbw==
X-Forwarded-Encrypted: i=1; AJvYcCXJjSNNsXaAVZFt9xW9wRQieiIUC0XIeDdx/dPgg3opi/LoPRBAAlssvuMqPM2VUrCe72fBbvp4qfRw@vger.kernel.org
X-Gm-Message-State: AOJu0Yykof1m3oFOTspTMCAhAvWS1tqP2rjqm+tVa5GydMf4jPfnRQgP
	7foTA48Px7SoQ0OTdhGaTgwKJtH4J5N7ReLZas45QzHHSR21lU3eNt9BbYN7ZCQCmZ1/dmIPAPE
	OM8ywVAbWTg+/0OqZgFao1Brvt/RpIrVpnysV9A==
X-Gm-Gg: ASbGncuMwKE3mpC8t+HC+3GbljoE/z11N/r/FAxA9OY5OMqK4BukllyWuMceg97tYK4
	7yVDcWLzzoNOHo1hnF3UpnRAzH7VGKnbd1GOpYGEWcaBGaIi6hIJnYu0NZI9LN21aN4HaZ636li
	woXGAC3bUhCjfwTvM4/XFWSQyx8n51huPs4SxlSwdEbOOrk7STpWAseCiN
X-Google-Smtp-Source: AGHT+IGMK8J2Fdw7g+cXg5tysK151M2NSF7Hkehrjd3iBWvSDjUL/heh6bjcQSsvIwkLA6Oc0HqPFi8q7sGz5nh4GlA=
X-Received: by 2002:a05:6512:23a4:b0:545:9ce:7608 with SMTP id
 2adb3069b0e04-549910b7d3bmr1262013e87.50.1741355196646; Fri, 07 Mar 2025
 05:46:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1741268122.git.Jonathan.Santos@analog.com> <d055d21a2a1e4e1d64c457d38e3cf6630d4183bc.1741268122.git.Jonathan.Santos@analog.com>
In-Reply-To: <d055d21a2a1e4e1d64c457d38e3cf6630d4183bc.1741268122.git.Jonathan.Santos@analog.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 7 Mar 2025 14:46:25 +0100
X-Gm-Features: AQ5f1JpJ3gRq2Xfa5Nj21IAupyoFyo1b_V79VVEOQLABEY8o2gr7Aj8D3DfetLY
Message-ID: <CAMRc=MfKD4PNfZHz+BdVjUpCcZJ+eSjaNYYQkdVt1a4vo-2yzQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/17] dt-bindings: iio: adc: ad7768-1: Document GPIO controller
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, lars@metafoo.de, 
	Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	dlechner@baylibre.com, marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 10:01=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:
>
> The AD7768-1 ADC exports four bidirectional GPIOs accessible
> via register map.
>
> Document GPIO properties necessary to enable GPIO controller for this
> device.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

