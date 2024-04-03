Return-Path: <devicetree+bounces-55946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E3F89720C
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 16:12:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A36C71C26FCB
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 14:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D096148FF9;
	Wed,  3 Apr 2024 14:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N5KuUDxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC015148FE4
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 14:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712153564; cv=none; b=MVkE5O+ZiH91/v7EZPGdoec5JwZS9hXJGlK2I8U7ZvHjjjIfaE0uu7hjtNSzzhDEWmhDJuvOw3CM8Jrm6odU9WS42WjwsN30P70UP/nWWALEKw4H66/JTEQj+xp7BFqLYV0nfpOJZ3IgHddXqblnX4nGgDK9m8JJxI/xQXBGiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712153564; c=relaxed/simple;
	bh=L95afQaQo0dSJzbw6btPTwqY5s5R0D8EwWHW4Vk9aw8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R9fu92kjVw6KCj8qldRZCcPaoKLCcSLko5fvTGHMNSmP3w3g5hsIYJ3uVDsMy7ZU7Src9ETZaC0Rv5gcNlhkPSKM4LMXA0YkPIJa8jUsHXmLKjrtjUdr0ocU9/3hyMLyfHtQC5rTjC2yY6adn/Qu93gvgsWMC/HDaPeagJTVh9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N5KuUDxP; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-ddaebc9d6c9so6039159276.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 07:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712153562; x=1712758362; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fwnBjxEZZcPm2O8OkmbkyXZ2vtpbjoy3qG8K3meKtNY=;
        b=N5KuUDxPeTtvOETGQoXOjnUukdxRjSzmCSAN07612FebSllAPZ3iFBx9irggn2t1Yc
         DNz2YC6sAMo3paj9C14gkiAeG+A/rrSaAfC2C8AwZd4i48xgTQLNqXiJf8tYhrR0iyj2
         QI3Xzz84X7yITlQHtVPdSlSIVHNlPzb4ilb0An645AoUsinVBfmKZKJVYgvzeoS1jHZk
         bzg4RwKeHx58iDz7oROX3moC3GN7R4DWN2olsyGrwJE09QHheXtS4HBunUnhNwuIMhb6
         WZWyKXD9+pheRL7vOkxoBNl34p7N76vGXj8ZK/vqhfKjhaUgEJ2tbBrZq8AlNS1njE6h
         DaWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712153562; x=1712758362;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fwnBjxEZZcPm2O8OkmbkyXZ2vtpbjoy3qG8K3meKtNY=;
        b=BnKdK/SjtnW3je7ZzWk/aMmYmd8Kwr2Vt2KXk9mXHVYqYTDBqWvgudERUbFzbg09qF
         yEREofyZGc7bw4voNDTV+Wft9hK2ZP/5cw+Fu1mkrJSq0rkXl5NpmAggFcMyrHR4CVaR
         11KPEhLIMQ37ScXY+18PYSrlULyGi2Y0kMxVX19SNczXsp4PWl14V3sEHhLl0DmE9r1K
         IOtyLqNLAxF5PJcbTIhbiMFz+PxlPpzLrLGOhgtUyHSBeWRbEBqbbrAuXPSNeke6Mw7S
         8r/fBZOYIiseJnGrx4d2x3q1kx8OJ3CSaVLmPDzf0qxfj8OxRVF0zvwT7nu8G0l5ER9n
         ks7g==
X-Forwarded-Encrypted: i=1; AJvYcCXv0zpk9CYVthgtrKl5Gc5be8z3/jBzmIS+SQgf03rNT//pdP8yvJ1ft0S6NFxd90Ocev5Afc+rIIpAOHch/WVXaiok+4s6Ab0VDg==
X-Gm-Message-State: AOJu0YzdWHarrASGQACchW891TBNcMqs3PySHAEKmeLKRDJz8DFozXJi
	PL6mfIjC8isqpMhDpie/UUvkWuCUNTY3pjQpCEtBsHn5vzXrz2w4Dvi0G/PoBpr29GZnHNDoXNv
	pJNg6VZa8ZZpMGe7ywb3ZGrqEx1cwbCsQttMhXw==
X-Google-Smtp-Source: AGHT+IFdlFDZF9JLA4BV3VvkLV2yX2UyfubxSqjpKX9avJfAKmAztGCS242oKGU4jwHzDnC9jCvS8z+XSH1kr3q9Uek=
X-Received: by 2002:a05:6902:82:b0:dcc:140a:a71f with SMTP id
 h2-20020a056902008200b00dcc140aa71fmr13245031ybs.60.1712153561979; Wed, 03
 Apr 2024 07:12:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
 <5cdad89c-282a-4df5-a286-b8404bc4dd81@freebox.fr> <252618e8-9e80-4774-a96c-caa7f838ef01@linaro.org>
 <502322f1-4f66-4922-bc4e-46bacac23410@linaro.org> <0ca1221b-b707-450f-877d-ca07a601624d@freebox.fr>
 <CAA8EJppeREj-0g9oGCzzKx5ywhg1mgmJR1q8yvXKN7N45do1Xg@mail.gmail.com> <91031ed0-104a-4752-8b1e-0dbe15ebf201@freebox.fr>
In-Reply-To: <91031ed0-104a-4752-8b1e-0dbe15ebf201@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Apr 2024 17:12:29 +0300
Message-ID: <CAA8EJpooJLbV+nVWedru=r6fascd8ZxKumiMm_iyzzJwyQ-tig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8998: set qcom,no-msa-ready-indicator
 for wifi
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
	Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k <ath10k@lists.infradead.org>, 
	wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>, 
	MSM <linux-arm-msm@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>, 
	Bjorn Andersson <andersson@kernel.org>, Jami Kettunen <jamipkettunen@gmail.com>, 
	Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr 2024 at 16:05, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 02/04/2024 17:55, Dmitry Baryshkov wrote:
>
> > On Tue, 2 Apr 2024 at 18:31, Marc Gonzalez wrote:
> >
> >> So, if I understand correctly, I take this to mean that I should:
> >>
> >> 1) DELETE the qcom,no-msa-ready-indicator boolean property,
> >> 2) ADD a "qcom,msm8998-wifi" (name OK?) compatible,
> >
> > I'd say, this is not correct. There is no "msm8998-wifi".
>
> Can you explain what you mean by:
> 'There is no "msm8998-wifi".' ?
>
> Do you mean that: this compatible string does not exist?
> (I am proposing that it be created.)
>
> Or do you mean that: "msm8998-wifi" is a bad name?

I mean, it is qcom,wcn3990-wifi, because the chip is wcn3990.

> And these strings in ath11k:
>
> Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml:      - qcom,ipq8074-wifi
> Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml:      - qcom,ipq6018-wifi
> Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml:      - qcom,wcn6750-wifi
> Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml:      - qcom,ipq5018-wifi

I must admit, I don't know the IPQ product naming (it well might be
that it is both the name of the SoC and the WiFI SoC).

>
> > I'd say, we should take a step back and actually verify how this was
> > handled in the vendor kernel.
>
> In our commercial product, we use the ath10k driver in the vendor kernel (v4.4 r38-rel).

I see.

> It looks like Jeff has already performed the code analysis
> wrt vendor vs mainline (including user-space tools).

From his message it looks like we are expected to get MSA READY even on msm8998.

-- 
With best wishes
Dmitry

