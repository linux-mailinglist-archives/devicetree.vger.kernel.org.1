Return-Path: <devicetree+bounces-150667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6897DA43370
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 04:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55EBA17365C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 03:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C1F2206A4;
	Tue, 25 Feb 2025 03:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hzn7An60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B822206A2
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740453290; cv=none; b=roOrrmurz2sFPjhSWgkxLEJOwb9rwhhA1ZHTsUJ66Qmv5XYNaiFg2JkkhBRJCnVqr6Mkgd6HMQ3UUU9U0WSptjisdq2wytk4EXnSrlctJ2p8giS5bmOCq1tmAkGo7xfzQOpfskARkf9BOwjzYFcAonEn0HNHtQ1yTZISgUmL8IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740453290; c=relaxed/simple;
	bh=TphJlHkGQkegZ4mR6BB6NDXfabo6wFsuGSGu/WTHIlU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j9NONqdKfl6OCmQE5PlYzeqta4xuA8Zrbul54sfYCA8Q+Zy0q7TnLiCMe+bbIKLfFGvdYih0Lwi5jA0zEBXyNtvjWWNm/r2odhvmudTPOe0PVpG4xAjG64a74o8lUPArSybhbrQfJydmkfmTuD6pgB4P2L0jR2JtmvLexyek4PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hzn7An60; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e46ebe19489so3664858276.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 19:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740453288; x=1741058088; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IQVbEzx9kvB0TrPeedrtx7i8ImP/tXHPwCaZo2eyYPM=;
        b=Hzn7An609xryNLkibRfNmLwbAP3dY5kSBhYkFXZWh3dJNLdPNKM09AiHQC7ESCETSL
         OyszX3dt9yIZkyW1qvsQHSQsUa+cSDEwd6ToZZtv1Soyw2xs/0Xz+BKF0VSyj9FQG2aG
         eg58fs9lYbFUOiCkxj6Q/1/dURt9nXV8qv8bCTeWL/oTPdJVVuPqmUoLnjf6b/bx4TAH
         MKgi5IED7rNKW6T7qoRQFjqc8B5o+xTdjlgeFOorGf+NC6vGANwBtv/ejKqZv4+bW4mx
         y1mTrCkEIDVKX2x/Z9Bay2AUGZPUyY+qI55tZ2FGT6rq2v2t7b08la/NdR+0bJmrzVE5
         59eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740453288; x=1741058088;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IQVbEzx9kvB0TrPeedrtx7i8ImP/tXHPwCaZo2eyYPM=;
        b=vHgScxtlCK3GfP0TQv8XuKnhyfiooAJ4lfIufgCdkj6LW4KFP41EHTQ4m2sqHZJ2y8
         hBwZdIHc7k9YKJRw1F/87blOKOQRHiSE05xrWA9XufbzjT9h3W0H6w5AYejT8tGb2HEX
         gJTZXjkpBZO9LTuBddVGYGq6ka7swGYmBTyysYi05Enh+YMYJQ3mU/J20jljuwTU0nhi
         sf+2VlQtBa9frH4Bh8h7AGENQxVu0UM0SOzlC+8QVusm4Su2CDuj3Du9xZUoOzmSPda1
         JfMPJY1u4oyQ8ABqcmxa13M+6P+5DDgcRzHbkNldOJsEkVWrlIs9fRajK80qcFePsp6E
         F0Rw==
X-Forwarded-Encrypted: i=1; AJvYcCW3YiMcL4WEaJE1yPeKee7K+eXCNUJrDK61VH69bgvLjtAl3k6uWHx0nB28z75FihwIfpI2mkWYbzqd@vger.kernel.org
X-Gm-Message-State: AOJu0Yze6seqkis1MMCOqpMJa8WVbRZVg6Nk6b9ZxfAN0tm8T56mYQyj
	zMScKL+ve9RVbQuw5q2q3qg9K1fHuVV7O96DfyXPo8803D7IrMalJN84dYTMbWJt0kR3uPjZRER
	ZFO+2464d44ujY13v76KB7802iiaKeTmUI/RhgA==
