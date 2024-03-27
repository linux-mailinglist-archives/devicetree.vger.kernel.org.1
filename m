Return-Path: <devicetree+bounces-53807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A548488D97E
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 09:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64B991F288E0
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 08:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9563364A7;
	Wed, 27 Mar 2024 08:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vPlHszCa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE623398B
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 08:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711529535; cv=none; b=JUyjra5iNZg3noCQr1rem3NT/KF69xx6psMH93Uu8H9e7mCxmH3b9gnzw67/LVB/ZiJo9dvz3ryX9IDESOlL7C11M8LKcqK+F4Nqkkt+CHSzVAOUJwysVW6YsS5a0Zq6hW2AaVSMMSget5URyeYEgOQHDUSMuXAN1hgIaXcWiWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711529535; c=relaxed/simple;
	bh=iFn6xwlqPNDgTzUBASCRnysiro/0I08ilbuODvY79Gw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LhZOxrv2JkqgHVa/R2W1IW2LG2cudUz379D7VgRm57AC5JIbkyrfMgPmcDqW2CjqyTLSn8GpDdJ/i8y28yvUoJstw0YfIpb/PPPry9le7b62HA57Sz7BlT3nwzeyaGJX+XxwUTyEoO9RUK970IpS9aFXlLgCt4kYa4OBWTzh4wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vPlHszCa; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-60a0599f6e5so57581707b3.3
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 01:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711529533; x=1712134333; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QKDxo5SiDJux2nq6LZtCe3mC0jTYYBUZBjVfmvT96ys=;
        b=vPlHszCa+kHz5KTLBUTUmMFnQJOWDp7KVdZ+Yzxj92ksyTNSG4rSCXor+oDPaef24P
         ezlUxWIUufxj67QGvR+hZY6X+0eN6a88egvrZizvmcEquMf2mo0avS+toIYZT4GdLlZU
         jY+JyFihpa+eVtV65wH9msJ2yni+jrmhfBOYxVBYDGOcDALixpZVu0Pnen7HxN6B9Uyn
         rVfe5030W/US5k1D30hY/sZXS8mAnf/Wq96pHJ1U2FgA5lVEnRpk+7zDamQRIcSZ7Tnh
         aWCkDb2E/EltlZm6hekbfR3N2t25VZQsHygTSqYs002lxAHKF+k8NAf06CJnBPCIGERM
         oKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711529533; x=1712134333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QKDxo5SiDJux2nq6LZtCe3mC0jTYYBUZBjVfmvT96ys=;
        b=Qel4kOo8vMhiw0iRXfftQb08iLiC8gyBSGOHHSHmlyXsmFVTD8MHNZBekZT+GgVT9C
         Vk11MRKlOWDmzu+mEi0wQ6rxOYgKubcFiksXEU8jakTTSiCqwVQOhDzmqzyzMlXQYFHK
         qsS/K25tyxSuI1uHxSrXO67UbqbSxQs3KYEndLZMxJjqRxZqpXt2rNrKhVfl24ckSzZe
         wxrmILTlbfiaFCRoLoerLwWTujMvpCoa7KCqW/i7/rfoJpCT8FvfkmhrqXb+whcT63vw
         QCtO/OBOeEeRrjZ6qaj0z32e+UuMo82tRKR8zCiTZ6VRAFLyvk+8WmloBOvgq+cMwYbY
         hLsA==
X-Forwarded-Encrypted: i=1; AJvYcCXRtGn7Yswi32a9OR8B0XfV6s81lPrO36/at99BR3qs6E2cuux9xa8eH8jV3aGwQbuCgJ2bXSD6STVlIIuY72bLjp2Q3nfHMiwEDA==
X-Gm-Message-State: AOJu0Yz3EaCVZY/J749mzvH/FQC/2usy+GBaTKTeFJxfFDPW4yLD5CdG
	09STr5zExsBoQY5YV37gOewdVMWVEf7QN9mb52wcNO5cak76FvCnKuatRMTWkE+NBPM4YunUkOu
	uCBy3xK7qVUqDxzzm9ZfqjEuSowjvdeaAlTw2aw==
X-Google-Smtp-Source: AGHT+IHT7KGPtquwpuaNGQTzLwDxTjgBrwNcRbeqAf2i/0d4TNxkYwnbGP08o1u9++zU+7flQ/+MYOMmfXQVv2GFuRs=
X-Received: by 2002:a05:6902:1366:b0:dcc:a61b:1a72 with SMTP id
 bt6-20020a056902136600b00dcca61b1a72mr1960452ybb.47.1711529533479; Wed, 27
 Mar 2024 01:52:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
 <20240326-fd-fix-schema-v1-1-4475d6d6d633@linaro.org> <e9ce004a-952a-4a94-abe9-2a8dd96b37fb@linaro.org>
In-Reply-To: <e9ce004a-952a-4a94-abe9-2a8dd96b37fb@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 27 Mar 2024 10:52:02 +0200
Message-ID: <CAA8EJprg55BkRL5KUZ+6gNniq9TZjEem8MLqQdMZcXntvttEVg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: display/msm: sm8150-mdss: add DP node
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Mar 2024 at 10:45, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/03/2024 21:02, Dmitry Baryshkov wrote:
> > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
> > index c0d6a4fdff97..40b077fb20aa 100644
> > --- a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
> > @@ -53,6 +53,16 @@ patternProperties:
> >        compatible:
> >          const: qcom,sm8150-dpu
> >
> > +  "^displayport-controller@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        items:
> > +          - const: qcom,sm8150-dp
> > +          - const: qcom,sm8350-dp
>
> This does not look right. sm8350 has its own mdss binding file.

So just a single entry here, even though SM8150 uses fallback compat string?

-- 
With best wishes
Dmitry

