Return-Path: <devicetree+bounces-125180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2E29DB24D
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 05:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6CABB232ED
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 04:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA33813C690;
	Thu, 28 Nov 2024 04:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MnRha1rq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142B113B58E
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 04:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732769844; cv=none; b=IViCcqQQr//w4r/KwJ1DczPUF854FgFQHqw5xzTb4WLuXxc3WbiX5PT/njfO15fjoR0raZsRi8xry004pGbLn8ay3krwStr/TGKOkS2GfrXcHRWJlwZFJr+w98by5mGPi+j5Sorb6HrWL2M+OKUzlwZMG8yUpOjMqSa8ne6xcZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732769844; c=relaxed/simple;
	bh=9gNdiwWZ1MbH1bVKN1QAiVS5Fv7sTB11zjZfTxLD7cA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=qnngsqDvrzFaN1y26k1ACg5wBQQgCeSlz4pexpADY/u2XmPjA60lsuiDWFMkQMh2+1nigiHpvKeO5twkWYjTdx/d2sTgfNDICZPAbzqGl/BFArPTlMQsAOCYDynYlAI2IMxMs8rs1SD/cKQaSHOy2KZbzpBppBMAYkNNl9kVQFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MnRha1rq; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53dd2fdcebcso387390e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 20:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732769841; x=1733374641; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9gNdiwWZ1MbH1bVKN1QAiVS5Fv7sTB11zjZfTxLD7cA=;
        b=MnRha1rqwe9Qo12ksrkSlyOH208sj7TIddzIN0Fm3PrYrsvbBpikOlhD/L66VqvJiU
         ilhUzMDYCX6Fyx19HKelSA5UOWzwRgsehnM49nbd9kshNr6BPGrJMvEaXf9x2GWKXmFT
         5FZtphIJJ64izl0iePBVagXfVvHBn4A/LSIEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732769841; x=1733374641;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9gNdiwWZ1MbH1bVKN1QAiVS5Fv7sTB11zjZfTxLD7cA=;
        b=p95npeTrqYddBhI9pMjShaSbd7YjsnLztkjaFuZohlUEf/Peq9dxEz3sDekbgHb74s
         vbvqiEEewBN4cRtruz0H8rESWoAVf9u12Xo5ZNKT5miDXpgHidzM5fpGzfhjuHmy06e+
         zrDbWmZKB7lbX6Y/wapTMb2Gdd9f3dvGtrvtAeA0GMYPRuLgmN2heZeord6TtOcB54S4
         bCl1z+Yfnp12FT6unp2Kr9qycehqMxXIrjtlNEikgCyln4FNLDy/89qpu5PV/cLGBLTy
         MOYVGbxmL8CP2iivLV1iovXZ8CYQQJ6T9ZY0SU3qCRI3mdJaUh2i9Bq+oHoZA7QKA6h6
         YyBw==
X-Forwarded-Encrypted: i=1; AJvYcCXK3H+hXZBso2IvbA0dDGlSgmQBVJwp5cJtbk2DQM1uq0oq5dmEroysdowRtZsoLPjZ3YQX73Pr0n40@vger.kernel.org
X-Gm-Message-State: AOJu0YyEGx8xFppURq8zLX/vhJ3p6uCEOxoTuaeumbF4nV2cUZltvk31
	ColLYPLsei2e0j96lg8oLeKqTBMV6QvAPDqgQFYP4q8COHMOwOv7dXHoCTcVPHZevKDeRIMdHS3
	EbmiG+tLHvvI6fyI5vlkUh4YCjDI0nXvnbtMF
X-Gm-Gg: ASbGnct0AdLzH+RQmIkW5R+za/5YsltHqvxEtVr0jEiv7PIOETdt33M2qaSDV0CFsnm
	JgzstLXRUBmNOSnkGu+wlF+aR1Ucc7UGIyw4wuPLgSmlpWZfEGNy0lzDLoeY=
X-Google-Smtp-Source: AGHT+IG7n8N4nAMz6o9K2XahUaKaMVFWZxqJsiGFCbLs2B2ko1EorvcGfAfKGctbegSVwAcOe4uRUizxkULBFWIPM2Q=
X-Received: by 2002:a05:6512:23aa:b0:539:ea7a:7688 with SMTP id
 2adb3069b0e04-53df00a9f35mr3140014e87.1.1732769841115; Wed, 27 Nov 2024
 20:57:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241106093335.1582205-1-wenst@chromium.org> <CAGXv+5Fzrz9sBvE=FpV6URpcZtxvchxfY9WE4k4s+S3BzMWw2g@mail.gmail.com>
 <Z0b_f0gg9KgSozPH@shikoro>
In-Reply-To: <Z0b_f0gg9KgSozPH@shikoro>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 28 Nov 2024 12:57:09 +0800
Message-ID: <CAGXv+5GUGwqEGpyJptAUc7aqdGAeFP=-um4=EfUNzxkahiXB9A@mail.gmail.com>
Subject: Re: [PATCH v11 0/7] platform/chrome: Introduce DT hardware prober
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Wolfram Sang <wsa@kernel.org>, chrome-platform@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2024 at 7:16=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
>
> > Just checking in. I just wanted to make sure that this is still on
> > track for v6.13-rc1.
>
> Eeeks, not only Andi was so busy that he lost track of patches. Please
> accept my apologies, I was under the impression that this series was
> still under discussion. I sadly missed that it was ready for prime time.
>
> That being said, I applied it now and will send it to Linus by the end
> of the week. Sadly, this series was not exposed to -next before, so I
> hope a few days of -next will work for him.
>
> But I will surely try. Sorry again!

Thanks! Fingers crossed! Hopefully Linus sees that all the stuff is
just new symbols and pretty isolated.


ChenYu

