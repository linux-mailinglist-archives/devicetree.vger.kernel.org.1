Return-Path: <devicetree+bounces-41480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F0A85400E
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 00:25:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F20EBB286D1
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 23:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E886311F;
	Tue, 13 Feb 2024 23:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="F3+vYI4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEB963100
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 23:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707866682; cv=none; b=CPbeW6qcHKeoAP1AkdDCaJt8EfOEIhA1RmEHcdMrvIntKc9JibMz7KttrpCYBj23apenONsD29eAy/kS/zidFp29lWWJYiVOH7wjcfZ7of4Oy3KU4K6LKfc+2j3/jKrf8pcE7/fFQ69OTtHkO3X8yyqDf3tza6tSEe2/CFaMJZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707866682; c=relaxed/simple;
	bh=bcNZkTfy8xF0KWYq2Ov+PCZSbZ3Z6PXo5Nj4PAZaHYw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q20Q7BX39Vponr9UQEzLDwqVpCSrf9xG4clbWA8L3ZvRJUeEFQ7+xMG5L9XljL0NFA7Xnr+EeIPdUMiwqmq4JwVWDKyZHKuvJyQ6KA8WzjjVAyk7m0Cg/98bPE6km5/nZpKDhf5X9x3VZf97fyD991CA/u5Yd0dfdFlMmnistcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=F3+vYI4K; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-511a45f6a57so293624e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 15:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707866677; x=1708471477; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=owV9kvvQ01YV0IOM7V6TZ+A51SR1Xuk2YazbU2H7zpE=;
        b=F3+vYI4Ks+QwqwLqyhgeheLsu5sUasfXeVphMHt5VZb83QKsos3ylr5sllnJ98NcZc
         UY6SY5kDlsIJnans/8cuQpulZT9zJrYmk40TZHSGYV0udBh6GFiyrJKduFiHmLT2Wkwb
         D2pX+1xF7OoW090mL85De9TViDAmch1gDAiY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707866677; x=1708471477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=owV9kvvQ01YV0IOM7V6TZ+A51SR1Xuk2YazbU2H7zpE=;
        b=So8HBjpmTi1G0pGRQBbfrzvjSolX+sI3+89J0QhK8Yb48r24g4bqUfNyGmIlKhHA93
         53KblUFOlqWvZm2jDgXuxSHtYH4I0d2wH6fFR+holjZsrrn56vpILMPZeZdODpsexlUg
         jd8oJaPWmgLLp7Mu+Oq8ImxIZWbhB0cxzjxJNQ3SsQmhQB6AFUhLv0yrLThr7Q+opYy1
         wwuDMkl3TpdyeSBM1qnVCCFHt6lkKodPQ3ejNu6Wqb0nj5eife9Bty9DqSwz4LKjINlr
         8si6ESwKb2npsX4BEC8lwlFTtz+YEWWCXop3ez1L/q5x2AOULxhidONJ1NxvUnfFu/0f
         wTcQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9WF43kD0T8U+t38y8Zy9ogvAjTea5JOFqmeTQAal/+YluVt4R3eDPh+clzeS+pcFIfTLmjyWUU9tzNsMy1O3DHWu7UWCe63felw==
X-Gm-Message-State: AOJu0YyEOoUMgEtKCNxu2+K9/OJdSvME4DJH7XMX/P6M+kf5p0nBCkGU
	gYnfHVsqSBycsKhuebKXHUhrltjOHoFxBpbKWsYIwIvuntomPjyWRbkt0zmwk6O5HSwre/FYLxD
	7mGAm
X-Google-Smtp-Source: AGHT+IF62oxMtQ3aCey6d91EQ8omCzPlK1u8rftXq1W3e4KkwkQTsyTycC0vg/X7c7+QReOMI82YaQ==
X-Received: by 2002:ac2:490a:0:b0:511:7b86:6d3b with SMTP id n10-20020ac2490a000000b005117b866d3bmr675403lfi.59.1707866677471;
        Tue, 13 Feb 2024 15:24:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU3ISiTF2zytWa0WPHApPOK7hEK60LXO8FEtz3Dkdna3Rh4kbPKHBIIuKxkWSpx4JfypmZk/aI78BXGAtBiquzXEE4pdxDTBeJ4kQ==
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090699c700b00a3cb136aef0sm1723319ejn.224.2024.02.13.15.24.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 15:24:37 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-410cf70a057so97445e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 15:24:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXovv7zVOM1fd+ZNlT1C0h2eLuOUEy43urm+rahrB54wRrlQcyWGB6ULbfKmqBxQLOLVilmX35xBlZKObiJgqJXoQSjLT4bhXdHYQ==
X-Received: by 2002:a05:600c:a01a:b0:411:e72d:e5c9 with SMTP id
 jg26-20020a05600ca01a00b00411e72de5c9mr7584wmb.5.1707866675833; Tue, 13 Feb
 2024 15:24:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-21-swboyd@chromium.org>
In-Reply-To: <20240210070934.2549994-21-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Feb 2024 15:24:20 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XH=yJdEKSmOq50mXw12hsBc0-oWmhnc4h_itGqfoEjfA@mail.gmail.com>
Message-ID: <CAD=FV=XH=yJdEKSmOq50mXw12hsBc0-oWmhnc4h_itGqfoEjfA@mail.gmail.com>
Subject: Re: [PATCH 20/22] arm64: dts: qcom: sc7180: pazquel: Add missing
 comment header
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Pin-yen Lin <treapking@chromium.org>, cros-qcom-dts-watchers@chromium.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Feb 9, 2024 at 11:10=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> We put a header before modifying pinctrl nodes defined in
> sc7180-trogdor.dtsi in every other file. Add one here so we know that
> this section is for pinctrl modifications.
>
> Cc: <cros-qcom-dts-watchers@chromium.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Bjorn: happy to see this landed any time to shorten Stephen's series.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

