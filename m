Return-Path: <devicetree+bounces-59699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 702658A6B39
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:37:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED874B20F8A
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 12:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F83B129A7C;
	Tue, 16 Apr 2024 12:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cKMYswuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A78074437
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 12:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713271068; cv=none; b=qRecuDYFAbMIElHTqob3R7kLPupNalF1QuQy2pgmPQGHgnNWqf3D2/HeVwpkhs9DttEkqkC8QdUZFQOw9gut9/1IkbSFFQrq2MrdBO6/Wl1lNl8HBPNPfuoFfA/+zwO08ZTPyylj7UF2p7tqWbm3W6fUN5RS6h0Uzgvvk/o6jr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713271068; c=relaxed/simple;
	bh=4LJ6HXrr7/zGMxHWwNvwLQ04Lnb+7C3+Akuq4JYINEo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hAsU+/GduTT6N+oLzsK6stqlok13j1OKxo5E5u3LyExRfTt3S6S9MikcVSnqvQq+Z2VO7mMR8wWHMfEq4bDpf00OSa3LgjBz8QfsVoFBmd03lMSShn3KlW7ebYNlGzneoNIotyxMcGx/0uGLFQV2V0CVuMv8tND1oeDFlyF51Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cKMYswuQ; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6164d7a02d2so50074077b3.3
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 05:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713271066; x=1713875866; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=STIdOPhZdYvo112wyFBuLZo9s9LDl2Qu/p6eL5RFdqw=;
        b=cKMYswuQgZEgwzR1koQDAyGsBxb4EB1KCyuqReRXmBwa8wYQ6+2R5KXqrddpRIAQ4c
         F4X0bJV1fZpuJk6pC1cO94UZthvSZX57xXRumPWhbfNILLAuMqVHmydrcrFYd5TZDqoL
         cqi1vNDCzJCFGaSOkJvtlkZG9AYDKA9FMWCrGnLWhP3HTS5L4yCp3IjNeHaQQDL3+Jt0
         nDdH3WWMAArezeNHY+lgIXXvTJB+1/GHBfzKZVtDUI8MPQDrx3CfRiMOmu6Qd8uK2XCu
         WbTYHmEAHRaVtJzh63a+QycwcfwHIappfO08eFJN5RelCIG6ndgcGuDgc3HzLj5EGgoq
         L3Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713271066; x=1713875866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=STIdOPhZdYvo112wyFBuLZo9s9LDl2Qu/p6eL5RFdqw=;
        b=H+KjtlwoJ8QhPmQV8lcOFkShRJqYykrlQIwwTFH7HZn/pNhroBYdobVrUg10OC9U3Q
         xvdykVeZz6nPECnOfEG549d2sGeVK73jN3e31eaF53jnhuKW8rcsk/4nV/7b2YnH60q2
         iHld1VYiJkl9ILKKhO1AeQjz8GffOIf/8kW7PmCAc4/SB5VpbtiEBXZ9tW0CDhunIrwJ
         3I/HnohvgSeFW3boL1zOQi5eyHLtfQsU9kmDtqkicBZ9FUay0J4ktfgXRgdjuUtNw5lb
         5HR/0jusZ5/RawR/z6I0hdjzMjLyin9M5WQAmoZs74RD2VKVEEXF74GES8Xci+Mu3D6c
         wISA==
X-Forwarded-Encrypted: i=1; AJvYcCW+v47RhL1Nf7dpLeyLO0xxLEtR2niMNsFOg+7s9H599Ov+Jiu22JqcqDDfYGdzr8Kjxg/kzmvvbAU7n8xGt93CPW4dd0CiXTYLWw==
X-Gm-Message-State: AOJu0Yz/xTD9wcVTjYsoB0poKEfGHkqRLToTQIWpP4Ew61w1+SPu+O/Q
	qBH8YRNFlNOko7ss7CJHRDa4SbQPelGWeHZECBin7cReUX4YH5bJoCA6acM4ExF+X8/ZhtSq4LM
	LIVhYAmsTgYnQjYqrNll4ZXLvuCWlI96gq7NRGg==
X-Google-Smtp-Source: AGHT+IFeOA4awc8p/M3BUkgYhbJYeLw7xEDVGKxA6dOrgdfoPaGNeyp56yT+LyP9EbyhGTUoUXAgTBz2Xy3BL/MSook=
X-Received: by 2002:a5b:186:0:b0:dcd:4d:d342 with SMTP id r6-20020a5b0186000000b00dcd004dd342mr10998368ybl.50.1713271065794;
 Tue, 16 Apr 2024 05:37:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416-pm8xxx-vibrator-new-design-v11-0-7b1c951e1515@quicinc.com>
 <20240416-pm8xxx-vibrator-new-design-v11-1-7b1c951e1515@quicinc.com>
In-Reply-To: <20240416-pm8xxx-vibrator-new-design-v11-1-7b1c951e1515@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Apr 2024 15:37:35 +0300
Message-ID: <CAA8EJpr0wV-Fgyyf7tQ-HheYPNmDvCkj4vWL-9rd=gmXrAXOMw@mail.gmail.com>
Subject: Re: [PATCH v11 1/3] input: pm8xxx-vibrator: refactor to support new
 SPMI vibrator
To: quic_fenglinw@quicinc.com
Cc: kernel@quicinc.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Apr 2024 at 05:44, Fenglin Wu via B4 Relay
<devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
>
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
>
> Currently, vibrator control register addresses are hard coded,
> including the base address and offsets, it's not flexible to
> support new SPMI vibrator module which is usually included in
> different PMICs with different base address. Refactor it by using
> the base address defined in devicetree.
>
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
>  drivers/input/misc/pm8xxx-vibrator.c | 41 ++++++++++++++++++++++--------------
>  1 file changed, 25 insertions(+), 16 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

