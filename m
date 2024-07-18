Return-Path: <devicetree+bounces-86662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D21B5937105
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 01:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CC451F22722
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 23:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855AC1465B3;
	Thu, 18 Jul 2024 23:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Po0/GAeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F093B145A1C
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 23:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721344327; cv=none; b=BXKp4pxH4FnyvWOWrVm0zRFMGfXEfjwbcitS8OqIxCYWIyZpkW2dNKXZb9cn7zCwRiuMXPlBQj14FmMpeC2JIijjFRrj3FTzrnxydblaUvr07sAxutnn/jLCFELlMXl7NXtyWSV+MeSzhzs41mnp79YQVWdfmHxz452NuhWUIuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721344327; c=relaxed/simple;
	bh=7xPyN/a++eW85lgR9HwYmEav3SElM8LKOPms+Vep1Zo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tUsQKjbkUtQT92eKfkXGzeYputWcyP3hoKGs0adKJQ9MJH4KEqnOjVIJvT1R9EWk44wgVuzIv7/CEDQ0DEPsvklTBXYq+Y9gxVKky48rer/GAG1mjCXtlbPZVGYBnRmrefo7eBRYBJREvPMIKRttDXCx+RHiCqkoCt3Cu/Yo58M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Po0/GAeF; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-447f05bfdcfso4995081cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 16:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721344321; x=1721949121; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9khtoctNp6Gh3eP9HY6HLZ7GyEjG4eZ3UQ7stBpEWc=;
        b=Po0/GAeF+4CpcKiuBKrfubZcLYgBVpDCRSUBY4HeBOJ+jX7eEG9oJMNgyiLkG39EKU
         5M5fhaDmw4x5Tfu+l49CzKiNv9X9kY0EA60PEk2uS7TlOo8Z4brOuOB/CeO7WSiWI3cy
         Px00XIFUj9FmDZz2jyT0bic5gi7IiH+UUObZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721344321; x=1721949121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l9khtoctNp6Gh3eP9HY6HLZ7GyEjG4eZ3UQ7stBpEWc=;
        b=wuNqmDk+G80RiljYK1KABqVKdNroXA3mI0AFPHVB2CKXcmiD4VV4or588eWDvxOTVJ
         u8Pl4Fb0ECTDBrdokFLZNq9hzF6xyCqhdKWr91mOypNzL8w6KPOsAV3RXg3hBaMA+u3E
         MCkILa9FmdF6jv62RJKFnCqVQg4AGiNoBctmepTAcMR7QSi6Srw6Sd98ULhB4Fhy6OcW
         L7D+QMeV2n0RqjTwhnfWtvfiy9IQxNPi88Z3ajEYgI5nsX/yW/HDxjRxPr/zGDJOcw4f
         l9DKxnbVZB7qMOGFNmekpTaHHtp0abbxfU3lFn+p2FXJse7HUSW+75AUcIwBVF3PL5Al
         c9og==
X-Forwarded-Encrypted: i=1; AJvYcCUDCvf+WLlns1Acsn92s1PQL+UaXheZgxKTA0PUNRaaEAkQlQMdR8Q5u7vUb7Ag6HH21DZp3jlowsnUDDR3k9D/UyQ+oc51khKLDw==
X-Gm-Message-State: AOJu0Yyt9J0Ihu7AR/2DyfIzO/NpIcab2ZoRqy1guqgTaAyCO1Rh+HJ9
	Ag0rclKXCoF51xI4qZ/g3o7CtOyl3Maisbuh6r5RocTylFNlgBkACDoteXO6oKF+ggy/VukhHHM
	=
X-Google-Smtp-Source: AGHT+IEn/eoVVLxHKdVXl82p6/OYP1Ulhtc/ROaon5Ocig8ZzkGNxofqp7PQWQdqr5Zpd9vALADiYA==
X-Received: by 2002:a05:622a:1889:b0:447:e786:d712 with SMTP id d75a77b69052e-44f968506b8mr34780131cf.0.1721344321401;
        Thu, 18 Jul 2024 16:12:01 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44f9da3668asm68391cf.17.2024.07.18.16.12.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 16:12:00 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-447df43324fso66281cf.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 16:12:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVyPBhfwisfXqm9jVx2t+Yk0uK26C0xGH7orcSCB+T8xuwA4lj3tQj7T+bVTJ0c2xTFDFxfRkTZXkhkvZQuDNfmFtTr68EKek52yQ==
X-Received: by 2002:a05:622a:4187:b0:44b:74aa:1838 with SMTP id
 d75a77b69052e-44f9c6519cdmr636121cf.5.1721344319670; Thu, 18 Jul 2024
 16:11:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240718184434.6307-1-robdclark@gmail.com> <20240718184434.6307-3-robdclark@gmail.com>
In-Reply-To: <20240718184434.6307-3-robdclark@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 18 Jul 2024 16:11:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UDopTSfpfzjUDPFQKyhUTNOk9z_Q5qnH4Up24M0xZoPQ@mail.gmail.com>
Message-ID: <CAD=FV=UDopTSfpfzjUDPFQKyhUTNOk9z_Q5qnH4Up24M0xZoPQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100-yoga: Update panel bindings
To: Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Rob Clark <robdclark@chromium.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 18, 2024 at 11:44=E2=80=AFAM Rob Clark <robdclark@gmail.com> wr=
ote:
>
> From: Rob Clark <robdclark@chromium.org>
>
> Use the correct panel compatible, and wire up enable-gpio.  It is wired
> up in the same way as the x1e80100-crd.
>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts   | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/a=
rch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index f569f0fbd1fc..37ef05f8c7e0 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -592,9 +592,13 @@ &mdss_dp3 {
>
>         aux-bus {
>                 panel {
> -                       compatible =3D "edp-panel";
> +                       compatible =3D "samsung,atna45dc02";

Instead of the above, I believe you should use:

compatible =3D "samsung,atna45dc02", "samsung,atna33xc20";

...which makes the dts work without any code changes. This is what we
decided upon for Stephen's panel [0]

[0] https://lore.kernel.org/r/20240715-x1e80100-crd-backlight-v2-0-31b7f2f6=
58a3@linaro.org/

-Doug