X-Gm-Gg: ASbGncuIb2mo0tfwxWzuy76mq4lpwkhQCt3ATmFdjzCyuxKQBKNLjQTULHoQI4t+iqu
	zZfrseZiZyEdMOM+YaceV80a+uLl7gTINQhKkiM8DAGygXQqnxWZdlBtSt3GHZfLTAj2QO75osC
	vs6/oO9wyN
X-Google-Smtp-Source: AGHT+IHc41JPGJ088b37b3aIhRMn8lVQtQIt1tmL70qMB6qKKdFyKRe9bfOCM8ADQNOIRUFDSenHC0fF71QDngeKPHY=
X-Received: by 2002:a05:6902:2e82:b0:e5d:d016:989e with SMTP id
 3f1490d57ef6-e5e246719d8mr13282250276.39.1740453287851; Mon, 24 Feb 2025
 19:14:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-5-d201dcdda6a4@linaro.org> <aqpuik4zitdfuk4pahn4wyzxdvxldy4dcqjs3mhr6fqtxpoxhf@ssfzzbfce2nu>
 <2dfe466c-ad94-4683-a2e9-a49e77a61f4f@linaro.org> <h2shpen65r7v4in54avsez7qtlwojbt2cthyomqrsgs5ewprwb@bn53suqrzkac>
 <4e82404a-0ea5-4641-829a-bba666edd352@quicinc.com>
In-Reply-To: <4e82404a-0ea5-4641-829a-bba666edd352@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 25 Feb 2025 05:14:36 +0200
X-Gm-Features: AWEUYZmkKWazMeNY444Pg0IY6jEqBfAoPZAv6AXrcyFb_NB6yz312AR5esudyLk
Message-ID: <CAA8EJpoWEuqKkreUTu1gO-Pr=VFNNP_vBfNZpitJiJH728vjPA@mail.gmail.com>
Subject: Re: [PATCH v2 05/16] dt-bindings: display/msm: dp-controller: Add SM8750
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 24 Feb 2025 at 20:59, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 2/19/2025 9:08 AM, Dmitry Baryshkov wrote:
> > On Wed, Feb 19, 2025 at 06:02:20PM +0100, Krzysztof Kozlowski wrote:
> >> On 17/02/2025 19:58, Dmitry Baryshkov wrote:
> >>> On Mon, Feb 17, 2025 at 05:41:26PM +0100, Krzysztof Kozlowski wrote:
> >>>> Add DisplayPort controller for Qualcomm SM8750 SoC which so far looks
> >>>> fully compatible with earlier SM8650 variant.
> >>>
> >>> As that became a question for QCS8300, does SM8750 also support exactly
> >>> two MST streams?
> >>
> >> v1.5 of DP (starting from SA8775p , then SM8650 and SM8750) support 4x
> >> MST for DPTX0 and 2x MST for DPTX1.
> >>
> >> The DP in SM8650 and SM8750 are identical, according to datasheet (v1.5.1).
> >
> > Hmm. This also means that QCS8300 is compatible with SM8650. I'll let
> > Abhinav comment here.
> >
>
> DP version by itself is not a good measure of whether the controller can
> support 4 streams or not.
>
> Firstly, sm8650/sm8750 do not have a DPTX1 so we are only discussing
> about DP TX0.
>
> Coming to the QCS8300 Vs sm8650/sm8750, even though the DP controller
> version is the same, there is no HW support for more than 2 streams on
> sm8650/sm8750 because there are no INTF blocks to drive 4 streams.
>
> On sm8650/sm8750, only INTF_0 and INTF_3 can be used for DP. Hence 2
> streams.
>
> Whereas on Monaco, we have INTF_0, INTF_3, INTF_6 and INTF_7 capable of

No idea what Monaco is, most likely it is some platform. Please use
SoC names in public.

> driving DP. Hence 4 streams.
>
> Let me know if there are more questions.

How many stream clocks are present on those platforms? I'm asking
because there is a small, but not non-existing difference between 'DPs
are not completely compatible / the same' and 'DPs are fully
compatible but different DPU blocks impose different restrictions on
the number of MST streams'.

-- 
With best wishes
Dmitry

