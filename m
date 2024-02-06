Return-Path: <devicetree+bounces-38924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DDE84AEF5
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B77FD1C21CAB
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA55B12881F;
	Tue,  6 Feb 2024 07:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xQhlF9rb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5836C12881B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707204470; cv=none; b=ComJO6rfKnpbk2NRebNxOq02AzYiwWYH2OJ7e+YejuSG8iyrXsdVURLaQXGgygqwzJM0eRCQEuFDnOXPgBe0Taelh2AnHF2ylrgWCfJruCNf01J5PpMDTwFtiXSDPHtuL7kWQSSGjPktcPXYSHXQ/PZcht9IpDf6jbiQXEHgRJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707204470; c=relaxed/simple;
	bh=Ss7J0Z4qBBv7P0Lq6wAPMJCCSx/flMtJa2Y0ZIXvQHQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rMFhVUEgGUlc0DUfevNsL107ODxtUSmX3frlMwfGkaTNTmkG4SfB8N9h/GlCp3kXsNng7WpA732YQM/zsRsiR1kw//XHIbO95zFxYj9N88yj9bvv7F/ZUTdXTGQv9yjYIy1K3MO3uCzWMRcesux9LG93pCUU2fhJ2FDOKsCoX0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xQhlF9rb; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5ffdf06e009so46428367b3.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 23:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707204468; x=1707809268; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JTwYss/MnnM13HyTf0vXaofwqZrwR8loiVFwU5LX2PY=;
        b=xQhlF9rb6Gi5cHsX4CTSoAIg3n8x4vJOkdnlYBWtuRsF1CPNSR3whD4HCzY6cI/Esg
         w1Mc4Y1BrfsT+7V5AS168KmLdfmZ7HOTuruZ1E241T1n2tB/T6I663viDro4pcgltETJ
         6sDuOZRb7V5q7pHrvyRynoaqaDjjU1DOWdqsrycrkjZ097T4tT1VLIM5zuKakbvl+r/h
         yryWnj9VBVcdN2eBjT0889lKhYWHUnlcU6GPSlPUfTI+i4BJOkVTwPiGV8QumAkcaFLS
         pV1vJ52DGVcoP4gZPwgwUXVjt9Er2q6OVSrj8rDZZMlt/yYDZnVeffFIPDjlB0QtOVSj
         ik/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707204468; x=1707809268;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JTwYss/MnnM13HyTf0vXaofwqZrwR8loiVFwU5LX2PY=;
        b=XhUPc459C380OeT4ObYfRCueUdqe1xBd+KRoacjDsuLVO88mJpog2jQXquvUJPJ9c2
         R+ipqX4Nf/48PHJibJJyN9oSNvG58ep34EyAbTkIrKPjcyFyCSW7fCANOVS3nDvZVqOI
         fe36TEuKa3wtMcW+u1+xUu5H8XtYow5zy/W9I0F5GcQhiclsPnpXr0M+xa3I7mwmm1Up
         83U3USW73evZ1nRlLLpUuoGCglXJF6Rk157Hz+ZyDHWvDFEu7bSNYJapjwAcV1I/02fR
         FZlAJ2qLZYG/RB0cFHVHnhde4AdQ1VdVLjZ7L7Xzi7i0S5TrD5yMgpiUN9wJ6BcW8Qb6
         uUGg==
X-Gm-Message-State: AOJu0YyOE4ADX56rOSlryPDnKJiwiequh0kEOITTlNKDigPDUU3/8dro
	V3pT+WWF76zOxgVrGSIlD6vscgZJYd3Xkc8dUnXVov/PQSSEFfCDeASig7xw2BIaR9oDCTUJ9ne
	TyeViF8di7cLdd/ZBaFRNriwJKIsDk5GRMVmJBw==
X-Google-Smtp-Source: AGHT+IH5aZFBCbzPwOkfK/V7Pv0OlQXEJvQKSmrj7XFq6d9dhv5vj1J+OWKWV2kMYRxJQhWB7mB5XJ9vuezs7xZplJc=
X-Received: by 2002:a81:f90f:0:b0:604:ea3:6525 with SMTP id
 x15-20020a81f90f000000b006040ea36525mr737126ywm.0.1707204468304; Mon, 05 Feb
 2024 23:27:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121194221.13513-1-a39.skl@gmail.com> <20240121194221.13513-4-a39.skl@gmail.com>
 <6e34c1a8-59e2-404f-aa47-0cab772f59d6@linaro.org>
In-Reply-To: <6e34c1a8-59e2-404f-aa47-0cab772f59d6@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 6 Feb 2024 09:27:37 +0200
Message-ID: <CAA8EJpo=mpEvSs_wSwZeAPvLErjkSkcMqkWHch0LC4KnuLp_eA@mail.gmail.com>
Subject: Re: [PATCH 3/8] dt-bindings: msm: qcom,mdss: Include ommited fam-b compatible
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Adam Skladowski <a39.skl@gmail.com>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Jan 2024 at 10:48, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/01/2024 20:41, Adam Skladowski wrote:
> > During conversion 28nm-hpm-fam-b compat got lost, add it.
>
> Please add Fixes tag and put this commit as first in your patchset or
> even as separate one.

Fixes: f7d46c5efee2 ("dt-bindings: display/msm: split qcom, mdss bindings")

Krzysztof, if that was the only issue, could you please ack this
patch, I can then merge it


-- 
With best wishes
Dmitry

